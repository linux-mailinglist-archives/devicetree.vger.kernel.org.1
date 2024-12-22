Return-Path: <devicetree+bounces-133395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C31BE9FA74A
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:38:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 477D21886BC7
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0995D143759;
	Sun, 22 Dec 2024 17:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ryl2dNga"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717621426C;
	Sun, 22 Dec 2024 17:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734889091; cv=none; b=nwgVymfNtVszwjJP6pJfDt9xHQLUfupa27gKLDReAHLoUbRTyN5S1DRRkOe7NE/UohHjQL+WXrVpSBF971G1caaiK7+Rpvw3/USzPh/8kWLwgo2aEgLG4I95KtIBysMZ35ZlEihY1Ttlbu9z9ENpvHy6dbBiYgR1S0CzLxztSw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734889091; c=relaxed/simple;
	bh=y8s2hsyykJKLZFCY/RsXZjiEsG4QjKF1qEhFGLlHPFs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dq98lqUBqlJqVVGhEMqtfyTZ2g63zhN0qJi/WitJ7pGIL6Vjr1SRKvFEHvrNgDtqT488Ec/ybHbNJNxztPbo29T9VqG2BkSknbjoP6ZXGQ6j0SF2loZ36aqyq/Qj1XTuH5uGrK4inGtDMcdlDKDCoK82XwlxCtUCEQcKyLlue0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ryl2dNga; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-216426b0865so30903985ad.0;
        Sun, 22 Dec 2024 09:38:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734889090; x=1735493890; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S80oaXL7tWde73OJYkrltFLEiYprDrAutl/drFrRVyI=;
        b=Ryl2dNgaIzYF15BJy0muWALIJBk2t7PULPV3hRMnWcmqUUXq8gQ8l/1VpXVAWGv1q8
         agA9tfhm5WKv8kcEfsGD0QFyU2dz7v/K9e4wmdYN/uo4nC6E73MRfxsR0nNMSr7vGHN4
         ZxH/9pRSKHJ34neYOl2tVZ21WSZtDlcdRhGbFLcPZoOm+DmzTb2VABEV2fL4W2nUoCyh
         p9+d5qiiih+zcBnTPHem04ALEc/4/AF244s9CbUU8/fS7zhPocVp/LnYM38MJ7Q2gGau
         LrajAVYNX3xfGew1Zx0XE4fksDNOBZ4l1IhKNmRJKX6+amhZ9yB9XhJwsCgJgiCANsi+
         2CDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734889090; x=1735493890;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S80oaXL7tWde73OJYkrltFLEiYprDrAutl/drFrRVyI=;
        b=rAvgjZFKCicdgKYyH18z1z354i0JCLr1CvTgqyEc/iaXg6n4ihJOXfgBc/iRoRC84v
         JDd8HUrtsSUlVao8vMMa3+tqEt/KXmjhYHLKxMJCmPezrA3YEyUix6jRsT8qehL9zCqg
         qxQrh76Cx2lSY82fpIO8m8Elg3TrzHuau3d3UN5t8Zyk7bUZ2vwNUMLsqthOJaWsQEg4
         1OocpPdbAbwXJ2B5iu1y2P5B3fjOX+jIRlOUgMuGa/GiKo687FLddsHCyHDsu4N2GAKu
         ioFAowutxH24xwTyb95jLHKzRp8LB/fyjWnXnf4yGVLTAIB8ZdSdVzaUciJuj70hx7OX
         GwQw==
X-Forwarded-Encrypted: i=1; AJvYcCVqL832EJtSycPqWP1u1NjuNkn0vU7VIQr479e2KJkpZHePRknJM/XSa2/6CK77RHvWMHZ4BSWNOYMCEPsq@vger.kernel.org, AJvYcCWUM+z6OUmA8NwV8/Vh4qip2i6pm6WaP3KEZYLTrSDiz47m7lCD4wDukbhl714b+MGaENFVz7DHknuj@vger.kernel.org
X-Gm-Message-State: AOJu0YwjOr7D7xfdEfdV6izLeoLeJjCAjy+lnT8AYgAIDzMXJQ/a2M1I
	HiNwasYarTlfDjhDV0en9d9ifiUGGuGkTi1Nf60txRVilhC5COxO
X-Gm-Gg: ASbGncsdO3TwggIAhhmZ4MCSVzBVes2mq1CseExWcdz9EJWEfnrOrC5Nt+FXrNzHukv
	s0CJ2CdKbEM2SGJ3RLN/SBwNtZT2D1CV9LfBnCsAYRMOLI+tdOxgthKOr6Zv7HeWuaC7yhStG6w
	ViHJ7Bcjhpj2+lAfe52v7cTUim+TcEirlNlq3D0AsKMuca10ji/+RwytfnN4nLjQfsnUFQIV/AV
	n7+btnRylgD/8kec8oz2e61YQ+J1UHHu3nacrHXupCqJXuqYTYUfCiwwg==
X-Google-Smtp-Source: AGHT+IG/coJgJoRcCwH+ym9eEokRTEI5QsTKkiAPkjlmzFEzuwTbG0HAJLv5pnLBA72WAXtndYWp3A==
X-Received: by 2002:a17:903:2acb:b0:215:9470:7e82 with SMTP id d9443c01a7336-219e6e88179mr122699005ad.4.1734889089738;
        Sun, 22 Dec 2024 09:38:09 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-219dc964a73sm59328175ad.45.2024.12.22.09.38.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:38:09 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
To: Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Nick Chan <towinchenmi@gmail.com>
Subject: [PATCH v6 00/11] Add PMGR nodes for Apple A7-A11, T2 SoCs
Date: Mon, 23 Dec 2024 01:34:50 +0800
Message-ID: <20241222173750.148071-1-towinchenmi@gmail.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds the PMGR nodes and all known power state subnodes for
Apple A7-A11 SoCs, along with the associated dt-bindings.

Dependencies:
- Split s8000/s8003 SoC DTS files
https://lore.kernel.org/asahi/20241222172735.145764-1-towinchenmi@gmail.com/T

- Device Tree for Apple T2 (T8012) devices.
https://lore.kernel.org/asahi/20241222173240.147675-1-towinchenmi@gmail.com/T

Changes since v5:
- Rebase the series such that splitting s8000/s8003 device trees is the
first patch to be applied. Now this series depends on Apple A9 device
tree being split, and the T2 SoC PMGR nodes are added in this series.

Link to v5: https://lore.kernel.org/asahi/20241203050640.109378-1-towinchenmi@gmail.com/T

Changes since v4:
- Use imperative mood in commit messages.

Link to v4: https://lore.kernel.org/asahi/20241201161942.36027-1-towinchenmi@gmail.com/T

Changes since v3:
- Add "apple,always-on" property to "ps_spmi" in t8015 power domains.
This is required for cpufreq to function correctly which will be added
in a later series.

Link to v3: https://lore.kernel.org/asahi/20241122095136.35046-1-towinchenmi@gmail.com/T

Changes since v2:
- Removed "apple,always-on" property from "ps_pmp" from s8001, t8011,
t8015 power domains. It is not on at boot. (Mixed up with ps_pms which
is required to be on)
- Add asahi-soc/dt back into the subject prefix, missing from v2.

Link to v2: https://lore.kernel.org/asahi/20241102011004.59339-1-towinchenmi@gmail.com/T

Changes since v1:
- Removed "framebuffer0" dt aliases. It is not standard and not needed.

Link to v1: https://lore.kernel.org/asahi/20241029010526.42052-1-towinchenmi@gmail.com/T

Nick Chan
---

Nick Chan (11):
  dt-bindings: arm: apple: apple,pmgr: Add A7-A11, T2 compatibles
  dt-bindings: arm: apple: apple,pmgr-pwrstate: Add A7-A11, T2
    compatibles
  arm64: dts: apple: s5l8960x: Add PMGR node
  arm64: dts: apple: t7000: Add PMGR node
  arm64: dts: apple: t7001: Add PMGR node
  arm64: dts: apple: s8000: Add PMGR nodes
  arm64: dts: apple: s8001: Add PMGR nodes
  arm64: dts: apple: t8010: Add PMGR nodes
  arm64: dts: apple: t8011: Add PMGR nodes
  arm64: dts: apple: t8012: Add PMGR nodes
  arm64: dts: apple: t8015: Add PMGR nodes

 .../bindings/arm/apple/apple,pmgr.yaml        |   5 +
 .../bindings/power/apple,pmgr-pwrstate.yaml   |   5 +
 arch/arm64/boot/dts/apple/s5l8960x-5s.dtsi    |   4 +
 arch/arm64/boot/dts/apple/s5l8960x-air1.dtsi  |   4 +
 arch/arm64/boot/dts/apple/s5l8960x-mini2.dtsi |   4 +
 arch/arm64/boot/dts/apple/s5l8960x-pmgr.dtsi  | 610 ++++++++++++
 arch/arm64/boot/dts/apple/s5l8960x.dtsi       |  13 +
 arch/arm64/boot/dts/apple/s800-0-3-pmgr.dtsi  | 757 ++++++++++++++
 arch/arm64/boot/dts/apple/s800-0-3.dtsi       |  20 +
 arch/arm64/boot/dts/apple/s8001-common.dtsi   |   1 +
 .../arm64/boot/dts/apple/s8001-j98a-j99a.dtsi |  26 +
 arch/arm64/boot/dts/apple/s8001-j98a.dts      |   1 +
 arch/arm64/boot/dts/apple/s8001-j99a.dts      |   1 +
 arch/arm64/boot/dts/apple/s8001-pmgr.dtsi     | 822 ++++++++++++++++
 arch/arm64/boot/dts/apple/s8001.dtsi          |  22 +
 arch/arm64/boot/dts/apple/s800x-6s.dtsi       |   4 +
 arch/arm64/boot/dts/apple/s800x-ipad5.dtsi    |   4 +
 arch/arm64/boot/dts/apple/s800x-se.dtsi       |   4 +
 arch/arm64/boot/dts/apple/t7000-6.dtsi        |   4 +
 arch/arm64/boot/dts/apple/t7000-j42d.dts      |   1 +
 arch/arm64/boot/dts/apple/t7000-mini4.dtsi    |   4 +
 arch/arm64/boot/dts/apple/t7000-n102.dts      |   4 +
 arch/arm64/boot/dts/apple/t7000-pmgr.dtsi     | 641 ++++++++++++
 arch/arm64/boot/dts/apple/t7000.dtsi          |  14 +
 arch/arm64/boot/dts/apple/t7001-air2.dtsi     |   1 +
 arch/arm64/boot/dts/apple/t7001-pmgr.dtsi     | 650 ++++++++++++
 arch/arm64/boot/dts/apple/t7001.dtsi          |  13 +
 arch/arm64/boot/dts/apple/t8010-7.dtsi        |   4 +
 arch/arm64/boot/dts/apple/t8010-ipad6.dtsi    |   4 +
 arch/arm64/boot/dts/apple/t8010-n112.dts      |   4 +
 arch/arm64/boot/dts/apple/t8010-pmgr.dtsi     | 772 +++++++++++++++
 arch/arm64/boot/dts/apple/t8010.dtsi          |  22 +
 arch/arm64/boot/dts/apple/t8011-common.dtsi   |   1 +
 arch/arm64/boot/dts/apple/t8011-pmgr.dtsi     | 806 +++++++++++++++
 arch/arm64/boot/dts/apple/t8011-pro2.dtsi     |   8 +
 arch/arm64/boot/dts/apple/t8011.dtsi          |  22 +
 arch/arm64/boot/dts/apple/t8012-pmgr.dtsi     | 837 ++++++++++++++++
 arch/arm64/boot/dts/apple/t8012-touchbar.dtsi |   1 +
 arch/arm64/boot/dts/apple/t8012.dtsi          |  22 +
 arch/arm64/boot/dts/apple/t8015-common.dtsi   |   1 +
 arch/arm64/boot/dts/apple/t8015-pmgr.dtsi     | 931 ++++++++++++++++++
 arch/arm64/boot/dts/apple/t8015.dtsi          |  21 +
 42 files changed, 7095 insertions(+)
 create mode 100644 arch/arm64/boot/dts/apple/s5l8960x-pmgr.dtsi
 create mode 100644 arch/arm64/boot/dts/apple/s800-0-3-pmgr.dtsi
 create mode 100644 arch/arm64/boot/dts/apple/s8001-j98a-j99a.dtsi
 create mode 100644 arch/arm64/boot/dts/apple/s8001-pmgr.dtsi
 create mode 100644 arch/arm64/boot/dts/apple/t7000-pmgr.dtsi
 create mode 100644 arch/arm64/boot/dts/apple/t7001-pmgr.dtsi
 create mode 100644 arch/arm64/boot/dts/apple/t8010-pmgr.dtsi
 create mode 100644 arch/arm64/boot/dts/apple/t8011-pmgr.dtsi
 create mode 100644 arch/arm64/boot/dts/apple/t8012-pmgr.dtsi
 create mode 100644 arch/arm64/boot/dts/apple/t8015-pmgr.dtsi


base-commit: 9a33cbb3b1e4a0b520a131aec028ddeb99da48c3
-- 
2.47.1


