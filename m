Return-Path: <devicetree+bounces-230586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 464F8C0435B
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 05:06:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 34F244E9227
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 03:06:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82BB7146D53;
	Fri, 24 Oct 2025 03:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HjEyUQiy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FE62459CF
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761275159; cv=none; b=rTD56GbwLGAt0GH88N6svhUisWw5ysm6l4yl6BIbtyEkEnoBDUu2KT/1X/HMV2qObz9PlOJ6iO7JqsmuoylTSyrQWCSrZWzGYUG1k7zf5x5HFD87LeGuO0/pS6avGgSp3N8blfI/tlhx7YY0+uwLsjKcopI7nhyk/18vkwHnRnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761275159; c=relaxed/simple;
	bh=4FHl7ZtxkDyyaY2ICzAcXGfZZ9UdpflrdhShRLPsLfE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=p5ubi5puLkk4tblsEsBUWHJA6fGNbIPehdQ+CazRnQge6HgpOO6frTPAVHd8dGInf2wxaXuzgItS4NZBm2bA+Oly77uLAix90et1aqFn/EFMMrYJ3ooEJDtC53Qg2JTchQemk8dYMY9t4BT/SXPcrOh+YP2Nih2RwfZJlP6ycFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HjEyUQiy; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-b6271ea3a6fso1072068a12.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 20:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761275157; x=1761879957; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4EzmryWBAlOE+6PvafZLTL8RGcukfyVnYUGcNucBOXE=;
        b=HjEyUQiyP2vNSdSa3Nkz6/bqoheLhkmmXLGH4evdtBQfL5+3+jt9gIQ5aM/rDNRrRx
         doSW8RpxaJIIYyzM5QhqQfUAh2P2J+5azvkNA5PqicfNX8TR5JCT9KfrfA5Gk6q+USYD
         hBMXet25LXt1QLVVwXMPstDkNnGC8bNy8sZWGcP4YWebe7//SjnU9zfxIQDKdrd4abRu
         7jdCrZQJZn1Znj+/N9UpZTWIc3P0v4Z8pFrMwYDsdMUB0d3i7yhkewaOZS/EzcP1ohTS
         L+vaB+QWyE4zjfp5V6qyBMg8ydcKrP2FBCRRRyvDyjsFgWAz1BxpAtJxdqfh/LZogfy7
         VfVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761275157; x=1761879957;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4EzmryWBAlOE+6PvafZLTL8RGcukfyVnYUGcNucBOXE=;
        b=ejoLrGWx9c5O0W1atEW7p3Ay7etloR05pxkIRN9+C6yu+ZgOCM8xqYQmWzVWR8DjTi
         Rx8JUZbi3yTIIkdpte8bEpV8qIdsaLXcuOmA303zbREUORhZiSUH84LLq5Trm4bDHcz/
         siLYBGeBpxGs5Z8ze/Y/U2euc+xDkjGoJqG+Ite36xiSCaGxoeeiV0XEZxrfnMmxugUP
         dzYCAZD7FkoPbb4Hl/eWLrBxpO9qAfALKZKvb4h06dPZXMBQN3jFY+XoMv8/fyLrv9Ht
         R8+VwByPfy9t8na6RvOpRDF2fd5djJrZCpyxwfFddc98d4W6xLCa4VITuVNmELfTZPk3
         ivig==
X-Forwarded-Encrypted: i=1; AJvYcCUNzo5+Yfl6L5k0kL7qsa9HBhv2YXNt1UBYP4MuVNoKfHhztIca59C/4VldixpNotSRTp5Mo8cGX4Px@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo9tSTmeJUugtKz7JPCQQBA43ZceHlHdDXDFL0gwRt/mtDvMvH
	fuY+FjCyQkL4PZfnWNWZhRA0/fdnxND/CifrceK0hR39y95Po95/FNM1
X-Gm-Gg: ASbGncsoXMoeKQOO6LzFpFXCvcKHU2gRC77l0we4syD1W4mhkcowO5iXTJjomdK1Bw8
	8NsCxZbjjLluKTLicj4H1xu4sfomDeO3B290xdI5DOZtEtihs5AS1l/eQg1m3zt32XmYRTU0oZ+
	ukDtfTraub/g8NHpyyajFG/TWm7/XO7WRMujmt8XIobzI4cZlDsq4GSTVLEstvWAoM7UBXYMpji
	geT+P+DVUq7LQtGOn6l0bZdWyzr3/UzVgtMKiJ8RUzpV3BRa+CGdYEpO+xSWFIc6ywlFC5nhM7z
	aVURz2iKlg8YyP4nYcqM0fzSH/wXhCqrBd2YybL5xusuWM0Zi0bZwneXUm/U0b6S3GbPG8hep2x
	4Fh+A9vpzOlWcjHcVapb1kw8lGj4Quv6Z9OPszqa8XU4iz80AB5EzjTEp26Lx2EqNpdSjfVEW0U
	S9w89Wxee/3kj/eSouaueeqBC2uLw=
X-Google-Smtp-Source: AGHT+IF8b4avL0/1iLczBKXPJIE+YBOYlfAMVKvJQQ45ng5xpwwuuzbCszJkZUGkuxOMXW5DM24w0Q==
X-Received: by 2002:a17:903:298c:b0:27e:eabd:4b41 with SMTP id d9443c01a7336-290c9c89eabmr329227425ad.7.1761275157084;
        Thu, 23 Oct 2025 20:05:57 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6cf4bb86cbsm3574172a12.7.2025.10.23.20.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 20:05:56 -0700 (PDT)
From: Longbin Li <looong.bin@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Yu Yuan <yu.yuan@sjtu.edu.cn>,
	Ze Huang <huangze@whut.edu.cn>
Cc: Longbin Li <looong.bin@gmail.com>,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v4 0/3] riscv: sophgo: add top syscon device for cv18xx
Date: Fri, 24 Oct 2025 11:05:13 +0800
Message-ID: <20251024030528.25511-1-looong.bin@gmail.com>
X-Mailer: git-send-email 2.51.1.dirty
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add top syscon device bindings related DTS change for CV1800.

---
Changes from v3:
  - https://lore.kernel.org/all/20251020083838.67522-1-looong.bin@gmail.com/
  - Corrected Co-developed-by information in commit message.
  - Fixed patch version number.

Changes from v2:
  - https://lore.kernel.org/all/20251012022555.6240-1-looong.bin@gmail.com/
  - Add ranges property.
  - Use proper regex in patternProperties.
  - Add complete example including child nodes.

Changed by RFC:
  - https://lore.kernel.org/all/20250611082452.1218817-1-inochiama@gmail.com/

---

Longbin Li (3):
  dt-bindings: soc: sophgo: add TOP syscon for CV18XX/SG200X series SoC
  riscv: dts: sophgo: Add syscon node for cv18xx
  riscv: dts: sophgo: Add USB support for cv18xx

 .../soc/sophgo/sophgo,cv1800b-top-syscon.yaml | 81 +++++++++++++++++++
 .../boot/dts/sophgo/cv1800b-milkv-duo.dts     |  5 ++
 arch/riscv/boot/dts/sophgo/cv180x.dtsi        | 42 ++++++++++
 .../boot/dts/sophgo/cv1812h-huashan-pi.dts    |  5 ++
 .../dts/sophgo/sg2002-licheerv-nano-b.dts     |  5 ++
 5 files changed, 138 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml

--
2.51.0

