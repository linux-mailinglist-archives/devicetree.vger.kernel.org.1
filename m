Return-Path: <devicetree+bounces-278133-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aN5VLK8KvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278133-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:51:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F21A52D7809
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:51:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 713263068771
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3938284693;
	Fri, 20 Mar 2026 08:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="ICG+lqrb"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C0DEED8
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996524; cv=none; b=Bm38mOr1lTgV+p0tmiaLus3m9WL7xoWUgQYJhws+e11eH9io6xW5IkMobsw/nFxnjzsU02AAuvhPgAWH1P+1dwvT8WznVX6TZ3yA2N3fI6eTtVEy2S9sh5dHq8QbBrN0NZl7cxZzebfCH3FrpRtcKtWDxT88JFXvPkBBCXRHN3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996524; c=relaxed/simple;
	bh=HDs9ygetvmQ4a5h9L+nLoVg41q+590AYoovdD2okrTw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GYeS3zZBMH6LQGyaY8erQvwUDLeGHT1LfEYEIll1+Bisv/1sDGLPlisc0ONH7NfSD5sKm7TWyx2IEgzHTbw8s6+ZFKQ1CyeeK3NBfGDL1fr7E4Q2hmdLXNlKRg6HmhLndEqY9b05EATLPCO1e/+N5aQfvJIwH9cvix3M0QzQs/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=ICG+lqrb; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ZbDVFjolLGX3QRmdSUPmSQ/KW7YhxkrqDIk5QadA5dk=; b=ICG+lqrbkJBPFYv1OGnP9Miu3d
	NaIyEx6PVQH8VVHU9O4VNSprLyhEfZDoEcH3+OdOfo7tgVqLWRO05gCbEs+VViGZzRPOfrpWGFFvu
	ri+hGv9EwejACBCAtQUSD73xYCrFkd0eEIVBbGCwUNKcsxj0JrpurMeWAZmh0xmbR+vt7DKEF7ybG
	2OUR9ANCKMt1tXIc+X0r2/63Nbqd2dPw2272RNrCGaftYGPNWa21DiYGzVf5Nh/qJ7RP9vee9AoEx
	vY36tOpj8+/pbDgvtFSuYt0z/bH788AQbe3KFmAzDtNhK9h9yuwmgtxAccZFTcrzESgBnc1Dr89p+
	9/S9wM5w==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, MidG971 <midgy971@gmail.com>
Cc: shawn.lin@rock-chips.com, jonas@kwiboo.se,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 MidG971 <midgy971@gmail.com>
Subject:
 Re: [PATCH v4] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
Date: Fri, 20 Mar 2026 09:48:25 +0100
Message-ID: <2053182.usQuhbGJ8B@phil>
In-Reply-To: <20260319145120.99833-1-midgy971@gmail.com>
References:
 <20260304132957.684616-1-midgy971@gmail.com>
 <20260319145120.99833-1-midgy971@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278133-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[lists.infradead.org,gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[rock-chips.com,kwiboo.se,lists.infradead.org,vger.kernel.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.984];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: F21A52D7809
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Am Donnerstag, 19. M=C3=A4rz 2026, 15:51:20 Mitteleurop=C3=A4ische Normalze=
it schrieb MidG971:
> The Radxa ROCK 3B uses a PI6C20100 PCIe reference clock buffer to
> provide a 100MHz reference clock to the PCIe 3.0 PHY and controllers.
> This chip is currently modeled only as a fixed regulator
> (vcc3v3_pi6c_03), with no clock output representation.
>=20
> The PI6C20100 is a clock generator, not a power supply. Model it
> properly as a gated-fixed-clock, following the pattern established
> for the Rock 5 ITX and other boards with similar PCIe clock buffer
> chips.
>=20
> The regulator node is kept as-is since it controls the power supply
> to the PI6C20100 chip via GPIO0_D4. The new gated-fixed-clock node
> references this regulator as its vdd-supply and provides a proper
> 100MHz clock output. The pcie3x2 node is updated to include the
> pipe and reference clocks, matching the approach used in
> rk3588-rock-5-itx.dts.
>=20
> Assisted-by: Claude:claude-3-opus
> Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Midgy BALON <midgy971@gmail.com>

Sorry for having to bring up the process again, but the patch
author should match the Signed-off-by line.

You can update the patch author with something like:
  git commit --author=3D"Midgy BALON <midgy971@gmail.com>" --amend

Also is the last name always "UPPER CASE" in your region?

Thanks a lot for staying on this
Heiko


> ---
>=20
> Changes since v3 [1]:
>  - Add Reviewed-by from Shawn Lin
>=20
> Changes since v2 [2]:
>  - Fix AI attribution: use Assisted-by tag instead of Signed-off-by (Shaw=
n)
>  - Add missing pipe clock (CLK_PCIE30X2_PIPE_DFT) to pcie3x2 clocks
>    override (Shawn, referencing David's patch [3])
>=20
> Changes since v1 [4]:
>  - Drop phy-supply approach entirely (Jonas, Shawn)
>  - Model PI6C20100 as gated-fixed-clock instead
>  - Wire reference clock to pcie3x2 controller
>  - Follow pattern from rk3588-rock-5-itx.dts
>=20
> [1] https://lore.kernel.org/linux-rockchip/20260304132957.684616-1-midgy9=
71@gmail.com/
> [2] https://lore.kernel.org/linux-rockchip/20260304132957.684616-1-midgy9=
71@gmail.com/
> [3] https://lore.kernel.org/linux-rockchip/d981fa84-bd05-ac9d-98ca-89ee47=
177829@rock-chips.com/T/#m6a8289609e6a60691d3c06358b6322c7aa5e43d1
> [4] https://lore.kernel.org/linux-rockchip/20260213151452.535527-1-midgy9=
71@gmail.com/
>=20
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 21 +++++++++++++++++++=
+-
>  1 file changed, 20 insertions(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64=
/boot/dts/rockchip/rk3568-rock-3b.dts
> index c5f67dd6dfd9..1a2b3c4d5e6f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> @@ -56,7 +56,16 @@
>  		};
>  	};
>=20
> -	/* pi6c pcie clock generator */
> +	/* PI6C20100 PCIe reference clock buffer (100MHz) */
> +	pcie30_refclk: pcie-clock-generator {
> +		compatible =3D "gated-fixed-clock";
> +		#clock-cells =3D <0>;
> +		clock-frequency =3D <100000000>;
> +		clock-output-names =3D "pcie30_refclk";
> +		vdd-supply =3D <&vcc3v3_pi6c_03>;
> +	};
> +
> +	/* PI6C20100 power supply - active-high GPIO0_D4 */
>  	vcc3v3_pi6c_03: regulator-3v3-vcc-pi6c-03 {
>  		compatible =3D "regulator-fixed";
>  		enable-active-high;
> @@ -553,6 +562,15 @@
>  };
>=20
>  &pcie3x2 {
> +	clocks =3D <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
> +		 <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
> +		 <&cru CLK_PCIE30X2_AUX_NDFT>,
> +		 <&cru CLK_PCIE30X2_PIPE_DFT>,
> +		 <&pcie30_refclk>;
> +	clock-names =3D "aclk_mst", "aclk_slv",
> +		      "aclk_dbi", "pclk", "aux",
> +		      "pipe", "ref";
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&pcie30x2m1_pins>;
>  	reset-gpios =3D <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
> --
> 2.39.5
>=20
>=20





