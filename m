Return-Path: <devicetree+bounces-195811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EF42CB0321A
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 18:33:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29F0318966EC
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 16:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8EA943AA9;
	Sun, 13 Jul 2025 16:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e65pdzKi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E25414A8E
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 16:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752424401; cv=none; b=fRPHLqqIv4wNUP6v4gMss+dMI4TalyfLj4bKrzFbDyLPubSDuGvh8D8j3ZwWp4bkXO7tc0+EjX1PbMZlhp7cBq9iQlHLs3BSE4jG7rbQp8gy39AWIw3QpE3Xb7zUmtstjONi5V4SfZ6KNnIqBX8a6hzS/qt5N+CmR10P5ML9o40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752424401; c=relaxed/simple;
	bh=/MokR5SJCvkVtati9iFsiQOx1F0B3HEfaQGCUVlwkI0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=R8Km8Jrr5kLn6HTNsvnfm9Tbv2ntGajr/Yqy2kmzNfIT/G95ABaEh0MimoJZhr+vkeL5O+HW1fAf7uoc1We/eZxqd7OWddEPLq+fH0UX2i03tr5ZdEzm+yLG/5kwZGzBDJ8jnCF9ff4EDLiLO728HlmBiG+4NQ3GAQpRu83rVRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e65pdzKi; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-23694cec0feso31681025ad.2
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 09:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752424400; x=1753029200; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fuRb4Qiqsz/z/G1pp2Nj7uCsktPKwK6K200MetOeQyA=;
        b=e65pdzKiVBNfBZDbP2OrFFjRiRaME1tEvM7/mKBt7TfmbWji7fARKyK3Wnv9iTilPZ
         9Z7leIKOBwk2RuK0VekdxyfpnZPmkeVxh1hE9s7biZNo3qdw/9FKMtrW6Lk7yam2RL6r
         cE6Z1M17mBtORaU9uaGLghz8m4v6mUFKOfdD2yUCBnwAfXM/xPE1bgC/rVOp78Hlb1Nx
         Nr8XcC0YXumg7hvZhIKfKbboKf7ttgoMVsu7vTHLGThezXXcHfj2eiJgaWeC3c3ByUo9
         vABrNY/YqIU809scXwR7+zjtF1DjeKmn8JPg9O9ICLWnewD3ldrjpkWRsYrElbrteQUY
         Wmdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752424400; x=1753029200;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fuRb4Qiqsz/z/G1pp2Nj7uCsktPKwK6K200MetOeQyA=;
        b=W+pgXM3hzTWm6ydlQNuRDofgpoUk5rKXFFr9ddn6REGt+PMPlf860fVIBUH34w/A3B
         Opx9NgcCGKJGiGeqR/BbFvQn6HAIgRn5aaKUqDMKpJBWuN0DiAU609CTuiSN+yEv5xAv
         CzD4A2KcMBHT2IIUE7xomDyVXszvIl7n9NsZ5E5BtSNSOAuBi4mau8V4D+s+kMPQgw/Z
         dT1c6Pt4/Z6Y39W4tD5FgZA4QX5NkCvimCrs2Og3Vt+sZT98Hdk6wvuqWFloDcRZ+pCj
         0w8LuW5yTMYR0eUxYhx2To0VgaSLNjKry/FlNWmWSdQein+p5BlWfXKveICKoFpjZw1Z
         2XAA==
X-Gm-Message-State: AOJu0YxAHkTSvY0U/jw/bJHlYZ24aHUe2uUXBDX/HzQRGLQ895hUThAV
	w5RGhbY41FWX7k7NHAGhjCrdrH44YH8biw1G2lL8uP5HY9kFRShGGdWl
X-Gm-Gg: ASbGncsy//en5xByV6z5fu2e57Go4LHJID3+iCsMLY2flTu/QB2+IRrORBwlMh9bQ4p
	ncnhweX6F7OrwBicSW/MZUqgAYnPrUO1zhtd7pOEs00ilnK6tHDe1TnMVIcc7izFEmoqwbMyIro
	kQMXbzDHCYRCSbDJ8eApMRgj6QnhWz9Ts48C0mptLBGXXgSkHIW2AprcOTDGsP3Ni9zLkS51NyP
	az5X8vc7HrakAvU5tMbXK3WtrJfwKrfssL4JPUX//mMJq+FkeXHAbbYvsYDNPadSjhUh2CEE//I
	NZVHQWsIB0F2HzPS7pE5ibaKTdw2BwDY43zY2su5F+mCYZxkyeQu7MwjsIK4BIr0uZIVHrRzV6G
	fDnnrdPoTTNUxiJ92k0qayahhyNx7DE3hB1o=
X-Google-Smtp-Source: AGHT+IGCO4liv93JPPoLPS2XAKJCjFoSU4kfGGUjaOrz6VjqZtPcVHjum/sjVr3U2YnYlhY1JRCo8A==
X-Received: by 2002:a17:903:244a:b0:232:1daf:6f06 with SMTP id d9443c01a7336-23dede94c3fmr158131165ad.47.1752424399645;
        Sun, 13 Jul 2025 09:33:19 -0700 (PDT)
Received: from arch.localdomain ([155.117.228.70])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4285ecbsm80809655ad.48.2025.07.13.09.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 09:33:19 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	dsimic@manjaro.org,
	naoki@radxa.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH 0/3] board: rockchip: add OneThing Cloud OEC turbo
Date: Mon, 14 Jul 2025 00:32:52 +0800
Message-ID: <20250713163255.163669-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for the OneThing Cloud OEC Turbo, which was
initially marketed by OneThing Tech as a PCDN (P2P Content Delivery
Network) device.

Jun Yan (3):
  dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co.,
    Ltd.
  dt-bindings: arm: rockchip: Add OneThing Cloud OEC turbo
  arm64: dts: rockchip: Add OneThing Cloud OEC turbo

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rk3566-onething-cloud-oec-turbo.dts       | 313 ++++++++++++++++++
 4 files changed, 321 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-cloud-oec-turbo.dts

-- 
2.50.1


