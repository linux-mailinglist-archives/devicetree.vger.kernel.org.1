Return-Path: <devicetree+bounces-272829-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DxlHd6hrmk9HAIAu9opvQ
	(envelope-from <devicetree+bounces-272829-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:33:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5F323725C
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:33:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E6D36300A116
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:33:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0492938F931;
	Mon,  9 Mar 2026 10:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V0wrvRZA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FBE7262E
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 10:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773052378; cv=pass; b=oXl69IGJmz5KPRsu93zgPMr7JgQttgr6HAw40f0jVHBN53vmliw5xZsqa7SyQ6604m3/RyIVo2/ownrh26q67z3lsODAhF0FexDuH8tlMMjnspIGcxjZtoKxSnt+xE+JRU1dgRgMUABf7oA1HhVfDFevWzpmWkw0rCRPTOR5MMs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773052378; c=relaxed/simple;
	bh=y7wuThGYnUtDKgV28nKsh5wsvpPKdidycqd61+dpPdA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dH3rW7DpUcIFz+C81W71edJUoc4ARmqaJ3rB79H8QmflmMCJJKpS2k+6+2rEGOBy7uCE/9nRUskPvgaBOEUI/2oT2zZgMuNURYKEjXcLU7W9aUQLSLTM/QTMqdhp4ZryZOrgq3piaISDCVJntEm/zLqXHdmQ9K/y1QpWt6ptEwA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V0wrvRZA; arc=pass smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-64ad9fabd08so9570020d50.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 03:32:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773052375; cv=none;
        d=google.com; s=arc-20240605;
        b=ZswyKKRp0/bRqGqQbfqoII7+8KPIEJC+NAzfyxou9NLhUjooN88KvElKxFxjQTfIhV
         opLunYl14KPsND8XSGlLzQLGWMV1R+hgbSVC/AtWeEb8iz8k7KMk2D3Vce7OWF4kFFEY
         /7RmsnGIEX34DMpmOmSpwQfr/4t+rxX9g58AIgPIrunleZ0gesVbRcpCveLZrVIZKdI3
         GSHEhIxMz8wr5Lk/rvHBXHqW008wgSqL0hp5t+0EKf+1Xy4kWxft0Yz8c0zm4YBjHK0R
         3vtCO9PFPy1i8zC99etaWBc8W9QU0o/GeoSzC02IJu2ST3p9aOfEJvBUi9i6/rsvq6Xi
         0SLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=7R00jT9f/wF6nP47m5GBLd6PhCW+dAuP70evV4AQ3/g=;
        fh=/BqX995vlkS5LpCePdZCxc/YySqlATtlLNdbha5QB8w=;
        b=L9qySxiYAQxUPmUcKXFU16VNfJA6E1yWfWd7B/4GyT7k1ouId4mGx2UpHitgcjy7+s
         055d9SXMmLKY4b8bqNM9lX61+MS7Kt4Z9ZJmPOuCrEy2t29BwTRVf6Qr4/YTBY1phLgp
         55aLQ2RMplzwHP2TUMz9MG0JayXrEqk6QSYJ2QiUkzug5W7xUZ4etGTQFWAIyAJBG8ov
         4sLWl0nU/w/pZJsj+GJpUDi8OJL/mcGNtIDHrfrXNiX+2tTKIcvLv7nfoozQY3WsNWMI
         wQxKYw3wGRxgRfujdF0Q22x4qo1xaQIOcO9+WHdMbGExWe+8ujI8cLzj19vT50JIeNcU
         hh5g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773052375; x=1773657175; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7R00jT9f/wF6nP47m5GBLd6PhCW+dAuP70evV4AQ3/g=;
        b=V0wrvRZA1ST3DqLxg/FAqEj7xgTojb6S9saKCBIABqjc4yBVcei9nestk/UzBehyPQ
         mgeWyw/wfe/4ikXoPToEcyQRY3bJVQkEiYTWb9aQm5QcuL+jtwjRvCVvK2XlIXFApg7l
         ItdhIxA0wUlMZ/KfCy3TZqrdR/QMQ7zQ6nwWIzCgJEfIp44XOP1Y/nekCDFwmbfS8qzz
         v/38Z9dhSTb3cKrlV/mWm98e9kOGmMyH2ESPldiyTqLPNz/jx+ID71aZ8rpBvmtt207i
         zpo4AA/i7VvHJaeIL79/+9Yscq6Zbqq1PW3IrMnuhlRz/Y2w9qXeGiJJXRsqJct/IwTR
         YgqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773052375; x=1773657175;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7R00jT9f/wF6nP47m5GBLd6PhCW+dAuP70evV4AQ3/g=;
        b=aoVRJwmeb+aimXO0DlWlALSK+kClo18r2dFhsMcwGRmjgiFgmtpJjc13r817wQJ7d6
         0Ruotxf8E9wyWhPJqDeOeJUEbtq5bTIMaJZqKP3dnr4VvuU9kLdX19ol+sAMU9xfmhjm
         ipID9ER0QAGiY/hAP/GsUeerbmwmYBtPq6EN+tLGY6VH11s6WuJW/RSIi4o+JZMZx9Rd
         /fpcy8vq9jt37xBLXI5b/KZmTa7QImWKV/5L58BfkDwEPodRtphoYsQFAHYOQrXKJfuU
         kMVfK13E0YmG+ygs7CYrZ6GvOHAcwMgEreb8oFT+4nv2zDgMnSrKO0ePjebfPJCWeKM7
         mrrw==
X-Forwarded-Encrypted: i=1; AJvYcCVDUjlfLrgrcuwvzm04HFKx13f1g11fjm1HH/G852a1K59GKr0PtTuzdaHdrCD/RZcoqPWkKf1Us/7F@vger.kernel.org
X-Gm-Message-State: AOJu0YyctPkdTXDVoefnqXf1XarQoOb+lUqWjHT02Xa4ciSj+CMA96gq
	wMm1vyWh1Nijik0HlPDz+HThlPz4v0cqDlAZ3HgTVH1srYP3BPhLOIe1V6il3Qa4UIBeINxNw4C
	fXRSYAuCEP5E/x6xBg78aWa65cwESU7E=
X-Gm-Gg: ATEYQzxELY1jqwqmMBqxJAI/yUoPvNu+VoUtQtGqTMzDSfHYCwoiHk9W1XE47lYKBbw
	lqlxhAmIE4CVIlpcU8rh4CHBHDxFmVxSRxu9hnVrzrQpzzq1vtz2kh08uN+i7jKcD6ymdrn1HV6
	HIaZOPrq5pKSE7GyySPFd6ifT4UQMkEhncCJNd/84sGVJiHqD9dZxVoKP+kbuBhL7Cw5mUQGndx
	tCG2nMMOvELjLkam9J+cj3tuWiaBzdbe4JrszkbEWzPMCLzujBKOKflGZNp/5AKFm7F29hdS4UE
	a51iCEM=
X-Received: by 2002:a53:ecd7:0:b0:640:dd02:a777 with SMTP id
 956f58d0204a3-64d142fedf4mr8471850d50.69.1773052375353; Mon, 09 Mar 2026
 03:32:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
 <20260302-orangepi-sd-card-uhs-v1-2-89c219973c0c@gmail.com> <20260307022951-GKC302167@kernel.org>
In-Reply-To: <20260307022951-GKC302167@kernel.org>
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 9 Mar 2026 11:32:44 +0100
X-Gm-Features: AaiRm50q4cIc_96jC1UTLpzV5oO0Bj-ABAK0PLIBWIjJCOYDycAu5o9P3q_6JjE
Message-ID: <CABdCQ=PWJKv9x-vXt1_jGgZK+XJzrY71PPECp2FttHrDjA_MYw@mail.gmail.com>
Subject: Re: [PATCH 02/10] mmc: sdhci-of-k1: enable essential clock
 infrastructure for SD operation
To: Yixun Lan <dlan@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: EE5F323725C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272829-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.956];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

El s=C3=A1b, 7 mar 2026 a las 3:29, Yixun Lan (<dlan@kernel.org>) escribi=
=C3=B3:
>
> Hi Iker,
>
> On 16:13 Mon 02 Mar     , Iker Pedrosa wrote:
> > Ensure SD card pins receive clock signals by enabling pad clock
> > generation and overriding automatic clock gating. Required for all SD
> > operation modes.
> >
> > Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> > ---
> >  drivers/mmc/host/sdhci-of-k1.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of=
-k1.c
> > index 0cc97e23a2f9c7b2f9376318a8a7ebb860571504..b703b78282ed8d89183c816=
477c149c0a565618a 100644
> > --- a/drivers/mmc/host/sdhci-of-k1.c
> > +++ b/drivers/mmc/host/sdhci-of-k1.c
> > @@ -20,6 +20,13 @@
> >  #include "sdhci.h"
> >  #include "sdhci-pltfm.h"
> >
> [snip]
>
> > +     spacemit_sdhci_setbits(host, SDHC_OVRRD_CLK_OEN | SDHC_FORCE_CLK_=
ON,
> > +                            SPACEMIT_SDHC_OP_EXT_REG);
> As I'm testing on Bananapi F3 board with emmc chip, this line will cause =
timeout problem
>
> [   27.613806] mmc2: Timeout waiting for hardware interrupt.
> [   27.616592] mmc2: sdhci: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D SDHCI RE=
GISTER DUMP =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> [   27.623007] mmc2: sdhci: Sys addr:  0x00000400 | Version:  0x00000002
> [   27.629429] mmc2: sdhci: Blk size:  0x00007200 | Blk cnt:  0x000003a6
> [   27.635853] mmc2: sdhci: Argument:  0x001ca0a0 | Trn mode: 0x0000002b
> [   27.642277] mmc2: sdhci: Present:   0x01f70106 | Host ctl: 0x00000035
> [   27.648700] mmc2: sdhci: Power:     0x0000000f | Blk gap:  0x00000000
> [   27.655124] mmc2: sdhci: Wake-up:   0x00000000 | Clock:    0x00000107
> [   27.661547] mmc2: sdhci: Timeout:   0x0000000e | Int stat: 0x00000000
> [   27.667971] mmc2: sdhci: Int enab:  0x03ff000b | Sig enab: 0x03ff000b
> [   27.674394] mmc2: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
> [   27.680818] mmc2: sdhci: Caps:      0x35fc0080 | Caps_1:   0x00002f77
> [   27.687241] mmc2: sdhci: Cmd:       0x0000193a | Max curr: 0x00000000
> [   27.693666] mmc2: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0xfff6dbff
> [   27.700088] mmc2: sdhci: Resp[2]:   0x320f5903 | Resp[3]:  0x00000900
> [   27.706513] mmc2: sdhci: Host ctl2: 0x0000400d
> [   27.710940] mmc2: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0x02080208
> [   27.717363] mmc2: sdhci: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>
> Drop it will make emmc work again.. but I'm still unable to make SD card =
driver work,
> that's probably another problem
>
> I've took a look at current K3's sdhci driver, all operations on SPACEMIT=
_SDHC_OP_EXT_REG
> register are used only when doing voltage switch with SD card, snip of th=
e code from vendor
>
>         if (host->mmc->caps2 & MMC_CAP2_NO_MMC) {
>                 /* sd/sdio has no phy */
>                 spacemit_sdhci_setbits(host, SDHC_TX_INT_CLK_SEL, SPACEMI=
T_SDHC_TX_CFG_REG);
>
>         } else {
>                 /* use phy func mode */
>                 spacemit_sdhci_setbits(host, SDHC_PHY_FUNC_EN | SDHC_PHY_=
PLL_LOCK,
>                                        SPACEMIT_SDHC_PHY_CTRL_REG);
>                 spacemit_sdhci_clrsetbits(host, SDHC_PHY_DRIVE_SEL,
>                                           SDHC_RX_BIAS_CTRL |
>                                           FIELD_PREP(SDHC_PHY_DRIVE_SEL, =
4),
>                                           SPACEMIT_SDHC_PHY_PADCFG_REG);
>                 /* mmc card mode */
>                 spacemit_sdhci_setbits(host, SDHC_MMC_CARD_MODE, SPACEMIT=
_SDHC_MMC_CTRL_REG);
>         }

You are right, SPACEMIT_SDHC_OP_EXT_REG should only be called for SD cards

>
> --
> Yixun Lan (dlan)

