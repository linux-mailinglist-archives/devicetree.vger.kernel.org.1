Return-Path: <devicetree+bounces-324635-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8nBnDTpLUWohCAMAu9opvQ
	(envelope-from <devicetree+bounces-324635-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 21:42:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 787A073DE4C
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 21:42:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="G/3eTXpw";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324635-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324635-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 349E03007AE0
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 19:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E80F383316;
	Fri, 10 Jul 2026 19:41:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 950B937B00C
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 19:41:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783712476; cv=none; b=VQ/KL89FaFLNCYlAsR+2pdwz5tpIMYg3dDGGu+la03bLqaAipRg1rSwp5yLlgoXJVvnXk5rsW0tfLNHsrhXSxfeAEPDbEq98x4LbmsrmGpwr6w4yFeaw0aUrzZqSQUJYL04TFSdsVqCAyFDKAVVsMLRT4wDmHhVRP6N9rkHhHXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783712476; c=relaxed/simple;
	bh=0BS9a11S/ASQzzUnTlPyCH9spaY57RR0shSO+pm/PGw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RllKaY85OPb+xQH1A4JXV6Fc4Fy44b4FtUwBOe/0US77BAIn/OT5+drQm6LRY+uTSOyLBj2HgTKK+ZkYLIC3VXKHUQG7X/kZsCPH5xhsC+Uy93sSCE28mkYafEveEmo5HlcZzySixPl+ohj0KN2fCHrEafy5DqsDMhAM4njsMK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/3eTXpw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FE671F00ADE
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 19:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783712475;
	bh=0BS9a11S/ASQzzUnTlPyCH9spaY57RR0shSO+pm/PGw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=G/3eTXpwb9YtyJg2IHMVyMTz8QCkrCnC84GGVHNcGfz8gz2bzW/RdHZ9KtBEYKE01
	 5Fq7fTf5n/FyAGOL58ZNPi2j86NWC+iwLZu8ihoa3mQ+3rnbZRoAlf+gC2FX5XOHGe
	 QWNbJ/g4K5nwOZZAN/Tq51nvX5XbxMfKIzF7l0ATnU2VyBMoEzdwVmsTeCcgarjgcz
	 susJwHa+pdoZ+NnFfkaWgE1alMxapZ8/OFkKJ2oHJaP9LrL57jXI9Y+VWfae3mmSLl
	 6X6p3ImmFT9Jze9S5q7qLFzmHp5zok9EKwgCKSuliH4TdjpG4PMxtsnq5wG0521gsa
	 YLqHE7dCsofcg==
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5aea0fff535so1394910e87.3
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 12:41:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RqsDafzysS9JAK9GrxIVjIzYJ+r6E8lNd44een5Q6F4aK4GC3qRBSuFj/sOh4kcnsEuB3w6OMTkmcJ1@vger.kernel.org
X-Gm-Message-State: AOJu0YzFxzGj4Oh0I2+9M6O0SUVOHHSam+m9mLah69rEWO0Eq4aVWZ7H
	tE3cFXItZqQYpGsiQ8N1/xctd7BXQL7bKmeKHs/VIi//VLzdLAck6vmM5tcd+WNjHVC+mOI7b+V
	Oq4hhRP/9idu+SJBCttWiI56jE8WCoy8=
X-Received: by 2002:ac2:5a5d:0:b0:5b0:136c:5cb5 with SMTP id
 2adb3069b0e04-5b0236670d9mr74091e87.20.1783712474237; Fri, 10 Jul 2026
 12:41:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260708-samsung-kp-v2-0-3c6ed4c9b3b6@gmail.com>
In-Reply-To: <20260708-samsung-kp-v2-0-3c6ed4c9b3b6@gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 10 Jul 2026 21:41:00 +0200
X-Gmail-Original-Message-ID: <CAD++jLn7cLCgKLf4RkBFP8yhrLs9qcteygwiAAc9sS3Amih2jQ@mail.gmail.com>
X-Gm-Features: AUfX_mxh6L3gr1zlgEqCXxbqPp1yls-g8dyPSgWL7AUruP9FnQEvhxSQ-OlsUYE
Message-ID: <CAD++jLn7cLCgKLf4RkBFP8yhrLs9qcteygwiAAc9sS3Amih2jQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/11] Remove support for platform data from samsung keypad
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Russell King <linux@armlinux.org.uk>, 
	Mark Brown <broonie@kernel.org>, Charles Keepax <ckeepax@opensource.cirrus.com>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Krzysztof Kozlowski <krzk@kernel.org>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	patches@opensource.cirrus.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-324635-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:peter.griffin@linaro.org,m:alim.akhtar@samsung.com,m:linux@armlinux.org.uk,m:broonie@kernel.org,m:ckeepax@opensource.cirrus.com,m:semen.protsenko@linaro.org,m:arnd@arndb.de,m:brgl@bgdev.pl,m:krzk@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-samsung-soc@vger.kernel.org,m:patches@opensource.cirrus.com,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 787A073DE4C

On Thu, Jul 9, 2026 at 6:53=E2=80=AFAM Dmitry Torokhov
<dmitry.torokhov@gmail.com> wrote:

> This is a reworked and extended version of the series previously posted
> to convert the Samsung keypad driver and Cragganmore 6410 board to
> generic device properties. The first 8 patches of the original series
> (general cleanups) have been merged into mainline, and this version
> focuses on the remaining keypad rework and extends the board conversion.

Looks good to me!

Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

