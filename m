Return-Path: <devicetree+bounces-246939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9557DCC19B7
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 09:39:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 96C8A3025293
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 08:39:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E8D43148D2;
	Tue, 16 Dec 2025 08:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E4MhlXo1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8A21C3C18
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 08:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765874360; cv=none; b=aIEApQ1r4jVVvUcitOE1wsjxR9Gp1l0PZlAtLdRFxnzELn7kexQ2BFbLwt7Ehh+x4QtYekZbb5v4s42eIsGw0CD9BLwx6ABeYUMp76eOEbgQZ/ECFF6Vr+DOR5DP7p899TZMS6ucG3o9dBuH7ApfGjKjfaSflhfOASPjHLF5V+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765874360; c=relaxed/simple;
	bh=zo9Tk24mJEWKWnaU5R7lj/orr0YWDEpIPJ6u4TRs66g=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=qjcWvyQNrRwDHKoTlu4+dNO3l3dbvlM0jcQT/wProu4+38E+mS94FU6/uINZW29riiWK4pD/AxVVornz7NYErenupD+nstplQ7+LwTIepXTRhfbnsG6dgnWKkHJEhIg75w/4/33PNgfm0UVt2S+HSt9FEeO2WR+cwF/+vivkpZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E4MhlXo1; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a0d5c365ceso28466035ad.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 00:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765874357; x=1766479157; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BtBBDsxCZvMwBu9/APA2tURxdHtKXFNsEHMBnLQMgCo=;
        b=E4MhlXo1LnJvmJ4Lbazm8JgbYI3Em4/yN8jJM2OGNxKBKEIIVRaGj9HOpBDGTDichb
         wRRI61c33WZSbZRtmJHU5HJDQs/SXaY0jRf80nuVDqfp/TXlgk9jBuQ9IAIQyD1QVLlK
         vybRIadmw9hLvhcLwEr46zt19V566gt2FxUjqiNnQWrfREGxT7Opc37BCO/fbkgWlYKR
         Dh0F4DIdD/inLxrM5mZJzG7fJXL55+d9dCUf+IgYQEcY61KpZhvMSLGG4OKvODBEWqbI
         Nk1ePswHZgbOiUQEJnE8tgWUfPrIvi1Wix3Ayl1PG3+0EIdINyTWYOG0iYR8ehUZrxrw
         i70g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765874357; x=1766479157;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BtBBDsxCZvMwBu9/APA2tURxdHtKXFNsEHMBnLQMgCo=;
        b=hVP6RU5YYzhO4LQzzsxdzjzG1LPmlS3y1dgCh6SWrWjLFTs+GINahTWc6Nx4vdY0ah
         9RKQ0MG74XUXZaG5DsVWgFBNUTyyps3OeGe8m2LgRNLO06QgWPGmdfTc2+HEcrdsceKq
         QkI9k30bbEikjNJq1koAPeNBqkNCYzIEyvJODCqFmkuvSO+1doPZOJKikc8Kk1F63Bg1
         DBGRgIJ9i1fadRO9a7bHPDFj1SOqwB2GEas3BTh8etyX5cnbu/ziwT4HKWQ+Sf+EVj1r
         eqjdtte7dPVIu6Vu3W8cwJ9kCZU+8LlFH+NdM5Y0SenVGz9AC+PGpOAtXOWzHzSY1lgs
         Syzw==
X-Forwarded-Encrypted: i=1; AJvYcCX4np8oEkZ5i9utCaJxIhqARU/BOi+wK5ED/ILxnI948QSOiEJoeNue7Q6Ak3p/9CvaYe6prxzuCZ0g@vger.kernel.org
X-Gm-Message-State: AOJu0YzKYrWOf32cKlwHS4ZsfZqlRur5MZWr48NOQMO9N9mG9c09iy2c
	ny9xCGyTwBv2I/KEj+IG0hEuifJjBiIdV/20IhdQsGJGKRaeN5P6XfU9
X-Gm-Gg: AY/fxX7cDm51l5VYu+SzqcyRvks4ow6DnhE4n1CwAGxOb9HMMZ7/vUMZqA7TojCRrGd
	XllE5tIdm9NGiZO09g3iamTlVZyfM8UKG/VznJuxgiaA7sqp/SYG6TqMXSXy4JyqI0WFZ01g9j7
	w+jSCs+iZMHemS+3n5ND10HPT7/7IWzGfiJWqXfThR1vYWKn7khN982qbctzUeEAuzlQA7GDvxl
	mR6tv1RcSIggtdzjMAMZLTXmvErKOtPz55bFJ2/2oqbLWAXTXhwmSRGeqcJAcJcNZ8pTk2UvKdY
	HR0cdKA7Cs13AuqhWMsOYQlNvf51WsWMHC2XiYZUdoh5IjDrkAVUN6QqdkHKlT4c5LfRNDAWOIL
	/U3I5H6fxIajuWcyihNyduC9ZYhAUXyMARlXYxnc8AD35iDeM/iyY6j0N/AReQLNdN5DXsKFx9P
	ouyR3LlKuSCRgAUUgpFXWVtNfTpOrruHBGvHpf3uXzUc2oevLnpzSSECQbi7SNKPvfsL2JRDUc+
	ZK3sZGwah8q+0G+zuzyjiIbSL70SsXxCgsragFsDA==
X-Google-Smtp-Source: AGHT+IHfMC0Xz7RfUBvRFUFdTN+OBR9EuSgsgKej8Ja11VxN10DWtc/VOi53tNDwnLbYc6WPqhb8OQ==
X-Received: by 2002:a17:903:32cd:b0:29e:97a1:76bc with SMTP id d9443c01a7336-29f23b5ecf4mr143760135ad.21.1765874356839;
        Tue, 16 Dec 2025 00:39:16 -0800 (PST)
Received: from charles-System-Product-Name.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9b37417sm155060205ad.20.2025.12.16.00.39.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 00:39:16 -0800 (PST)
From: Charles Hsu <hsu.yungteng@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>,
	devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	Charles Hsu <hsu.yungteng@gmail.com>
Subject: [PATCH 1/2] dt-bindings: hwmon: add STEF48H28
Date: Tue, 16 Dec 2025 16:37:11 +0800
Message-Id: <20251216083712.260140-1-hsu.yungteng@gmail.com>
X-Mailer: git-send-email 2.34.1
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
index d0f7dbf15d6f..6a020385a58e 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -417,6 +417,8 @@ properties:
             # SparkFun Qwiic Joystick (COM-15168) with i2c interface
           - sparkfun,qwiic-joystick
             # Sierra Wireless mangOH Green SPI IoT interface
+          - st,stef48h28
+            # STMicroelectronics Hot-swap controller stef48h28
           - swir,mangoh-iotport-spi
             # Synaptics I2C touchpad
           - synaptics,synaptics_i2c
-- 
2.34.1


