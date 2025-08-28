Return-Path: <devicetree+bounces-210037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B786B39F52
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 15:48:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E018464E8D
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 13:48:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80C2A30F7EA;
	Thu, 28 Aug 2025 13:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="O6Vcntji"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3641D514B
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 13:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756388897; cv=none; b=JEMnS/1oau/OL2jwwNzapXa3O2tzUGfLdkrR29NMOeCueBirjuByYveEym/f0yumc1jE5Bq+Yzz4V3Tz43TLAwnYkTszkpSX2urYF2lPtBPNh5DVhyfYMzQvsuZH6YNJQolbEDhYtv60os/3ZJMQCCQmGCeanFJ+I9WSGwNenPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756388897; c=relaxed/simple;
	bh=yoqIoDX6mNRAd+QNlEthQLnCb5/yYRoOXkiDgoqlFBk=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=VFOwE9kMuEFQgWB8FzYywkc/qnw65BoNeZjK3oRP6TtTAMXr1FT3RfIo+dO34MYpPO0P6gjGJMmhwzGPy/sJjyIObtAo/zIi0gEblqm61aQmmf/RNPsACm68amCeRgJzUmChZhTENrHquFTFHSp/bOMfMqqSH4cYttugv8M2LX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=O6Vcntji; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-61c325a4d18so1624971a12.0
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 06:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1756388891; x=1756993691; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=8ofMDnt8aegB1RhhNAN0+9aJ+qAFEpSg+iG9bqL1LWI=;
        b=O6VcntjikbvTAeRxEoR/jSHzdhKKepuyyOe+8pm5SqwKmA9Fjf3EZ5tP6ozmFjGe9w
         oUlb87dOPTlhJaDQTPkkexKViXdeez4s3wBMbUj5o7RBsNtr+C5aMlPSIvEmQa4AmU1E
         ylYiyS/QKQYUwE/qYklEgPSQ3W4V2+4HVWNmFJWbDZVUzZ7q30/Mp9NFmBfOlHpvJDnq
         KpUu60uxg4cIuIWYFADiE4YWw+BZ4nUaQgVtRTrXLqo06hC3nalA5Xs9D54QB/LS9tMu
         N4oWq+pMrBQ+eH7QbFwC79lZrp71Pg3/ecjTfpN6WU4u1/X9P8Ou17koG4cdpyR61St6
         HpOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756388891; x=1756993691;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8ofMDnt8aegB1RhhNAN0+9aJ+qAFEpSg+iG9bqL1LWI=;
        b=TQlvPCB64Xt4pE7wFNbmkaxdCjTtaitvjpplCEkTTPBowA4uNTNiMezsEOYG6OmJ6o
         E6wmCJHbptNvaLn7pm0IeXepVyiHXKLJ68IRLoP2AYphgO6b/MmiYUpeyNwmNXOMypnW
         uxiXP0S+m+dxefIQlnxV0L8T2wWaTb9LFDprY9X7w5zmDtte+KDWutekaFCom1G4GFC3
         /AhEIJRc3MSVUnTADgUjm1kC2nhx8oS3urPAxww2b0h5roPLebNx8mMnCensAitQUv9u
         32l6SEErK4w+RUy5yecVIIxTYHYqbIDsHg8ybrTdqjDaD7vKms5+8kZXxABoHGxfZCPW
         y6Bw==
X-Forwarded-Encrypted: i=1; AJvYcCV+s91genb9LFuEKZIc/BINcAhjGoXlE0EGu2+je8G3pl2DaX6TJPTPSQklkxRGiupxRQbm8KiQw25m@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg26uPeRfIhcCeq501p05IMOMnRKgGTQR1dCwv1XRNPlU1L70v
	wOuqLXk1KW8gj8DGRRRY7fQI8ALVH4yBgjj+q58hkWK3J5yG6pUCh0mIOZjJw6mvbgA=
X-Gm-Gg: ASbGnctn2O9Ook7rWOJZLs2oxrKZy/sGl+YasYizfLc032uAg5UcevjzHhZdHo3YTI+
	IfLz+nG8ElTW+oXRai5frK6T+dV6iDjtNh+u3fXo0ONlT70pWE8ZBcwGRKJJGQNs8VpPy+tE4dK
	NZTzHJL518LkR2mcFSz8a1ilj10ZT8sE2nBfeYw4VrBc4hEHhjG33zH7SS8sM/P8AfhE7R7uowk
	j02DwQeqe/6cFPBmY7Ycuya3BQmdV+ygvE3NoF1zYxCWiYSweq92UwJnACgXdSjX2h9O1Ct/m9H
	9bAvpK5/5EifWDkcOIdcR8g5FEh6bl8es9J9+eH+xyXpKLN6Mu3gSHRQCNMUxcz75pT5DdHcZX0
	rkm3qSVysZimKU9PyE2dnF/RvPhAsXDd1692x5in0axCSBhb34VQj9Ddl+omBI6mu0BEXyMVG00
	if9dptN6F4TaFRGHU5LdrnwtuXU0g=
X-Google-Smtp-Source: AGHT+IFkrszRCxrFihFU24ZaJl7ZC3CwfnZHIryHv8hl7fJKUiWiXfcIaoNunoVL5GDO8tLcbR0fRQ==
X-Received: by 2002:a05:6402:430d:b0:61c:9585:9eae with SMTP id 4fb4d7f45d1cf-61c9585a269mr8045358a12.6.1756388891487;
        Thu, 28 Aug 2025 06:48:11 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cc8d32821sm2092757a12.9.2025.08.28.06.48.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 06:48:11 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: [PATCH 1/2] arm64: dts: broadcom: rp1: Add USB nodes
Date: Thu, 28 Aug 2025 15:50:03 +0200
Message-ID: <4e026a66001da7b4924d75bd7bee158cbb978eed.1756387905.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RaspberryPi 5 has RP1 chipset containing two USB host controller,
while presenting two USB 2.0 and two USB 3.0 ports to the outside.

Add the relevant USB nodes to the devicetree.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 arch/arm64/boot/dts/broadcom/rp1-common.dtsi | 28 ++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
index 5002a375eb0b..116617fcb1eb 100644
--- a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
+++ b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
@@ -39,4 +39,32 @@ rp1_gpio: pinctrl@400d0000 {
 			     <1 IRQ_TYPE_LEVEL_HIGH>,
 			     <2 IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	rp1_usb0: usb@40200000 {
+		reg = <0x00 0x40200000  0x0 0x100000>;
+		compatible = "snps,dwc3";
+		dr_mode = "host";
+		interrupts = <31 IRQ_TYPE_EDGE_RISING>;
+		usb3-lpm-capable;
+		snps,dis_rxdet_inp3_quirk;
+		snps,parkmode-disable-ss-quirk;
+		snps,parkmode-disable-hs-quirk;
+		snps,tx-max-burst = /bits/ 8 <8>;
+		snps,tx-thr-num-pkt = /bits/ 8 <2>;
+		status = "disabled";
+	};
+
+	rp1_usb1: usb@40300000 {
+		reg = <0x00 0x40300000  0x0 0x100000>;
+		compatible = "snps,dwc3";
+		dr_mode = "host";
+		interrupts = <36 IRQ_TYPE_EDGE_RISING>;
+		usb3-lpm-capable;
+		snps,dis_rxdet_inp3_quirk;
+		snps,parkmode-disable-ss-quirk;
+		snps,parkmode-disable-hs-quirk;
+		snps,tx-max-burst = /bits/ 8 <8>;
+		snps,tx-thr-num-pkt = /bits/ 8 <2>;
+		status = "disabled";
+	};
 };
-- 
2.35.3


