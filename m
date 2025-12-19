Return-Path: <devicetree+bounces-248103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0D0CCEE47
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:10:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 245A9301CE54
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:10:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E15F32DEA80;
	Fri, 19 Dec 2025 08:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bIwqSoga"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779C713FEE
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766131803; cv=none; b=cg2QGTOWN/4sBXn2bb/Xd5UpkhulkDOfIxWa92AzQHnL5ycyNXKUgPtgBklT+S+gA/61UESMmFpR3sZnIzJMdp/65cBEqaJ3CevmhaYTX2s0gIwJdrjU+Stx0SDJDex20UipsJuQaMm8sZqdiqIUjCZWSNHhtPh5HvLB+1Rh1kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766131803; c=relaxed/simple;
	bh=YinN3jx5KiGJyRVBis4l4aUW2nlKscAe0FQJeSOKB1c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YRdcrkcfL2kNcbLbBY0J671lakIoft33Jt4GEGso5xurf9BaBrqGKGCYgFg7ZD79FN6ABjzUxawjQoKkwchNiNkysmTsw4tqxtZbpnVxfQ8sM6v71SO4gFSr+5dfgUvxD8+7lC4bAHiNeGT0hJvpvvYYbJzTEnPpS8i10wH4xZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bIwqSoga; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7fc0c1d45a4so1434959b3a.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 00:10:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766131800; x=1766736600; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4jXO80hFld87+XUBJlo44gpcJSe53DOPS7WnRWkfxns=;
        b=bIwqSogaGACfO47mVQ1nLR1rXASQ5/hwrGgSaWiZtAJWBz+EA6dDIHArWE8le6XcUM
         mp8sVgtahBPcloxOfZJcOW+K3aEWw4zEPPJw7i4BMiX9x56nTjAlnFv2RvDxKW3znDM+
         pqk4Ern/BNlIIXNGOS9QbP8/KLQqbxSX2IWcz4JPq/aLiR4rfUt7u3BgcBeBlGaCrLRW
         tCpg9ZOpou+FvVYDq6At1bXoZ9x8RkaOKcXI8AJ/FlrlRVgHHySwpQzEB+tVfDc8Esir
         +N1calgGQsp9Dn4FY19+NnuhV16/jFzmGLdqWw0M3z3IrtR8jdl22cHHQXRvcYfTxxa8
         OK6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766131800; x=1766736600;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4jXO80hFld87+XUBJlo44gpcJSe53DOPS7WnRWkfxns=;
        b=RtMpiRNydaAQO6gLCIapztyq7nMRf+nEbQ1ghQ54A4J08VN6kcGGCRAH3KFtDYMZJr
         uMaVIJRaCZaETeGhrZgIMosBf4Yoz1jWTJA4h3rdWwUnjvEeuoeBb8+5qyCQ4MZKLBWn
         DhR4MnoAst7O3PtiKzfO9a7ropeBOPgPkdW9sQBBJuVaLa5PtHe8f/w5rGNmO+DM9vBo
         EcKHzZBH9hn86RwwgZJnIhJIhA0qEmPntGqvosfIPwmKOFn5Y7fEkPkUUH6YKdEEnPN8
         xtbzE4qgm3bLpmyr1ps+VUJe2lLCVVyNDlgXG78+P0bLwv36YmVtF+JrFhNd+xikS8OX
         J5ZQ==
X-Gm-Message-State: AOJu0YzRGD2ubSPJn8AaCng1ABP6UKPiCexvWUZ+15Y72IjkJsDT8pBB
	M1mHtERDpUuesgDVlkwxzz/51U39FCorYr8FVHdAK39lK7qlt8HZBaXz
X-Gm-Gg: AY/fxX4+S+ttom9u0V8kVlAsUQQx8eKHlEzQothmj29IUi2A5DkqN7oT97RuOuul33r
	BlIaGEd8R6/CHSRiBLTisdESROiInxzw6SUKnZPcliBBLfgeYCvtE7tIeHLBi59a6FVRCjmiLd7
	wVFA40gpYKNYqS+6L/3803pqR3mfIFZd2K85PQLXNDnQSj9226Qyl4YhfMeMK0sh3xGG86PXnNm
	y+d+7nZdIc5ZZuJgF/8koItkb1Uw51jN665jwpRPZHaPYlWKhYI70NZpDAoSnWSqId+RgRSZF62
	M2lOzHKLMHKEZ5t8aArj/TCDziJ6dCrQcxPc1PIqy1+/0QsxGJ0Qd+AsBruc8w9uPaiPUOuVXEZ
	7V0qUOtF9J8Ru7wt3VNXPIlluWrx8U9s/U9mg9PHo6pmXqVhSPmk2qafQRBoQ+qFURvPmosbFoZ
	bkd9HYJ/L3XmwCALxAQukUA7MVqZufupjh0K0tM3lJZ9X5v6cGyVYaEqx7LbKNbL9ujBDE43xd0
	p4ysN35xLXFFDjo6VKRcAxalM3cowFj21Z49wXFvyb14BhOJPcCkqBgRubEUzW+30u//Tm/3eP9
	eT+MYqI1zTA=
X-Google-Smtp-Source: AGHT+IHKFrT2NF1JDxgj+UalkYJY1R30QBAlfTHJOdEXGM/XHA2EahCclVKDTC5GGRc12Vi7ENo8Ww==
X-Received: by 2002:a05:6a00:9089:b0:781:be:277e with SMTP id d2e1a72fcca58-7ff64401115mr2017997b3a.4.1766131799768;
        Fri, 19 Dec 2025 00:09:59 -0800 (PST)
Received: from 2001-b400-e3ff-afb4-41b8-b31c-89b3-0a14.emome-ip6.hinet.net (2001-b400-e3ff-afb4-41b8-b31c-89b3-0a14.emome-ip6.hinet.net. [2001:b400:e3ff:afb4:41b8:b31c:89b3:a14])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b423d86sm1597274b3a.26.2025.12.19.00.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 00:09:59 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Subject: [PATCH v3 0/5] Revise Meta Yosemite5 devicetree
Date: Fri, 19 Dec 2025 16:09:53 +0800
Message-Id: <20251219-yv5_revise_dts-v3-0-ca1d5a382013@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFEIRWkC/3WMQQqDMBBFryJZNyWTGq1d9R6liGZGHahaEgkV8
 e6NroRSmM0b/nuL8OSYvLgli3AU2PM4RLicEmG7amhJMkYWWmkDAFc5B1PuQypx8hI0gSLEwmA
 movR21PBnDz6ekTv20+jmvR9g+/5NBZBKNhazOk3jFfm97St+ne3Yiy0V9EHX6kfXUU8xR8oVW
 FPTUV/X9QsxOmB66wAAAA==
X-Change-ID: 20251118-yv5_revise_dts-12e10edd95d6
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766131796; l=1440;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=YinN3jx5KiGJyRVBis4l4aUW2nlKscAe0FQJeSOKB1c=;
 b=bAtRpZ2ntnmQuZ1a18aigOgyrt/3KLbe32DMiIMFO5CpRAPPBNclbxWrygkj/utJgrSoP9HNx
 NbknPcA8s32DJtdTqKH8OsoPbLmDdR3MNZ67ClWphDFGQU2C+tF8YgH
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

Summary:
Revise linux device tree entry related to Meta (Facebook) Yosemite5.

Changes in v3:
- Correct power monitor shunt resistor
- Revert the previous SGPIO P0_I3C_APML_ALERT_L renaming change
- Add new SGPIO line names and rename signal
- Retitle Update sensor configuration for more clarity
- Link to v2: https://lore.kernel.org/r/20251120-yv5_revise_dts-v2-0-4d7de701c5be@gmail.com

Changes in v2:
- Add ipmb node for OCP debug card
- Link to v1: https://lore.kernel.org/r/20251118-yv5_revise_dts-v1-0-fcd6b44b4497@gmail.com

Changes in v1:
- Increase i2c4/i2c12 bus speed to 400 kHz
- Update sensor configuration
- Rename sgpio P0_I3C_APML_ALERT_L

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
Kevin Tung (5):
      ARM: dts: aspeed: yosemite5: Increase i2c4/i2c12 bus speed to 400 kHz
      ARM: dts: aspeed: yosemite5: Remove ambiguous power monitor DTS nodes
      ARM: dts: aspeed: yosemite5: Add new SGPIO line names and rename signal
      ARM: dts: aspeed: yosemite5: Add ipmb node for OCP debug card
      ARM: dts: aspeed: yosemite5: Correct power monitor shunt resistor

 .../dts/aspeed/aspeed-bmc-facebook-yosemite5.dts   | 68 +++++++++++++---------
 1 file changed, 42 insertions(+), 26 deletions(-)
---
base-commit: 111e542d267576de402d0836603e1def2b60316b
change-id: 20251118-yv5_revise_dts-12e10edd95d6

Best regards,
-- 
Kevin Tung <kevin.tung.openbmc@gmail.com>


