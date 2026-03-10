Return-Path: <devicetree+bounces-273573-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Aj8KFgxsGkShAIAu9opvQ
	(envelope-from <devicetree+bounces-273573-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:57:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 202F3252B0C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:57:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0BCD933519D2
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:04:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F22F38E107;
	Tue, 10 Mar 2026 14:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cAdxQXo4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199C438D6BE
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773151370; cv=pass; b=BuC/KHg4fqspXYENIcLLmnCa+Kp/dph1GUYybwlZnVo1mjGXI85opzYh6PH1WQTD2TWDcNrPCrl9/OGHqctbN13eJoL0S4ScsDkdCmNDNgGyhUvErnfO5He2zfNp9RFG1xKmWC1hzwbOfx94gGyXNcPV8lxU/16PkMmxhvnB614=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773151370; c=relaxed/simple;
	bh=+cjMHYImNRSSja4s6HqYCd0m/oShCUOYPaIwWGsmcTM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nJJsxSCG64fS4ePpsajBHLzu4BlRlcrXRAehkQ9Rrr/ggE/r3EYJhT4I/GPJQD9sJfr2kzsp36JfgqX+1CECTKdIrOoG/9CPpMdCim7+NA0xrE9SJRlFs+VRAY9UAbYBJL4stqHB/GvzuQyQSYLJZ6qDnNhKpl/P9DWuAVbETXc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cAdxQXo4; arc=pass smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-59e4a04f059so7010916e87.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:02:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773151367; cv=none;
        d=google.com; s=arc-20240605;
        b=C7jiHkgFHAyXnLghGVSAs3NkKQPUTtKF/j6d6duKHecAVAqipapciIKuk+CxyscPDI
         Z3oyzy06dQVBd9vTFNnV4z9atEQHaN+iqfqvTsowgXebj4pXTPwdvYQ+Ig2d6ifa0Yfm
         OrSYBQuurxjnC600urENuJIJ6Mfg9y27hTmWQrqZWxVm4wJ5tdyIMr8IJQ1+UmleVxWc
         TNvOnh5NX+yosDVcj3XHdhqB46xDrK0sbPnoFMVbE6973dQP/G4MzszXnbx9Uap10HCK
         MnRG/w9fHI+7chL8OJkcoBfB1r3G/5ihgBaKNiToj3JLI/RumR9XjHQteS0xaz8KJqw1
         qnFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+cjMHYImNRSSja4s6HqYCd0m/oShCUOYPaIwWGsmcTM=;
        fh=UlSRbbcOw0k3J2ioLYPp3K7NQgXsfKZ4b3AGoB5rczQ=;
        b=UEzVXuOjhRVZLVMh3NP1T2PbAwYgtAOlUMecgbhNhOpl82h5U+xe19MYoAn2G1Y3eh
         XZ6h46J/nWROiFquEIxzWRq1XCB4a+Hu9FR43fgcb42gtDiluKYNJifycfQBBXquFIMl
         AxevC2cMU2j6u5CiSOpIg8pRvkAKB8Jo81EcOmpTBszeXkTJFNvgN8tI6HZ/sHz4w1iJ
         oLJGtkCoK4qVtz84CUWy/7U0ZcTZHfk4yIPcVjEEIXBiCLosipccvMY1IwOiJg3kgssv
         v2XcrXvk+LCshVdhL+2vp7Q8qF/C50CoJK0UzHJCSaLUhEUuYioRpTiERL2sCfS6T8gd
         b2Sw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773151367; x=1773756167; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+cjMHYImNRSSja4s6HqYCd0m/oShCUOYPaIwWGsmcTM=;
        b=cAdxQXo4lN/irPCQb8llwap3S+BiPkXmUcAZ7Ei4TwRX8Iw5EyNTleO6Yq6K9G8ppr
         SX0ZAgsKDe7WrM8FuENJWSFzcem0DJbWCYFNmd9nUryH/xgwm2X8rPvLvkMvcWICuAze
         OgzOMjvkdvyTwiFUWimg3sLK9Lb9rCWKrCzHZittTk+Py9O/XCQfTiPwEoaeK77w9Hon
         W06cjjwGY1otO12Ia0Blbz7+AsIngmmk6jUsT+hRUpbozgUVmizCgzNiB1xIfK/LRMBe
         HhhU1Mu8s7+1wc4NZ8jAZKWjTL41FGPKG72LR2EbZzzRCSp8hd2I/Ht6axuWqGtBOWet
         kcKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773151367; x=1773756167;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+cjMHYImNRSSja4s6HqYCd0m/oShCUOYPaIwWGsmcTM=;
        b=bc1yj4Sp2qha/3gh46RGfi31TZOu9D2v14DkV04NblZ/mWVTwY3IgqYYwiG/lhruaW
         9E2clkany5TT8de2+PdXl04Dm+Ke6kh9EqH499UnnwktCb5PgwVMysFgTtsdJDlm20aR
         vm23p06ZNVkEZ+bYc0A4xOZVQ5Lyv+e3TM/RJe3YNnKllIjT+Q+yc0nwzYc6Q+G919Bv
         UQ/efmUqrzJAD5VA8mopzvyNqvQF1ap6Q+w8VPcxz8VhKBNSQ8oBvqAYfnst+k8AHKaH
         rU77SdWT2uGVNRLPki3NCIUA/9kD7WZB9VGhQwE7PeOGO1jLEupxziY/TiiuYp5Jjl3x
         Tjtw==
X-Forwarded-Encrypted: i=1; AJvYcCUuS3ePhkZl3uBYX6LHDkDKRivaWuL+cRpSGKvQLAmVXOe9A9GG0RFU3pGOpH6sCSzT2n1F2xB9ABPu@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd/J/vRDS35vhXuqti0oVRiKMo1kJm/2cvULqJ4hTnxZ1i3doP
	XIl8r5GZPvvmgL599vqziITc+bmPEo/nAfQq0JfkIWw+S2j4/cxKxQkzea1H2q/713bZkHlIQ/1
	++pbTEfV52TuqICEcTp6jyNT9knMhaLo=
X-Gm-Gg: ATEYQzybEgcYDWqH+GwAe791BUehwutIVMh23+HDyTstR+FzsiWWU3zhH1U/sp7kAnv
	I2+YijfYDd3PEU7i4AqclhJHiHI02chNYEWmqeSeP5blHNS40f+30uPIsliX3XsGgKCC4YgS3hU
	nme6I9tLwLpiiDr1cNeAvMjWnbQYsh1+vBQ/Zgj+DrDGNtgocgG8UxWMz8HqKErGh1BmDz471uJ
	upZHUQxIjxP1xZJx22Xysq1S8cY2P8oYHvXVtvDnA2cRQMHuGyM1YGKiJe9lkqXr3vIi3P4qvlj
	kbDj6gAY1phu/ZpVHDtAF5vLS4LnMyftmG1Sd+VK5Ad08IWll/TUJy2QdGPIi4tVhe2ZrcM=
X-Received: by 2002:a05:6512:63cb:b0:5a1:5305:74c9 with SMTP id
 2adb3069b0e04-5a1530575afmr52626e87.49.1773151366877; Tue, 10 Mar 2026
 07:02:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310124950.1345117-1-andrei.botila@oss.nxp.com>
 <CAOMZO5BVtRHW1+qtMEH9akO7ULS3LppzGXMB2_M-JJVwjbv1oQ@mail.gmail.com> <67e082c5-2b34-4960-8fd1-6cd007e0584c@oss.nxp.com>
In-Reply-To: <67e082c5-2b34-4960-8fd1-6cd007e0584c@oss.nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 10 Mar 2026 11:02:35 -0300
X-Gm-Features: AaiRm52bhcWWMfREEMDJLPaGrxzwDMESu5gS0-COwtzMY13DiIy4Ieg-CBISC-g
Message-ID: <CAOMZO5CHGssc3Tuf6fJg2_P=bp7=itfDVRANqQOiK2b-2ooeFA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: s32g: force S32G RTC as rtc0
To: Andrei Botila <andrei.botila@oss.nxp.com>
Cc: Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, 
	NXP S32 Linux Team <s32@nxp.com>, Chester Lin <chester62515@gmail.com>, 
	Matthias Brugger <mbrugger@suse.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 202F3252B0C
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
	TAGGED_FROM(0.00)[bounces-273573-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[nxp.com,pengutronix.de,kernel.org,oss.nxp.com,gmail.com,suse.com,lists.infradead.org,lists.linux.dev,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nxp.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 10:50=E2=80=AFAM Andrei Botila
<andrei.botila@oss.nxp.com> wrote:

> Regarding the I2C RTC(PCA85073A) commands like hwclock or rtcwake use by
> default /dev/rtc, /dev/rtc0 so they will try to use PCA and fail.

These commands should not fail.

date -s "2026-03-10 11:00:00"
hwclock -w

Power-cycle the board. Does the "date" command retain the correct time?

> Also from what I could find online PCA85073A is also not battery-backed.

I haven't checked, but this looks strange. How will the board retain
the time then, after a power cycle?

