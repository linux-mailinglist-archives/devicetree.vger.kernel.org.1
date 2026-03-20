Return-Path: <devicetree+bounces-278188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJw7KyEivWmr6wIAu9opvQ
	(envelope-from <devicetree+bounces-278188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:32:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9F12D8B74
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:32:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EEE26305B0BA
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:27:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 769BE3603C5;
	Fri, 20 Mar 2026 10:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PpLBHWNl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2A3224B1E
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774002426; cv=pass; b=X4gxyCNGrGniWp/ru7Qy/rJfs+6CXXbJMWyuu7x8RBX3mIFGdXpP+bvNjJGmAJ8f1RTBqdiOmXb/ChMwB68M4f6kjG7FXChl8qPzfZAyUzhTWISu6UcRTGracqUeZJaOqZVaktedNMnk9r/npmWnt6LPaefSxKHaGDCX/7Ye+ag=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774002426; c=relaxed/simple;
	bh=ELyoKRyizz66seXcv2qeoC8f+kwqZGUSISPj2I4t0W4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V0GoIpqSYOOu7X4RM5ftd4B8xrU0nNXspnbnbCpQBU3sqRGVoYle/wycrDV2MFr8+azzLys6Q0grGRpZE6+xaiJG/tx5kaoJplSzpyCmDtq+w6lXXClguECcb1h6lBm53kGFbpSoTiMBg0K/FSjzI1HsQWcENbTCMPYYBhl++H0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PpLBHWNl; arc=pass smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b932fe2e1a7so231843066b.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 03:27:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774002423; cv=none;
        d=google.com; s=arc-20240605;
        b=K2gZIu7y9OLWPuFyHVg/etlD5EF5Hups6+/hozRUM6nxsTfUUrQW1jI+fh4spLkAmS
         +uOsFsuh75lWXdVQgnxeW7AVOldHfoRKj9cnekn5CFscg4LT5u63Xs1WI/6Y58lQglxA
         ecoWNexucChqCTZUUi0gMNkBIOR8mDmNz60B51ZfVBkb+L056gYAP812DszrH77dDqTd
         cC1BhPuZvB9JXoTIdo3f1IdUdlk19FRA6uTS+ZtZpPoxDxLs6nz1S3r3U+nso9HmR4sa
         Py+NTZMMXp29P3DBD6WyU+0wQc7as0+wSZOAHF94UgB4TxJXSCHGlPk9WBBReDPCXr2P
         qcwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Of1GTO29+yjjKMoSpTK0dYyRr27IYqJgiYG8Z21ueZY=;
        fh=MPDvWcXN3LjA0wYd1d7mHNh8t9j0bztxwaO/SYkzxaM=;
        b=Hylp83K2j2+15GOztEXKMtHawbm283EavSJhsme2PhY9U7R1rzC9v1AiBaO8FmVIC9
         PVjkFQwPizBnKRdM7RmHDl88zYpXyzBwbr80EbIuuEf7mM3JMta2nNKg45bk6q6tiIoS
         Dw2y3pMSlOV9XI4H2y0shK+MdiL5cxjso2ppBBbUGLclGJgGnswMQuv64WbNXEoD04H0
         qW53Ipo/k4KUXGo/RMZvVR1YUG3/vuw+sbNzHQHr9iKiACtvdupKi9NVUSV6Vq/ikAz9
         Lof6i19YNcKR9JmyxMH+Zb4xAHEeT395AkWJAB74YUFw0UFwr4BIKW232pNZGmskh+Dc
         tDOg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774002423; x=1774607223; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Of1GTO29+yjjKMoSpTK0dYyRr27IYqJgiYG8Z21ueZY=;
        b=PpLBHWNlE40z8Kv/I7M1foYQp30ZhtvWblk7k1chMD3BBJtnJ45RAO4RH5DXTOuvRW
         z4fRADW+r5aozHj55fkiV+rpfZAI8Rgsip5VblSUo/nlGvw1Z3nUYL5/vhh1SziqVcVj
         UbzbtRHixoWbE2QlYiq70Yo71h5JNYkXX6K/j0jJ2JKU+IFnHR+NwrkJN/l0gGOQjwnz
         M8Fhi4yQjleELYkzF2yPvE+zkTwJnGl8HCTgsgclEC5N62+ucC/bn0LKFoTSBeRP+Ym3
         je3//nGpo+b/jYY+my9bYeNH3WYWAKnEuk5g+wWsKGjovwYCz4zf9nWEyR/zmHeW0Qw/
         niSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774002423; x=1774607223;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Of1GTO29+yjjKMoSpTK0dYyRr27IYqJgiYG8Z21ueZY=;
        b=aY/Xsj4HdKgP62x1ekRSJ4RFykogwdQp6cZ8THR+LnonR8T68gjJkHPe+1huiQIjl7
         AqehBJaidvNv7XFgt4QPasN2jYZsQjWFtuvGoQoiw5xP+avc1a4shF+SyfPTXccd/6xC
         72qPdBpBIVbG/dp8GSfFIGQ3RS3AzkxVFYkWlBurpLlgpHRHYwEllxdFIBYUyVn49SR/
         lnr++QYxf8eIDGZO1vB4d+yD+AjRAgviXcjKDEJZwdAtrrLn5wX2eNPy8gw9jKpUYski
         p5OHu/OGihQD/71JumYX+hzl+ncEpNLUxtrL/EjhC2mdtNhho10eD9ELZtHHxIw9LEqb
         t4ww==
X-Forwarded-Encrypted: i=1; AJvYcCWziXlZ9YSGs46rH4+iGWN8Vpa2i8gcke6lEbwGKkz67kFErsQxLbcNk9cUA17Ei2A6mOWHXyyAWxUj@vger.kernel.org
X-Gm-Message-State: AOJu0Yy91jZGjr2O1iA549PXOZ2eV83h+mz+PnTU4mcWcfDSBCAjnQNH
	6vStAyED28pwrKzpsk6/2/ivVnOuL5a8Jfw1Ka0ZKSr5zxI1iHfE87QyWoeRK19/l8C4FC4qSD5
	HJZPXqTNvTsaFviCjU22KsMXYy7PAXYo=
X-Gm-Gg: ATEYQzyoUYSTBmtq0PoDMjHxZd0hn+L87y5NL9o8JP66yH02O5Mpi6iSZIAUeYADa7u
	YcIfQ1KdAOfdA2pQefFwzeFzLRgTlKD4rGuQkYkV0kfd1guyr20mXnsW5ndrRdVnLvV5iJG/4KV
	+zl8In5ZT63rgf789LcayzzwSu6zBC1kM9+YH8UzWUzwH7WNRwHiu+wE/QsDrMuBJsN61+CV20O
	3J9W+hqvVKdkawUH7K8r2IN8igaE9xWtUgJv2M4Hcgo4mAb2vlSEf2/NrS6XD0hXSg1fcAyQSKx
	5Z9BIRw=
X-Received: by 2002:a17:906:2746:b0:b83:95c8:15d0 with SMTP id
 a640c23a62f3a-b982f4eca0fmr137601766b.52.1774002422707; Fri, 20 Mar 2026
 03:27:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260304132957.684616-1-midgy971@gmail.com> <20260319145120.99833-1-midgy971@gmail.com>
 <2053182.usQuhbGJ8B@phil>
In-Reply-To: <2053182.usQuhbGJ8B@phil>
From: Midgy Balon <midgy971@gmail.com>
Date: Fri, 20 Mar 2026 11:28:30 +0100
X-Gm-Features: AaiRm50aoIyNWdgdoBKg1CMZ-LC4yDu8KW38iE0PNSuQDdq7oh2keNG7d0JnC3k
Message-ID: <CA+GS1Y0CZA1sbLhoz5LM-dFCCRuWQOr-bYQUVGV4uotKUmy96A@mail.gmail.com>
Subject: Re: [PATCH v4] arm64: dts: rockchip: rock-3b: Model PI6C20100 as gated-fixed-clock
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, shawn.lin@rock-chips.com, 
	jonas@kwiboo.se, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-278188-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.858];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,rock-chips.com:email,sntech.de:email]
X-Rspamd-Queue-Id: 2E9F12D8B74
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Heiko
  > Sorry for having to bring up the process again,
  but the patch
  > author should match the Signed-off-by line.

  Apologies for the inconsistency. I'll fix that in v5.

  > Also is the last name always "UPPER CASE" in your
   region?

  Yes it is standard practice in France to write family names in all
capitals to distinguish them from given names, especially when the
family name could be confused with a given name, not my case but I
comply.

  v5 sent separately.

  Best regards,
  Midgy BALON


Le ven. 20 mars 2026 =C3=A0 09:48, Heiko Stuebner <heiko@sntech.de> a =C3=
=A9crit :
>
> Am Donnerstag, 19. M=C3=A4rz 2026, 15:51:20 Mitteleurop=C3=A4ische Normal=
zeit schrieb MidG971:
> > The Radxa ROCK 3B uses a PI6C20100 PCIe reference clock buffer to
> > provide a 100MHz reference clock to the PCIe 3.0 PHY and controllers.
> > This chip is currently modeled only as a fixed regulator
> > (vcc3v3_pi6c_03), with no clock output representation.
> >
> > The PI6C20100 is a clock generator, not a power supply. Model it
> > properly as a gated-fixed-clock, following the pattern established
> > for the Rock 5 ITX and other boards with similar PCIe clock buffer
> > chips.
> >
> > The regulator node is kept as-is since it controls the power supply
> > to the PI6C20100 chip via GPIO0_D4. The new gated-fixed-clock node
> > references this regulator as its vdd-supply and provides a proper
> > 100MHz clock output. The pcie3x2 node is updated to include the
> > pipe and reference clocks, matching the approach used in
> > rk3588-rock-5-itx.dts.
> >
> > Assisted-by: Claude:claude-3-opus
> > Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>
> > Signed-off-by: Midgy BALON <midgy971@gmail.com>
>
> Sorry for having to bring up the process again, but the patch
> author should match the Signed-off-by line.
>
> You can update the patch author with something like:
>   git commit --author=3D"Midgy BALON <midgy971@gmail.com>" --amend
>
> Also is the last name always "UPPER CASE" in your region?
>
> Thanks a lot for staying on this
> Heiko
>
>
> > ---
> >
> > Changes since v3 [1]:
> >  - Add Reviewed-by from Shawn Lin
> >
> > Changes since v2 [2]:
> >  - Fix AI attribution: use Assisted-by tag instead of Signed-off-by (Sh=
awn)
> >  - Add missing pipe clock (CLK_PCIE30X2_PIPE_DFT) to pcie3x2 clocks
> >    override (Shawn, referencing David's patch [3])
> >
> > Changes since v1 [4]:
> >  - Drop phy-supply approach entirely (Jonas, Shawn)
> >  - Model PI6C20100 as gated-fixed-clock instead
> >  - Wire reference clock to pcie3x2 controller
> >  - Follow pattern from rk3588-rock-5-itx.dts
> >
> > [1] https://lore.kernel.org/linux-rockchip/20260304132957.684616-1-midg=
y971@gmail.com/
> > [2] https://lore.kernel.org/linux-rockchip/20260304132957.684616-1-midg=
y971@gmail.com/
> > [3] https://lore.kernel.org/linux-rockchip/d981fa84-bd05-ac9d-98ca-89ee=
47177829@rock-chips.com/T/#m6a8289609e6a60691d3c06358b6322c7aa5e43d1
> > [4] https://lore.kernel.org/linux-rockchip/20260213151452.535527-1-midg=
y971@gmail.com/
> >
> >  arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 21 +++++++++++++++++=
+++-
> >  1 file changed, 20 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm=
64/boot/dts/rockchip/rk3568-rock-3b.dts
> > index c5f67dd6dfd9..1a2b3c4d5e6f 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> > @@ -56,7 +56,16 @@
> >               };
> >       };
> >
> > -     /* pi6c pcie clock generator */
> > +     /* PI6C20100 PCIe reference clock buffer (100MHz) */
> > +     pcie30_refclk: pcie-clock-generator {
> > +             compatible =3D "gated-fixed-clock";
> > +             #clock-cells =3D <0>;
> > +             clock-frequency =3D <100000000>;
> > +             clock-output-names =3D "pcie30_refclk";
> > +             vdd-supply =3D <&vcc3v3_pi6c_03>;
> > +     };
> > +
> > +     /* PI6C20100 power supply - active-high GPIO0_D4 */
> >       vcc3v3_pi6c_03: regulator-3v3-vcc-pi6c-03 {
> >               compatible =3D "regulator-fixed";
> >               enable-active-high;
> > @@ -553,6 +562,15 @@
> >  };
> >
> >  &pcie3x2 {
> > +     clocks =3D <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
> > +              <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
> > +              <&cru CLK_PCIE30X2_AUX_NDFT>,
> > +              <&cru CLK_PCIE30X2_PIPE_DFT>,
> > +              <&pcie30_refclk>;
> > +     clock-names =3D "aclk_mst", "aclk_slv",
> > +                   "aclk_dbi", "pclk", "aux",
> > +                   "pipe", "ref";
> >       pinctrl-names =3D "default";
> >       pinctrl-0 =3D <&pcie30x2m1_pins>;
> >       reset-gpios =3D <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
> > --
> > 2.39.5
> >
> >
>
>
>
>

