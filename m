Return-Path: <devicetree+bounces-222076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF2FBA5A82
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 09:56:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 85B8D4E044B
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 07:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 702982D2490;
	Sat, 27 Sep 2025 07:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dUtoYrQu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0A4A29BDBC
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 07:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758959810; cv=none; b=ZtJ/F5Nh8IERBLIh4lpWTQY+I9akLHwTdmR6ZF5ZMqAcW7LFOEmJbb/o3BeLMeIw6xhdUCruG4ZPC7DCQjQaoiWMSbzKl0I0AFxVDcO8hzcuysKMJpQf0a4lz5SpDrj0tFTxlmGKZT6Ft+KK+uMNxuPiZVgzkJ0taUKnIdeWRqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758959810; c=relaxed/simple;
	bh=ouQ6jNK+qPislG86IvWROxlAtxRpfc/3z+XNvOya8vU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oZdOKDRIF81WC3KM8LCcGHIxDqyUuNG2imnAIkEIXSGaB4AWKbW7T+/wdSEgP09zcyDMsFjJS7R2lOStRawahgtOdCOnhd08y//qkPVMqSlNk/NDEcpLJzIO5tjyoNc6c+3zG+Dzgy4gO9xhml6k0YXTxzncd0Ra+NuwFUfXF4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dUtoYrQu; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3eebc513678so3087531f8f.1
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 00:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758959807; x=1759564607; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=POpxdpGM8IrfyKUZVbTRlpu01ta9wvoDDQyv73QHKHI=;
        b=dUtoYrQuqjgFD9tONXHsOiC/59qVR3tclzkHXkI6edAQXzP1Fe4vTzi4IOJCruHGed
         57flg6ObIUdlG8rnYknuIrJvE6jZliRLrMEBG36zmH0YN6RXYyh43benC0j+GA7XDxJ8
         zsNIdIDtk3kRH+P3ezv5o6fQOvoFLh2TZvkJgfTpH4P0J+SUSJmqusHPxca9+SZZ1BNJ
         gAT87zvYKRqpnsVOBht85g/Fii0b9fi//mY+FlbfCnCWi8zeAUc938Im/B37J11gFaBO
         RLVBxNQF9rReFdgZeIDDFbuSNtZ8cmH/VIOVq5Prv9A+4amaS4B34VN+mwVeOhT5I85e
         nWVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758959807; x=1759564607;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=POpxdpGM8IrfyKUZVbTRlpu01ta9wvoDDQyv73QHKHI=;
        b=bS3BvY81l6ONm/zDkyPatGcIr5A+RCarAPPj9hti7f5owyFJSrhmcIMEcT1Txy+iU0
         KQ24iqbNdm9BlRm/ErfJbDLwOTh+ww4DwkdMaxWVSCay0uMP1pWy7ruxPJ4W31zhxGN9
         UJDXqrbI/Y55cRP/u8uO8aX6Pb34jYbJZkigXPA+RgsW9GtZhDba8j/1zLqVpoZQDTGv
         75uTywL07czpbKJsW1LG7wtEQEM0a7U+jlUctzH7Qcbs4nlltQo4CAVHyT5ez1fT/GMv
         8ZZCivlGpt0meiTXky309HPjFLEHCBuvSxmlFnb+9ezcCejGbHMNuOh9bl06PuRZYYik
         O56g==
X-Forwarded-Encrypted: i=1; AJvYcCUOZwuf1a2XZT6LnOqivEf+KJyouJUVOFZh/wUAE7QUp//OQrzzGiOx2zIi3viKs5mdebAO91DvOiu4@vger.kernel.org
X-Gm-Message-State: AOJu0YwwKCHLSCAwU0Oph3KqlTcslPe3lQxp+Mj98beW9UZ+lIAvv8ax
	HdHlNqw9Vb4SD9rr05tnrGAcydw0/b8zYkhV0RyP90Z+urJsG1PtTnLw
X-Gm-Gg: ASbGncsUkW/gPKIxFKhHPUyI8NOIhoO/QQsw+C9S8FtipdbxRYJPTrjteDK82A0kSbv
	p65LGWru+qh8kxXCHASDAyjG+HJKZDUoqQwwL/ZKw0yEjUYjs+WcXTaOr/gPH40yE4AvwpddLb2
	OdIY5doASq1lXpLe1lvmylyZ3sIkjdlUh0B5/Dv/LP5qiKxERou10JS15aDreDaVFbPTQvUzUVp
	VUHHlSdXuEtooARKCSy0b4jpjk5EFTyLoqcb+qMuSaDsvpCAZZlnQRVn7FgsmXEDz5n/TGtCRv4
	S48plUxji24i1zpniSSbVVPYMsG6M8OGA3q21ZQCfsxo15T35DVGZQ+uu3oxKR43LBSxZkSUXcb
	8Cg6t6qJnnAFINOk6BbNGaFmpCNVVIWxkQIhWY+Af2fJ9fQ/U8ndGvxdvTvqFaz7oesY0gS//6A
	jEhAtoTQc6HGwC/CsHFDAoK/l/9epBxWDdzl6RXUILD3v7RfztA9E7LsY/M+reN/GFFCMiTSf3
X-Google-Smtp-Source: AGHT+IG+Y3okceIM3FGn70ZLJhwXarOKA5dQZBfJnprbzEp2P2K4yII1/saVX5drOGKgTV2E6GttsA==
X-Received: by 2002:a05:6000:400b:b0:3e6:116a:8fdf with SMTP id ffacd0b85a97d-40e46514d27mr10341574f8f.13.1758959806732;
        Sat, 27 Sep 2025 00:56:46 -0700 (PDT)
Received: from cypher.lan (cpc73830-dals21-2-0-cust622.20-2.cable.virginm.net. [81.110.186.111])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-40fb9d26ef7sm10153339f8f.26.2025.09.27.00.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 00:56:46 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	Phil Elwell <phil@raspberrypi.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v2] arm64: dts: broadcom: bcm2712: Enable RNG
Date: Sat, 27 Sep 2025 08:56:31 +0100
Message-ID: <20250927075643.716179-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RNG is the same IP as in the bcm2711 so add the
device tree block to enable the device.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---

v2:
- Reorder by unit address

 arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 4cd51d80d40d0..260d4a24e8a17 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -243,6 +243,12 @@ uart10: serial@7d001000 {
 			status = "disabled";
 		};
 
+		random: rng@7d208000 {
+			compatible = "brcm,bcm2711-rng200";
+			reg = <0x7d208000 0x28>;
+			status = "okay";
+		};
+
 		interrupt-controller@7d517000 {
 			compatible = "brcm,bcm7271-l2-intc";
 			reg = <0x7d517000 0x10>;
-- 
2.51.0


