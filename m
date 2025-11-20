Return-Path: <devicetree+bounces-240764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2D0C7532D
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 17:01:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 57D7332269
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5139E361DC2;
	Thu, 20 Nov 2025 15:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="MUIf6U33"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2C1C35F8C0
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763654315; cv=none; b=cSVUrRXLW/i7xO1TxL71+GAXwA8w6uJ6XTG2D+/L++G8DyKmjE30t+KBaRr5RbCDYNhR4ignC2DxBwDooTdETzmtk6WJ5WgBVmeRl5+0jk6Ag75kc4vK96Wtnw8jl55HGsyVrOCCU6iMuCWH8Y7FwNC1TJpP2Q/TRBjs3K5WtoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763654315; c=relaxed/simple;
	bh=PT5mTKBLA9e0Z2q319Y76uD/NL+8BwXBKeIVE+px26E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UF10JnSKdog9jsoiiKeshzPyBof0SUZy+y26bh0DN+6LddMa7gMtrKXTakAvqax0ftvp2zKy6zeMewzQPLevQdU++IA/E3WPyKgDYGMCe819iRkHI+qD07WgK1f5e7m0pS9KEMFAtf2jGALa0iAWbGf3O0vKHQrj9D7J6TXBHO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=MUIf6U33; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5957753e0efso1078454e87.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 07:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1763654311; x=1764259111; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2d7a/n2EOxZhZYAbK+k3OqlplnpCNPGPMa8QVEXFKLU=;
        b=MUIf6U33m9s77TqC7D555O/G2qIb4wM976f//iV9WgJaPirofKJwMsahi2UNo8x5/i
         FIfCZ4lspq3ejlPD1lFjsSrDApDTTQR+xkl+v3JWxTTHK8MqBQU/bz5QxuMJWSiTAVJS
         9KONBrCXmBe7O+dSWKlUn2PCtHGB5YSGS9X2Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763654311; x=1764259111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2d7a/n2EOxZhZYAbK+k3OqlplnpCNPGPMa8QVEXFKLU=;
        b=g3hoZJeACmqp2XDkXOBm+qH28C0IPFTFDWb0YzoXTzGuQ22FqQd/hY//C89hCQkjAa
         Sz801BFHXBHclEaRpzMaHqWTKGGte+yen0FLJdM06eiXyYl8PbGz9OGplJnx5dMewxwb
         laXaFWjxo9ob9bPzOnM0IUSA7SabXCdvNzA4+wolbX79nNTa1se0+A1cxTjphSgtDCjc
         xD0yGcsi15CJJfBIMqPJx825AaI+GIx/8mX4+aFsJI/Ypnj3Bkx07mRIvvZW6cJGkuBw
         2n38QoUs0by0xaUnH+WNiw+mfcikLBRCTHvxI/HpI5T6RbX8CBQ9q6+pif3vwhhO8IND
         eOnw==
X-Forwarded-Encrypted: i=1; AJvYcCW4pORKXafFX63Y7F2PXTLaDHJl0mdcJjj3KnUMgX0uKeOFFCMNfgxDkN6Rle7m7uAGxLuEoRcWn5kc@vger.kernel.org
X-Gm-Message-State: AOJu0YyfGzx3X+5+JPfkT/eeHIVdIxEFjnGVJq95VQm9ag18CjIGwslJ
	5vFy4r69u4qcr4TvmfOrJhn9U/d+bqCeZOK+A2Ir1uJUqswRCl+SuJjlRYD708iDE3Q=
X-Gm-Gg: ASbGncunjvhGNLnFo/568YbGLbfJ4ifT9tmVCyQx5/H2c/lucna1oBHe4uI7nbyCIq2
	G6BLc5kkzxVueYRi7apehcAjGrdSPy8scYIGEds63wrgpbhd+kPwl5hClCobn4VhEX25RWn6zwV
	7dFww9g0WIuxivrJfJ6zihTOFHHWsoA2GSAD0KwS/9WynGwA83qPJptqO17Z5DOou51lVmNXJMy
	gBmsG+NRS5poahL+M49/iuVs4hFPU6LffV+RRp8lfejFU4jfrp9HKLul4QVnsrCCkouW3AeFyE4
	czWnK9e8+6NseZc5hUfml16Y3G/t8QQElhqvi2Qg89dwYKLog976xKwFvoPe6ArCfNzd0kJJuLX
	lFOufhe3a17m0z33J9KZ65JttTkbMx4B/qKxFYp/az3azdmmFkQhjDXipAQiwKCIng4URiJma/L
	KRKvbz2DqmTJTGSZfNrFY7tstyTeVVV+aKvIKfVcWudlPI5vnpnuu2lvY=
X-Google-Smtp-Source: AGHT+IErnHJTmLH+8vYzzAWGbwl27N+clFFjZtIgt90CqUtH2A/7y5qcoUtFsllx7NfXgOa31L88Ng==
X-Received: by 2002:a05:6512:12c9:b0:595:7e9c:ce00 with SMTP id 2adb3069b0e04-5969e304afdmr1308494e87.25.1763654311003;
        Thu, 20 Nov 2025 07:58:31 -0800 (PST)
Received: from riccardo-work (public.toolboxoffice.it. [213.215.163.27])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b82e8ea6sm55552185e9.8.2025.11.20.07.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 07:58:30 -0800 (PST)
From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org
Cc: linux@roeck-us.net,
	Jonathan.Cameron@huawei.com,
	wenswang@yeah.net,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	nuno.sa@analog.com,
	chou.cosmo@gmail.com,
	grantpeltier93@gmail.com,
	eajames@linux.ibm.com,
	farouk.bouabid@cherry.de,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org,
	m.facchin@arduino.cc,
	Riccardo Mereu <r.mereu@arduino.cc>
Subject: [PATCH v3 2/6] dt-bindings: trivial-devices: add arduino spi mcu interface
Date: Thu, 20 Nov 2025 16:58:21 +0100
Message-ID: <20251120155825.121483-3-r.mereu.kernel@arduino.cc>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251120155825.121483-1-r.mereu.kernel@arduino.cc>
References: <20251120155825.121483-1-r.mereu.kernel@arduino.cc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Riccardo Mereu <r.mereu@arduino.cc>

Add unoq mcu interface. It describes an iterface between Qualcomm
QRB2210 microprocessor and STMicroelectronics STM32U585 microcontroller
on Arduino UnoQ single-board computer.
This is a trivial device since it's usage is handled in user space
by the arduino-router service.

Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 2eff6f274302..d0f7dbf15d6f 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -59,6 +59,8 @@ properties:
           - adi,lt7182s
             # AMS iAQ-Core VOC Sensor
           - ams,iaq-core
+            # Arduino microcontroller interface over SPI on UnoQ board
+          - arduino,unoq-mcu
             # Temperature monitoring of Astera Labs PT5161L PCIe retimer
           - asteralabs,pt5161l
             # i2c h/w elliptic curve crypto module
-- 
2.52.0


