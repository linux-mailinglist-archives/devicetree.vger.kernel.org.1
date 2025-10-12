Return-Path: <devicetree+bounces-225669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3621BCFE9E
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 04:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E89C3AC63B
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 02:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A2701D516C;
	Sun, 12 Oct 2025 02:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JokoSVAA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D7417BA6
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 02:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760235972; cv=none; b=Agfa4YF9Lgcc5Eumk+g8rgmw37GTy5CpoJRxocNbJhXBBy3zQ7DqYDt9HWcefaREDrgOJAbMX8tdeRhq8YNA7lLdlNPNWCl9oMWSzqlCuN6+0ftWwLUqfgq0aWN9pAXa2/u3qm6HWmGq0pBBMQ0vXaOoiZh+XKxKlRdCgVbIuJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760235972; c=relaxed/simple;
	bh=sZlWQ+Ehq+TFmw/e0r2RP5C7hm4PItV+0AnNbZePiLQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EclbKhF8ZcWjR2FXeHg51Q9cy9KF0NdB1n33MDnhCeFweUEZZdT3XaD9Mv/ZvcjbYgVEAFxdh8LKiMlIApcIEnZmyFyzNNfsFmQui5lcMqGmDYSGgofAlrHFytPsHzKZKmj42Zdmtm3XdJufpuNwdkNtiWpoophhYeA0izc4/tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JokoSVAA; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-781206cce18so3288753b3a.0
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 19:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760235970; x=1760840770; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/Y+1XwSbsMVPSTNdYmAt47Cu/9qwf4w36EkkfnGxXMU=;
        b=JokoSVAANxfcfKwbiyCU4Bl1bBn/xlnyeoRVRzLnKrh4YGfZyTQokCWWi9NuL646e/
         1M5eKsp29XyQxtzsWbCMq6Uuc7nzkz+7i6z5n3OaNdfAdp/Odnr6ezLUOVDNLb4XFLJH
         qL+SsRYEWLMVgp4mDwAIz4U3JJyOb3RT7arLBQdNASaIXTymt9odpnd7uKcnwqDGgkPQ
         RbQm1YdMlEeJ7lcrcJwNCf8xV9I3yS/nrUzFLsK/La8xYhHlrtktKQaCf/zrZGaFzABk
         630IE+ELR164VYaqEzKnQ59q8z8IDcFcsPsKalrCgo3IZ9BKR0sngJlgDdN0xwM60jAN
         7OLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760235970; x=1760840770;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Y+1XwSbsMVPSTNdYmAt47Cu/9qwf4w36EkkfnGxXMU=;
        b=hafnsshWAhQbhW1WJ49J40lFuUrl/DN+QK7NoSLquspapzrJf+X4e+kUjf0WJgo0D7
         YInHZrS3ihrSMUgLe8gWv/2WCuMSSkk8CSi/TyF50c58z8tHMXwx7h1AZjmFygy5QXHO
         0I4VWso2EOU++I4WWnhXQ47ib7wNnT5DiScQYr0EdHojg4NGoAzJVbzS6YRGyQbh6BnT
         FuNpo4687AWBGym9z9rhDRjETYFwkAm7oSlxO7SkRYD2gqmO4Ng38Dzw1V9xroCqTPCp
         bOigr/rusJZCYYTMrmo5+tkQm2C2SE79FdnSZDn5RG3TCOloZSxrpohji5YZ6vAj5ZFD
         3fQQ==
X-Gm-Message-State: AOJu0YwyFZQ2YKqbsnIb1id7puunP8aPAcjCy0o5a6xrjjhfSAQMO0BB
	+7RhJXB+9eR8bPlvFRWVB+r+xB/Hvc9+CcKuHE8OznU9COWuXIQR6AHl
X-Gm-Gg: ASbGncsJicdzQuzltXkZBanR0oJEUaNJzv0ve3Ls8aQpOfnv1zDxWP7YORUbrmUnp6E
	qp5YCp2Cg1vd+m+mxP+q8mbdg4uq5lyXYIyOL7aYCc4rgcg2iMRKbyKNGtCcaFzj/oLjY4CemnX
	ZZgv/LzDKOr6f0BefuWa8nUQjcfKjbb6dEGDYn9XWB013/ioku/GbL5WTyser9k+Xqfb0e5yxGV
	fGWI1U29lvSE/bHEthwsIQqAkW29hxV16vapD7S193V/jw4s15f5FplPpLjFdS5P81MLyv+hdph
	05b9IyxJbhEHfT/F2+9GGcy4rEZf884cYeOo5lU/nOOAwAQdkcgKT1TZuOkLMGQiaN4fth6KLwY
	5hmVQVI4n0+Pjpxux1DNwVrAn5k6xPKMBdkuH+Ah44hI/iZbzll7JcSxf2PcxQfqs8rX7
X-Google-Smtp-Source: AGHT+IHTAezIVOlurkAg+7C74kvmB+nBt5xlXqzzzPRnJHFMzlSR8jL/NpvTl40u3+f4D1RCNQ2gDg==
X-Received: by 2002:a05:6a20:3d95:b0:278:bc13:d83e with SMTP id adf61e73a8af0-32da8e360e0mr23314655637.11.1760235970292;
        Sat, 11 Oct 2025 19:26:10 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d9992ddsm7180489b3a.80.2025.10.11.19.26.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 19:26:09 -0700 (PDT)
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
	Longbin Li <looong.bin@gmail.com>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Yixun Lan <dlan@gentoo.org>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Ze Huang <huangze@whut.edu.cn>
Cc: devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v1 0/3] riscv: sophgo: add top syscon device for cv18xx
Date: Sun, 12 Oct 2025 10:25:51 +0800
Message-ID: <20251012022555.6240-1-looong.bin@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add top syscon device bindings related DTS change for CV1800.

Changed by RFC:

https://lore.kernel.org/all/20250611082452.1218817-1-inochiama@gmail.com/

Longbin Li (3):
  dt-bindings: soc: sophgo: add TOP syscon for CV18XX/SG200X series SoC
  riscv: dts: sophgo: Add syscon node for cv18xx
  riscv: dts: sophgo: Add USB support for cv18xx

 .../soc/sophgo/sophgo,cv1800b-top-syscon.yaml | 59 +++++++++++++++++++
 .../boot/dts/sophgo/cv1800b-milkv-duo.dts     |  5 ++
 arch/riscv/boot/dts/sophgo/cv180x.dtsi        | 42 +++++++++++++
 .../boot/dts/sophgo/cv1812h-huashan-pi.dts    |  5 ++
 .../dts/sophgo/sg2002-licheerv-nano-b.dts     |  5 ++
 5 files changed, 116 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml

--
2.51.0

