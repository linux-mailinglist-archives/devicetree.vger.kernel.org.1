Return-Path: <devicetree+bounces-135651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D78BA019EA
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 16:04:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 58D471883958
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 15:04:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4247156F55;
	Sun,  5 Jan 2025 15:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IJNrg/UC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC9A155725;
	Sun,  5 Jan 2025 15:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736089446; cv=none; b=ZG9DZioDmjEX/4MIQ62/C6BSwjkaMoi3qSt0hgLVnNeNM964Tojw4NU6mGKEv6nYaUXgpC7Uf9AZSGC1/z2ctEawxI38ABvOVtxy7DXDi1yKcnk3TywOBqq383SkBHUUQW9RGC/FTi5WqW8k/OxwtxUuonNAOy8DLleWD4bCuRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736089446; c=relaxed/simple;
	bh=aksUPNm9qkFAiM7qJfOuhaZEReCWQVnxyFHl8VXbWyg=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=txhnZ9BkLptfPjgrj4o6OQn8OCGldaUTMcuivDQYKtXtwptu6F95mQoMaxPs3T2dmhqZyPZVLFaZpRADl6WHWFPG2uUQFBvNrKn+2MTZRhNJsfOyobGZwrQsEmopIV6WNv6XVWjlR+cFCjtulk60etDWZ/R6/RrrIF88qzyIOSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IJNrg/UC; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-388cae9eb9fso7347754f8f.3;
        Sun, 05 Jan 2025 07:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736089443; x=1736694243; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dgV3fyp9QtS77nooTd+FrX+WlOCv6xJXFUjdyHgxCR4=;
        b=IJNrg/UCu4UTt1CaZP1aPyafKw+bUKwvZU1S5O5zu1lalbRIoSrQFQd5Z3x0XSMrYe
         dzWCFB7pN27A86X9ICE/ZZbk+aei9HDQduwZVIV7qHSepHlzZ5SyiAn2MtJcS189CWlR
         vrX1y11ujO90jkGOCWtWo47TmdN8r5lsQY5yMpgz/pFbTPkhmqAh0lHH6xpjfb5iM0bo
         ek+PNFp8mK1TN6cx8jZnU5IdKgzpZCNl/kWARyEjZfpDC50rUciahfzg3ZMQOkZP+5rf
         OWbbV6+A6+/EHmHRvJD+7QGL4jyNkbACcrDJAQ9gSdWaZIaeF1V3PEfa1XGnR1nv40Cx
         VTsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736089443; x=1736694243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dgV3fyp9QtS77nooTd+FrX+WlOCv6xJXFUjdyHgxCR4=;
        b=bjWpqpX5DkNDq44WFnQ34Sp75/z784izc9gc1j+zUwWBlUfoyXS2+lPjuyEaGyPLCO
         9BBLpvAJUc9mffzH/SawzXR0Xj37k8Hi7+IAIG/yK+ubEwFGStZjmmstZ0awtGCt7TXo
         N7FaQbWUmeOdtH4qXcuDHT/Jo5SEOt5/TgsaCgBbMZ4G+zLVwMu+qBhfV4/pDWwxLGzL
         P4SKrE1SAQwjTsE7yWBfzBGKm7BGK062Qgvs5cn6MHJJO3cR2awN7ibD0H+kOgYc3lGt
         0WlQtRPE3FciqM8iNrN2anczDLWYCcYnfKpdmkQiBtqI40y67bxXGtP1kL6xp0wbSufj
         n0rQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBDlAZA+39Iziz2SESuz9kSvnEDQbEa4/OyilYSZtH3Et2OXvSNTZq1BKrkeoCuWn0G8yDRYC+Zs278nJn@vger.kernel.org, AJvYcCVmHP/BFoCUH4sJ9fQJjTcIzLSeYOKhlcGFuL++A6OfuyXLy1bvz3Ji+3eR77CQKjYSYRogdyyx9Y19@vger.kernel.org
X-Gm-Message-State: AOJu0Yw//blTJEQfoNmz+onxkkIo2uI5BaYXKnZ4PA7II3q0e72gwPQr
	t0nTj0BQ755eohE3mvBTaz2gEvnhDqOLtf50jWoE05aYmdbE0Wdz
X-Gm-Gg: ASbGncs01+JHkHmz4e7/xO+hngS/CdQ84CNNY6wFx1SzN9B8Ba9UFO6qGAtWpZtv1S7
	vtlclJNBZDuzXlyjfXPZdfRhgUFi+ACqcncLWD9/yoNF2XXOpbTx1vV084WpVEaxrBuS6h5HY9P
	DvmHU84DBEyZZvUeghUjdFoLp7srNSJxRdge3V22neW8ToU3VAfPZB1EVDqbHs5Niul8W8+++m1
	gcY+KiGtybLFZXAmqFbtBkaisbqP/i74+tWWb0mdNPe0MkBrnPR3CWb7rAEv6cUmBMWlgB3eLIS
	+AbbaYxREgAeZT+0mz9ILZAysXDaJLk2NGL0leumcQ==
X-Google-Smtp-Source: AGHT+IEAYRCYuZBs6aPItyM+728zSgzY+5DBza9P1rNuqmhIKpahYwEVfa1pvTPbfiMYlM0ImxNJeA==
X-Received: by 2002:a5d:5f88:0:b0:385:f69a:7e5f with SMTP id ffacd0b85a97d-38a223ff3cbmr41311266f8f.38.1736089443323;
        Sun, 05 Jan 2025 07:04:03 -0800 (PST)
Received: from localhost.localdomain (host-95-246-253-26.retail.telecomitalia.it. [95.246.253.26])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4366128a62asm536258685e9.44.2025.01.05.07.04.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 07:04:02 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Daniel Danzberger <dd@embedd.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	upstream@airoha.com
Subject: [PATCH 3/3] arm64: dts: airoha: en7581: Add default partition table for EVB board
Date: Sun,  5 Jan 2025 16:03:04 +0100
Message-ID: <20250105150328.15172-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250105150328.15172-1-ansuelsmth@gmail.com>
References: <20250105150328.15172-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add default partition table for EN7581 SoC EVB board.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 arch/arm64/boot/dts/airoha/en7581-evb.dts | 40 +++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/dts/airoha/en7581-evb.dts
index cf58e43dd5b2..a4cdcadd1ae5 100644
--- a/arch/arm64/boot/dts/airoha/en7581-evb.dts
+++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
@@ -24,3 +24,43 @@ memory@80000000 {
 		reg = <0x0 0x80000000 0x2 0x00000000>;
 	};
 };
+
+&spi_nand {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		bootloader@0 {
+			label = "bootloader";
+			reg = <0x00000000 0x00080000>;
+			read-only;
+		};
+
+		art@200000 {
+			label = "art";
+			reg = <0x00200000 0x00400000>;
+		};
+
+		tclinux@600000 {
+			label = "tclinux";
+			reg = <0x00600000 0x03200000>;
+		};
+
+		tclinux_slave@3800000 {
+			label = "tclinux_alt";
+			reg = <0x03800000 0x03200000>;
+		};
+
+		rootfs_data@6a00000 {
+			label = "rootfs_data";
+			reg = <0x06a00000 0x01400000>;
+		};
+
+		reserved_bmt@7e00000 {
+			label = "reserved_bmt";
+			reg = <0x07e00000 0x00200000>;
+			read-only;
+		};
+	};
+};
-- 
2.45.2


