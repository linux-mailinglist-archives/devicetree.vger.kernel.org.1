Return-Path: <devicetree+bounces-177873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 35376AB974E
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 10:17:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C0B5A07D98
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 08:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A72822D9FB;
	Fri, 16 May 2025 08:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ACFtu+XM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6596222D79D
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 08:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747383385; cv=none; b=Vbg/l4dWQ7ohp9iqYfZ46lF9m9G+vq5HiaMroirBNy4/TffumQAv33Rpn+y2TJcZaKdz8fjF8qbaO9x3RYg4jtPN/lnnITmZnTtus/kCJR8b0uFBQkCh3my7Zarc+0yuQSZ7+Yxy75ez1bqAlVAYtCswPjiXAQ8l50WpTchG/SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747383385; c=relaxed/simple;
	bh=3oAqLdpofioLRO+ZMd7laToxcoplseFefLVEcL35UuU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=fWhNqQ6m8PXvDLJ1uShjx2AzL+naimtZCrLBawxkJpm5ek9kOhUUNAdPC7kPthLEwhQcbUh8bWCMhOirfBmocf3we9THSxtUMucNGTmfSpdgymXxkaqD+vlMh8LMejGH8KhU5neA0G9RGljGEUHCNqyEWBjpvpO7GlRjtcS6STc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ACFtu+XM; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-22e033a3a07so19061955ad.0
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 01:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747383380; x=1747988180; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O3A/y9lV44RNMvt/SwD6LadHVjF3D4qz0TtE5xp4LxU=;
        b=ACFtu+XMTgLH75rcSsUjn/stiki7wSCGzxcXYDijZTG1ICwFfggKJrF/jKaiosbUXc
         9Psw35dYAFdi7J/S3s+5QhEeF14bSDE4R7wWYERIGkn658v+50FifSXFiKpiCBRmRbdg
         eZHVv9C+LMw/G7NtpPCj02ts+SVS85fd6hSMJCTyaLiEr6ZPT+G0Xtyv9CTDAElr+GUi
         3KBWZJbSoCJzossvPvU2kntrR5HHEnbrZoNDaMqhD5Iuo3o7hSajDv+Y0eXBIPoc3rvz
         7IBi9F2ZQrNmCBF+WgFV//lVBRkxr3qpL42AG1U/kzakITmoLxIF+pCPAUJj88jPGJNI
         eksw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747383380; x=1747988180;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O3A/y9lV44RNMvt/SwD6LadHVjF3D4qz0TtE5xp4LxU=;
        b=Lc6D87PMwkUTGacITyOo8vIDzprFFgEsPQiJDi+i9NMWoNSzobzW2vDIP/bwk4C3J5
         QfDxI7ZAFf4Lxi4gtLEsZjYDnyJKbLvlZmCuQbpScmRq4loh69kN6y5MbWJKuZ9PAeVw
         4OyJvbKmWXZ8lzh9EHjx+vZU1S+eMrb+5xnOzmZks6oN9BBirAvEDR3lVSYEmRAulvhS
         lwvw4e508ebixI1waqX04Bwsj9922zJ5iL7+tjPQwjnlRVxwSeXzILcGmRzJC6wZKpY6
         vBX8yb0KcCCoPqiUvoA1SnrN8pje16167tJFDM/bCZyL1TONinGtza3tVkLlXh21NcoI
         zrqA==
X-Forwarded-Encrypted: i=1; AJvYcCXc9iu0Wtjqx575L8qV8ao23VEUA9Zb7tbXTD0NLC+vDYRGVOSTdKlxp8TECMxAH5GqSw+x7iJrFCYp@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp2n/GE2UTqbwrOpbVO2O6lo7GGptqxrm1+pC1uVEpG0OJZL2k
	jSfVCSGpJ/jouLUnbHUWoJR4fAIrYUM7pmfmBOY+2//6G0tL8ihLTwXsxn+JWTrYcHk=
X-Gm-Gg: ASbGncsaP11XLRr7S/jvkBYhiayviZD+vnNklo9o3+ctbZi8KBs55am7mGZ6o9WC3Jz
	3U5OWSju8oeFOVi46N0HGCzYlObwd8Ead8PCK15J5XGUQwQd9Uizuc/671i6z8tXR0GTw5n54zk
	nKavtKAlxkIZbXNQh73N6g88JTwiDzV4RSoOvECKR3Rk71j5RV36RB9O7r0PV+POzMeamcNeOKe
	eX8itcfKV5YJnx0lHZv+i8QMTdwexQJBogH07ZjCa/GcYYEXt+LLZvwgMtvXGC5hYzjzmrVCnDy
	n/U3fi5lqXYGQGrPH4MDIx6guUFmq30azm7I4h8CdEFhSqCnUPnBVQoEqbLKJ+sbpPdp9KCLA3L
	DTjFV/ZRjuAZFtw==
X-Google-Smtp-Source: AGHT+IHQ2bTz8PCbIjboyHNgGlHzWE2OMhXaYM5Uf+vtwwDeH0Y+c6c2ytTxnCqAGRGryuYKc8knUw==
X-Received: by 2002:a17:903:234f:b0:223:47d9:1964 with SMTP id d9443c01a7336-231d459a55dmr31119835ad.34.1747383380431;
        Fri, 16 May 2025 01:16:20 -0700 (PDT)
Received: from dev-linux.. (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4e97801sm9397695ad.133.2025.05.16.01.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 May 2025 01:16:19 -0700 (PDT)
From: Sukrut Bellary <sbellary@baylibre.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Sukrut Bellary <sbellary@baylibre.com>,
	Tero Kristo <kristo@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] dt-bindings: clock: ti: convert to yaml
Date: Fri, 16 May 2025 01:16:09 -0700
Message-Id: <20250516081612.767559-1-sbellary@baylibre.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert TI autoidle and fixed-factor-clock bindings to yaml. We are fixing
binding warnings only. No change in the existing dts.

Changes in v2:
	Patch 1:
	- Dropped reg and example.
	- Updated description
	- Fixed the subject
	- Fixed line re-wrap.

	Dropped clockdomain.yaml(patch 2 in v1). This will be taken
	  with prcm.txt binding conversion.

	Patch 2:
	- Fixed ti,autoidle.yaml reference.
	- Added constraints.
	- Dropped description from clocks and clock-output-names.

	Patch 3:
	- Restored the license.

Link to v1:
	https://lore.kernel.org/lkml/20250404014500.2789830-1-sbellary@baylibre.com/

Sukrut Bellary (3):
  dt-bindings: clock: ti: Convert autoidle binding to yaml
  dt-bindings: clock: ti: Convert fixed-factor-clock to yaml
  dt-bindings: clock: ti: add ti,autoidle.yaml reference

 .../devicetree/bindings/clock/ti/autoidle.txt | 37 ---------
 .../bindings/clock/ti/fixed-factor-clock.txt  | 42 ----------
 .../bindings/clock/ti/ti,autoidle.yaml        | 34 +++++++++
 .../bindings/clock/ti/ti,divider-clock.yaml   | 22 +-----
 .../clock/ti/ti,fixed-factor-clock.yaml       | 76 +++++++++++++++++++
 5 files changed, 114 insertions(+), 97 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/ti/autoidle.txt
 delete mode 100644 Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/ti/ti,autoidle.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/ti/ti,fixed-factor-clock.yaml

-- 
2.34.1


