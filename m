Return-Path: <devicetree+bounces-256176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E42D33607
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:04:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0DB430C40D9
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A368C34A3CD;
	Fri, 16 Jan 2026 16:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jhg57+Bp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7EA342173
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768579385; cv=none; b=qtUPX1rs21AedVG4h6D0hPH89x2qf+Au3nBMCqw1pjIGyxTiDLnlZlj+Bqh45cn6irGDOs09NpkDLEAco7xUHF3D5pwJQpJx6EA5yTR8N1d0ER2geoncPSHhzVbi5vIwyYgWn3DUtVcB/1OiYx0bc7VF12L88mcZHl1mMfO+rCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768579385; c=relaxed/simple;
	bh=BhtIab84IdoeMyJM4092ElaZLaK1ny/rkG7xxvHmUy0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z+cOvVEbtSu4nMpnHl8+UrSaBgiCjPSZBKg0hSeQDd9A63s0gPiH7QHuZKui/e5/Xcw6QhqJrviSB5Q0ruwvZPlAcfktaBqJ95+ADWxQWRpN9VhqShKQwYYsT5fwq94VUwv6eOsGBDq+mYAeltxxTiSHaVVkmJXLrK+HQYtv140=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jhg57+Bp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7EC7C2BC9E
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768579384;
	bh=BhtIab84IdoeMyJM4092ElaZLaK1ny/rkG7xxvHmUy0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Jhg57+BpwlfJq7DAf/hE0hauQhuzTlnzjm9KKDmIs7MQ/gkLh9uzvSmfR0lwlRX1c
	 vk3xYGbhZGQCVZnORSOvI/QxqYkBJH87xqavj+hEBzcav5TXEn2Hzr8biRLjwF6+Xr
	 ZB2CrGKTbibDcqAE1iW4f8LWSPwbEe9UITM2ho18hNC+foVhd3hDIyl4XnF8zr2GIH
	 YVV1nSz60gXjaYKONdfkLZbpqP8YAk05FflzGofLqoYhPUZ2dSdG4KZBt7OdGn/kYb
	 FZyDkhmVl3EJeEJjNguwqhWqMjDiwg/kpzAJ7Z/y3hvjchJSeJQdZqwhXV6IluZW67
	 b68idQ1c1iVpQ==
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b8712507269so321633266b.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 08:03:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVuTrkDxUa39hHbZHBTLdu4jIv4C7UjAvCHeGacfqD+G+Njfqln4mQEtrx7QAEdQDwu82KTm6hW2Y6V@vger.kernel.org
X-Gm-Message-State: AOJu0Yx18CAD1sCDQqNUJoiHrDZD/4/PKeXYYaW29DRFvuSeEVO/Y94o
	Je1/6pSLuTPeZPWUiGna4UVIR5yXCe1zhDPfTc5IeY1Tmmcl9vHAgeKHMesuZDqdSQ1tHoEZuiI
	/ye6t6sYxh3e23R22XQjkanZzTMRcTg==
X-Received: by 2002:a17:906:fe0a:b0:b87:693:31 with SMTP id
 a640c23a62f3a-b8792feb242mr308189566b.52.1768579383254; Fri, 16 Jan 2026
 08:03:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251223-openwrt-one-network-v5-0-7d1864ea3ad5@collabora.com> <20251223-openwrt-one-network-v5-2-7d1864ea3ad5@collabora.com>
In-Reply-To: <20251223-openwrt-one-network-v5-2-7d1864ea3ad5@collabora.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 16 Jan 2026 10:02:51 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLffH-MY+6frA_kxwifUPskLY8eNqtBoOP0O7Dxs=XHLQ@mail.gmail.com>
X-Gm-Features: AZwV_QilotzZl5lJNLcliW_LfwPmw5qv0NdDfcdZ6pytb6giOF_8l_TtUZnUaC4
Message-ID: <CAL_JsqLffH-MY+6frA_kxwifUPskLY8eNqtBoOP0O7Dxs=XHLQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/8] arm64: dts: mediatek: mt7981b: Add PCIe and USB support
To: Sjoerd Simons <sjoerd@collabora.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang <jianjun.wang@mediatek.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Lee Jones <lee@kernel.org>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>, kernel@collabora.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	netdev@vger.kernel.org, Daniel Golle <daniel@makrotopia.org>, 
	Bryan Hinton <bryan@bryanhinton.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 23, 2025 at 6:38=E2=80=AFAM Sjoerd Simons <sjoerd@collabora.com=
> wrote:
>
> Add device tree nodes for PCIe controller and USB3 XHCI host
> controller on MT7981B SoC. Both controllers share the USB3 PHY
> which can be configured for either USB3 or PCIe operation.
>
> The USB3 XHCI controller supports USB 2.0 and USB 3.0 SuperSpeed
> operation. The PCIe controller is compatible with PCIe Gen2
> specifications.
>
> Also add the topmisc syscon node required for USB/PCIe PHY
> multiplexing.
>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>
> ---
> V1 -> V2: Keep xhci reg and phys properties in single lines
> ---
>  arch/arm64/boot/dts/mediatek/mt7981b.dtsi | 80 +++++++++++++++++++++++++=
++++++
>  1 file changed, 80 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi b/arch/arm64/boot/=
dts/mediatek/mt7981b.dtsi
> index 416096b80770..d3f37413413e 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
> @@ -2,6 +2,7 @@
>
>  #include <dt-bindings/clock/mediatek,mt7981-clk.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/phy/phy.h>
>  #include <dt-bindings/reset/mt7986-resets.h>
>
>  / {
> @@ -223,6 +224,55 @@ auxadc: adc@1100d000 {
>                         status =3D "disabled";
>                 };
>
> +               xhci: usb@11200000 {
> +                       compatible =3D "mediatek,mt7986-xhci", "mediatek,=
mtk-xhci";
> +                       reg =3D <0 0x11200000 0 0x2e00>, <0 0x11203e00 0 =
0x0100>;
> +                       reg-names =3D "mac", "ippc";
> +                       clocks =3D <&infracfg CLK_INFRA_IUSB_SYS_CK>,
> +                                <&infracfg CLK_INFRA_IUSB_CK>,
> +                                <&infracfg CLK_INFRA_IUSB_133_CK>,
> +                                <&infracfg CLK_INFRA_IUSB_66M_CK>,
> +                                <&topckgen CLK_TOP_U2U3_XHCI_SEL>;
> +                       clock-names =3D "sys_ck", "ref_ck", "mcu_ck", "dm=
a_ck", "xhci_ck";
> +                       interrupts =3D <GIC_SPI 173 IRQ_TYPE_LEVEL_HIGH>;
> +                       phys =3D <&u2port0 PHY_TYPE_USB2>, <&u3port0 PHY_=
TYPE_USB3>;
> +                       status =3D "disabled";
> +               };
> +
> +               pcie: pcie@11280000 {
> +                       compatible =3D "mediatek,mt7981-pcie",
> +                                    "mediatek,mt8192-pcie";
> +                       reg =3D <0 0x11280000 0 0x4000>;
> +                       reg-names =3D "pcie-mac";
> +                       ranges =3D <0x82000000 0 0x20000000
> +                                 0x0 0x20000000 0 0x10000000>;
> +                       bus-range =3D <0x00 0xff>;
> +                       clocks =3D <&infracfg CLK_INFRA_IPCIE_CK>,
> +                                <&infracfg CLK_INFRA_IPCIE_PIPE_CK>,
> +                                <&infracfg CLK_INFRA_IPCIER_CK>,
> +                                <&infracfg CLK_INFRA_IPCIEB_CK>;
> +                       clock-names =3D "pl_250m", "tl_26m", "peri_26m", =
"top_133m";
> +                       device_type =3D "pci";
> +                       phys =3D <&u3port0 PHY_TYPE_PCIE>;
> +                       phy-names =3D "pcie-phy";
> +                       interrupts =3D <GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-map-mask =3D <0 0 0 7>;
> +                       interrupt-map =3D <0 0 0 1 &pcie_intc 0>,
> +                                       <0 0 0 2 &pcie_intc 1>,
> +                                       <0 0 0 3 &pcie_intc 2>,
> +                                       <0 0 0 4 &pcie_intc 3>;
> +                       #address-cells =3D <3>;
> +                       #interrupt-cells =3D <1>;
> +                       #size-cells =3D <2>;
> +                       status =3D "disabled";
> +
> +                       pcie_intc: interrupt-controller {
> +                               interrupt-controller;
> +                               #address-cells =3D <0>;
> +                               #interrupt-cells =3D <1>;
> +                       };
> +               };
> +
>                 pio: pinctrl@11d00000 {
>                         compatible =3D "mediatek,mt7981-pinctrl";
>                         reg =3D <0 0x11d00000 0 0x1000>,
> @@ -252,6 +302,36 @@ mux {
>                         };
>                 };
>
> +               topmisc: topmisc@11d10000 {
> +                       compatible =3D "mediatek,mt7981-topmisc", "syscon=
";
> +                       reg =3D <0 0x11d10000 0 0x10000>;
> +                       #clock-cells =3D <1>;

This is now a warning as the syscon.yaml binding this compatible is
defined in doesn't allow #clock-cells.

Rob

