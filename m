Return-Path: <devicetree+bounces-274888-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6I/cD9qps2lWZgAAu9opvQ
	(envelope-from <devicetree+bounces-274888-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:08:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A66D827D96D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:08:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 77374304E7D0
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 06:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E53E330B32;
	Fri, 13 Mar 2026 06:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWQoaVq/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2D232A3FD
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773382101; cv=none; b=SmCSTUG7jDDjqAC1uAlMEM7ASjBZeMLJRx7y8nS5fCKzB8kuqKnzyjsbdj/IKTM/FyVBElzFohyW2N84f32UpwPhpXybhB/zLACf9zgylkgnxfdJDrddEb+dSw66H7vZVkjoN7dL0+eL5x+HoQMV+DkJzo7vpe+Quk/B/KmqnN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773382101; c=relaxed/simple;
	bh=orM5K8/7CHqa8T7Py1fyX7mMHWEfOFajrWwcTwGiGbo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kj5lbgdvgsi9ou1Y7PLX4I1moPHDU6p0HP06NzKpYVYSr70M221OgO2h+MMUz0Do+EiDKZFH0LuAWOnnNr20dKUUn4IbZ4+gXoB+2ja/3THssQ8UWLPb4k3MCPzOX+UBCNlGlMYpG8nAkty6d1xROWY7QHFtheg+vO6piZEwsEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWQoaVq/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF28BC19425
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773382100;
	bh=orM5K8/7CHqa8T7Py1fyX7mMHWEfOFajrWwcTwGiGbo=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=gWQoaVq/DyrRCRzqlJumfPlfP/hx/NcGvNdqZcJ9JnccwPlOTVoJ3FSPQJSSogYCJ
	 BhmDNHpXzEykhGBEnHsTn3KGGR3WZluQtvf6vA2GD9JEvAC4sumKHkC2WisekRePS0
	 lqQLOQNO9Ot1IJFmju8Lsf3m5UIHVyckPtMlngZJiOP74g35Y1GUuvDm2P2Lk0Hzen
	 S+ZK0s8cXp+SwLxLLKXYfjKKX/PDMjQz2jqWqXyO/6Qq0Yolz3R7xaFBhWQqUm6pGc
	 ixY1krMLGzwoK2FGKrlSUkz48/0ddqktDq3bRxnheG00H/QwAjaLI0i7ExOMUxQ6h0
	 ERMZU6HFT24iA==
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-38a3225d59fso12311631fa.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 23:08:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV5tKY/9gNUW/+B7H/rcjp2N6AZqFkmDWjBTL6T0HN0feXOg8FD+zbOWYOzcGI3KVk3qMg9ke+rULcG@vger.kernel.org
X-Gm-Message-State: AOJu0YwFtY+42VMkxr/fentDP6QNBVv1ILQuO3TWffJtbpSVjxMMgwCs
	Fd84JwZXC+weS7tvzVI6VeryYrPiwhldmx8eEhNRdoGr9y2iJSKAxa3Ka1lbIz16X0QglHiIkHX
	BqQXVnhB1bf/3EqLBDQIpRG662t6lBns=
X-Received: by 2002:a2e:8a86:0:b0:387:2df:f3ee with SMTP id
 38308e7fff4ca-38a8978752fmr6557441fa.33.1773382099086; Thu, 12 Mar 2026
 23:08:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260313020823.1592389-1-sherry.sun@nxp.com> <20260313020823.1592389-7-sherry.sun@nxp.com>
In-Reply-To: <20260313020823.1592389-7-sherry.sun@nxp.com>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 13 Mar 2026 14:08:05 +0800
X-Gmail-Original-Message-ID: <CAGb2v65dvWRqugwBAORB_dD+3Part+OieCe9hnSR781g-6NgZA@mail.gmail.com>
X-Gm-Features: AaiRm52-YD_vTip-QztGRiYxgL7k6zRpm-Clb44P3TJreIxPFicxmd8vkCMHT1k
Message-ID: <CAGb2v65dvWRqugwBAORB_dD+3Part+OieCe9hnSR781g-6NgZA@mail.gmail.com>
Subject: Re: [PATCH V8 06/13] arm: dts: imx6qdl: Add Root Port node and PERST property
To: Sherry Sun <sherry.sun@nxp.com>
Cc: hongxing.zhu@nxp.com, l.stach@pengutronix.de, Frank.Li@nxp.com, 
	bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	s.hauer@pengutronix.de, festevam@gmail.com, imx@lists.linux.dev, 
	kernel@pengutronix.de, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[nxp.com,pengutronix.de,google.com,kernel.org,gmail.com,lists.linux.dev,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-274888-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[0.30.132.128:email];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,0.0.0.0:email,nxp.com:email]
X-Rspamd-Queue-Id: A66D827D96D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 10:08=E2=80=AFAM Sherry Sun <sherry.sun@nxp.com> wr=
ote:
>
> Since describing the PCIe PERST# property under Host Bridge node is now
> deprecated, it is recommended to add it to the Root Port node, so
> creating the Root Port node and add the reset-gpios property in Root
> Port.
>
> Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
> ---
>  arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi |  5 +++++
>  arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi         | 11 +++++++++++
>  arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts |  5 +++++
>  3 files changed, 21 insertions(+)
>
> diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi b/arch/arm/bo=
ot/dts/nxp/imx/imx6qdl-sabresd.dtsi
> index ba29720e3f72..fe9046c03ddd 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi
> +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi
> @@ -754,11 +754,16 @@ lvds0_out: endpoint {
>  &pcie {
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&pinctrl_pcie>;
> +       /* This property is deprecated, use reset-gpios from the Root Por=
t node. */
>         reset-gpio =3D <&gpio7 12 GPIO_ACTIVE_LOW>;

I'd say just remove the old description.

You're asking for trouble by describing the same thing in two different pla=
ces.

>         vpcie-supply =3D <&reg_pcie>;

I would probably also take this chance to just convert to the proper PCI
slot supply, and just add pwrctrl support into your PCIe driver.


>         status =3D "okay";
>  };
>
> +&pcie_port0 {
> +       reset-gpios =3D <&gpio7 12 GPIO_ACTIVE_LOW>;
> +};
> +
>  &pwm1 {
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&pinctrl_pwm1>;
> diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi b/arch/arm/boot/dts/n=
xp/imx/imx6qdl.dtsi
> index 4dc2c410cf61..9438862b9927 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
> +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
> @@ -302,6 +302,17 @@ pcie: pcie@1ffc000 {
>                                  <&clks IMX6QDL_CLK_PCIE_REF_125M>;
>                         clock-names =3D "pcie", "pcie_bus", "pcie_phy";
>                         status =3D "disabled";
> +
> +                       pcie_port0: pcie@0 {
> +                               compatible =3D "pciclass,0604";
> +                               device_type =3D "pci";
> +                               reg =3D <0x0 0x0 0x0 0x0 0x0>;
> +                               bus-range =3D <0x01 0xff>;
> +
> +                               #address-cells =3D <3>;
> +                               #size-cells =3D <2>;
> +                               ranges;
> +                       };
>                 };
>
>                 aips1: bus@2000000 { /* AIPS1 */
> diff --git a/arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts b/arch/arm/bo=
ot/dts/nxp/imx/imx6qp-sabreauto.dts
> index c5b220aeaefd..6b12cab7175f 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts
> +++ b/arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts
> @@ -45,10 +45,15 @@ MX6QDL_PAD_GPIO_6__ENET_IRQ         0x000b1
>  };
>
>  &pcie {
> +       /* This property is deprecated, use reset-gpios from the Root Por=
t node. */
>         reset-gpio =3D <&max7310_c 5 GPIO_ACTIVE_LOW>;
>         status =3D "okay";
>  };
>
> +&pcie_port0 {
> +       reset-gpios =3D <&max7310_c 5 GPIO_ACTIVE_LOW>;
> +};
> +
>  &sata {
>         status =3D "okay";
>  };
> --
> 2.37.1
>
>

