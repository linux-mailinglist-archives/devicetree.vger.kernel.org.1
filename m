Return-Path: <devicetree+bounces-300559-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICLtNPugDWq10QUAu9opvQ
	(envelope-from <devicetree+bounces-300559-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 13:54:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DF558D078
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 13:54:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0E8613035978
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 11:51:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F1873D6480;
	Wed, 20 May 2026 11:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WeKNFCZq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD41D1C3BEB
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 11:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779277912; cv=none; b=rRpez1kFFqQ/NVHqVpVT7RDnU6FGNiIHuoxeDxo+OctQrFBf24nmfHxDrqL24oMsV08wPDQYlHQQcE63Lz2Uga+qK8tnZ47kIC/1sj2R0t8oFLCzYubbny+DeOOTWIe2sfVQm0RMo5U8vhG8Z0naR799wwzRiu4Dv+IUuj47fp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779277912; c=relaxed/simple;
	bh=+qlZ7fazAMGxu3Hd8OkV5YA9OWuEtW/FxzhapTkzCDk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=p9UKFqCAqphc0Qf0UbQwNiAYQIb45UYGUZAF5Q9vUTQKWAiM061/Bx/Aaptw5XuCkPqtIfRcqUW/PmSGyBE38DRueHVgkAZSIoSCEtdlBA3ti1eRlSFmirmRF26qPEcumfzuVE9JId64a28Tejly9ewUVNm9dj9dOXb+5xbqzJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WeKNFCZq; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4891e86fabeso63305015e9.1
        for <devicetree@vger.kernel.org>; Wed, 20 May 2026 04:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779277908; x=1779882708; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aQwLHpqBSK7UgRP9vgct1RBilZORVWgtZbFjt5RtZp8=;
        b=WeKNFCZqh6y3QcKsj5vA3KbA0vaIvmYQIaOGl18BXwGvmvMJIMwZkrslr3Gd7wWVJt
         uBPqhSLvXwLQwiPkS8VNy6UjOg+DTeOOMhf7AinY5R0diG1/wX4uLC4Lq7BbXFu1YLrv
         tsBX/e4l8eGxWvfidPhjGWbxCE+jkMtqzgVcwyf8Z7sCaTf6Aysm2yvMdIuJUs5Ai4lC
         fJAoNba2CjbbLUvnrdhM5DQT96qb5NPtRG1sCwUWHFegCkB+qrQuhuhB6+O0DQpVWD27
         D/3Y18hITQYLfMxiDDtNAXv72VgYjPw2O8VWC8PMcGUh/hxbdr+xuI+ww/jkq3w1Y1YP
         pTEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779277908; x=1779882708;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aQwLHpqBSK7UgRP9vgct1RBilZORVWgtZbFjt5RtZp8=;
        b=M91cTflrc8N+aV4a+s5OyQcnrBfpcCYjGblke2Xfj0t3ZxsDOkyWBKjMP5V0vRMbXr
         Abvm22JVJFOOoonnGLmskKDF6yJeD1NZzJ5skaS0XfyLyb9QZKpluAW6CQATAWK169NB
         U7L3lmrdOro4QPyAIUbVT2Gcf4sFx29rbTSwIheQowmlE2ZqNPMKYbtui/44ziISu4oR
         joKE45ZXsP/977Uy1vPPGfL/Up4lQ8+MG9Z4JaWJ9gjSq98rsb2qNWf+dxvOZw4f3Mqh
         Jf2fgdJOdpduD2my9Z0TbggajXgVx7U8xpBtg38MqQ4H8hVbjtGVeZvNsfVvPFtTGpNV
         S4KA==
X-Forwarded-Encrypted: i=1; AFNElJ/f70zMVzMXe58GfU0MG4bSl2srZyCHJSmTnVsHOIvlWgCX7J7T2fJ+LHifTvkbgTcrLileOz3rs9pY@vger.kernel.org
X-Gm-Message-State: AOJu0YxHBLqaAKTNNai/v6todSLR2uJk2Z9F0Iblby8O7si+utkr04dW
	a8TT+omWius2oBvEYwxVSER/dt10OUK35JtOsQX4y8tqMbfpesVolXn1
X-Gm-Gg: Acq92OH1U86OkmOsJEkI5+Q/R4BNilezb3pECvxuRdRyXOOBHOY6pBcMJhN/rGBLDLv
	ED2z6ywM6cdKLd6eD2eKM9lzyI/beWCKEDCbgMaKLH3zrQp48mSyq0rYE2dlTvrFTgM0EwYVsKh
	mOxU2FhlWXuvqtDswmpK5M0fNKXMhxxjNCJ1XT3uRo4XHEiG4dTczR1hZUs3VI2MHmLOsfYTlmN
	yNRVZH33OxtlFToAH+VawHgSuuo7Nq2jYyVjE/w/Ww5EBe3M4VxJlC6zQTrvJRJodPRO4rNN5wi
	RyoS587s4W3L447yuCyVDX/InXFIOfKI1+f3XVfZBj4ecTunfcxUjMOl7Xc4hGYIT3e8ljWts2y
	dXJCvrvmFJsq7E4P1h2+Uhn1uNuLjK9SfZXySUgGjxbLy+u+fiyOMGgh6kE3Cuva+MIGv8OL2bf
	cOya4r3nODZlh5VqxKEJVRzbbARc+dsVlqm8vbZ9KRg0+W5+0=
X-Received: by 2002:a05:600d:c:b0:48a:56de:d62a with SMTP id 5b1f17b1804b1-48fe60eca75mr329874945e9.11.1779277907399;
        Wed, 20 May 2026 04:51:47 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a700:7301:a11b:196c:5f9e:ac5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48ff43f8799sm278842735e9.2.2026.05.20.04.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 04:51:47 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 0/3] arm64: dts: renesas: Add max-frequency to SDHI nodes
Date: Wed, 20 May 2026 12:51:38 +0100
Message-ID: <20260520115144.60067-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-300559-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,renesas.com:email]
X-Rspamd-Queue-Id: D9DF558D078
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add the max-frequency property set to 133333333 Hz (133.33 MHz) to both
SDHI0 and SDHI1 MMC controller nodes in the RZ/G2{L,LC,UL}/RZ/V2L
device tree.

This change results in approximately 33% performance improvement as
it sets the SD clk to 100 MHz instead of the max 133 MHz.

Biju Das (3):
  arm64: dts: renesas: r9a07g043: Add max-frequency to SDHI nodes
  arm64: dts: renesas: r9a07g044: Add max-frequency to SDHI nodes
  arm64: dts: renesas: r9a07g054: Add max-frequency to SDHI nodes

 arch/arm64/boot/dts/renesas/r9a07g043.dtsi | 2 ++
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi | 2 ++
 arch/arm64/boot/dts/renesas/r9a07g054.dtsi | 2 ++
 3 files changed, 6 insertions(+)

-- 
2.43.0


