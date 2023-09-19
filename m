Return-Path: <devicetree+bounces-1485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB36D7A6921
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 18:46:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA5B71C20964
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 16:46:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DE303399C;
	Tue, 19 Sep 2023 16:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZd3z/e6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830AC8814
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 16:46:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E16DC433C7;
	Tue, 19 Sep 2023 16:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695141982;
	bh=oQBTHZEBTOvXdSVkdIA/zgv1qFEEOofNEvBKr5+eM1A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rZd3z/e6yMneQVmt+zvjNYwc+UJ8MIJ4tDk8BYAe9zSSN9LBCTuj7Rf3LNE1AHqJk
	 Ur3cXcNEEqb/+izOs428MAfFoL3gK9Q1+4bQxiJpgRFpHUdl18Bol8Qj9J8o1BCG0J
	 eQSIZFntIb+E4JaknXOSCkpB6FR4vFAaNpLc0uBgw+kiRSZsFlkt/n0sP4vXY0kivJ
	 5BcO22Uy5kuOBURNDs5dbe77F+vCPPGLN7Nya9z/bWJi8DCxt8YVk2f8+/1AVtaP2L
	 F9GOzuKEH18NvdhkJQVs9JY+WvDIDztVjrl6Fglok1E8k+GSn9DfGtWXFJZPAuFNrD
	 PlBoDcpNrD4kQ==
Received: (nullmailer pid 4078623 invoked by uid 1000);
	Tue, 19 Sep 2023 16:46:14 -0000
Date: Tue, 19 Sep 2023 11:46:14 -0500
From: Rob Herring <robh@kernel.org>
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
Cc: Jassi Brar <jassisinghbrar@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Conor Dooley <conor+dt@kernel.org>, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, Elvis Wang <Elvis.Wang@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH 01/15] dt-bindings: mailbox: Add property for CMDQ secure
 driver
Message-ID: <20230919164614.GA4059766-robh@kernel.org>
References: <20230918192204.32263-1-jason-jh.lin@mediatek.com>
 <20230918192204.32263-2-jason-jh.lin@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918192204.32263-2-jason-jh.lin@mediatek.com>

On Tue, Sep 19, 2023 at 03:21:50AM +0800, Jason-JH.Lin wrote:
> Add mboxes to define a GCE loopping thread as a secure irq handler.
> Add mediatek,event to define a GCE software event siganl as a secure
> irq.
> 
> These 2 properties are required for CMDQ secure driver.
> 
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> ---
>  .../mailbox/mediatek,gce-mailbox.yaml         | 30 +++++++++++++++----
>  1 file changed, 24 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/mediatek,gce-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/mediatek,gce-mailbox.yaml
> index cef9d7601398..5c9aebe83d2d 100644
> --- a/Documentation/devicetree/bindings/mailbox/mediatek,gce-mailbox.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/mediatek,gce-mailbox.yaml
> @@ -49,6 +49,21 @@ properties:
>      items:
>        - const: gce
>  
> +  mboxes:
> +    description:
> +      A mailbox channel used as a secure irq handler in normal world.
> +      Using mailbox to communicate with GCE to setup looping thread,
> +      it should have this property and a phandle, mailbox specifiers.

All cases of 'mboxes' have a phandle and specifiers. No need to repeat 
that here.

> +    $ref: /schemas/types.yaml#/definitions/phandle-array

Already has a type definition too. You need to define how many entries 
and what each entry is if more than one. IOW, the same thing as clocks, 
resets, interrupts, etc.

> +
> +  mediatek,gce-events:

This is used all over. It really needs a single definition which is then 
referenced by the users.

> +    description:
> +      The event id which is mapping to a software event signal to gce.
> +      It is used as a secure irq for every secure gce threads.
> +      The event id is defined in the gce header
> +      include/dt-bindings/mailbox/mediatek,<chip>-gce.h of each chips.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +
>  required:
>    - compatible
>    - "#mbox-cells"
> @@ -71,20 +86,23 @@ additionalProperties: false
>  
>  examples:
>    - |
> -    #include <dt-bindings/clock/mt8173-clk.h>
> +    #include <dt-bindings/clock/mediatek,mt8188-clk.h>
>      #include <dt-bindings/interrupt-controller/arm-gic.h>
>      #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/mailbox/mediatek,mt8188-gce.h>
>  
>      soc {
>          #address-cells = <2>;
>          #size-cells = <2>;
>  
> -        gce: mailbox@10212000 {
> -            compatible = "mediatek,mt8173-gce";
> -            reg = <0 0x10212000 0 0x1000>;
> -            interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_LOW>;
> +        gce0: mailbox@10320000 {
> +            compatible = "mediatek,mt8188-gce";

Are these new properties only for mt8188? If so, then you need a schema 
saying that. If not, then this is an unnecessary change to the example.

> +            reg = <0 0x10320000 0 0x4000>;
> +            interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH 0>;
>              #mbox-cells = <2>;
> -            clocks = <&infracfg CLK_INFRA_GCE>;
> +            clocks = <&infracfg_ao CLK_INFRA_AO_GCE>;
>              clock-names = "gce";
> +            mboxes = <&gce0 15 CMDQ_THR_PRIO_1>;

The provider is also a consumer?

> +            mediatek,gce-events = <CMDQ_SYNC_TOKEN_SECURE_THR_EOF>;
>          };
>      };
> -- 
> 2.18.0
> 

