Return-Path: <devicetree+bounces-5458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E48777B66A1
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:44:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 98BBF281652
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 10:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24B32101C9;
	Tue,  3 Oct 2023 10:44:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724347ED
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 10:44:10 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 8E9CAAC;
	Tue,  3 Oct 2023 03:44:08 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C27DDC15;
	Tue,  3 Oct 2023 03:44:46 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D69413F5A1;
	Tue,  3 Oct 2023 03:44:06 -0700 (PDT)
Date: Tue, 3 Oct 2023 11:44:04 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v4 3/4] dt-bindings: arm: Add new compatible for smc/hvc
 transport for SCMI
Message-ID: <20231003104404.o7yxg3y7dn7uhrq4@bogus>
References: <20230718160833.36397-1-quic_nkela@quicinc.com>
 <20230911194359.27547-1-quic_nkela@quicinc.com>
 <20230911194359.27547-4-quic_nkela@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911194359.27547-4-quic_nkela@quicinc.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 11, 2023 at 12:43:58PM -0700, Nikunj Kela wrote:
> Introduce compatible "qcom,scmi-hvc-shmem" for SCMI smc/hvc
> transport channel for Qualcomm virtual platforms.
> The compatible mandates a shared memory channel.
> 
> Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/firmware/arm,scmi.yaml       | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> index 8d54ea768d38..4090240f45b1 100644
> --- a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> +++ b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> @@ -45,6 +45,9 @@ properties:
>        - description: SCMI compliant firmware with OP-TEE transport
>          items:
>            - const: linaro,scmi-optee
> +      - description: SCMI compliant firmware with Qualcomm hvc/shmem transport
> +        items:
> +          - const: qcom,scmi-hvc-shmem

Can it be simply "qcom,scmi-smc" for 2 reasons ?
1. We don't support SMC/HVC without shmem, so what is your argument to add
   '-shmem' in the compatible here ?
2. The exact conduit(SMC/HVC) used is detected runtime, so I prefer to keep
  '-smc' instead of '-hvc' in the compatible just to avoid giving an illusion
  that HVC is the conduit chosen here based on the compatible. It can be true
  for other reason but I don't want to mislead here by using HVC.
>
>    interrupts:
>      description:
> @@ -320,6 +323,15 @@ allOf:
>        required:
>          - linaro,optee-channel-id
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: qcom,scmi-hvc-shmem
> +    then:
> +      required:
> +        - shmem
> +
>  examples:
>    - |
>      firmware {
> -- 
> 2.17.1
> 

-- 
Regards,
Sudeep

