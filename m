Return-Path: <devicetree+bounces-272551-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /ojPLO4xrWmVzQEAu9opvQ
	(envelope-from <devicetree+bounces-272551-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 09:23:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEB722F06D
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 09:23:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8E5F43010B9D
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 08:23:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AAF1336EF8;
	Sun,  8 Mar 2026 08:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fTPnETMF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37B730E838
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 08:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772958186; cv=none; b=cqqWBNMsU5FwEhf1ptt7ECh2pZTqrGjojEe9rhP1QIew+1pmp7qOCafeTtomzEhMH8HZTuY/FHTyt+ugn6QlTwyigU2VPNJfbSzc6kuMGZtQqH8jGsvss+pvSXH0e2f3cXPL5a7KS35jrVIMu/HVUvD18Apq/gAx4KW5YtpbHSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772958186; c=relaxed/simple;
	bh=hvDoSy3zhLMt2PSWtXgqb4w044bqYBFn3QDnwo7J0wA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=leH8jwWOlauBF2tDm5Lm4aTE8YRezv0gp5NpgHbQQ45SrOKOQOWtFgvAohwOJLidjsUKePfCqsFKyoxWPaSi5XPzyTxxiswvc8pVwKjKDk8AtFIf46FtLNvvLORbR/FLcKONCQ1Y/xTAyUVLU3xtAIJiz2KtJnjKtdfbW2y8sWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fTPnETMF; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-439c5b40f60so3748301f8f.0
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 00:23:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772958183; x=1773562983; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z8aMocQM9u6X2gsio5xSbmOAH1sSfPIdUgMQJD6cnQY=;
        b=fTPnETMFkmUCC1ekvcRV0UJMjYQmXW10UelAsIXXBrrHiPGMUAgA4ghi04JuDnEBGc
         T5TOuSEdoW4cHjTs52JlMEXhsNVpyOPcSga3A3vEY3QyVqJ5kWbikUVB8F75MLkiA5L1
         9rX+/2GDmgj3Ya8UStuHCw7TcL45T4/DzIRIW2akUtHwjR43eyeAT+6s9uH1vCOaBO0Y
         2e+XrYcqRzl6i51pZJ+yOwJ8sv3LrJoy/oYLbzFjJRSZvzKpD9Y1Jacpj1KyVbfRTetT
         Z2k/bqc6cL2J0tSHB+SFDvW/M6twPaVYkAA1D14B/b/1AJLXGeUtrO8tET6U4mKEbxET
         FLxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772958183; x=1773562983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=z8aMocQM9u6X2gsio5xSbmOAH1sSfPIdUgMQJD6cnQY=;
        b=TH07L2u8A/5dl3ZRZpkELbzHkbAKdHhTMflIh0yhsL1dF3aHezPL7h9d4qaWoDMlg5
         SG014zV5URDCZeaNfM+/meNJdWtvXMTH8SAaMqBgzyqkj6UVdCcle7wpGwdESEBA7ISm
         V6tkRDtbKwLfo1Bj+rlFYgItrgkUeZjrvD2w5LK01Kt5VNLxJ6TvG3tanJS6+Npo4YFS
         vFxZ1Bp+TrF0FOwmzyf15swZjdOgKeT6IcYdx7DEPy4IctZdAtUt2ElgSp7GYj7lT3ku
         3Q2k+rG1Hs+2Bx/EluMeHP3dfzyHZSg00QFsdGshD8wI270/Qw+DbiQpVku4UUK+kEOr
         hjaw==
X-Gm-Message-State: AOJu0YwkTMmnIFY6WktyirCKoQ5Rkl1pAr5xWCSkp7VzDkhlE6KmesSN
	2VxnB7XSHKIeWVatzqPwGpKUAN8LTw0moxZ8L5AQQa+/10QIdIiqD91n
X-Gm-Gg: ATEYQzw/Gd243OefJWJA1LXyngYpZ4Qb1uInlJDAelflRy0vxmFxAE/Fr833tRiyHPi
	qj7W5u1HN0/FMmh+PCV2osUh/j8NZ8zf7njF0dV3mmRA9ji76hmkM3LPQlhNw0RlSTS2/+1cmob
	vm1/wAxoS+hfR5UiXVdUkCDzxs/9qD6uauAf7fELWROhrZpjk36d9mU5qA0F+NZWUIW5s6nonvM
	7J+eiDPbsEB0FFbAzcW82XCRcpkn0TpVy9nXcT0+cxmSNLPB7ox7q7YPi7pR/hfhoLDHC0MgXny
	L7ep9UAHAtuotVUWN2AmZRMP7EeoZ1U0wRj+lSRSI5d0jqBsK/OnlBrYwYQVuf42pTBwsbcvpDo
	SVV5CGKTlkWGiWVGArFi6l5SZfRyU1BelOuyPjAMG+Reg23qQP26GgSR+o49m0RR+eO9Qg6k+Ud
	RchYKXOBUIyZOhpqpVFNHgmH5DyV0y9UdzW4x0hy77LSQvFut1g6OLcK6JKW1Yb4y8wigYnKl2n
	Up9kA==
X-Received: by 2002:a05:6000:609:b0:439:cb10:dfcd with SMTP id ffacd0b85a97d-439da67982fmr12882158f8f.39.1772958182927;
        Sun, 08 Mar 2026 00:23:02 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-12-163.dynamic.telemach.net. [86.58.12.163])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae2bdf8sm16891038f8f.25.2026.03.08.00.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 00:23:02 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Andre Przywara <andre.przywara@arm.com>,
 Michal Piekos <michal.piekos@mmpsystems.pl>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 Michal Piekos <michal.piekos@mmpsystems.pl>
Subject:
 Re: [PATCH 0/2] arm64: dts: allwinner: fix Orange Pi Zero 3 PMIC interrupt
 routing
Date: Sun, 08 Mar 2026 09:23:01 +0100
Message-ID: <3404622.44csPzL39Z@jernej-laptop>
In-Reply-To: <20260308-rc2-boot-hang-v1-0-d792d1a78dfd@mmpsystems.pl>
References: <20260308-rc2-boot-hang-v1-0-d792d1a78dfd@mmpsystems.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Queue-Id: 1CEB722F06D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272551-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.933];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Michal,

Dne nedelja, 8. marec 2026 ob 06:16:50 Srednjeevropski standardni =C4=8Das =
je Michal Piekos napisal(a):
> This fixes a kernel hang during boot on the Orange Pi Zero 3 caused by
> incorrect interrupt routing for the AXP313A PMIC.
>=20
> The PMIC interrupt on is connected to PL bank GPIO handled by the R_PIO
> controller. However current dts routes the interrupts to PIO controller.
> This causes the kernel to select wrong pinctrl instance when configuring
> the interrupt which leads to invalid register access and a kernel hang
> during boot.

Where did you get that info? Publicly available schematic clearly shows
PMIC interrupt pin being connected to PC9. Additionally, R_PIO controller
on H616 is very basic and has only pins PL0 and PL1, which are used for
PMIC communication already. Neither of those pins is interrupt capable.

>=20
> The problem existed previously but became visible after the commit
> 01e10d0272b9 (pinctrl: sunxi: Implement gpiochip::get_direction()),
> which causes gpiolib to call the gpiochip::get_direction() callback
> during interrupt setup.

I think proposed solution just bypasses the problem, not actually fixes
it. Can you share kernel crash report?

Sidenote: Tested-by: tag doesn't have any value if you're also the author
of the patch. It's already implied that you tested your solution/improvemen=
ts.

Best regards,
Jernej

>=20
> Patch 1 declares R_PIO node as interrupt controller so it can be used as
> interrupt parrent.
>=20
> Patch 2 fixes the board device tree by routing the interrupt to R_PIO
>=20
> ---
> Michal Piekos (2):
>       arm64: dts: allwinner: h616: declare r_pio as interrupt controller
>       arm64: dts: allwinner: orangepi-zero3: fix axp313 interrupt parrent
>=20
>  arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi               | 2 ++
>  arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts | 2 +-
>  2 files changed, 3 insertions(+), 1 deletion(-)
> ---
> base-commit: 4ae12d8bd9a830799db335ee661d6cbc6597f838
> change-id: 20260308-rc2-boot-hang-269e8546635b
>=20
> Best regards,
>=20





