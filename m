Return-Path: <devicetree+bounces-275080-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4EzFCIPbs2mzbgAAu9opvQ
	(envelope-from <devicetree+bounces-275080-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:40:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB3B280A46
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:40:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 75FF4300F28B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE89E375F98;
	Fri, 13 Mar 2026 09:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lNYnwria"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8756D331A53
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.171
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773394809; cv=pass; b=BOAsZSDwNJYxoLvMPNe2eMGCuBxjI4oll2psTVL3XVeSuBF32/mg4evKgIScRasZrkx21kiwU/Xxg2Pyx0S1f8mOixJeadsYPdQjHpPgN57RNZbeTJisZNoGjqy5TUxVCmpMOIM39mN5G2JpEnvyrWj9eqO5EWoiut/UyVo12ds=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773394809; c=relaxed/simple;
	bh=YzWgSlUmsBERzldYiMWCpidRoXax6EIZTm16mdkgALA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WPaM9fg9x1qr5ZuPflZRFK/2lywX0xHjN+mS9SuTNQyQ+FaTdpoKujMKU7jdUycQfvcJ5AB7Q2junLUvRL4DNcRLVJjjn801POz7Yr/UNkCU/lecVSEaTEwtQVQr8T8OA4hlu4QYAxn7dwomdekKSxVeIBoBK/S3bCUeobH3apM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lNYnwria; arc=pass smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-8cd80bea5f3so122930685a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:40:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773394806; cv=none;
        d=google.com; s=arc-20240605;
        b=YQkXL872pJJSUmnMuTdAQI4XYpLA9xrxSP3Cj21pwZKw68mJ39trw38bMdUy9izVQU
         Gkgu46s0zC7Fljsv09cq9mLM11atL/GuudCGyfRe76geFDhQZaUBzCr1mgBJ1KcLLG11
         7wO2yGtOCkT7pjEVYz4JRE19owjJUB+quPYwiWcRPEQKQOawOe61QR6ARXIU134KUrtZ
         dYlyx9OFqcrh3WLnr3b2PYQXarlGtYisan49E0ltjPmX2eh8jcnVCfnYUYIqY0ncedE9
         +Kuj+bxsaooEUBblB6xYEm4/ncy6dOiA5jbdsk4EZJjx965trUmrPkFtCy07eF9kvw2f
         pRPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dlE92pMBDxcqf7pEJi1EWDiZ3PurhMMxo1VeKrJwWqs=;
        fh=pzbPcRpqfv2dPCXmmKgL7WOewumH2OIOf5gKLXB9zmY=;
        b=ka7UXWN1wnOlRWDL8zhzW1f28f/VeTNVk2t7C8qhJ30/gkRr5NRXoFQPWe36x8rfLU
         ZLZZqNkN2F2aFUd6zJSzfKRcqj0OGhn69jeRWxjMPr8MaSCS53rrOPg+nx5Mr4bEjdk2
         8YjmHC7JCuFBZgOfiabDu8G1+/zA2WRNb3emnVm9UaK7dJu+NFv+5p2wrFEDSHLZV5m0
         l8CSMerwbx/bs/WVq9GTIqJvbQRbkUQGQExM0D5uR7CVSidR6LuEMSeXRThpszE7hWSi
         PGahxMY3DEv7EKrY/wf5NkUmsqJDkDXj/vRlYarPYjShnf6QTEz53vrUcgXDQNzYxpk7
         yH7g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773394806; x=1773999606; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dlE92pMBDxcqf7pEJi1EWDiZ3PurhMMxo1VeKrJwWqs=;
        b=lNYnwriaiCcnwOLb6vvNyElcGp/V6pscJg8lsCholC8M+SOgErvsVtPWmY4PGmukG2
         FcCFNPcDFmGyaTwVw7zAxb9C9N0ajzeVLG3ackIOgtG0KwY6/WH9oFsMrYZA5ev35CXc
         gDtEivH5C3ImpILyq4YMss+CvyZKZ7pYmbLx8wSp6Fh6g69Xhfo9PJKHJ30ErRUk6cWD
         k7X2jGzIQEHiBlGWBcBMpUT4wrLN3rUmX+bwGAmyf/wrQIlwecKcnnuTNBKWY2gh9xHg
         Fa4bNnaPCZW2r6l2grBVq2IhLmmJ1QfcoL4K9PnRax6GsDHnHTkd59oFoiZBgPfOdw0d
         wY2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773394806; x=1773999606;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dlE92pMBDxcqf7pEJi1EWDiZ3PurhMMxo1VeKrJwWqs=;
        b=roKPsX2MYvXS6aq09czwQvNwixAJg0H4xMmCsabOROT19ZPeqIIGoW3Hr7m2VxPq5m
         PnrwACzYxcFjEC8lgF1HLgfO/6hzDPBJdPxsoH+lZbwIl8kGV7pXILxF4r/0bRWCqzWS
         lPcgqfFXhLLyEKFAKEnnP+x6CLMdKMLuu9HNRKxV5dwH7GApX/zUGqho7cG+oHSEeS1C
         TmuJ4oxb+1MrNjqqUWnucBMqBtPDlZVrHCreJpVXcDAQDiLffwMovzLUp55BeImFdGKD
         Q0ib6UujkdECRkN4dYB/hVTNWVWmJFNU3+Fzf0+O0n5SRZb1IIKq3HX3Syayetofomav
         26fw==
X-Gm-Message-State: AOJu0YzSMW/3W49NgypjOG4NhCkDkEV3OK0/y7zUO9xgN3d29bA7Vqh4
	9iIzf/+UEI0+DTFBSwmjS5E9x6GJJo7RSVXfYBtyFcIS0t+TTtkQpwbs4m0jkMd4VgWwRyAq2U9
	gkM8tyiULJd3kG9RqvoDntYxNzjZx30E=
X-Gm-Gg: ATEYQzzfHN+XEqMjwUdb5OpbeI2o4ZOeidHoDCGvohAI1+9ahLP+P7k3DRojoH25P/I
	MN3VTD22HEmar+QihrNgXi6mPhqr7WKvZwWlqx7lpX9jhLz+nVxcVbdTgJGpqtH7Hl5lhLz0GvI
	jSRJyMdU/sVUlqpNbkr80xSLxIzcxVRCkSXBCcQ4mbqP0Ag3h9v5Bh0cFY04pgUa90w32cZUvB0
	lvyG6veVSSbo9SpZWK+x0qHCEurLjrNLJH3oQlTj9UGTncLx4E7gbWQh1LdW0rmrdBwtriHaS+s
	r7VD6efjUdaAkAGzbmY7UwLEMUdRsAqFPg==
X-Received: by 2002:a05:620a:690d:b0:8cd:8f18:d1c4 with SMTP id
 af79cd13be357-8cdb5b3203amr295554085a.56.1773394806425; Fri, 13 Mar 2026
 02:40:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260305185116.781184-1-akkun11.open@gmail.com> <20260305185116.781184-3-akkun11.open@gmail.com>
In-Reply-To: <20260305185116.781184-3-akkun11.open@gmail.com>
From: Akari Tsuyukusa <akkun11.open@gmail.com>
Date: Fri, 13 Mar 2026 18:39:54 +0900
X-Gm-Features: AaiRm513Z0tfTZUa8grZ-svVd-KIsw6SByNnlN-BN7-Nvit_VHPm6CosTcm2fXM
Message-ID: <CAKr_iV7GRaiXp8VFVEAo8VHoPQzcD6Z=Av38R6_fAs5t7aQkDg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm: dts: mediatek: mt6589: add basic support for
 Lenovo B8000-F
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
	sean.wang@mediatek.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275080-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[4.196.180.0:email];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 4DB3B280A46
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 6, 2026 at 3:51=E2=80=AFAM Akari Tsuyukusa <akkun11.open@gmail.=
com> wrote:
>
> Lenovo YOGA Tablet 10 (Wi-Fi) - B8000-F is a tablet which belongs
> to the "blade" product family. It is powered by MT8125 SoC,
> which is the tablet version of MediaTek MT6589, and has 1GB RAM.
>
> Like other devices in the "blade" family, it uses a framebuffer
> initialized by the bootloader at a consistent memory address and size.
> This patch adds basic support including UART and simple-framebuffer.
>
> Signed-off-by: Akari Tsuyukusa <akkun11.open@gmail.com>
> ---
>  arch/arm/boot/dts/mediatek/Makefile           |  1 +
>  .../dts/mediatek/mt6589-lenovo-b8000-f.dts    | 15 ++++++++
>  .../dts/mediatek/mt6589-lenovo-blade.dtsi     | 37 +++++++++++++++++++
>  3 files changed, 53 insertions(+)
>  create mode 100644 arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dts
>  create mode 100644 arch/arm/boot/dts/mediatek/mt6589-lenovo-blade.dtsi
>
> diff --git a/arch/arm/boot/dts/mediatek/Makefile b/arch/arm/boot/dts/medi=
atek/Makefile
> index 37c4cded0eae..b67b94b7cbd0 100644
> --- a/arch/arm/boot/dts/mediatek/Makefile
> +++ b/arch/arm/boot/dts/mediatek/Makefile
> @@ -8,6 +8,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) +=3D \
>         mt6582-prestigio-pmt5008-3g.dtb \
>         mt6589-aquaris5.dtb \
>         mt6589-fairphone-fp1.dtb \
> +       mt6589-lenovo-b8000-f.dtb \
>         mt6592-evb.dtb \
>         mt7623a-rfb-emmc.dtb \
>         mt7623a-rfb-nand.dtb \
> diff --git a/arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dts b/arch/=
arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dts
> new file mode 100644
> index 000000000000..47bb6ab1fe72
> --- /dev/null
> +++ b/arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dts
> @@ -0,0 +1,15 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/*
> + * Copyright (c) 2026 Akari Tsuyukusa <akkun11.open@gmail.com>
> + */
> +
> +#include "mt6589-lenovo-blade.dtsi"
> +
> +/ {
> +       model =3D "Lenovo YOGA Tablet 10 (Wi-Fi)";
> +       compatible =3D "lenovo,b8000-f", "mediatek,mt6589";
> +};
> +
> +&uart0 {
> +       status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/mediatek/mt6589-lenovo-blade.dtsi b/arch/a=
rm/boot/dts/mediatek/mt6589-lenovo-blade.dtsi
> new file mode 100644
> index 000000000000..3a6e0d8c8a64
> --- /dev/null
> +++ b/arch/arm/boot/dts/mediatek/mt6589-lenovo-blade.dtsi
> @@ -0,0 +1,37 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/*
> + * Copyright (c) 2026 Akari Tsuyukusa <akkun11.open@gmail.com>
> + */
> +
> +/dts-v1/;
> +#include "mt6589.dtsi"
> +
> +/ {
> +       chosen {
> +               framebuffer0: framebuffer@bf600000 {
> +                       compatible =3D "simple-framebuffer";
> +                       memory-region =3D <&framebuffer_reserved>;
> +                       width =3D <1280>;
> +                       height =3D <800>;
> +                       stride =3D <(1280 * 2)>;
> +                       format =3D "r5g6b5";
> +               };
> +       };
> +
> +       memory@80000000 {
> +               device_type =3D "memory";
> +               reg =3D <0x80000000 0x40000000>;
> +       };
> +
> +       reserved-memory {
> +               #address-cells =3D <1>;
> +               #size-cells =3D <1>;
> +
> +               ranges;
> +
> +               framebuffer_reserved: memory@bf600000{
> +                       reg =3D <0xbf600000 0xa00000>;
> +                       no-map;
> +               };
> +       };
> +};
> --
> 2.52.0
>

Hi,

Please ignore this patch for now.

I found that the panel on the Lenovo YOGA Tablet 8 is 800x1200,
which is incompatible with the current simple-framebuffer configuration.

I will fix the Device Tree in v3.

Best regards,
Akari Tsuyukusa

