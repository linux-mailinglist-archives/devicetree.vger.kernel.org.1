Return-Path: <devicetree+bounces-133408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 098299FA76A
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:53:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BBB6188341F
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:53:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9352D1714AC;
	Sun, 22 Dec 2024 17:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ba39SYNl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222AF33F3;
	Sun, 22 Dec 2024 17:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734890009; cv=none; b=kflh3rgIgnF6+UNe/MlM2FekK16033SqDRMVsAQcaPlj0CDdn+B6TpNs9tUK0FVqYJZDYHwYyZohZ8r9OEeAXTak+PFEttLCfZgf3S6QnJsLnxlgPqwzee9RxJHnZ2rfrFFG+sbCPEmaMZ13Odv2zJmrtcfuG+YmEIpD5fqtSbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734890009; c=relaxed/simple;
	bh=8MNRPepJkkLCTQ/iyaC5U9L9+CTiTsdOPf+rDYQGrVA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UlR0aY7GiBI4ypcphRmXqRBH7li5b5LGzVlmKvGsAzIcp6TOHAFcDASQBteYqpZVVdYomHbS/CKPG/rnFpEn9LikGGx13Z0fL6Zb1yu9igA8ZFEZbhTJqlv44BTKEsmjGoThkpoyfdsNl4XVNn4YbaulxiV8a5UlBxjjb2w8xkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ba39SYNl; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-21649a7bcdcso31759835ad.1;
        Sun, 22 Dec 2024 09:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734890007; x=1735494807; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zDMdLkzK4YXyBfIRpCGTdJZPn7J+kcoIKRDno7O4/7c=;
        b=ba39SYNlqWDh/WAtGRqy2a89Efl40NU4G8UAJ6AQTcjkvVDvZSmEt+fv9OKTVenuch
         r7m5k10rd78rvITEYbIhNsdQ+zQ+PIivltMF6x1VtxRLdw5wo5hINEPv4L+V5/IzO3mw
         X64ai3cHDwVA+VCChyWX9t9H564zi38DGW+yffS9xfHzVfMpQd8cppT8uGyt1N7+9F6v
         zOD99GYPuODiCDiU7j6YLpS9HP2iZRQcbUO56Krga9f5KrKeafik4gwrcnh3LrAUJasS
         d8LMj30gw2z20oMV8Mq35oCKbTd91pSKh+peXBQrtc0V9/XQGIMczstJqC3ZttJpy4Hh
         Uazw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734890007; x=1735494807;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zDMdLkzK4YXyBfIRpCGTdJZPn7J+kcoIKRDno7O4/7c=;
        b=JJ2V4Qwgd1BsEdb+B3ySLIVmGBy5WEkyA3+UamIv6AgHx7SW6gAeHg2h1B4mwy6Y+O
         1eBVQOUtZwuEAVoBr/jjlK2spFbvfXlrtBoyBSbW2V6yMbgJjICBDRWGEbnxfTM/2Mfa
         9dEj5d45vXWdVWRPt28x6xfw08IySQr5S49mG6SNrDspzjEnUTFxvUQ9yTFmp6sdGQLg
         IVyi4Us0cZFYZisjXzzzW4hcV5OfJcksG0bfanSvUpTOXhy0m8GOC6gVqI80PuIxPTPu
         +Q+Lz4DrRka8xS8IRwpgEpt+DFBFr6GchVnxZWAWxS6Jalne1EdGd6j2zzA1fD1pxgcx
         7sTg==
X-Forwarded-Encrypted: i=1; AJvYcCU3Skko5A++ks+0tCuanoAW+FYUr3P6MZ0Puykc5GYaAYMdqC8TK5kECcH0OjfPyuiQkgR1eP4ClR6H@vger.kernel.org, AJvYcCXAu0pU3aUEncX4ovIOMTve+W2ijj2wVhWLn1jBZAGxy8dYYL9uZG4bcgXyPhdROabjMZKcktW9zoYzIMJB@vger.kernel.org
X-Gm-Message-State: AOJu0YzNYnF3axTILY1bE0sBRjDqVpHKuWxd3c6ThXWRAiDxMLPNF0Xw
	/eiQXzMlRdMuCmfSozOcLAZGx66HeELZZyzkMkzqhxamdUP5pky+
X-Gm-Gg: ASbGncvDsQ4xfIMFIZwP6S5SYlv3tZgR5O/p8Ndr1UZm+v7QS/X0W+VKZFTZKRGIy6Z
	0coLLPDg+6eATtutH2kkgGp/fc0hy99LskrAXyYmeNsKSqnTygGMDcLVCpzeTcD7pPs+1vp4dOU
	FQ2XLgVI50MqQyL0Vt3++doGC4GHM14FF8E9kXiWYvr/W2lAbKSacNNyPbpBQ3OUXUvrwUIezM7
	1A8xTPRUKzxAvEqsWiteMYcarPGv2Hzsf7/E4kxjnHVyZj6AK8VwilFTA==
X-Google-Smtp-Source: AGHT+IG2c5ImIZhO72M0oe5oieCq6SaUFn68rpgEdkMuKrS32fV+fQUK2a/x6HLbVFBi143LXmxggA==
X-Received: by 2002:a17:90b:534b:b0:2ee:ab29:1a65 with SMTP id 98e67ed59e1d1-2f452dfaee6mr14740405a91.4.1734890007511;
        Sun, 22 Dec 2024 09:53:27 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-219dca04c33sm59503685ad.247.2024.12.22.09.53.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:53:27 -0800 (PST)
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
Subject: [PATCH 0/9] Add Apple A7-A11, T2 SoC cpufreq nodes
Date: Mon, 23 Dec 2024 01:52:00 +0800
Message-ID: <20241222175314.151437-1-towinchenmi@gmail.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds performance-controller and operating-points-v2 cpufreq
nodes for Apple A7-A11, T2 SoCs.

Dependencies:

- Apple A7-A11, T2 SoC cpufreq support, in PM tree.
https://lore.kernel.org/asahi/20241218182834.22334-1-towinchenmi@gmail.com/T

- arm64: dts: apple: Split s8000/s8003 SoC DTS files
https://lore.kernel.org/asahi/20241206135051.56049-1-towinchenmi@gmail.com/T

- Device Tree for Apple T2 (T8012) SoC devices
https://lore.kernel.org/asahi/20241203051147.110980-1-towinchenmi@gmail.com/T

Nick Chan

---

Nick Chan (9):
  arm64: dts: apple: s5l8960x: Add cpufreq nodes
  arm64: dts: apple: t7000: Add cpufreq nodes
  arm64: dts: apple: t7001: Add cpufreq nodes
  arm64: dts: apple: Add cpufreq nodes for S8000/S8003
  arm64: dts: apple: s8001: Add cpufreq nodes
  arm64: dts: apple: t8010: Add cpufreq nodes
  arm64: dts: apple: t8011: Add cpufreq nodes
  arm64: dts: apple: t8012: Add cpufreq nodes
  arm64: dts: apple: t8015: Add cpufreq nodes

 arch/arm64/boot/dts/apple/s5l8960x-5s.dtsi    |   1 +
 arch/arm64/boot/dts/apple/s5l8960x-air1.dtsi  |   1 +
 arch/arm64/boot/dts/apple/s5l8960x-mini2.dtsi |   1 +
 arch/arm64/boot/dts/apple/s5l8960x-opp.dtsi   |  45 +++++++
 arch/arm64/boot/dts/apple/s5l8960x.dtsi       |  10 ++
 arch/arm64/boot/dts/apple/s5l8965x-opp.dtsi   |  45 +++++++
 arch/arm64/boot/dts/apple/s800-0-3.dtsi       |  10 ++
 arch/arm64/boot/dts/apple/s8000.dtsi          |  53 +++++++-
 arch/arm64/boot/dts/apple/s8001.dtsi          |  59 +++++++++
 arch/arm64/boot/dts/apple/s8003.dtsi          |  53 +++++++-
 arch/arm64/boot/dts/apple/t7000-6.dtsi        |   4 +
 arch/arm64/boot/dts/apple/t7000-j42d.dts      |   4 +
 arch/arm64/boot/dts/apple/t7000-mini4.dtsi    |   4 +
 arch/arm64/boot/dts/apple/t7000.dtsi          |  46 +++++++
 arch/arm64/boot/dts/apple/t7001.dtsi          |  52 ++++++++
 arch/arm64/boot/dts/apple/t8010-7.dtsi        |   8 ++
 arch/arm64/boot/dts/apple/t8010-ipad6.dtsi    |   8 ++
 arch/arm64/boot/dts/apple/t8010.dtsi          |  86 ++++++++++++
 arch/arm64/boot/dts/apple/t8011.dtsi          |  79 +++++++++++
 arch/arm64/boot/dts/apple/t8012.dtsi          |  83 ++++++++++++
 arch/arm64/boot/dts/apple/t8015.dtsi          | 123 ++++++++++++++++++
 21 files changed, 773 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/apple/s5l8960x-opp.dtsi
 create mode 100644 arch/arm64/boot/dts/apple/s5l8965x-opp.dtsi


base-commit: 9a33cbb3b1e4a0b520a131aec028ddeb99da48c3
-- 
2.47.1


