Return-Path: <devicetree+bounces-6581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B4ADE7BBE0D
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 19:53:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6FB71C2092D
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 17:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 948F033982;
	Fri,  6 Oct 2023 17:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwjSAVL3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E74328A6
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 17:53:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9009AC433C7;
	Fri,  6 Oct 2023 17:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696614830;
	bh=VlZJ0h6YtDYjuh++Z6nrFRlhuPokFE8c54sUzNDcW5U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dwjSAVL3j29mwcmgrEORtVTKKgFH02znhF/X0m2lEtRAJfsDZ0OCCTRglcPeV1ZTI
	 gtxbvbetPVVHlhTHrMUWWHIcJ4smKQwjrjOfvlZOTyCEhZHEpiZglB9RZbW3cYvx9z
	 0mzRB5jsPU/+qE1ZGj9uC78Ld1NeqvkOrXyO0gHKkDH6TwASnA3wfJ8iQNgtrWE/ar
	 oSetPKBQyFH6VBe7ugJt3DOMU69r7FZI6UTwE5CFxF2f+WCn0QXDTNJ7oERnkmVL3V
	 RDTNbPcdJdyYRR7WtSo4ASiWHfQyuJJZ2An8SenUZF+NgDDptG25Yg3RA87uI2/mlO
	 btgnz7lKPUMQQ==
Received: (nullmailer pid 66946 invoked by uid 1000);
	Fri, 06 Oct 2023 17:53:48 -0000
Date: Fri, 6 Oct 2023 12:53:48 -0500
From: Rob Herring <robh@kernel.org>
To: Tanmay Shah <tanmay.shah@amd.com>
Cc: jassisinghbrar@gmail.com, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, michal.simek@amd.com, shubhrajyoti.datta@amd.com, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: zynqmp: add destination mailbox
 compatible
Message-ID: <20231006175348.GA4076821-robh@kernel.org>
References: <20231005170825.3521669-1-tanmay.shah@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005170825.3521669-1-tanmay.shah@amd.com>

On Thu, Oct 05, 2023 at 10:08:24AM -0700, Tanmay Shah wrote:
> Current dt-bindings does not contain compatible property
> for child mailbox node. Child mailbox nodes are used
> to represent destination (remote) IPI agents. The compatible
> property for all destination mailboxes must be required.
> 
> Signed-off-by: Tanmay Shah <tanmay.shah@amd.com>
> ---
>  .../bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml           | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml
> index aeaddbf574b0..8b15a0532120 100644
> --- a/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml
> @@ -74,6 +74,10 @@ patternProperties:
>      type: object  # DT nodes are json objects
>      additionalProperties: false
>      properties:
> +
> +      compatible:
> +        const: xlnx,zynqmp-ipi-dest-mailbox
> +
>        xlnx,ipi-id:
>          description:
>            Remote Xilinx IPI agent ID of which the mailbox is connected to.
> @@ -95,6 +99,7 @@ patternProperties:
>            - const: remote_response_region
>  
>      required:
> +      - compatible

A new required property is an ABI break, but nothing about that in the 
commit msg.

>        - reg
>        - reg-names
>        - "#mbox-cells"
> @@ -124,6 +129,7 @@ examples:
>          ranges;
>  
>          mailbox: mailbox@ff9905c0 {
> +          compatible = "xlnx,zynqmp-ipi-dest-mailbox";
>            reg = <0x0 0xff9905c0 0x0 0x20>,
>                  <0x0 0xff9905e0 0x0 0x20>,
>                  <0x0 0xff990e80 0x0 0x20>,
> 
> base-commit: 7d730f1bf6f39ece2d9f3ae682f12e5b593d534d
> -- 
> 2.25.1
> 

