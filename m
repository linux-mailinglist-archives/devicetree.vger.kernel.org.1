Return-Path: <devicetree+bounces-247213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 74960CC5B5C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 02:39:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 632E03016360
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 01:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 987D5252900;
	Wed, 17 Dec 2025 01:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VA8WsRox"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1231E1DFDE
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 01:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765935556; cv=none; b=UpDStL/OMNkjlCMpzexf9MPjK0AHBAjb4d9+1+Zgbzpe0U28sqllaB9U2KORBLzDIFOUtDQXOymSC/Pi2UiXW8Si59gR0tJZsxS8GoJv+IBC3RjSdvXm1IryKpnkuP5Cb0bp834QMqxDtz8EmlbpIFmOLKLuQbIW6Sz4GZDNgSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765935556; c=relaxed/simple;
	bh=R6jMX39u/0CQxF/rkw/bAQHe1G/ZkItHajamaxXa8nk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Z8dLpZsCTlHzYBV+XHtm/NKEckBVuv+niKVQQd1Drl5AxNNjJIjcRbcsY/zL53as2wOxycp6NF2ZIclcOy14QVNeuZQZ6dL1pu9Hlg+Rz+Lh/5NiKYwXSHMMAhDGQRt3FTqXE4obQLg+52ibR2qKjUKnHHrfFk0TdjqCNPwqX6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VA8WsRox; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7e1651ae0d5so4345772b3a.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 17:39:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765935554; x=1766540354; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6f9CedbWj/VxecLLqFPg0ZwXqr7AQFdUN4BSPdMlplM=;
        b=VA8WsRox+9cNHvvG/3Dobz59CiOy/kvM0xbe3qo7AztLvVvYcSjaFiJu78XfO/LQ1x
         NyrFjIZ/D3i5FnOAyN3UG0cqriaA54xhey7flALykDPmpvViYqpCo73EwyAUcdL8G6YF
         rmbE1d6jJDGdhU5NTEV471fWsIV0125LjNoIgiUuTDk/GLbi92eFYuyJzCN6IOlJD8if
         FQMsn6QrTMXxkc8baDrZ+rMRqGkEvh4eW0VMEpL1Tuv9dtk/Y/Mw6iM5aa7kBrVObzEE
         I4bwGgnvk9NoUmJGbNaCiAKByFkckIgHrHDVcmWTRs1/7Uy17ee+is5O477nni24L8m9
         oFMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765935554; x=1766540354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6f9CedbWj/VxecLLqFPg0ZwXqr7AQFdUN4BSPdMlplM=;
        b=Z5BJPKkoOD35fXCFzGOOUSWVBzhx1/J3d/2QoyEPP+qFgNGwXN4t1M5ZgXu2E6mjh7
         QTL4bk73/Ww+9cyHl9pi6y9nkU4dPl3dyJi7ae6Y8sY/mJCUkIl7oKMb6J0OF5v/byHO
         zqGDM1LRtOB5tIOQR4rk9u9qTfrV5v9qQ3YaCm+gHOcuAGaddjchZxkZF6h0M01vG3h/
         JBF1tRW5Ab48QDci02+NYthPQrTPaaDbzVOrYh8DhOieKOtnKOB0APi8VKW/OsrxEPn/
         2B+VPEaWu823Xf76fpDZLUSg17OEHkYrJ8/mqswXg1+z4/fyplWT3J/Q9ZAbSoeoQFaQ
         KHzA==
X-Forwarded-Encrypted: i=1; AJvYcCVCvoskUr9luzsgego/maA9yXbgnnQhazMNPzLhiGYi+bWFm8R53ahAWWo8LUA4sRXLg9yWNwK55U2J@vger.kernel.org
X-Gm-Message-State: AOJu0YzCjrr49ILZ11hrYAuk3e1OgPKmKtIOKI7lH757ZpcgJy1Aov5j
	VILCp6T+W65LBnnq+vcMjcTNKz4GfWIZyooS1ymXAcSr1uukV+5lqlNU
X-Gm-Gg: AY/fxX6vy9XgQwljF62r2Nso6kjCQRCM06qrcrSZPTEJX9D6RrX/fCOk08mQXu+kt7g
	TPhVuespCiDYyDYzEK9jVvHlir12a32yjtrjLHl3E9NIyMahiQtyDwstf/t/LYaW4dIt9LUdRv3
	pnY82gUUg5C0i0YLdRuNskWPyVScFLqSei9txAeuvFNPCY/mn8lRXmMUFcxwUsl6Vu19yb/hTlD
	h0VNOT8FjGpj1fnr+UrA4+WbTVRlhaTgVTP/w3t7jWhG5zL6XMQvd5uNZRa1H9a+37JvfRTcDp4
	lRGjCyfcP+WmFZfwDJ1TfEHQWf6rE5xl16a72PhS7C0u5OKx0F3EGAoc6bG2cXBqSLnSIrLRRvI
	tY9/pTSi+XmIz5odZCBuVHulLVBe34KI+Z2blmzWlltb3FLlNgBg/1tXiBYL9u3A6YqlcXdM8ld
	OxHrPVWXKw+ejgPFxnREKUxlSqqDrfrtGTdgby7Y8YwDx70d3L4Lc8YKZ827bVDb92WVJod4IOn
	fhoD24gqi54iPoHrIUZM3EzQYhLDnE=
X-Google-Smtp-Source: AGHT+IHC1PmX49Nhr1j9GF4FaJJh5+V4LVlVLE+blOGOBrHIA61KxCF/FTIxhxyHJMZ8rLpffAUF2A==
X-Received: by 2002:a05:6a00:bd5:b0:7f7:2f82:9904 with SMTP id d2e1a72fcca58-7f72f829a23mr10292444b3a.5.1765935553990;
        Tue, 16 Dec 2025 17:39:13 -0800 (PST)
Received: from charles-System-Product-Name.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7fcb8745633sm848616b3a.5.2025.12.16.17.39.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 17:39:13 -0800 (PST)
From: Charles Hsu <hsu.yungteng@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>,
	devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	Charles Hsu <hsu.yungteng@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: hwmon: add STEF48H28
Date: Wed, 17 Dec 2025 09:35:43 +0800
Message-Id: <20251217013544.363715-2-hsu.yungteng@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251217013544.363715-1-hsu.yungteng@gmail.com>
References: <20251216083712.260140-1-hsu.yungteng@gmail.com>
 <20251217013544.363715-1-hsu.yungteng@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the STEF48H28.

Signed-off-by: Charles Hsu <hsu.yungteng@gmail.com>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index d0f7dbf15d6f..7ff5b1dbe61c 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -416,6 +416,8 @@ properties:
           - smsc,emc6d103s
             # SparkFun Qwiic Joystick (COM-15168) with i2c interface
           - sparkfun,qwiic-joystick
+            # STMicroelectronics Hot-swap controller stef48h28
+          - st,stef48h28
             # Sierra Wireless mangOH Green SPI IoT interface
           - swir,mangoh-iotport-spi
             # Synaptics I2C touchpad
-- 
2.34.1


