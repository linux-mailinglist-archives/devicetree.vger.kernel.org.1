Return-Path: <devicetree+bounces-2193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEDA7A9B8D
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:02:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C2982824B8
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:02:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 317F5134B7;
	Thu, 21 Sep 2023 18:54:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B890512B69
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:54:12 +0000 (UTC)
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB738D37C3
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:53:48 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-530e180ffcbso1477934a12.1
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695322427; x=1695927227; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h5cABMrQhshDaG6TwwFpOJKeN2scA9eV13qN+CKmNlM=;
        b=yosrVAQH7Qwz4MFTaFAvKZoCR3hvHHSdiIP6CzjZkzoQkkDPhxR6iCcSRXj/FcFDDK
         JKRqgK3s7BXGCyfAjOpoilpZ/NFyjj5TFH9qWdock7KxHWgBsBKRryETApLrNhDWqZ+z
         FF4LXLMu8mg+cLQ6EtPkHYm8MQW8GLCkyzScBnDI1Z5yAJbMWET/Qh7xwbwB1mZ/MeoC
         fUrVCPDx6IrpipUM3Db4Mx0XOIBvPeTu2my8aZSLBJb1+MsOJBuL9XBFEmTO59xH+pV9
         HyMLN1M4Yvsysu2IKMnNQFA8D86xBOwqb5Bfrf8qIEF54u1eqO/LT9iKso8E5L4fUzcy
         vJHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695322427; x=1695927227;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h5cABMrQhshDaG6TwwFpOJKeN2scA9eV13qN+CKmNlM=;
        b=KrHwf4w9A+scps7YruEpHZ+9TjdpjcQvn8jmmwtJ2pO5K96peSGQD9+L3dRvO138rZ
         x4WyzvbPwTyl2JOFREnEJ71We5gmynuPt1s5+muT6ODjIVyDohhAl6lTMs4MAjX/OVI+
         IziSJrhpYGrJfQLu+11LboYd2IsFgXkZtJiNNIlC1Vz0nBIS8F38+MWl7inDmbNEzPkR
         PZmNnvfqqHbz2QJCOvuS/HtPxzjD40Kb2bJHlzIsD7yyaozgMMLjZqy4XFA3a+BUanpM
         YydmlTRlYhbexq8bx/DHUrycS0YyWjH7ZSNcV9v7QAX6pWmDDPpFnUe+/60fy2ajhLD7
         HbLg==
X-Gm-Message-State: AOJu0YyeUAMZva1yP3zWAapzgjt//DYWzY8eR7SZYtitVo0pHVZM4F2F
	g2bMadJBdOonwNwvH4yB+y07VvY63o6zYzCZrgcvbw==
X-Google-Smtp-Source: AGHT+IEXffqDRZSSy+zk6moFm3fhLBE9Wb8UTl/d1dV/OHqhzTh/LfTnV2sRR811+3juzKUhRf6Zkw==
X-Received: by 2002:a17:906:844b:b0:99c:ad52:b00 with SMTP id e11-20020a170906844b00b0099cad520b00mr3861431ejy.6.1695279998107;
        Thu, 21 Sep 2023 00:06:38 -0700 (PDT)
Received: from [172.20.15.189] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id dx26-20020a170906a85a00b0099bcd1fa5b0sm573534ejb.192.2023.09.21.00.06.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Sep 2023 00:06:37 -0700 (PDT)
Message-ID: <0349897d-8802-b4c9-c867-20d139baf952@linaro.org>
Date: Thu, 21 Sep 2023 09:06:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 1/3] dt-bindings: reserved-memory: rmtfs: Allow guard
 pages
Content-Language: en-US
To: Bjorn Andersson <quic_bjorande@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230920-rmtfs-mem-guard-pages-v3-0-305b37219b78@quicinc.com>
 <20230920-rmtfs-mem-guard-pages-v3-1-305b37219b78@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230920-rmtfs-mem-guard-pages-v3-1-305b37219b78@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/21/23 04:37, Bjorn Andersson wrote:
> On some Qualcomm platforms the firwmare, or hardware, does not
> gracefully handle memory protection of the rmtfs memory region when
> placed adjacent to other protected region. Some DeviceTree authors have
> worked around this issue by explicitly reserving the space around the
> region, but this prevents such author to use rely on the OS to place the
> region, through the use of "size" (instead of a fixed location).
> 
> Introduce a flag to indicate that guard pages need be carved at the
> beginning and end of the memory region. The user shall account for the
> two 4k blocks in the defined size.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>   .../devicetree/bindings/reserved-memory/qcom,rmtfs-mem.yaml   | 11 +++++++++++
>   1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/reserved-memory/qcom,rmtfs-mem.yaml b/Documentation/devicetree/bindings/reserved-memory/qcom,rmtfs-mem.yaml
> index bab982f00485..2d7be508c5a0 100644
> --- a/Documentation/devicetree/bindings/reserved-memory/qcom,rmtfs-mem.yaml
> +++ b/Documentation/devicetree/bindings/reserved-memory/qcom,rmtfs-mem.yaml
> @@ -26,6 +26,17 @@ properties:
>       description: >
>         identifier of the client to use this region for buffers
>   
> +  qcom,use-guard-pages:
> +    type: boolean
> +    description: >
> +      Indicates that the firmware, or hardware, does not gracefully handle
> +      memory protection of this region when placed adjacent to other protected
> +      memory regions, and that padding around the used portion of the memory
> +      region is necessary.
> +
> +      When this is set, the first and last 4kB should be left unused, and the
> +      effective size of the region will thereby shrink with 8kB.
kiB

Konrad

