Return-Path: <devicetree+bounces-133392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E359FA744
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:33:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88DFC165B70
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF0E677F11;
	Sun, 22 Dec 2024 17:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eSq1tEPV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7611426C;
	Sun, 22 Dec 2024 17:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734888790; cv=none; b=BNPl7vR8nTUs5lHUXp7ccm6rBThIGoW88XxhVlaH7lI9QW2WsnewH/F/Ahwev07TGnzgrBe9wf30auI6J4oeOf3gE/SherMpmG+SHVw2XHQ9LbtBdRqgjAD27WVL+aDhHziR2MI+3cKuRG3ixoLpRAl5YfUNlN2ooytMDQeCKXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734888790; c=relaxed/simple;
	bh=HB+VBj3tJ5Uo1Xk4nGHh6TnsKpRhnzX1WYQDYwTd+V8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lfpUX7ZfTEZYXBsFGVlHIxjEWDPJ85eQogiMElvtGtkn6wuIdm7G9k+MBjnhCDmhWj4svMb7kYnMSUn1U54N6oUPggM6jP90+w4LBlWe/qMikr45SyPypshkF6ouu2KoAqJdqlMNYcuKrJ0wFv3NtQo80+CFBS3CcE70b7nubBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eSq1tEPV; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7e9e38dd5f1so2503120a12.0;
        Sun, 22 Dec 2024 09:33:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734888789; x=1735493589; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gPPjd3s39nBr3krlLS6DkSRw+C8geW511O7IiYKzB+A=;
        b=eSq1tEPV/9Co93sTbfTKfma0p//mSKcRDfXwDsumP9B5LwqjTu3lXgxLOsj31gYLDJ
         XQcyl6jWNIv99Otkl0Exwdwsrr+CtGoNKFXGHAQKMt6PzwSPPRn+NFAjhU92JMokF6yI
         c+vn/7zJc8AqbPuIb8ZS0H88bI1pUIaXOZJafbwQF5QGgRecBdEx+QuSlmFDkpTZo/RL
         ke3cdGrracC8n3wnsMMnAJ96uhzjuQdQukfYFDu1fGebxMeSC6PV/yAUgX8u3R9cKfML
         b47UvX6N9sZFKA6gqlVMM9YIJkkLkixhFLvj/JmNA4LhaNbr85S+1NxDNH+HD+haVGTy
         NIvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734888789; x=1735493589;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gPPjd3s39nBr3krlLS6DkSRw+C8geW511O7IiYKzB+A=;
        b=SaSPjOXqOz3Q3tYo14uHYAPJITxHoePWdMaSZMMlCzG+mGp2gTg0bfprRDMnmZK7/h
         ng83TGbaWLP3Wtf2FSaruVtZtnRvwBtqQJTBCTWKTzMonq4lh3ji1Wc3+Ohj/1uC14pn
         YwND+ycXgwnlwlLcLaQSbd0DGFoJ0YUnks2BLH6rVRXKHZ8jnwPEE7iO64BndCLMHZNK
         3jX8JyZy9AFtRsyTvAp3i5Cc0VFMlklvdecRtrsbgrbokXfbXhgw5f5BBJqb01HahvHe
         cpdSZZ19BZnxm9QM7laa6vCbp/yp81eARcp6t2HJoP0Ebc56gLxRLDA7V2RhNALkGwdI
         WVHg==
X-Forwarded-Encrypted: i=1; AJvYcCUnVHWnUbRcbKRc/F+7fdoSrQcLvC1gl4U2WyjYcsYTjFXzrRiKpm3Z354fXMyWgfVOVBJxQ9dfQZQM@vger.kernel.org, AJvYcCWaZ5LJwFBPK4uFyt/uJtKR8qlmnWkfBUFFAXDnVzSpIYF/MCQMVmCnOhqFUgmE7gMoji//HcS4aLlNW8qg@vger.kernel.org
X-Gm-Message-State: AOJu0YyiAcP2VFikg1H2+d5JHS9xn7ZbDcfbD21FvXhijXZ9WmhjwlGK
	23gqy8NyYjIqkRzJkF06M6TW4jQH2sNFVJXVKl5XIUvZh4oQkfBp3Ksym8Yu
X-Gm-Gg: ASbGncu7LFtKTsDBkhYfkEzfnCQyf9JmqvvXAwb6nyEsiKEb6mE2SGjC6tSCE2LdhXF
	tXYSTcV428ZLWHdwXwnKnsNGYt8ZPc9ewkJ31Lc0RXyr7LH+42N14GHQ9Wyc4d+zjUJ5hAZddmZ
	iCWHuDesaN3abx7S2sDFEXvk6QKgeQpwgisa2BrP0CjicV2aD9Tt6HJp81GYPCrGdalQ63OPZQI
	kcCDD2oroa/vtcfmhEvntjLBv5p4jp6FjEI7EdZBXUI3QWXM1c94TDyoQ==
X-Google-Smtp-Source: AGHT+IFZKtlmUdh5emhOPXWQQU+C9eJT7EuMyhwCWbhtjsp/XYx8q3zWVUTywWzBdiJQT20JGLxHTA==
X-Received: by 2002:a17:90b:2e4a:b0:2ee:fa0c:cebc with SMTP id 98e67ed59e1d1-2f452e38d0emr15732309a91.20.1734888788739;
        Sun, 22 Dec 2024 09:33:08 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-2f4477987f4sm7567552a91.2.2024.12.22.09.33.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:33:07 -0800 (PST)
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
Cc: Nick Chan <towinchenmi@gmail.com>,
	Aun-Ali Zaidi <admin@kodeit.net>
Subject: [PATCH v3 0/2] Device Tree for Apple T2 (T8012) SoC devices
Date: Mon, 23 Dec 2024 01:31:46 +0800
Message-ID: <20241222173240.147675-1-towinchenmi@gmail.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds device trees for the Apple T2 Security Chip found on
some Intel Macs released after 2017. This SoC is based on Apple A10
(T8010) SoC and, for many hardware blocks, can share the A10 compatibles.

Changes since v2:
- Drop PMGR nodes, moved to PMGR nodes for A7-A11, T2 SoC series.

Link to v2: https://lore.kernel.org/asahi/20241203051147.110980-1-towinchenmi@gmail.com/T

Changes since v1:
- Use imperative mood in commit messages

Link to v1: https://lore.kernel.org/asahi/20241201161942.36027-1-towinchenmi@gmail.com/T

[1]: https://lore.kernel.org/asahi/20241203050640.109378-1-towinchenmi@gmail.com/T

Cc: Aun-Ali Zaidi <admin@kodeit.net>
---

Nick Chan (2):
  dt-bindings: arm: apple: Add T2 devices
  arm64: dts: apple: Add T2 devices

 .../devicetree/bindings/arm/apple.yaml        |  41 ++++
 arch/arm64/boot/dts/apple/Makefile            |  16 ++
 arch/arm64/boot/dts/apple/t8012-j132.dts      |  14 ++
 arch/arm64/boot/dts/apple/t8012-j137.dts      |  14 ++
 arch/arm64/boot/dts/apple/t8012-j140a.dts     |  14 ++
 arch/arm64/boot/dts/apple/t8012-j140k.dts     |  14 ++
 arch/arm64/boot/dts/apple/t8012-j152f.dts     |  15 ++
 arch/arm64/boot/dts/apple/t8012-j160.dts      |  14 ++
 arch/arm64/boot/dts/apple/t8012-j174.dts      |  14 ++
 arch/arm64/boot/dts/apple/t8012-j185.dts      |  14 ++
 arch/arm64/boot/dts/apple/t8012-j185f.dts     |  14 ++
 arch/arm64/boot/dts/apple/t8012-j213.dts      |  15 ++
 arch/arm64/boot/dts/apple/t8012-j214k.dts     |  15 ++
 arch/arm64/boot/dts/apple/t8012-j215.dts      |  15 ++
 arch/arm64/boot/dts/apple/t8012-j223.dts      |  15 ++
 arch/arm64/boot/dts/apple/t8012-j230k.dts     |  14 ++
 arch/arm64/boot/dts/apple/t8012-j680.dts      |  15 ++
 arch/arm64/boot/dts/apple/t8012-j780.dts      |  15 ++
 arch/arm64/boot/dts/apple/t8012-jxxx.dtsi     |  44 +++++
 arch/arm64/boot/dts/apple/t8012-touchbar.dtsi |  19 ++
 arch/arm64/boot/dts/apple/t8012.dtsi          | 176 ++++++++++++++++++
 21 files changed, 527 insertions(+)
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j132.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j137.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j140a.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j140k.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j152f.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j160.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j174.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j185.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j185f.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j213.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j214k.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j215.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j223.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j230k.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j680.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-j780.dts
 create mode 100644 arch/arm64/boot/dts/apple/t8012-jxxx.dtsi
 create mode 100644 arch/arm64/boot/dts/apple/t8012-touchbar.dtsi
 create mode 100644 arch/arm64/boot/dts/apple/t8012.dtsi


base-commit: 78d4f34e2115b517bcbfe7ec0d018bbbb6f9b0b8
-- 
2.47.1


