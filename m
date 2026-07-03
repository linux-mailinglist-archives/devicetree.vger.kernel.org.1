Return-Path: <devicetree+bounces-319696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nr1MNzP9RmoOgQsAu9opvQ
	(envelope-from <devicetree+bounces-319696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 02:07:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBB26FD89C
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 02:07:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=PSsdANNI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319696-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319696-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D98E4300A3B8
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 00:07:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E6AF5695;
	Fri,  3 Jul 2026 00:07:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B259C8EB
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 00:07:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783037233; cv=none; b=vBjwkU8Cc/UZNumljWOGEpqSES/b2sRDQP1HNfI1H8pGV1ybbQ8t+YqeLEnNxsmNUrIcbjAVnTbeY/mu7ds0AcbClSLnU0n1ezxraNOYj8E/9Uu7vY1POV59Bl6XPBm9W1v9cRUhBgId+9/IH01mRMwHtQqabCg9NuZlvJqBvMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783037233; c=relaxed/simple;
	bh=Yq0MUliYbLm6gjsyJNyBrL0lWk6bgalG+E+xG1Xl7sM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NVqdQ9rZCNNw8Ztv+J4MpxUcBaizuLMxXv3/0MCo5tcH/kJZ41b62HM+qF08KMEmU4FLNYNCFd/hozgJEDCz2yBkY75n9HlRotX4tDIcGnVsSK4EH5mWizlIfZa870Wg630GamRWBRBkV4GbdzLA9c1Sj4CLwj3gH3zUIQnMzCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PSsdANNI; arc=none smtp.client-ip=209.85.222.180
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-92e663c828dso726085a.0
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 17:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783037231; x=1783642031; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yq0MUliYbLm6gjsyJNyBrL0lWk6bgalG+E+xG1Xl7sM=;
        b=PSsdANNIF4OPI+tfso6z8T4Wo8zFkSdrveTCsBEU5wBd3266P57N1wRjBng7jjaDOr
         X8garHzxlrq3DHFyeiNF3HLtN7ko5eSPRIj5fFu2kq0Mr9K9I2StmfUWD3sdjDli5JHa
         tvaHImwY18yv7CnMKbPKiFhYsrBPHPu289tYRegUKGFbVTn+3vvND8q0+HOuamJjtgq2
         KIMQl4dJrPdsJ3QgRXl0Cu+ZsZ/HSpyQKqzpFV4UuLXK6yDK54FVcUlqeA4CX5w/KS38
         dnY7hPaCgZY839pki7XX1DMt8rOx5EFRUeKYPfPYib6S5mqoxcpc/0WO1DTE9dZFnJaL
         mdAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783037231; x=1783642031;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Yq0MUliYbLm6gjsyJNyBrL0lWk6bgalG+E+xG1Xl7sM=;
        b=P0BYGYeBawX8wv8G3wkQycVy+MY7H4bUiYnfCnm1qm9vY1a0JRUGVjxfDGf1U+f0zr
         GdI53Xp/UtF+MF+z+ShUtZNJ0XFSMpNnYBwCyyAxMwxKdEGAQTwvA9D2s86d0MHDqe4z
         EsKTf0SzOoyBB9LBy9qoEiUuyoZnI45iHcoBNVI+qUncniD7IVqI9sS/UP6AT3oSOIGJ
         Xemdvje3FuL/sWNQffqs/L93pgevlI18CbUkxbCZM+OvV8n0HDCfsOVmJQx9/ue8yct/
         DYntucEOsh/+ZLW5CvWWYa4jMCbV9rGsFgU+a8raFgnJJugVa5FePoml0ZEeJ0C+9H/b
         2aUQ==
X-Forwarded-Encrypted: i=1; AFNElJ/zdQxCZRhhFFGsPNRv6+6ntbNO4Smqb8I/X8EMFI+a1eWxAYjDAfx61BYiAMzil82KKB6hJEMlSyjY@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5Z0G5R8muOCoervF51l77yraGvhlzgT20fk655Pf66ifXoLSz
	2TEQAiU+EBlugrABoVzVFbfG/SFZb/ZEVymZih1XwU1zI1rjcOBbzIlb
X-Gm-Gg: AfdE7cmJZhXUF/pjRZ9bD1iN7TUu/VU0QksFrxbq5hEeG9rmhwP4q86AIlrl6NqbtIw
	QWBf6tFgiaXCJmj7Toxe7aInu3Lnalkw06VsQ8WItsQVs8thgL+XyidVb7BKbQfej2FeiwKh2Y4
	alUkMd+kP1gS8ica4VHvTJGhZD2zVIPDPH2VP3HMeRZVRVk4hTk/JHNpXUWb8my8pe1R3q6wOFD
	GhKxv3OCwm0TXQG5GZB9z2HRoLIivN3aoM6bDw37OTIic5+B1Cpvosi4xeN/fbrYYRssq4niRvJ
	I//crf9sfi8D7cuXczHdk1Ym1UzMK8un3QXReCNQ8EfOvOdYh/h7uCuaGi86mb09igU8swA24WU
	Rx2Md15hfqKcxeu14kQbA5i2V0lWvjSaDkfiqEE1a7/LAnNDw2AT5cRdppx05r+UGAlIsvfjfGc
	SfZp0bdfPUaKd8yE8FLGh5xJ2tyPNKubgrsFB9ghipzkluhZl5GBWYlMaDV5WN
X-Received: by 2002:a05:620a:4044:b0:92e:650f:c392 with SMTP id af79cd13be357-92e8b275355mr264263485a.17.1783037231297;
        Thu, 02 Jul 2026 17:07:11 -0700 (PDT)
Received: from AMD.home.local (dhcp-9-244-8-156.gobrightspeed.net. [9.244.8.156])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-92e90cbd6c9sm12190085a.33.2026.07.02.17.07.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 17:07:10 -0700 (PDT)
From: Enzo Adriano <enzo.adriano.code@gmail.com>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Linus Walleij <linusw@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Yangtao Li <dlan@gentoo.org>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Subject: Re: [RFC PATCH 0/9] pinctrl: sunxi: Allwinner A733 support
Date: Thu,  2 Jul 2026 20:07:08 -0400
Message-ID: <20260703000708.1238530-1-enzo.adriano.code@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20250821004232.8134-1-andre.przywara@arm.com>
References: <20250821004232.8134-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-319696-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andre.przywara@arm.com,m:linusw@kernel.org,m:wens@csie.org,m:dlan@gentoo.org,m:linux-gpio@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[enzoadrianocode@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,csie.org,gentoo.org,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com,sholland.org];
	FORWARDED(0.00)[lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[enzoadrianocode@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2CBB26FD89C

Hi Andre,

In case it helps when you next spin this series: these patches have
been part of my local A733 boot stack on a Radxa Cubie A7S for a
while now. UART console, MMC, LEDs and USB all sit on top of them
here and I have seen no problems attributable to the pinctrl driver.
Happy to turn around tests on real hardware whenever a v2 shows up,
or to run anything specific in the meantime.

Testing here is AI-assisted (Claude Code).

Thanks,
Enzo

