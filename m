Return-Path: <devicetree+bounces-232300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C84ECC16544
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 18:55:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B8A61A26D34
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:55:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91B6134C81D;
	Tue, 28 Oct 2025 17:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jzTG1Xwh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D4733CEA7
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761674112; cv=none; b=poIcT2tcjsRVnhcFpl/u6pwXiT5QsGxP1T8tZcNnFn4GIEvWOu0FzV/CZ7sEOH6F0cXLgNQwprfmA5xcnvG6moHmhoQyIc2EXJGrOuWRw7D38AfFwgLS50+ZY59cW9RZleV1Kb6RFtz69W34SDkQW2cpaykf6wABC/cscq/UpCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761674112; c=relaxed/simple;
	bh=LrD+gAr3mCgHeWBY88F2wCwcSzYu6Edc8zM+jYWIbmM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RX/3yjyvb7jegOYa+6WZdCsPqPfSpUjxEyVXsMyftDQystRy6CYUO5r7lcEuZVMRE2HMHRcByzLThNc84czK5KTwy64LgmTLdcP6XNThkXk1WMZTsbdMNgJqIfTln0mITI5FuEGpPKUUE24R/XvxzvYINarJygOXNJTGUQuJFyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jzTG1Xwh; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-269af38418aso69794685ad.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 10:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761674109; x=1762278909; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U3u8+wKy/5HlGM6RI2a/NOE11yu9QrpXYgXF/5BbefI=;
        b=jzTG1XwhLBubrVZzl8LweX80MS4knRJDQfKVlw28659CzZfqtMe5jR3Ia2uugPFd5E
         sWvWukCerKrixlAgvDq77u7J/SC0YqCtpXsSUEIkU0iIyUc+PUnXqMgOxCCBciIWHUOI
         N5qECQxRytukb8R/DY3IIep1sYEXwfg+XI1gpmTuS/NbB+ZO03IiDU2ZPT041I8sXRPO
         tlaJV1utaoLwsjqgK9Qm5hkm5zN5aXGn2euTN+wJxXSK0FWnYkW/pRkgpB7idKjBXTDk
         1Ap9i5PKiesyx/fFaGk5gPa9f+mcIUTrNg81kmdWlTsOZAvLmACmK1dUM4fXKPVsRCj+
         ah4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761674109; x=1762278909;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U3u8+wKy/5HlGM6RI2a/NOE11yu9QrpXYgXF/5BbefI=;
        b=GpiseYWdo8TXxc7NIiXRxdxzoICYm4owDkGtPrS1JhQaC7GMqlDZSL8uLv+3+qNfSf
         t4iWHHq7x094UYxY7AI9wM0SwMcj9nNQn7vgsW4iwFgp2bZV5vC7QjWk/nigjMzuWK2U
         VgfOP2pjdjAq/Iwa40LLU59urDaNgACj7nzYqG7DKTNMqE6zKPqgLSiR6LK9GqYZ+8Lp
         fG5HYKMfR55k49aA6OljWbrJTLMI9bxkXNkGOhf0fY9ku5Le5IvAgDmfUW1IeZkYA8u1
         CC3YeXI1/VwmymRDDbRbb0c9KlFHmUddHMa8tjhLtMz6XXCN7gvWN4eHlQDZwyV4D8/8
         Z5Zw==
X-Forwarded-Encrypted: i=1; AJvYcCWpWKXL4Qq+6PM6kvmeXll/1JnYPT0aPCs2o0vvnyOUvyuqpa3YhN878nKoWDdko8b8mKr2oPMJrbHq@vger.kernel.org
X-Gm-Message-State: AOJu0YxmOD64EHnknEtLb68MVOSgLN4cefDQr5pwpsTq5o5PGpjDnurw
	K6oOarj1vBHjlxRHYTB5RmELYUbJUIxnyREaNxicJISLP1mC50SMmEmz
X-Gm-Gg: ASbGncs6Px3qSpzVXDbppshOQpHoCA47TNzZ8HsZ7rIR50J9whbwTbkgau76B7Zpld/
	QZxFd/G41zu4wlfBdFbpiyVb9BtYnj/6Wa16L3Bhrrc+gzsLegID4LMqablO5WLnM1Na74ddTyj
	T9myTD44X+ks5dqAgqomJHV/MsX0vfDdZc+8eeqH69EJ6JevwhZl1yVQeX0dEQIRJVSn738KpuT
	iJzf3qcZhfYQVEXVqEiZl4dNMcxsx4oGL+XziPL+p1mJc3n9hL4f0jpPgCvZcAKkviajyVmUEks
	yfs8kAtJgiONxykAz3E6pe2RD7xl2fwBq08d03Rbh7SzOfn51MbUlPMUuj3/n+YMpmyFFFLOCTk
	Y745R0KIeYg9+aLIQrcawCnKUug7ILGh8hdwvHvUYLUmC0rKbgcIcroqzG57pKvKa8PMpkLFhNK
	C63IzAPrcXq6bjOscUhi5luQ==
X-Google-Smtp-Source: AGHT+IFdrN3NlZEyOHMW3wOhl282yM2u3nvY3T0pgfmj9KMkSCzKHyo+WjcYtvifuJB56KT1V7Nv/g==
X-Received: by 2002:a17:902:e78c:b0:252:5220:46b4 with SMTP id d9443c01a7336-294dee991damr529485ad.37.1761674109274;
        Tue, 28 Oct 2025 10:55:09 -0700 (PDT)
Received: from iku.. ([2401:4900:1c06:77f0:168f:479e:bf92:ce93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf3410sm125713005ad.8.2025.10.28.10.55.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 10:55:08 -0700 (PDT)
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
Subject: [PATCH v2 0/5] Enable Ethernet support for RZ/T2H and RZ/N2H SoCs
Date: Tue, 28 Oct 2025 17:54:53 +0000
Message-ID: <20251028175458.1037397-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This series of patches adds support for Ethernet on the RZ/T2H (R9A09G077)
and RZ/N2H (R9A09G087) SoCs. It includes the addition of the MII Converter
(ETHSS) node, GMAC nodes, and enables Ethernet support in the
RZ/T2H-N2H-EVK board DTS.

v1->v2 changes:
 - Dropped *skew-psec properties which are not needed for
   VSC8541 PHYs.

v1: https://lore.kernel.org/all/20251016202129.157614-1-prabhakar.mahadev-lad.rj@bp.renesas.com/

Cheers,
Prabhakar

Lad Prabhakar (5):
  arm64: dts: renesas: r9a09g077: Add ETHSS node
  arm64: dts: renesas: r9a09g087: Add ETHSS node
  arm64: dts: renesas: r9a09g077: Add GMAC nodes
  arm64: dts: renesas: r9a09g087: Add GMAC nodes
  arm64: dts: renesas: rzt2h-n2h-evk: Enable Ethernet support

 arch/arm64/boot/dts/renesas/r9a09g077.dtsi    | 482 +++++++++++++++++
 .../dts/renesas/r9a09g077m44-rzt2h-evk.dts    |  70 +++
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi    | 485 ++++++++++++++++++
 .../dts/renesas/r9a09g087m44-rzn2h-evk.dts    |  79 +++
 .../dts/renesas/rzt2h-n2h-evk-common.dtsi     |  70 +++
 5 files changed, 1186 insertions(+)

-- 
2.43.0


