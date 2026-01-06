Return-Path: <devicetree+bounces-252012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 652A6CF9B64
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 18:33:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C19030A27FE
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 17:25:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B4B535505A;
	Tue,  6 Jan 2026 17:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fFFxiKYl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249E435504A
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 17:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767720319; cv=none; b=f7ffi7nnsx5gh7S1d2y9jqn+enW7zg/jjam+RFbLcdzwhheoWc+krvGwrkzx7jgvqmZyluJ0rceyXKgCcp4z9Mx9TmZJ+i7fB626zl+bGkyTiBKvU1QbC0kh/61weht9t3mFFqBjHql6ZYiSj+OKogMB89KgcK5bF/VlC//qO2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767720319; c=relaxed/simple;
	bh=tCcT9CuvsYtUpH4bRca2Hk46wOMgoQvoRGaq1aAAZ5A=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Wm5tB2KKxgIxbFKsHLxSUPzpjz120P4XplxnQe7vK3rLv6/9vsf+ixM+iRqSWCdlZyPEHG8UzfvlsK9xzxEC739KG6DE72FVlpLNZHaO/rspVC/fn6rc8HpqebFA6OEYYxr9xf/P+fTwFoE2ejYRrZCN9e3Wt3SBtgvUyWJnYdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fFFxiKYl; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47d63594f7eso7635355e9.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767720316; x=1768325116; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8xb4A0lF/nE9BbVopKVIphYtrXelnEWlhg1lys9zj5g=;
        b=fFFxiKYlZ91hsOA/ZqruLYKEiJCPnZ1bkaxK18lvOwudoOrpCEh5curf2ntLPhxOBB
         W9fdX8q4AvhHR8gMHcNuOvKlRgLlfENgJAgCZ2eoyMuS2R4n9NKzsr/51MmhHboW3sn+
         b0dppmBiTbfQs+otgtSP6lxumdogRcZMlb+xnwE0qrBYhc6w+ta+jt3b+3j8k9htx4xb
         7gLAJBL/JR1+fuVsf6pS2jXro0gpIwSA78HfFtx0wsgpN/c6/fS9X1WvlIxR0XU3to0h
         onmE3zM8cquqRpyfxg+FxBVVruCN6PtTxQHH6V2Gjc5v3SlRNfLYF56rjD/jSpCvghi5
         +ICg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767720316; x=1768325116;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8xb4A0lF/nE9BbVopKVIphYtrXelnEWlhg1lys9zj5g=;
        b=Jq6ZeKFWdlxCX+yJsATyAqr5I5TqR1WIHf+2WItu55TQVueCkFPAp+WCGyQxjeczEI
         PpN8ah9FHic8nhfH+BHy+ZDke5N4Zg7OTombKxeA8HQZSoTIOlAw2BwEMX0v5S5LFL35
         QopVa2q/kb/TqdHUCo4uASo587525diPDA3Jt5Q+8lO7xn8eTRRTue9GK7Xzn5Hu2paA
         BSP0TCC0Xg601/T5y7+ihrGnSpbogohq8KN2f2OVUfi/Uye6HeoPTrqcqT/12EodxrNM
         XEtOhOcITg0y2gUF2HNeM02Llmjgs3eyxF1WgNPjyxjK7BkmoI/CrT5CrZOWXDtv9cQF
         ZIDQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4jaDCg4bFQewJD+uKT+WLM8QMXmC1IpLR5wcSKXRFzyhYrOnGcI/CFdFI5r9oN8ELNciPkmK3CXb3@vger.kernel.org
X-Gm-Message-State: AOJu0YwdfU6p8vZ8SMvRq5iwc9QLkwrr6B+tiegwegpOhVMu84RS2DtH
	xf4lqFX0poTpV7ZubgGM0NUzHxcvzFGknYoJjpU8PITbgRuZcrN1hdaF
X-Gm-Gg: AY/fxX4gQDV/FtkQWPGIMW17+v7cc5wtf4aq+X0R/7/bwHt1HE5Qlal+Hmf3LLpuf7A
	6rN3EpjbCjHm/A4aAxdvvCQi+PdI/k3GvnuopLZO7YkD+yj/bbjPmf1GOjt3DdCOb+8XomQKrCu
	/oW0uqiIOts743/1uDEYyfF7Ki5tTBXJ/QBqGXGspLp9uxd1VjqOzXJWQ+wLfdf771n/2Ci0E0z
	GBQoOZ6ODxjKCsd46MhMPaoAoE70k5sVizMo4Jo1E74nEvlaIHldNZ7wwP8lhdxuJ8WHS6gFu9a
	R2pW5Ea933GFH5ufolrzeyACe5gX19UdMPeb4R0KR8CpqsMIAq8DFS8s8ipvNLPTWU6LiZUZpBT
	0ZGtv33qpnRX6M8giZ47LJ0X4wPQDVR96UiKtlcS5KWY2gz+9rZvUDAWXF4623MR+Ke2riOiIHB
	GcMxfk3TLL9+Tb/pOXX8hdjGKfdppb/xMcbJaOqKp8cUxPBzRB8iXYD21QSk3KiCi+Ne8=
X-Google-Smtp-Source: AGHT+IEvK8nZQ8Bc8MX50o5ptPX6sBLi3/yAGjyPkCLCTY4+WRgF1rxL2hZZbDdIz4icxskuPIqEFQ==
X-Received: by 2002:a05:600c:1d24:b0:479:2a09:9262 with SMTP id 5b1f17b1804b1-47d7f077676mr42759535e9.9.1767720316324;
        Tue, 06 Jan 2026 09:25:16 -0800 (PST)
Received: from 0.1.2.1.2.0.a.2.dynamic.cust.swisscom.net ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f9d8576sm24429935e9.1.2026.01.06.09.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 09:25:15 -0800 (PST)
Message-ID: <979eb1054dbe116c2c8bb9920e94e3a93db5346c.camel@gmail.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt
 Trigger
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>, Nishanth Menon
	 <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo
	 <kristo@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, Kendall
 Willis <k-willis@ti.com>,  Akashdeep Kaur	 <a-kaur@ti.com>,
 linux-arm-kernel@lists.infradead.org, 	devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 06 Jan 2026 18:25:15 +0100
In-Reply-To: <20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com>
References: 
	<20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Markus,

I'm sorry my patch has caused regression for your use-case!

I think we would need to discuss this with TI via our FAE, because the chan=
ge
in question has both been discussed with former FAE and the technical team
behind, and adopted in TI SDK.

Or have you already discused this with corresponding TI HW team?

Which hardware is affected, is it the official SK-AM62A-LP?
Is MMC2 the SD-card?

On Tue, 2026-01-06 at 17:22 +0100, Markus Schneider-Pargmann (TI.com) wrote=
:
> Remove Schmitt Trigger from mmc pins. With Schmitt Trigger enabled
> u-boot SPL is not able to read u-boot from mmc:
>=20
> =C2=A0=C2=A0=C2=A0 Trying to boot from MMC2
> =C2=A0=C2=A0=C2=A0 Error reading cluster
> =C2=A0=C2=A0=C2=A0 spl_load_image_fat: error reading image u-boot.img, er=
r - -22
> =C2=A0=C2=A0=C2=A0 Error: -22
> =C2=A0=C2=A0=C2=A0 SPL: Unsupported Boot Device!
> =C2=A0=C2=A0=C2=A0 SPL: failed to boot from all boot devices
> =C2=A0=C2=A0=C2=A0 ### ERROR ### Please RESET the board ###
>=20
> I bisected this issue between u-boot v2025.10 and v2026.01 and found the
> devicetree merge to be the problem. At a closer look I found the
> k3-pinctrl.h changes. Disabling the Schmitt Trigger fixes the u-boot SPL
> failure to read from mmc.
>=20
> Fixes: 5b272127884b ("arm64: dts: ti: k3-pinctrl: Enable Schmitt Trigger =
by default")
> Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
> ---
> =C2=A0arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 36 ++++++++++++++++------=
-----------
> =C2=A01 file changed, 18 insertions(+), 18 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dt=
s/ti/k3-am62a7-sk.dts
> index e99bdbc2e0cbdf858f1631096f9c2a086191bab3..9129045c8bbd3a83dba6ff6f2=
148a3624b91b546 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> @@ -315,30 +315,30 @@ AM62AX_IOPAD(0x0b4, PIN_INPUT_PULLUP, 1) /* (K24) G=
PMC0_CSn3.I2C2_SDA */
> =C2=A0
> =C2=A0	main_mmc0_pins_default: main-mmc0-default-pins {
> =C2=A0		pinctrl-single,pins =3D <
> -			AM62AX_IOPAD(0x220, PIN_INPUT, 0) /* (Y3) MMC0_CMD */
> -			AM62AX_IOPAD(0x218, PIN_INPUT, 0) /* (AB1) MMC0_CLKLB */
> -			AM62AX_IOPAD(0x21c, PIN_INPUT, 0) /* (AB1) MMC0_CLK */

according to datasheet, MMC0_CLK should have address 0x218 and it's the bal=
l AB7.
MMC0_CLKLB is not present in the datasheet and AB1 is actually VSS. 0x21C a=
ddress
is not documented.

Something is not right here...

OK, grepping TRM for CLKLB, one can conclude that 0x21c is actually MMC0_CL=
KLB.

Could you please try to modify 0x21c address only? Does it solve the boot p=
roblem?

> -			AM62AX_IOPAD(0x214, PIN_INPUT, 0) /* (AA2) MMC0_DAT0 */
> -			AM62AX_IOPAD(0x210, PIN_INPUT_PULLUP, 0) /* (AA1) MMC0_DAT1 */
> -			AM62AX_IOPAD(0x20c, PIN_INPUT_PULLUP, 0) /* (AA3) MMC0_DAT2 */
> -			AM62AX_IOPAD(0x208, PIN_INPUT_PULLUP, 0) /* (Y4) MMC0_DAT3 */
> -			AM62AX_IOPAD(0x204, PIN_INPUT_PULLUP, 0) /* (AB2) MMC0_DAT4 */
> -			AM62AX_IOPAD(0x200, PIN_INPUT_PULLUP, 0) /* (AC1) MMC0_DAT5 */
> -			AM62AX_IOPAD(0x1fc, PIN_INPUT_PULLUP, 0) /* (AD2) MMC0_DAT6 */
> -			AM62AX_IOPAD(0x1f8, PIN_INPUT_PULLUP, 0) /* (AC2) MMC0_DAT7 */

All the rest actually have ST enabled on PoR according to TRM and I suppose=
 BootROM
would have had hard times booting from the affected MMC device if it would =
not be
the correct setting?

> +			AM62AX_IOPAD(0x220, PIN_INPUT_NOST, 0) /* (Y3) MMC0_CMD */
> +			AM62AX_IOPAD(0x218, PIN_INPUT_NOST, 0) /* (AB1) MMC0_CLKLB */
> +			AM62AX_IOPAD(0x21c, PIN_INPUT_NOST, 0) /* (AB1) MMC0_CLK */
> +			AM62AX_IOPAD(0x214, PIN_INPUT_NOST, 0) /* (AA2) MMC0_DAT0 */
> +			AM62AX_IOPAD(0x210, PIN_INPUT_PULLUP_NOST, 0) /* (AA1) MMC0_DAT1 */
> +			AM62AX_IOPAD(0x20c, PIN_INPUT_PULLUP_NOST, 0) /* (AA3) MMC0_DAT2 */
> +			AM62AX_IOPAD(0x208, PIN_INPUT_PULLUP_NOST, 0) /* (Y4) MMC0_DAT3 */
> +			AM62AX_IOPAD(0x204, PIN_INPUT_PULLUP_NOST, 0) /* (AB2) MMC0_DAT4 */
> +			AM62AX_IOPAD(0x200, PIN_INPUT_PULLUP_NOST, 0) /* (AC1) MMC0_DAT5 */
> +			AM62AX_IOPAD(0x1fc, PIN_INPUT_PULLUP_NOST, 0) /* (AD2) MMC0_DAT6 */
> +			AM62AX_IOPAD(0x1f8, PIN_INPUT_PULLUP_NOST, 0) /* (AC2) MMC0_DAT7 */
> =C2=A0		>;
> =C2=A0		bootph-all;
> =C2=A0	};
> =C2=A0
> =C2=A0	main_mmc1_pins_default: main-mmc1-default-pins {
> =C2=A0		pinctrl-single,pins =3D <
> -			AM62AX_IOPAD(0x23c, PIN_INPUT, 0) /* (A21) MMC1_CMD */
> -			AM62AX_IOPAD(0x234, PIN_INPUT, 0) /* (B22) MMC1_CLK */
> -			AM62AX_IOPAD(0x230, PIN_INPUT, 0) /* (A22) MMC1_DAT0 */
> -			AM62AX_IOPAD(0x22c, PIN_INPUT, 0) /* (B21) MMC1_DAT1 */
> -			AM62AX_IOPAD(0x228, PIN_INPUT, 0) /* (C21) MMC1_DAT2 */
> -			AM62AX_IOPAD(0x224, PIN_INPUT, 0) /* (D22) MMC1_DAT3 */
> -			AM62AX_IOPAD(0x240, PIN_INPUT, 0) /* (D17) MMC1_SDCD */

All of these have ST enabled on PoR, according to TRM.

> +			AM62AX_IOPAD(0x23c, PIN_INPUT_NOST, 0) /* (A21) MMC1_CMD */
> +			AM62AX_IOPAD(0x234, PIN_INPUT_NOST, 0) /* (B22) MMC1_CLK */
> +			AM62AX_IOPAD(0x230, PIN_INPUT_NOST, 0) /* (A22) MMC1_DAT0 */
> +			AM62AX_IOPAD(0x22c, PIN_INPUT_NOST, 0) /* (B21) MMC1_DAT1 */
> +			AM62AX_IOPAD(0x228, PIN_INPUT_NOST, 0) /* (C21) MMC1_DAT2 */
> +			AM62AX_IOPAD(0x224, PIN_INPUT_NOST, 0) /* (D22) MMC1_DAT3 */
> +			AM62AX_IOPAD(0x240, PIN_INPUT_NOST, 0) /* (D17) MMC1_SDCD */
> =C2=A0		>;
> =C2=A0		bootph-all;
> =C2=A0	};
>=20
> ---
> base-commit: 6cd6c12031130a349a098dbeb19d8c3070d2dfbe
> change-id: 20260106-topic-am62a-mmc-pinctrl-v6-19-next-2f3e5563fbb5
>=20
> Best regards,

--=20
Alexander Sverdlin.

