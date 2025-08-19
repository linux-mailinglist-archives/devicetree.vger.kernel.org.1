Return-Path: <devicetree+bounces-206580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 69353B2CD07
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 21:35:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B52A726B2A
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 19:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FBCF322DB5;
	Tue, 19 Aug 2025 19:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fY88862d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8AD248F77
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 19:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755632077; cv=none; b=MVaMrEiwESP+bdNUY0ED+aT4Z/yhO6SXHoAC82ggy5keT2WhhsZ6kCRZhIDprKzSKvhl8kYN2C47/jjoUEshaxpAHrUXTXcocdKMGWeB76Ph+OCzmFgZ5x6KBEgwX5rMlfzQ2Z/Y45yd5LnAtzYRqDyb56C4fDtqwANOQzgjurs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755632077; c=relaxed/simple;
	bh=Ve7fdHOv8iput1sNGA2FvplxiPuag8i/msDWusLzLZY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=CnXmjzknn8Tnqp1GHBXSyw4RuRKElpZNlWaInrzO77fgrJMEatlRPweBM8eYQ70I45Wobqem0q1MHfyMj0iKJocF++xhmi1NibQNU1gqjPq1z3xH6e/Y2KzZdhdeGnka0JTwBmjCgfn1lHaHSC3LFDBS/oXlKAPc+1xwpPDGDmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fY88862d; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-76e7af160f1so1292167b3a.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 12:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755632075; x=1756236875; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9kAKGrTcmFW8zg/JInwrxzbrVCAryTZxYifDtObYVxc=;
        b=fY88862d17fHONbR56YIdyHPqUqs7H/4A0NlhJftydIY/0X8tUAf5nHjnMTjlYR1ut
         VDtmFgof2gmLXt5qriX7TrMzbJaZ5Hr+mumviaPlWIljBisn+LRjNjtM0kz03va2czB5
         Lrm3zvt42wdY1XYF0A8677qI9siTtgOffhdPfoUZgU3amwLyLkeim5T/Qat1mzBPI4S7
         P0GbvEgwwrH4bCmOPQY688FA6wBjFs9s6hmnAVYFAatNUS8MfD+l4uIj7OXd2uxF9UDf
         Ep/wcokrYazB+JN7s3smRjVr0IPaRMV2lIC1IGx1ea6NO8QMdASsBRZF2q1Kc6xFm1aZ
         nWQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755632075; x=1756236875;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9kAKGrTcmFW8zg/JInwrxzbrVCAryTZxYifDtObYVxc=;
        b=XgAL3LD7W1dCGvvxppNPHP+lBQymstEvvM8MfXV0MP4Nnt7tsZfarbm0G8AEc6A+0q
         Wz4RVwHgIjmIULjdatQOJEQ9fI/L7aW9Jm7UHqvdTdwNfJvoWN28ZaZux0BsaO1mblyY
         jlDIi304QFYohksN2ORPKp67wpbgN3KvfH4aKq1S6HBWZi8zON1RJAW21dQSAyyO2pso
         mM40aPAdTndWm4nnaHrUc3tbgHeGxvxwiq8Ufwwryk1jLMkCnTO2Pbo0mGTwAVhPRLD0
         /qXDTsHXU7wsHgwYN3Yp4lEAKe4vApLQyrp2ycTlXPNL3djDRIGlhBjjFo6ThSlSMNKY
         HySw==
X-Forwarded-Encrypted: i=1; AJvYcCVr88/94SmD8LW9HeRKqkQWHLIRO9BpBE5Lr7UwOvYCanecrzK1D0KW5Pbhv/KYFDNvd8JelQQ9ZNvi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7kW2y+/cMBtbM8Axnaziro6LpI8lPRcwlNtfruYV7mC6bHyP+
	n+/Ibh1t49U0zU1WKBceltld+WEB/N4YNCvN50zbmaixirtCGg/UVhOo4vLc+A==
X-Gm-Gg: ASbGncsWjFKGlooZ/QyilnPcIUcRBPCBZvyABRHp6xWj1ygHNpW5JBu3QxMvhhTtnf2
	LT5alkh3ITJcURLR3RxB51qNmmXFxY6s98U0yNWrsr2H+TpE4fgfoc/NYjG4jvnrCtODZlzq3/S
	q8yK1bgUcW5yJB+UqfcD2X/vxniS5PH0NihVBmxBmxdR/R90E1nsIQuwf+LcV/0Z5q7LS9YTJj6
	6AGq8m6IbupCvrzeZlSwf56VGQ5cCMiwH4NHvIOfqaj7XjCeN9B+dbDvQ9COd+qwfCRN/oeC9zi
	Ljq33iC6rxd5fLMPX2Bi9xxKvoas9vHIzXGnibWvB1KepJKOGAbobX9jJu0S9HZvHaFNV3f7Qzz
	CGcuJOfh5OaI6OCbX3A2yE3177UKn5N7h/e/2Dz8rPX44zFM=
X-Google-Smtp-Source: AGHT+IFlNaiEPMv1znSV1sVGNNJRUasB3ZoVmWPbvCQJbjrYFbfkF1TDDm7fwxcIC5IM3kAKWJqGdA==
X-Received: by 2002:a05:6a20:3d89:b0:240:66:bfbf with SMTP id adf61e73a8af0-2431b9938ddmr690089637.32.1755632075213;
        Tue, 19 Aug 2025 12:34:35 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:3ce6:43aa:f6b8:33fd])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d54ae99sm3182390b3a.101.2025.08.19.12.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 12:34:34 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: stefan@agner.ch,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] ARM: dts: vf: Change the pinctrl node name
Date: Tue, 19 Aug 2025 16:34:05 -0300
Message-Id: <20250819193405.2847808-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

fsl,vf610-iomuxc.yaml references pinctrl.yaml, which only allows the node
to be either 'pinctrl' or 'pinmux'.

Change the node name to 'pinctrl' to fix the following dt-schema
warning: 

iomuxc@40048000' does not match '^(pinctrl|pinmux)(@[0-9a-f]+)?$'

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/nxp/vf/vfxxx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi b/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi
index 124003c0be26..19de9506e0c8 100644
--- a/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi
+++ b/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi
@@ -304,7 +304,7 @@ qspi0: spi@40044000 {
 				status = "disabled";
 			};
 
-			iomuxc: iomuxc@40048000 {
+			iomuxc: pinctrl@40048000 {
 				compatible = "fsl,vf610-iomuxc";
 				reg = <0x40048000 0x1000>;
 			};
-- 
2.34.1


