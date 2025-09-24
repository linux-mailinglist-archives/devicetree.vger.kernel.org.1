Return-Path: <devicetree+bounces-220654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC463B9904C
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 11:01:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 700C516663E
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 09:01:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFAD22D5940;
	Wed, 24 Sep 2025 09:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DJh65TU7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6087A2D593B
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 09:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758704473; cv=none; b=CB/kWhvKuy6Vv4tR932wiE+JAWdMGcFMGSamd+oZpPuDK12JmJXFPkXQdCPltg2IlgmJzkgqaM0ir9Fx/oMXZ6o2FHuX46EPlcaZbZGWtleEW5ba9mhbsAbCG651ZbXMvLyhZYvv4KgVvRItj8GaITsd+QlYOqg64JBtWVClf9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758704473; c=relaxed/simple;
	bh=xMp4C3E119h0vclr+dVLqDiBbPadZVuMWnC8hGS1LRI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ldwv5Tg/VmIuWTOPBHVtb09GKGea9XzHA9dUXH3INx3e+bt338ZjaGrHvB3hEbZRPOtmtQMILKKw//6g4qaccuEa0rhjUFNaIAPIUl/u3sgFYGvJarH3sTY59MrgHgulTi54m+DcK2MzvkX6USE5mlBQU5eSl58Od4v9LGI3lLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DJh65TU7; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-46e29d65728so4305725e9.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 02:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758704471; x=1759309271; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CwSO/UStg10ejRuwvNWNvAfhFc6wI6JGB0ruZLyaCUk=;
        b=DJh65TU7Vwz8lIDrOO/EBdMQ15ww9GBWTh7rvY/WHLvwC0PV4qgzZQmXwuWf/NS/py
         aFKmQ7WMfZDDh/c4ujvTK5sQwqeCAggwNaTcn34GpHR9LPSzyDXLnrRaoeRtz4/O7l2c
         pijcoM4s0o5lgc8PcWRAtbAxtcMmdmrs57/lQMNhe1oFrAo0ggjwXcdJ+eS0+6KafwgV
         YdHk0x4FqkNvVLyxMTMPHHzAu1729lh8gaJOmWfFApbxZ3xl8qfEDw2nMm5AmUcRtl9C
         pniwLIDdYJVeE5GTwRuZY0amkUDPyZhfV6FW/O+jS9n8go/pkawwvGRrApCXmqxeZ1cT
         vyHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758704471; x=1759309271;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CwSO/UStg10ejRuwvNWNvAfhFc6wI6JGB0ruZLyaCUk=;
        b=Wa0XdJQfEO5nqoprT2c9PmfXLVPJaC5svVgYPOqplGaARPqBgQp+7oqiRTsT9dyXwY
         CGy6dBFqHZiC2jt15VMLZcmR98iEa+afsiRaH5am9ZKbXxViyQabtr4PNosuAhFyjTtT
         lZKSidQJvgDzRZCH3/7vTx4PPq6qqPuDr16vZL2WNVksL/2lGETA3Oia2zE/qv5spo3E
         s/gsSrUFOLCmXZIIFkIU4vartBE/ddnGEZedsAOsrYKMW9ORD8m10xAuOYobJOcB6bRm
         p1mGRVso+AJ/9WeT84MF7x1IlrgVtN8yzAOdNSwhYejD6fQKh/7YT8zGSUg/Y/vXOADp
         sO1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVLb0xl4lveWIzwMC+bzuH0IJNhlK3RtJAF1nryQXnMRvehZdcsMjCnyt2VKgZbu1a4hB0yyL6dfOGj@vger.kernel.org
X-Gm-Message-State: AOJu0YyoUd6Rz8+N+vwfZvc1Mp+nYlcpesomZqYy9cQ7Eam5fc4D5/sd
	VAnmYvLh3HQzMyksfIrfOkq/lC38bZsLProBvD1HC9vcfsU1I0n2GBGc
X-Gm-Gg: ASbGncvXhumgjYZB6ES7Id9ETN2su44gVjpQcZiQHgPArRMJVKio19XHh/oQPFiP0sj
	BK4iSWYJ+rNLZnzFTmSDbbiYZtMDaMojbbWU6AazPhaz3zr8tImqQLZYhYfG2k5u6/LigPH3k9m
	glC2KA2mcZFhCbkQk54gQV1TSBl9jQ1dL9KA+jMsWHRPSbtMgKfUxnrdqZpT0K/c9Wg1TMNm/T8
	eGlqAYoxMCa9mx0nGEmtmbchsXyM7FEOno+HEyvOWFHwsKeRV/1UO0kUXOC4I9BW1Ag/iW4QHR1
	yaW97/gxJksT39XX7Bqt+xL+YMIgz7DOvqN0YHzsXKgX1XPUUwqhakthxTtVaUKrfjCSMfrs18c
	bVpfWE2TGriaohOor1qcTdeuqQhCVOjaAviJiZadeiwaE4hkfaQVOKGv5z2WOR/Mb
X-Google-Smtp-Source: AGHT+IHpzyaPnI+Zu/TvvnLw2DI9mOyp3Ft61wcigLJ89X2kylPJoZzkb59KiURiHIn9xm/HtmGg4A==
X-Received: by 2002:a05:600c:1d07:b0:46e:1a5e:211 with SMTP id 5b1f17b1804b1-46e1dab631amr46273615e9.21.1758704470581;
        Wed, 24 Sep 2025 02:01:10 -0700 (PDT)
Received: from cypher.home.roving-it.com (82-132-239-193.dab.02.net. [82.132.239.193])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-402188ef7b2sm8766512f8f.34.2025.09.24.02.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 02:01:10 -0700 (PDT)
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
Subject: [PATCH] arm64: dts: broadcom: bcm2712: Enable RNG
Date: Wed, 24 Sep 2025 10:01:03 +0100
Message-ID: <20250924090105.1061910-1-pbrobinson@gmail.com>
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
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 4cd51d80d40d0..6976a88c262f4 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -226,6 +226,12 @@ system_timer: timer@7c003000 {
 			clock-frequency = <1000000>;
 		};
 
+		random: rng@7d208000 {
+			compatible = "brcm,bcm2711-rng200";
+			reg = <0x7d208000 0x28>;
+			status = "okay";
+		};
+
 		mailbox: mailbox@7c013880 {
 			compatible = "brcm,bcm2835-mbox";
 			reg = <0x7c013880 0x40>;
-- 
2.51.0


