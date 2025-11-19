Return-Path: <devicetree+bounces-240167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 82243C6E26C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:10:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E9D814E5359
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 11:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA032F5A3C;
	Wed, 19 Nov 2025 11:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bX3/6o6E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076F03502B1
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 11:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763550317; cv=none; b=aCnDh28NtbWDuwH62oXptCY72jb8MEwVgNdezEZuqWKcKdQjOgNOqG2BhYgcKNU/mU5ehacKtFt+cB8B7Fmhoy/Tba2CUxzqZFel89tpZKI4zSoq9UTpQAWS2Fj6KE2DiZRXDpjKlFjkhFRbnUCyWgGeE4PZW3CPzbCCGbf1l68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763550317; c=relaxed/simple;
	bh=Z7BqYBP1hQPbK6MRUQ0wzMjKx60/qWpwRoZtM1hFtxw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SWSF9NQmPNVuhRM+ZNtMhVp2MZkpQ3IZChpxikz+4nwWGsw0vvtotkD+0QAlLoD/3PBIfXJMTdWxJY1e+MnoUuIx45rtZmAnZTkksrLQCWOy6q+GOzog58ZbEaJB+aepPIwNoTdKCCx4Vwo/n3npyiHKgem5pMj8ThllQ7fDOCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bX3/6o6E; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-477b198f4bcso4260115e9.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 03:05:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763550312; x=1764155112; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CWlw20o6LQDwwv5VrwhL4squAhrFIax2gZpjeEuMfG8=;
        b=bX3/6o6EQ0Bo7pZDfiKNTIgQWCmGWO0wLdAY8eSqHdItzrMgIIW32UAyeqZQI3EHpD
         IQWrTRQA/nxQHfIiYlb6AIuKi55sBuzOEWhNcezCkQ2yKkO7vROXfetRi3MofDC7+Tag
         2viCXLp5apzMcfPrTMGaRfLEBE9YR+YzEDY7Zy+0gXnWL/TSpMNzggUnwEUCBaKmVwRR
         +cYUODnpgHVQkXozdE3xuCSkldKbtolpougTHwhkzuGUE/Fsa3E5ctmX2zF/1Z7f8YRf
         RQHycmOIL2ePkw4Yfsxtvz6Uo3nuDwOfaN+ID8ESaeUkMIe89CciLe0qkV9+Jt1QnDTe
         2bqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763550312; x=1764155112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CWlw20o6LQDwwv5VrwhL4squAhrFIax2gZpjeEuMfG8=;
        b=Y/A40aK1Mk/8IiFruqvFojwbnt+Dy4xg+KPRSm3PkGTqODrBKUyN7VlaeF0Vm0Km/8
         tgfCyqELjR1yy5+sSynyKNBrGrbW3XYUIP7re3J25ocgS5HKqc2x6fQS4AW8czDZ5H4G
         vgexC3mLSq4ctgnkDLbrO832lmxsa3Sr0iYDTHnTPVjxDvFb/jb3kHLJ8ypfayrZd9MG
         8UQj/TwePAAtLECcMDvjlJ/cHgwXHEHnB224GyRl0C8KZ4yqirBB/YPmVNkGZp3WGEuV
         MKJsfSrFspB4byXjfoYiQlbg3yn2qdkY/vp7/fHvKGgXw9WwqtM/L+6bip4C8Se0Wxpu
         fKdg==
X-Forwarded-Encrypted: i=1; AJvYcCWVdPCVoBzzYbgul+HNoR37uDJS6+FLA8ZkwiXjOCDiWaH0cbfCsMWCooq+ZFaGnhcnbImMMgDEZcYQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzfDEqLM0CZnIZ2zy4PYG6VivQtPf/yyFyuo0BZPb09WcEcC66q
	wpAB8IB/iABnVPy6YLMthOGZHkiIhj++leZZogePedPGDHibM3IU+umk
X-Gm-Gg: ASbGncsjxApzF/BuYtLYE43xeD/Qsd1xNYc1sYM1vuk3wsK90KTrm1DCGE6VFlSNDeq
	bTwl/zbBqW0HIXKVPMoZ/8leSdPFTi7M36HGXSLtzz+ECCvjbj+hikdssxlbEDYMxwPn8rsb4W5
	5LRMsqFRXhDYaBa4tlDYeudPsLWx7INFTHX1Lhv+MZIt4TRLTvM5NhLjf32eLhkjHckHGNY9/9l
	AOsGYXHK97pqNELQFXu+FdZ77vHnbhIrqsY3J4Q68v/pmEwEbw5rgZUN51CBfE4WQQgRdUOta1Y
	9I1Ur0ImAWf5V7B8daCg9JKwqkaEIiBB8Vq2lml1dRgkeuNbQ+3AuC97ZRoZdjbQ2qaa7w4arJ5
	tnIu6BlzXu9bnEViuzW9oTeT1pNSzFLQktDT5ynTkqq2o4mpFH8VPYn7DzKB1dQocqza1d5BMaB
	rlzw1eK1CwYICTdNNr4w32pCdjgS4A5N9qQJHo1uPfFvMS0dBpTpeVqqid
X-Google-Smtp-Source: AGHT+IHvIJl1Yyeyb6PlfbHbv2vqvVFA+gZ94GJdtTnuQ5bBm81qZUqFHMsfO2W+YX8YNlnln+efZg==
X-Received: by 2002:a05:600c:3112:b0:477:9650:3184 with SMTP id 5b1f17b1804b1-47796503351mr160637325e9.2.1763550311378;
        Wed, 19 Nov 2025 03:05:11 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:4b7e:3ed7:e0b3:cf30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9d198a0sm39884505e9.1.2025.11.19.03.05.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 03:05:10 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/4] Add USB3 PHY/Host nodes and enable on RZ/V2H and RZ/V2N
Date: Wed, 19 Nov 2025 11:05:01 +0000
Message-ID: <20251119110505.100253-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This series of 4 patches adds USB3 PHY and xHCI host controller nodes to
the DTSI files for the Renesas RZ/V2H(P) (R9A09G057) and RZ/V2N (R9A09G056)
SoCs. Additionally, it enables the USB3.0 support on the respective EVKs.
The first two patches add the necessary USB3 PHY and xHCI host controller
nodes to the RZ/V2H DTSI file and enable them on the RZ/V2H EVK DTS file.
The next two patches perform similar additions and enablement for the
RZ/V2N DTSI and EVK DTS files.

Note,
1] This patch series applies on top of below patch series which is
   already under review:
   - https://lore.kernel.org/all/20251103200349.62087-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
   - https://lore.kernel.org/all/20251023212314.679303-1-prabhakar.mahadev-lad.rj@bp.renesas.com/

2] The corresponding USB3.0 PHY/xHCI DT binding patches have been submitted separately for review.
[0] https://lore.kernel.org/all/20251118180712.4191384-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
[1] https://lore.kernel.org/all/20251101042440.648321-1-prabhakar.mahadev-lad.rj@bp.renesas.com/

Cheers,
Prabhakar

Lad Prabhakar (4):
  arm64: dts: renesas: r9a09g057: Add USB3 PHY/Host nodes
  arm64: dts: renesas: r9a09g057h44-rzv2h-evk: Enable USB3.0 PHYs and
    xHCI controllers
  arm64: dts: renesas: r9a09g056: Add USB3 PHY/Host nodes
  arm64: dts: renesas: r9a09g056n48-rzv2n-evk: Enable USB3.0 PHY and
    xHCI controller

 arch/arm64/boot/dts/renesas/r9a09g056.dtsi    | 30 ++++++++++
 .../dts/renesas/r9a09g056n48-rzv2n-evk.dts    | 15 +++++
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi    | 60 +++++++++++++++++++
 .../dts/renesas/r9a09g057h44-rzv2h-evk.dts    | 30 ++++++++++
 4 files changed, 135 insertions(+)

-- 
2.51.2


