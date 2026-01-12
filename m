Return-Path: <devicetree+bounces-254140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA7DD14981
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 18:55:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CBB4A300BEE9
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 17:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D61C835503F;
	Mon, 12 Jan 2026 17:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mfggNhiw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473883090D4
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 17:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768240463; cv=none; b=KI3Lsxmtjvgtg/W6ESoDNOvVFgMDj9NFWn2+E6x4Q7bDOpfqDu6/F7PbuptZtLwKsCrIM6HZCrPSS0HQKVW0iE2EFC5SVOKGpjyr6cGmdQXj6BnZciYdJJL8bUdUlvLhq3l7Vw55vDFw7MbigzPe4c1pRxKW5vCQ4TjD768rNaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768240463; c=relaxed/simple;
	bh=rmFe4h9ux4w8jPdUKVUsoQGZksbCwPFE2x3uxKA99AU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Lzjsej85sPUUCF93mkkIFopmA7lUuZ0/owTJ8mEnypJB8YHTEMNTpONR5bBDJQ66O0TiNM0KSOt+3Eg5CUgOE7/ZaHc+pbu/U5uba8mRe6j43+EVloO8h7iA9KZ2vMup5SFGClCB5UH69DfRf7HCUK+GNEfZps5Z8XIPQzMh62g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mfggNhiw; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so46165965e9.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768240460; x=1768845260; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hwt83uYo3jHD0MLk5KQ56cEnTsquiki/I9cLu6SGSsU=;
        b=mfggNhiwPLTnJpMbdFw3KRy+8MlDuFcso3Meq1v1WVLPNsLiQpPheNMEQc0RNEyCR1
         VwUkkKJSWs10FOE7LuVrjM97XClk8HH3R4JSbXZgGMUWyRygD6bh6SdblqCmpTxSQn7s
         nQJVSiN3FU9qhUKz+9VUM9N5McWQge+wUHxpjpCzYdv+w47fEOjGwtnlre6g+isQiriv
         Qoog0+W5HKzuP2I8OWLgGNTLqbcytMGcd8XZS+CIjJ5Nan6Du9kSTgZXQNzQ7OJgyy1k
         HVojaqi15jiSGRinGwWRMACpB2HVaalQDdaBF/K/5Q4JzOL/bHE1MEbNfVX7MBirF30u
         DzsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768240460; x=1768845260;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hwt83uYo3jHD0MLk5KQ56cEnTsquiki/I9cLu6SGSsU=;
        b=NbyRwVJ5jDPjFusW0X6QQmHElGJd7WlAwBDA8nbWrGUuAaUIhVrM3mlEuaogwHk4rZ
         fsMhyTKBT9B10ep31+wNLshc2wItODFE/9wxrbUxR2l9cYGbUcLAU5yMatDbmX5ep+fV
         E/iZaEd3bJuD2BRlQKwc3yxof4iqVSnvU4DwUBtH5YPD4BEeOjwxDIa+YhA8ArKtde8p
         E7TM7HI6Lb3T8D7PyIqiXiuJ8mZ+vLP/jm93qsl3loX2Q8JVg70zVXDt8o1ebxECbrWN
         iVWjqKJGL+RxEh3oYpm2sanLWRK7e6QxF5EL0MfGJPDQCSE1tG4mkXYFYWjYGu86egSw
         odug==
X-Forwarded-Encrypted: i=1; AJvYcCW2QiCHF12ElwYaQ4lF1ChSXvCKVP5zpnYioWCNZg/1E2BTxa+PeDT6B+MWQfGIWBY2+7DPxw/CMQRJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzER5WHVYeSSO3lwYGo7MVjljXALbT3H+F9boKqTGRVKcOpZzYn
	ncV+bJvarpTRe0NVGJxeBbF0URGBVGJRXS3JRls1Ma+pRBh81QS65iIx
X-Gm-Gg: AY/fxX5SML2v2AAuuVOzRJuDEXBPEO01q6TPMUjCGCyLuofdXL5r0gb5jooYi5ITfPp
	fghgNX6dZJAEDphs2lbDc7WQb5CbVRj1hl7iY2Nt9TXWtRsBdHwECZwyvZrP0YBMy7+y2iYC8nP
	jketXknXRJrTuNbWOHhdYYKaz7b1vhAJzzrjuP5nNL0nKBjay2jXthezCi8bZtDe1iY5yAGE7f9
	ZhObJVBYFQqrw95v37aiAkDkx1aUGWoy1lBcaZm828hEOATgJocJ/z2CEeeluIoGLaioI0BazXS
	aE/UL00UYK3A5i6u7ToxNWa917MSXYmXQmIluoE0Hx3/rGAomACFE/LSsYCh2XKtLLFH96VfJgk
	gYXQwk3xKj7Uyg/rNHGn/oSiBvJ+k5I/zasMgvGAQVARfs/t6YfaigSt78bbMlX7W9sJsWT9k9A
	vmu2t5BeIOEgaVpdednPYr85e4+VM=
X-Google-Smtp-Source: AGHT+IHZZmRW3asJRb9210An7qxf7Xkjkxucu7ix4f5SdvZxomR4Tc4LiJ84wmuvqkSQE+xy2czE/g==
X-Received: by 2002:a05:600c:4ed4:b0:471:d2f:7987 with SMTP id 5b1f17b1804b1-47d84b40ae5mr218621485e9.26.1768240460268;
        Mon, 12 Jan 2026 09:54:20 -0800 (PST)
Received: from vitor-nb (bl19-170-125.dsl.telepac.pt. [2.80.170.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8719d057sm134047305e9.16.2026.01.12.09.54.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 09:54:19 -0800 (PST)
From: Vitor Soares <ivitro@gmail.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Vitor Soares <vitor.soares@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	ivitro@gmail.com
Subject: [PATCH v1 0/2] arm64: dts: ti: k3-am69-aquila: fix SPI hardware CS issue
Date: Mon, 12 Jan 2026 17:53:45 +0000
Message-ID: <20260112175350.79270-1-ivitro@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vitor Soares <vitor.soares@toradex.com>

Hardware chip select does not work correctly on main_spi0 and main_spi2
controllers on the Aquila AM69 module. Testing revealed main_spi2 loses
CS state during runtime PM suspend, while main_spi0 cannot drive CS HIGH
when bus is idle. This series switches both controllers to use GPIO-based
chip select instead.

Vitor Soares (2):
  arm64: dts: ti: k3-am69-aquila: change main_spi0/2 CS to GPIO mode
  arm64: dts: ti: k3-am69-aquila-clover: change main_spi2 CS0 to GPIO
    mode

 arch/arm64/boot/dts/ti/k3-am69-aquila-clover.dts | 3 ++-
 arch/arm64/boot/dts/ti/k3-am69-aquila.dtsi       | 6 ++++--
 2 files changed, 6 insertions(+), 3 deletions(-)

-- 
2.52.0


