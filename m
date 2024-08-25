Return-Path: <devicetree+bounces-96462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7E095E472
	for <lists+devicetree@lfdr.de>; Sun, 25 Aug 2024 18:48:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2CBAD281C83
	for <lists+devicetree@lfdr.de>; Sun, 25 Aug 2024 16:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07EB416C453;
	Sun, 25 Aug 2024 16:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="dfHjJomN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E6EE14F9D7
	for <devicetree@vger.kernel.org>; Sun, 25 Aug 2024 16:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724604460; cv=none; b=rVy7EzaekPGtiCXQ3S7HiqGDP4f6+AT7X7+Id+SP1FTov1QMGd2eRhGIAJqRWlW29fdixTV9K86lMx0ygPLK5Y1vMhWNK1DVW+GvZfMkEH+j+5E9sQRDhTwe/+iNs/Rd2sH8Q1JVasgabK9nHq1Zfait7nTobGMPJmS1nLegjdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724604460; c=relaxed/simple;
	bh=9dsYNp252XCXLeZVdDf5E51difa2bgrBMStutB0fu1Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jP8IkS7XWp08Cl+lKBCIYSli5a5RbBEKLlDkO/oK5q6XD3PO8uNavbhna7jKgjyrbBS3Rr82pMvlmEmOnuhuKf1di/ivzFq0J5chCi8OGRVRfr7kqT6xJqlBmBQDdH1kmQ5P/JjCNdY9c82QIrHC5soHVf0rrH2FOWvWCNINdD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=dfHjJomN; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-656d8b346d2so2076511a12.2
        for <devicetree@vger.kernel.org>; Sun, 25 Aug 2024 09:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1724604459; x=1725209259; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ueq56/ihM5P7UHNM9LExxz3BL+BrqPFaFFbdMDA7T6g=;
        b=dfHjJomNicceZrDLD4rElnSPkqLD+NTLMn7fU3qHHLjOvX2iCNcc2XE9zDwyfYBssB
         SroXLR+KMEALWxhXbGMPeQtki9Wbapjn/We4fL1S7wYj98mNwRcoa6IIGHWuKToq9H4Y
         lldgkrqYCZxYE07l4dUvOGkUg4Kd9Ky4zQgpUTpcorgkOJbnEYzTpaPvW8APhKDqT9Hd
         Eh4jNj+4dD/ipvuTro6CVYlYz/cyUsdfLUe6Bs/zWxLdPWhHd9u/8M6XdCIVY2p5VcSM
         IlUQL53BQfd136LCLsRmKY+uv0JHYbC1VvGqPigKGOrTp/YGHLhkIz7SEeMe8+aiSLE6
         IFYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724604459; x=1725209259;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ueq56/ihM5P7UHNM9LExxz3BL+BrqPFaFFbdMDA7T6g=;
        b=m4ozkHlMBQYAGkD9qLCaN0jGHXHbN7EponQ0J8ZCGHZXKerLw/eL7KCBUFDNLP/Dza
         8P4n2QRqoFMNF0J9rXh7g2o8Qr3EMv4+Mx0iOQRpRn4QGoGchDzrGbHiCk12TAwtWCoZ
         92ofSCEW5b5MDe5WMGIlqBQjdyxcRDUZhBlum3yLcuIOb5YtVmz3iSqCCbbMqzuqXulq
         H56/m6BL187AEKNtM2ZDtBzt/Uz98FhEpYlqYoMu6eJC8qJaTVeW+gqEPbrI6dph1M+L
         i+4AwMy7K322rh58irbzayWk5Nqi/VhLPJE2IzR2hWWD1uBMoxmnTWuhMp4MELCyJ3yN
         wpzg==
X-Forwarded-Encrypted: i=1; AJvYcCXMrxsLkLgZ2qKSYry5Qe10ybiScBAlnjWMzVolZape+edQ3fbFz/ecK8Vf7OXpMzg8Xu8U9tHmT4Ie@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz2Zd57sKI04dbjOQG6ZmtYN8lU9IEISzV/RN72arLJSfnk9G5
	JvxSFsWmjDlDKDOEQiPg/KCUxeEljZRh1RwmP877aCP1Peazk1GT14RvS68Y5WSBXy7CC5o12hu
	xDg==
X-Google-Smtp-Source: AGHT+IF3wXb+mSv/UNa0ZMBw8G9xxwsqqc79mgqaYouznABo5fWpZP8CC5WQcB7qDSvQaC2AMvoPbw==
X-Received: by 2002:a05:6a20:d493:b0:1cc:9fa6:d3a6 with SMTP id adf61e73a8af0-1cc9fa709dcmr3036937637.3.1724604459012;
        Sun, 25 Aug 2024 09:47:39 -0700 (PDT)
Received: from [192.168.41.46] ([2401:4900:5ae1:9eb1:890a:6b80:a16d:5ab4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20385609dddsm55411465ad.196.2024.08.25.09.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Aug 2024 09:47:38 -0700 (PDT)
From: Ayush Singh <ayush@beagleboard.org>
Date: Sun, 25 Aug 2024 22:17:06 +0530
Subject: [PATCH v3 2/3] arm64: dts: ti: k3-am625-beagleplay: Add
 bootloader-backdoor-gpios to cc1352p7
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240825-beagleplay_fw_upgrade-v3-2-8f424a9de9f6@beagleboard.org>
References: <20240825-beagleplay_fw_upgrade-v3-0-8f424a9de9f6@beagleboard.org>
In-Reply-To: <20240825-beagleplay_fw_upgrade-v3-0-8f424a9de9f6@beagleboard.org>
To: lorforlinux@beagleboard.org, jkridner@beagleboard.org, 
 robertcnelson@beagleboard.org, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: greybus-dev@lists.linaro.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=889; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=9dsYNp252XCXLeZVdDf5E51difa2bgrBMStutB0fu1Q=;
 b=owEBbQKS/ZANAwAIAQXO9ceJ5Vp0AcsmYgBmy2ARetMtxhDBfPiDIaJ0ybvafr0n2xZc8i1BA
 20ABi6GNBiJAjMEAAEIAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCZstgEQAKCRAFzvXHieVa
 dH1lEADngrBq+XkavxM0bdXYdsYC8etGCl5fyTT28X573HMtRgT0Qfcr5FOWR48fLzVQRnmYvCo
 Fz9JVjKjbF/XVep/Qtm1XYlv0yXeB9buuWq1PJq6y93kHaPdJjSew3Miy7N4shjBmaap4ybYg+2
 GI2pDdiNxuS2Cyujw1VWp4D1/qF7QIZCLCTUEUxhkhF4qHlOmVFUV5oumfuSVsaJ+PrID5N9bRN
 vUGaPWnVLAs/pjcZLnuBfQrPOT40Or2ft5jt1PCR0Ie7N3YXUjgmFvhs/qQ2sYS8Bq1aAHQK5qP
 3MMKDJ4jKS5YSICw3sdPzZYk4oU7vyfQqtbTW3JKkrTiRRTBB86MznwyusGFqAMC54mc/sA+0/0
 rFdy2AX0emAfUw5YoGuESI9V2hKkUIZHqCb+bK46/MYgG+erXBsydsT3r3SnW4vkisINzU+ElAv
 J7kWtWwjxGxYKIj9wYfaO6S1VcOWf/7Pc2JHk2NQyVLdBerLwC/V7K+1fQeHDPJ382sJlNYLZ30
 YYMrC6ZnvKUybIdmGAW+RDsP0wxVUYEdN15QxJskPHze/tPsBy+/Y3qTl5qKzBuUn4GUdiN7mbr
 naNlHe1X5vYM4yMhw+vAJESKUgsvXi8CpqrW9cy7UPDR5H3Lll+yPwxcFsG8tMUdDnp45V8R7V/
 WkSSQD2EW8xVHew==
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

Add bootloader-backdoor-gpios which is required for enabling bootloader
backdoor for flashing firmware to cc1352p7.

Also fix the incorrect reset-gpio.

Signed-off-by: Ayush Singh <ayush@beagleboard.org>
---
 arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
index 70de288d728e..a1cd47d7f5e3 100644
--- a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
+++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
@@ -888,7 +888,8 @@ &main_uart6 {
 
 	mcu {
 		compatible = "ti,cc1352p7";
-		reset-gpios = <&main_gpio0 72 GPIO_ACTIVE_LOW>;
+		bootloader-backdoor-gpios = <&main_gpio0 13 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&main_gpio0 14 GPIO_ACTIVE_HIGH>;
 		vdds-supply = <&vdd_3v3>;
 	};
 };

-- 
2.46.0


