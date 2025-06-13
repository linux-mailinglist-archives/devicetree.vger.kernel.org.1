Return-Path: <devicetree+bounces-185845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6EDAD96CD
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 23:02:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C7D7189E5D1
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 21:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ED42232376;
	Fri, 13 Jun 2025 21:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="b0d8WjFz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B0B25B1C5
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 21:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749848524; cv=none; b=JWumqy0Afq0/aPwxrhK5YIB0VWZcuftLpWdGeDjakFZyxNlOjcuo5rOTuSekyI2RDVlvhijhxoImtL8qhy2PlMkMctRYVNQ9pwLsJXtCL3DXiEivYCHLYe3V7E+BhJsj3uOqype0OJDcmjvxfu/TmMqKvn/koyyl5oWPM9sHVpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749848524; c=relaxed/simple;
	bh=mXD+KmmzczPBBdFZkWMZATRKtOxlsWbA1f0YJbPau8I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W9NsMqYZA3N+v4XOSVA+PokRdbuHZw8jOkTcNMd/+PNCAAZY4MAGqRizrz6LegfFzt6sa39SE/euWBrdrbBeZA9Ksyc/xNiN8+xQ93t9BkF4GthtEKwh/GFgJV8bowBaF83H4PxojNWcJwnfMQMEHQc5uzBy2WdhUplrvecHQbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=b0d8WjFz; arc=none smtp.client-ip=209.85.166.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-3dc7294716cso23129505ab.2
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 14:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1749848521; x=1750453321; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cWQTiP7h7eL+v8/SbkMciwBHxZWg6y7ToncXXww7MfI=;
        b=b0d8WjFzLZ7tXMLaaOed1+2j99Gg6ZfNrTWmarFYe/RWvRX60cOgceiHCBdCv13cWm
         tUq/5xjYAzPORcgy+6dH9hz9L3byr5Ev2UPGTE5HUjSHy1j9guYif2STjCQUTMx2Ga+i
         3NVkTLeGw0/EbqBHtru1EXwV/BsjKhJU8qBZXYYyBbxuS2Suo2mqSbPOGCSrHfMUskZ5
         SAVEmKhgW9R5sF2C7Imh8Wec4FQxBOIom9qli/Vfmw1lJhPlmU19fiWzy8UoHTNyN55/
         seA/n7yQzxWNBmRw4wi/2kJ0/JbCL1fAw2f4GnzNrc3c9bcR1apRWq7Z46PJ6k8u5zBL
         oQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749848521; x=1750453321;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cWQTiP7h7eL+v8/SbkMciwBHxZWg6y7ToncXXww7MfI=;
        b=NiPmYNqGAj7JfAMOUrZQI73mXfAGtgYm4XiN5XvakAnNXaXfi4a5XGACO5TmPXy57K
         Iz3Xvq7x9n1R8n3OOTaPxdjuVccDK6gP3HF+mB+0ecrEFUlMhqoQLKgd1SnM+O4SjWZh
         i5qJXlUcIlKQ03NvuG6ot3lKVlrjWzLMo9FySRTe10Iy7F4p0vj13ewkp//GtnNwbbsc
         LzyLU4O/pDb3stzRm7T4D4zdTwwgRDY1uw0DY4X2ds8CFu0mjRy+waZVFGDb1uahG0BJ
         40rXzyZcxR2F062o2yzzP8tbK+/OB/L/RU1o6xvYp3QHfhB+B09RIvllzRmxIPEs3/ZR
         7JJg==
X-Forwarded-Encrypted: i=1; AJvYcCXm2FEDLEluGoi/GCX78BEDSjykqzGgSApj+WlEuxw7ULpk+owxvOcSoH5efwixrTNy6osaumNh8zU5@vger.kernel.org
X-Gm-Message-State: AOJu0YwhizzeG8E0BB3aH9rpidSGcZHaBS/5+Sgh+9BvgknUD4F+eZfA
	aqK2B7tFZ9vmBqK08fhbdWc9jVCvqz6kbymQ50hoERQExsF+tKTkhdDaWj9tBq06/ic=
X-Gm-Gg: ASbGncvCEGzIEziVHCuXNPMoD6sSDd6lssdg2qeUeF5I5qmYAVpPOKZxyJv7n22/1ux
	bZPhiGN/QNGk3uDeBDDiKkD0USHYygXzXWqCXERDl+tIT3qHTKkGkMJouDgMmtQsGlaxvl4epXn
	1aP3rLIYNJ3hdkxJsoVOnSmsZa6nCxndEyCfpYGhzcHpUQ9v6Iq2VpMDmpIw+D+JCz74ulQXR0z
	KqQzKpf4Nx1gZGD/VeuASfvI8tqVhvd1LjCvkc45tk2m5kE9SyNzI1Iyn8KkBIjeXhrRmhPYHsx
	ZOE6NgChIHcwtmyKp/ARspZOzN4dcdk/8QhtHgO9gTjQ8aGYlSa2rL+/eR5pA5w9C5+ntkK5xde
	cWJVqs37GcHW5n6Dpq4wzHsVLk3AzLR27bfXTLjhYdg==
X-Google-Smtp-Source: AGHT+IEecP3cifD7NNtM4x0PtjYEOx4vfWTMQlcOrKZqxEcJodip8ZghPio2mgJZ/Wq7eeZstJYUaw==
X-Received: by 2002:a05:6e02:1f07:b0:3dd:88da:e7de with SMTP id e9e14a558f8ab-3de07cd355emr15624215ab.19.1749848521613;
        Fri, 13 Jun 2025 14:02:01 -0700 (PDT)
Received: from presto.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3de019b44b3sm4996315ab.10.2025.06.13.14.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 14:02:01 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dlan@gentoo.org
Cc: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/6] riscv: dts: spacemit: define fixed regulators
Date: Fri, 13 Jun 2025 16:01:48 -0500
Message-ID: <20250613210150.1468845-6-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250613210150.1468845-1-elder@riscstar.com>
References: <20250613210150.1468845-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define the DC power input and the 4v power as fixed supplies in the
Banana Pi BPI-F3.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index f5d454937d300..8003c8173a2aa 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -28,6 +28,25 @@ led1 {
 			default-state = "on";
 		};
 	};
+
+	reg_dc_in: dc-in-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_in_12v";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	reg_vcc_4v: vcc-4v {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_4v";
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&reg_dc_in>;
+	};
 };
 
 &i2c8 {
-- 
2.45.2


