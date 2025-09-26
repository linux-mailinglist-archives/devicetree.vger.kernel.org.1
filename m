Return-Path: <devicetree+bounces-221716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA85BA245E
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 05:02:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7824C561B36
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 03:02:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD96A15B54A;
	Fri, 26 Sep 2025 03:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZoPJTP0w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4863E11185
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 03:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758855751; cv=none; b=CwHRH9WxUtlPdozH6yAIHSB3cpJBkdMyosnX33VgpzrMDa7tDf5E7rYFiAAQOz+I7jZKI0VWbmESzYj75dE5G6az3zLhdwutOddmvmrEE4Bj1WefbHm0uGuhJc/xFUVjvhSwlXEh6eNykkbPjwHY03G0vaOc+tKr/4FZ+Xx/rQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758855751; c=relaxed/simple;
	bh=/i1PUEL7a+XYHJACeYGuykMAQoVl91tAtO2Y8t/8+ak=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ooEEc0jHf9XinYHdxhmJ5Q4ZGXoEZo4H7frmjtyjjFsWujyc6HjtzsYYSU6pBBHAvHS031EVcdK9dfB8NJ/w/SF8bW3a2bJ6Wkm+W/EQb9pjw1kJZFnxmHK1KRMpSVrdD7rrdqz2EWZTYOOkAmiRlkPQy2FwH2hKw8Sy87C2n00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZoPJTP0w; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-77f429ea4d5so1432709b3a.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 20:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758855749; x=1759460549; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oAJYYsubH767ZAAG6Ssy/u0Z9S4icmj/JgueQ+Oc+lI=;
        b=ZoPJTP0wEwBCWqid0UFVgybhaGcOYCP6OEsKhXE6gknyUR0q4WjkD98jg0YN5jrPvs
         XuzzJdYJ8CIvN0/nRJe1cG1bqtREjaT3nMgrS858tFpph3xrlocb8BcwVZY8o8PlaQ6D
         jvAUzJS4XQxxJCuRI/IVVj0d1R0rQqkP0h/7x4860RSDalZyFlRIoLbseEiaSEaZ2IzB
         +Gb4dd9HtEo24TzwSYRjg1nqcLvPkEkIZzDLYqCoUsSxEvSdLgZQhDX76bARCBt4pr99
         b0edDC2fFjuCO/Q6K+589bkC6Vrf8Ef7XXyRJof3L4fZAAFPaL1f3lbhPqBHeaRBDOIp
         mwXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758855749; x=1759460549;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oAJYYsubH767ZAAG6Ssy/u0Z9S4icmj/JgueQ+Oc+lI=;
        b=LcacIfpFveJpdi2YiJgW4Rs2Ql4XVClX7vbtKXfL29w7+lR3syIcPkFzl/jMpGKD8j
         8CffeVx/B76ZDCPWf8hjKqJ5LdxJ1H4oBYTYYfivu9COcmhMz06g4PWi3J5sAnbWYS3C
         smQaYczIJU0r85b4Y7G55JrEizLSC9gd2ivwuC7CjZ0rcYCvmf2FbBCtLdfVSBk8vnXB
         8efs0YE/tPbmkCLpDZswmTPXeQh+BagaZYPEoLVRg/NjZjlmrYklEyWOHKwmexe249sv
         alwhHdUOCdmocVlpXlLr2xOVFsv9M5R1iNQBA8gaxNcyK8+fmSV+fSsrpYn04sd1DUB0
         buww==
X-Gm-Message-State: AOJu0Yw2nPhTYXiGQmYHy500dOY3JAj1uBI/OT2S5JefiGWC6h93fsRs
	RudGDguhwk4gDWmvE1JqcQOC1LCxjYwwZSsF7l4201sbI9y6MZDhHYWN
X-Gm-Gg: ASbGncs7LGOqLkS5VYSXH+fsmAX+pNFlUSZ8FQOcWezWtQJDQwS0R9seddRFDpKhwJg
	ClVu4Of0wD2YRZcRgmK+uLUV1SGhi3v+2s6TEXTE0XvkbcMCJCEZzwWF3QVLm4h2SrA7qf0KLnN
	e8up6xXqZ3Mrvpt2HpYK47EXCf1Q41WyaNR/QlSquDuzQAByFYcyg9pbZB+4DMSOKD2pCXUpdn1
	xABospkyMRUkqqKIzPmZ1h2QGiWwIjNn6x9IWmPqGoPeDSAQ3rVhncBfJ1OErXgSKRl+psQCwAF
	OgwfO7vK96TOnbbQ+22rE6YVXrOA5hDaljymvUHTRpAGPOfmC+Mk2qGCiPVV9BWeXUT94USNvxU
	I/pI9/7udzzQZrorkmeqUZf9uzcWK6dLY/FHE/7WY1rgDx4tPEVU+T/7LTndJ2AQNQLSfPyiBmk
	/JBnV+E0JHwHggYiddVg==
X-Google-Smtp-Source: AGHT+IGVVE0b3+ap6KgQf8MQgQkYuBpIvq9eSH0KSUWAfnMr6DmONE0rdbX167dWHQYcpP6jeWd61w==
X-Received: by 2002:a05:6a00:1ac6:b0:781:15d0:8848 with SMTP id d2e1a72fcca58-78115d09690mr1084933b3a.13.1758855749399;
        Thu, 25 Sep 2025 20:02:29 -0700 (PDT)
Received: from bu9-daniel.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238c1e8sm3225384b3a.12.2025.09.25.20.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 20:02:28 -0700 (PDT)
From: Daniel Hsu <d486250@gmail.com>
X-Google-Original-From: Daniel Hsu <Daniel-Hsu@quantatw.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	Daniel Hsu <Daniel-Hsu@quantatw.com>
Subject: [PATCH v1] ARM: dts: aspeed: harma: Add MCTP I2C controller node
Date: Fri, 26 Sep 2025 10:59:52 +0800
Message-ID: <20250926025952.3098933-1-Daniel-Hsu@quantatw.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Facebook Harma BMC uses I2C1 as an MCTP (Management Component
Transport Protocol) bus. This patch enables the controller by
adding the `mctp-i2c-controller` node under I2C1, with multi-master
support.

Signed-off-by: Daniel Hsu <Daniel-Hsu@quantatw.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
index b9a93f23bd0a..2b7019c55eb6 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
@@ -242,6 +242,14 @@ gpio@12 {
 &i2c1 {
 	status = "okay";
 
+	mctp-controller;
+	multi-master;
+
+	mctp@10 {
+		compatible = "mctp-i2c-controller";
+		reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
+	};
+
 	temperature-sensor@4b {
 		compatible = "ti,tmp75";
 		reg = <0x4b>;
-- 
2.43.0


