Return-Path: <devicetree+bounces-229392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EC7BF6EBB
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:56:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FA34543A53
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 13:53:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66BC83385BB;
	Tue, 21 Oct 2025 13:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="erg9Vheu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659E0337BB1
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 13:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761054807; cv=none; b=q6xEPFjUFC2qOLzUyGkTrx3e4NVmpXN9yNYEFeAI2huaFjsyZvCeA9Vjg3wYcNArz3vOH13dBzKcWQa+lAJ+LemxWhs5e5Ju710Rk9lT+/f/cw86Bv/fDIVfjS2t+Vdt5/k2i3UZrHYpce3gW67NnIYfGhq2MZaOo6KamCT0F6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761054807; c=relaxed/simple;
	bh=cc8ZBZFtHpD3W3PnRGNl7cj96+fGL6tAhxbLcqlVuDk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=K8utXzQU+Fw9/eGAVBW1gY2ukiNfMc8lDvlo27c4OghK/nKXbSebHnZQVt2eVTUCwZTcg4nf0UfrRdsQDIODwbeI42dIoNHRXnZxtZRlej8TFZOGhgzZcvOgktIzd4lgRzAJMTeGmDhL/bOtHLoclzs1YP0S0gtlEEZFR0dRsBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=erg9Vheu; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b4539dddd99so1022221066b.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1761054803; x=1761659603; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GqUCglb+0FDwyycEK2V2KsoX30Sw+xzpkkOZ9ZURSbo=;
        b=erg9Vheu6gQPJ7kJeAykcipLXSsfzTWkNbuzpZIwPUcqhmeDE3TYeInFSKNL4SuUDC
         CUFYLPRTRplazp6NQ3xuqCW2PBXJ4iBLM2nFVdHHcbKJIIlp9R2oXgOavW5cim2Q0uAd
         qU4GtMhChH0JOY2NfyS5+NnG5lZoahJgEoOyp2BFBAVuSz6GNCas3NQspXsSl1AauEpb
         Evb1Gm+4f8LG+2ypmlKxf5Dk1MW3MG+lWX6QJsS5g3hOWft8dBvcYlQ/kHebjqy7aMaZ
         SDbzHCa1aIz+wtHby+ungo2IpQwtuRMGuRKZDfwhdbdE9pDRhmP8OowZc2TZrDBRE8uU
         yjqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761054803; x=1761659603;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GqUCglb+0FDwyycEK2V2KsoX30Sw+xzpkkOZ9ZURSbo=;
        b=VvNcoIEIthcX32oDB+83bj+vL+jUi1dkYbx7fEgIBkAZ36hJ7M56OnFNAXB5wnP0EQ
         /Nc5m2bhGNdt6DcP626JkjmRC3TGJ4Fo5nPK9X7Yxtpvcu4Ef5MR4yfBaAnf5art6J5H
         y49dj3S4cnF/WDF7WbP4BDrMSobtqdKwo1bae/pFWXBJJjyY+ABDfq7FYJSAujZ/vccc
         auMlTDhEncKxr6i6MjCJLCOVXTQpGZDeOegnoNgz2pBY7N/n3FlXlr4H82+0Yu2/IMaW
         QJ4gbxe35XuY86BwND/N24uOP17ALu/y6g7bCjzI9TLpMnSB/BBQ4sgp3BROim3PS2YO
         CIjA==
X-Forwarded-Encrypted: i=1; AJvYcCUKWk4kRd1NNZYNZs7nfIq7V2u3o6kYmGWneUHTqsIxflAbMKJXxTCF2qjhZDANaF56/pGqT8cuFwQO@vger.kernel.org
X-Gm-Message-State: AOJu0YwvencDXgDncum5LShKO460/qnnJ5wT+ZZcJXn71lUXocMSbGsv
	enK+lJvEpOwoRMUXJUwHVAE1Bh4QBaE0m8g7FkltvMKTNfqehyCJK/BJAUQdsCkAe/4=
X-Gm-Gg: ASbGncu02dkICuI1h/20TTda/Yfjqhs/UoYlBQNSpIGVnthnDFvgavgB7d+t6Srp6Qv
	7n6+kd4aygfjUxGZMlEeY70YcTd6Oc5cCzHEnroSh/Q/IaV2srbRU/xV7OiMnnzFaiKGiTh1VaX
	F0g5AdbXebSphnzkhOFXALg2LFlajgX6Xx0D/imwhTNj7Y3ATkNaG/QJ9ZNhsQxJu4lcUBeuaZH
	7EdAhDtPiLCR4HsF/mmUSGWZsFIXqYM7Sp0re/jmtbpKNZRbzWudJAVmeYZeEwZI6NT8pUS5Pu+
	CyIfQSROEuAoswxkC+t1eNlIQ08vcO5PybFKRMwIG8LrnVphH5OwQ3JrPQfHUBmYRLsRHvP9v55
	w2ouaS9mZR09YCbC7PqYhymujRnpFXYxIlJdg8i+9ZpDpEZqT0alTaE5jNlCVi5soKPpwoxyY7G
	vuTpti4Ib0meAW+xg8l1ZqkgiaiV8tquyUabQ0Z66Iu09HwtytTz+xtJ3PMeSfIQ==
X-Google-Smtp-Source: AGHT+IGzJ1sMZhzOVfrRQ+JvVbLUEVExvUKiHVvXUfDKq0+hkvumJylkHNfbe6040lXwumRTHkh/Vg==
X-Received: by 2002:a17:906:9f8c:b0:b40:5463:3afd with SMTP id a640c23a62f3a-b6473147238mr1967688766b.26.1761054803200;
        Tue, 21 Oct 2025 06:53:23 -0700 (PDT)
Received: from localhost (host-87-9-62-200.retail.telecomitalia.it. [87.9.62.200])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e50da6a6sm1106448666b.0.2025.10.21.06.53.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 06:53:22 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Stanimir Varbanov <svarbanov@suse.de>,
	Andrew Lunn <andrew@lunn.ch>,
	iivanov@suse.de,
	mbrugger@suse.com,
	Phil Elwell <phil@raspberrypi.com>
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH] arm64: dts: broadcom: Assign clock rates in eth node for RPi5
Date: Tue, 21 Oct 2025 15:55:33 +0200
Message-ID: <20251021135533.5517-1-andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In Raspberry Pi 5 DTS, the Ethernet clock rates must be assigned
as the default clock register values are not valid for the
Ethernet interface to function.
This can be done either in rp1_clocks node or in rp1_eth node.

Define the rates in rp1_eth node, as those clocks are 'leaf' clocks
used specifically by the Ethernet device only.

Fixes: 43456fdfc014 ("arm64: dts: broadcom: Enable RP1 ethernet for Raspberry Pi 5")
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
index b8f256545022..09a849dd09b1 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
@@ -23,6 +23,10 @@ &pcie2 {
 };
 
 &rp1_eth {
+	assigned-clocks = <&rp1_clocks RP1_CLK_ETH_TSU>,
+			  <&rp1_clocks RP1_CLK_ETH>;
+	assigned-clock-rates = <50000000>,
+			       <125000000>;
 	status = "okay";
 	phy-mode = "rgmii-id";
 	phy-handle = <&phy1>;
-- 
2.35.3


