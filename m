Return-Path: <devicetree+bounces-257951-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNx7I/PTcGkOaAAAu9opvQ
	(envelope-from <devicetree+bounces-257951-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:26:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4018B57803
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:26:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4B6696A0DF2
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:07:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 760B547B428;
	Wed, 21 Jan 2026 13:05:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0475C3C0088
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 13:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769000733; cv=none; b=NY0w8hUJqbX8AGSyoRF8tWu7CvP/gMfMOS2A9NUS5R+BNk5tPG9d4nUOB+UE2jkRfsnso8YhycbkvOyL4X97SWLHxf1v3tp9V7YUqJjwNeYjy6cjSyjsQKEPvZrWElMNNtCVi6XHwzadp9c0o/1vCTE5fb9V+Xyq4BeqVtMHMWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769000733; c=relaxed/simple;
	bh=j8PC4pp7q4XqmAMgoxQaxoyOtd/ScknE0VUhZ+nF6PM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MQ+JUa21WxqH+jWk1IkbxLv9Npl4uIhIJnRxHUnOShW92JI4WSOJgXSwxE1UYaVKiZanC5WeHbdAx0XHQw2uH38SyHCFPi4rQGeHznNFx0dVpbYlEs1Zmu80/CCM9y35d+3l7OsDDwX3O144rNPnAyK+xXPRpAbBvFHplrWOH+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-56373f07265so5267161e0c.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:05:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769000730; x=1769605530;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gUN0ATaibuRMMulyetCQrbYYx87LKLd1aVaMdSlzKFY=;
        b=ovgqn8aEIgwJjaOmioDnT+JPPySegdFdB7ToLddTeSSmSY+S6cll5eWdTCW+uecnss
         5O/CZPfI9+/OQUMql42oYvWcqpv/nrkJ5vMi45/hP9JZMmwe0A8lHS/DfwGCgkUo44a+
         XKIh/kwdL/jwUNegx4XuJ8Os2FjX2YuYH/17GYaHqW+0K6uM9bGxm/lRDs4Z5GDIxofj
         ZuciRDAM4KRJF9IGiixz839gpuqSg/pbPNEBhsrp4j7prnPIRAFvCoxm5ys0i6UFm/xh
         tuUBWifQUCfe8/zDnCiiT9dEa0Ak+mmR3Ff8VGw3jbmUniVJOqu15Kn+pc6e2HjZajQr
         +UKg==
X-Forwarded-Encrypted: i=1; AJvYcCUCIcDngFKWeixODfn7z9oGh1H6UX5Ips07uTCcm9rMctoCfXRWzx4COyAEjoAyUomIk7Mh4buGSJrZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwsVY2mdxT4lXa0BdOyjW/V7/pVgMzJGjFwNqUUZ91GxcQ+nohV
	QB5tVT6NM+1Kit61WM675McCqA77Dgk+alYMRyZYnPdDsrzy5FDvWNVeKLhd1HN5
X-Gm-Gg: AZuq6aLfc3/DxFsIUpOVfldQz7Kb3Pu8yH/yM7fV3+hxr+RxEOpUi3qYIIqd2bxeehY
	RBf5u4VHnqi+CZQNI9wIcWav9tjUkAwfETym5yR9KPF9Mmn5+hoBlBfz4J29vzgOgHbVLJe1d0z
	0QEgZLe5Vu5jOlkJhKm12SB+MI2J4wD4t88eWE/uQx8n3uqQtm5HRBj6whw0H0gC+FYxQoqC5Bg
	ktgyB+GgTNhiC8eDprwe0O9tSipfIoh5thHpgrVHhgxMXHvLtNw/nyvkmY10vAxSbJjfGLnSy48
	b/FT45V3SIp5QsLfajP7N/RbcD2QQftH85oN4uHWoaqNjca5ZIgMzcrD/PEAdpd49cEceAw8LUQ
	/12/fpvr99RGjQ73hEa6FgoMUQDKUj3nv9STmxpsKUnicviqtGx2pTncu0uaIVpFcX1N4AjgAzM
	YF5GUvjhM3BRZLZ/YsapFF+qYv9XFmw7pHY/wWCD45iMxYpO4e
X-Received: by 2002:a05:6122:311c:b0:55a:63c3:f7a7 with SMTP id 71dfb90a1353d-563b5c865eemr5090878e0c.14.1769000729794;
        Wed, 21 Jan 2026 05:05:29 -0800 (PST)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-563b70e58cesm4198523e0c.11.2026.01.21.05.05.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 05:05:29 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-9480a1f77d5so943107241.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:05:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX1YKMLJne1UKoJiAow5Z15AaTuHkrJ60C6eD9vyYw54iBAi8cTRgICXggm09K6uX9ldhkXkE8/YsYY@vger.kernel.org
X-Received: by 2002:a05:6102:d92:b0:5ee:a04c:7ea8 with SMTP id
 ada2fe7eead31-5f1a4dbb696mr6218862137.11.1769000728518; Wed, 21 Jan 2026
 05:05:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120125232.349708-1-biju.das.jz@bp.renesas.com> <20260120125232.349708-10-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260120125232.349708-10-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 21 Jan 2026 14:05:16 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVvtDs3xKwMODJ=8gHr4qWt8Lw76WNd-kPyDVNyV3xUEA@mail.gmail.com>
X-Gm-Features: AZwV_QiROaW1wh1OkD-aFEFoPkxT5s3KSbKqPsYjMai8dImdmwDx3jlnBNjf3BQ
Message-ID: <CAMuHMdVvtDs3xKwMODJ=8gHr4qWt8Lw76WNd-kPyDVNyV3xUEA@mail.gmail.com>
Subject: Re: [PATCH 09/12] arm64: dts: renesas: Add initial DTSI for RZ/G3L SoC
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.26 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,bp.renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-257951-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[linux-m68k.org];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 4018B57803
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Biju,

On Tue, 20 Jan 2026 at 13:52, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Add the initial DTSI for the RZ/G3L SoC.
> The files in this commit have the following meaning:
>   - r9a08g046.dtsi:    RZ/G3L family SoC common parts
>   - r9a08g046l48.dtsi: RZ/G3L R0A08G046L{46,48} SoC specific parts
>
> Added place holders to reuse the code for Renesas SMARC II carrier
> board.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Thanks for your patch!

> --- /dev/null
> +++ b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
> @@ -0,0 +1,219 @@

> +       soc: soc {
> +               compatible = "simple-bus";
> +               #address-cells = <2>;
> +               #size-cells = <2>;
> +               ranges;
> +
> +               scif0: serial@100ac000 {
> +                       compatible = "renesas,scif-r9a08g046", "renesas,scif-r9a07g044";
> +                       reg = <0 0x100ac000 0 0x400>;
> +                       interrupts = <GIC_SPI 386 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 388 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 389 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 387 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 390 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 390 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "eri", "rxi", "txi",
> +                                         "bri", "dri", "tei";
> +                       clocks = <&cpg CPG_MOD R9A08G046_SCIF0_CLK_PCK>;
> +                       clock-names = "fck";
> +                       power-domains = <&cpg>;
> +                       resets = <&cpg R9A08G046_SCIF0_RST_SYSTEM_N>;
> +                       status = "disabled";
> +               };
> +
> +               i2c0: i2c@100ae000 {
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +                       reg = <0 0x100AE000 0 0x400>;
> +                       /* placeholder */
> +               };
> +
> +               canfd: can@100c0000 {
> +                       reg = <0 0x100c0000 0 0x20000>;
> +                       /* placeholder */
> +               };
> +

Early feedback: depending on when this goes upstream, we may
need a few more:

+               ohci0: usb@11e10000 {
+                       /* placeholder */
+               };
+
+               ohci1: usb@11e90000 {
+                       /* placeholder */
+               };
+
+               ehci0: usb@11e10100 {
+                       /* placeholder */
+               };
+
+               ehci1: usb@11e90100 {
+                       /* placeholder */
+               };
+
+               hsusb: usb@11e30000 {
+                       /* placeholder */
+               };
+
+               pcie: pcie@11e40000 {
+                       /* placeholder */
+               };

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

