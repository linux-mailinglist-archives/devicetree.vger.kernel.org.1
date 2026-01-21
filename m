Return-Path: <devicetree+bounces-257767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNJhKsyBcGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:35:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D96152E0E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:35:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D595C4E3A53
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:35:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 665512FB622;
	Wed, 21 Jan 2026 07:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AisaWf+e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615992D1907
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 07:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768980928; cv=pass; b=iaKLXRQ+DA4L4tNrE95nm5ZwSahBHDfq8Ib38Ed6YLrchGdfqEgG+GxEgVlBom44wYDzpNL1JNOP+hywPK2WE5Yc1zlhFeBHKp51U3VWJkHGbA0evR1PpOVdmmbi/O73Az3/1hZhUBHP7W/xu3YfsSNCPK77D+j7gohrB7xgaWo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768980928; c=relaxed/simple;
	bh=SOUjgxYvDdnP4DlvfNWb8byF1MNVm4lzaeeu5MVLYJk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PdhdU8uVW4CoLITP3iifZhcm8u3RDhzI1kx0TNgMY1GqLY81ScZXJuN/2+i3tkAR6mpCgFDEeJOhtZKDY8F+I+drk8/lE5GIA5clo6OLRdg58AlEMA/oU4XwVdrcgWUarCm4pjR/u+zudEtwHKdZP/8MG+z1H1mx8XYblC8UkWg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AisaWf+e; arc=pass smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8c5265d06c3so67216585a.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:35:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768980924; cv=none;
        d=google.com; s=arc-20240605;
        b=RGJx070Qs6Hyjt0MdbyZF71EC2Si/VGW2pdVKU6SvvBtEAPNyZWnxcak+1oywq9JsA
         vZBlxz/YaanWaKFKO3sqjZhcyxSbXsen4f0daR63hFIYM6JYofrm0BfzK0LoEEkYrNxK
         bpzD31j3gFuHPWc4efiLENNTXHPiHZgZiJWFylbDSZewokJvv0HhFH4BWeMrLuPYa7D/
         lijCzyIgrRFIL0CfxxjTn4syiyiIjq+s34/u6/iWsifeVwON7cicMtcd/rh5f3M5Hdss
         Uw07zHS5qJj/KV6nV3BNTKbX2P4+WlwrAZgKF3pFC2ZVO9IQejKvrULYWmVXO6E+5u1b
         9u4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GlwN8j82SgoVOz7HHzh2bhzIqCg28sVCaQneoE9LKSM=;
        fh=ipciLRJ+0HG1XtjbC60nh2/H3IHuR9aHFrP/j+pMLLI=;
        b=VK8M+LfJlokfcGf35z4B+z+xE8R9dl3O4hjFD3o1CcyTJvtc3PWZx/ACMlZDgDNm3K
         8HJtIaenn/pvJn6aw6eZvtEDFC6hvQifhqt+xpF8pQfL2QF/+n84TevDxLurRKCF6fU9
         i25AffUS0UgG6znAeiZBkeroJhFtWNrDg5n5y7qSW1iYS/gpd2nNYkBS4xbO5SF603oL
         VazdNDQep6hxUtsCMkp632zjXsU67mBwT1+YWJZnbGLQQC3EVXWSwuOW0fvC8XL6l70K
         hB5Ko5HI2hmE7jLa+tpvZVR43XMYS+PaSe4bzOsPvaUIqpnXna0/WGtwRf2tFATUpyR7
         tfbg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768980924; x=1769585724; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GlwN8j82SgoVOz7HHzh2bhzIqCg28sVCaQneoE9LKSM=;
        b=AisaWf+eKhWHVg7oa91XRb1r3102BDCDmc9BboovfYpZ7QQLQsgjsygBE5+8W6C3Dw
         6Xt54Ulet4SJrwh5GbEJMlY4Hol7jLvfpgpAkhxIpSmaCf2n0Lrf59O8XgkCfRcC/jy/
         OspvrGyP5c/D8sWiKAuHIrPpBNWm9vijYKAyObnmtDI00+4XXSKXx2R1+ABA1GZn2UT4
         GhHoIIypDMrsvxll0jRQlJRMe8Qdj20U9zqq8bi3A4CfdwIdVnhSp7wBPD6R8xpdamYl
         V9kmFn8PQOTHAYWK5+Z/7vVEjwkllMLbLF+4+HG1QnMTREDqYMlNlB4gF9ntlFbpBosE
         cQuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768980924; x=1769585724;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GlwN8j82SgoVOz7HHzh2bhzIqCg28sVCaQneoE9LKSM=;
        b=AlO1v4d1CNzj9nAgjpxzrWWY5ls+zfw39PXHcxRYFVy63PQ1tpgVixrdtske9m3kU6
         Go6AASd/PGgFwBQKJtECEEEzdEDLBplhaXZz5oC6BbkW0x76Dn1ya5fbhPqKj8I2pcuu
         wrDuaqW8YjeOj+8IEL6IItUmkoCACZ2StWVluPH/ChKFc+4z5Gmmicl8/HLIeWvYlUAu
         9Ix1ZAnb4agA1JeiaGTAlvOuvv2oPch64QCpxyVzSNQbPlzqA7kMp4LWHZvewb1w3vSN
         /KJmk8zM74+Tyi+99FouMVjygh2PBYIwJUR5GFZgTgb9RFmMvB4e0RCHp/Bln0sC565U
         BG9A==
X-Gm-Message-State: AOJu0YzG515aASPshu4Pw3bpzxEagtgRSHU6MFAIjV9dJOdf6jDcT8Ah
	0GMKDsc0O6MkdOHECn1UGH9w9CIYNNkcITGv+nFrg7dbiSuDblEfItb94bWJbJEcOOuli9pmr3H
	7T0B/Ra2inEPArjNlp44h/fWi/fTH7mw=
X-Gm-Gg: AZuq6aIB7RgvQnyJc1uQjhDZkayVM76lbKj9Hqjz/FDQc0dZZRwh4UrXXx7gRpE4Gu8
	5SiFEwRKxjPDJvN5RIF524v9yroKbFxBdG3DHvbpWzGzM2FI3ubHNAdmpQseZUxTGnrCpJpRrez
	EJzrds0cIcUIMlkGmT3qUiLcbYEjRiJ+YiomrJorpxF+289nZZosvp2heSyIEGWmm2NmtraIrel
	ub44NA7WCxqfeAZtXNasPWGgMQh9IcTkIQ762t1zsGYRiQONq52p8sPOmT6N+9rLUqOguAR6xxS
	Cj/2vM1vSgWDfVAcOEAy5gqJSq4=
X-Received: by 2002:a05:620a:199e:b0:8c6:a5ae:e9cc with SMTP id
 af79cd13be357-8c6a5aeeb3dmr2503090885a.14.1768980924177; Tue, 20 Jan 2026
 23:35:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120-ufs-rst-v2-1-b5735f1996f6@gmail.com> <176894531223.1201556.243460289333921566.robh@kernel.org>
In-Reply-To: <176894531223.1201556.243460289333921566.robh@kernel.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 21 Jan 2026 11:35:15 +0400
X-Gm-Features: AZwV_Qj7xD-HFnkapRoKPYsoUpofy6BjoS4guSoqEyGq3j-AZNfOskowc3KWMuM
Message-ID: <CABjd4YyPhHCL0TNzKG1_t4bTspfcC0bx41a8t=u+CJo6JvMC0g@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Explicitly request UFS reset pin
 on RK3576
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Conor Dooley <conor+dt@kernel.org>, 
	linux-kernel@vger.kernel.org, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Heiko Stuebner <heiko@sntech.de>, stable@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257767-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,2a2d0000:email,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,cherry.de:email]
X-Rspamd-Queue-Id: 0D96152E0E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 1:45=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
>
> On Tue, 20 Jan 2026 16:53:54 +0400, Alexey Charkov wrote:
> > Rockchip RK3576 UFS controller uses a dedicated pin to reset the connec=
ted
> > UFS device, which can operate either in a hardware controlled mode or a=
s a
> > GPIO pin.
> >
> > Power-on default is GPIO mode, but the boot ROM reconfigures it to a
> > hardware controlled mode if it uses UFS to load the next boot stage.
> >
> > Given that existing bindings (and rk3576.dtsi) expect a GPIO-controlled
> > device reset, request the required pin config explicitly.
> >
> > This doesn't appear to affect Linux, but it does affect U-boot:
> >
> > Before:
> > =3D> md.l 0x2604b398
> > 2604b398: 00000011 00000000 00000000 00000000  ................
> > < ... snip ... >
> > =3D> ufs init
> > ufshcd-rockchip ufshc@2a2d0000: [RX, TX]: gear=3D[3, 3], lane[2, 2], pw=
r[FASTAUTO_MODE, FASTAUTO_MODE], rate =3D 2
> > =3D> md.l 0x2604b398
> > 2604b398: 00000011 00000000 00000000 00000000  ................
> >
> > After:
> > =3D> md.l 0x2604b398
> > 2604b398: 00000011 00000000 00000000 00000000  ................
> > < ... snip ...>
> > =3D> ufs init
> > ufshcd-rockchip ufshc@2a2d0000: [RX, TX]: gear=3D[3, 3], lane[2, 2], pw=
r[FASTAUTO_MODE, FASTAUTO_MODE], rate =3D 2
> > =3D> md.l 0x2604b398
> > 2604b398: 00000010 00000000 00000000 00000000  ................
> >
> > (0x2604b398 is the respective pin mux register, with its BIT0 driving t=
he
> > mode of UFS_RST: unset =3D GPIO, set =3D hardware controlled UFS_RST)
> >
> > This helps ensure that GPIO-driven device reset actually fires when the
> > system requests it, not when whatever black box magic inside the UFSHC
> > decides to reset the flash chip.
> >
> > Cc: stable@vger.kernel.org
> > Fixes: c75e5e010fef ("scsi: arm64: dts: rockchip: Add UFS support for R=
K3576 SoC")
> > Reported-by: Quentin Schulz <quentin.schulz@cherry.de>
> > Signed-off-by: Alexey Charkov <alchark@gmail.com>
> > ---
> > This has originally surfaced during the review of UFS patches for U-boo=
t
> > at [1], where it was found that the UFS reset line is not requested to =
be
> > configured as GPIO but used as such. This leads in some cases to the UF=
S
> > driver appearing to control device resets, while in fact it is the
> > internal controller logic that drives the reset line (perhaps in
> > unexpected ways).
> >
> > Thanks Quentin Schulz for spotting this issue.
> >
> > [1] https://lore.kernel.org/u-boot/259fc358-f72b-4a24-9a71-ad90f2081335=
@cherry.de/
> > ---
> > Changes in v2:
> > - Change default pin pull to pull-down in line with the SoC power-on de=
fault
> > - Link to v1: https://lore.kernel.org/r/20260119-ufs-rst-v1-1-c8e964939=
48c@gmail.com
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi | 7 +++++++
> >  arch/arm64/boot/dts/rockchip/rk3576.dtsi         | 2 +-
> >  2 files changed, 8 insertions(+), 1 deletion(-)
> >
>
>
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>
>   pip3 install dtschema --upgrade
>
>
> This patch series was applied (using b4) to base:
>  Base: 46fe65a2c28ecf5df1a7475aba1f08ccf4c0ac1b (use --merge-base to over=
ride)
>
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
>
>
> New warnings running 'make CHECK_DTBS=3Dy for arch/arm64/boot/dts/rockchi=
p/' for 20260120-ufs-rst-v2-1-b5735f1996f6@gmail.com:
>
> arch/arm64/boot/dts/rockchip/rk3576-luckfox-omni3576.dtb: ufs: ufs-rst-gp=
io: {'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 113} is not of type 'arr=
ay'
>         from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer=
.yaml
> arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dtb: ufs: ufs-rst-g=
pio: {'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 130} is not of type 'ar=
ray'
>         from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer=
.yaml
> arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dtb: ufs: ufs-rst-gpio: {=
'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 116} is not of type 'array'
>         from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer=
.yaml
> arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dtb: ufs: ufs-rst-gpio: {'rock=
chip,pins': [[4, 24, 0, 29]], 'phandle': 117} is not of type 'array'
>         from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer=
.yaml
> arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dtb: ufs: ufs-rst-gpio: {'r=
ockchip,pins': [[4, 24, 0, 29]], 'phandle': 133} is not of type 'array'
>         from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer=
.yaml
> arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dtb: ufs: ufs-rst-gpio: {'roc=
kchip,pins': [[4, 24, 0, 29]], 'phandle': 122} is not of type 'array'
>         from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer=
.yaml
> arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dtb: ufs: ufs-rst-gpio: {'ro=
ckchip,pins': [[4, 24, 0, 29]], 'phandle': 134} is not of type 'array'
>         from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer=
.yaml
> arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: ufs: ufs-rst-gpio: =
{'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 130} is not of type 'array'
>         from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer=
.yaml
> arch/arm64/boot/dts/rockchip/rk3576-evb1-v10-pcie1.dtb: ufs: ufs-rst-gpio=
: {'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 134} is not of type 'array=
'
>         from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer=
.yaml
> arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5-v1.2-wifibt.dtb: ufs: uf=
s-rst-gpio: {'rockchip,pins': [[4, 24, 0, 29]], 'phandle': 130} is not of t=
ype 'array'
>         from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer=
.yaml

Thank you bot. This wildcard for *-gpio is driving me crazy. And yes,
looks like I forgot to test against the schema - sorry for that. Will
resend a slightly adjusted version shortly
(s/ufs-rst-gpio/ufs-rstgpio/ to avoid incorrectly matching against the
GPIO schema)

Best regards,
Alexey

