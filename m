Return-Path: <devicetree+bounces-248385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D71EDCD2342
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 00:49:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0BFD301C909
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 23:49:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B9A1286D60;
	Fri, 19 Dec 2025 23:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XIKIa3rx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F41284670
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 23:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766188147; cv=none; b=MDBiRyagqlFMQPpoQl9PuGVFZQCh6Smo6QdUQDw64bmCyffByJyXPX/D3onBltpzPlEstT2Ta3SfOpDMJEMEVdLv9k+byzQucsW96j/shkdJCljwmyePfgNqD8lKKLO5Aoa1lVJ6+64sK8nvCULQXpRG8GR3WJ4xCWBr4M/jHSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766188147; c=relaxed/simple;
	bh=2ZyDIZywES5hslcgwHxUWUiGc94qaQXtWRuPFHQr7eY=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Nt8GjAIb+c+VdRX1H0/1nEkz1xY3VjGCKniUfvE7pMoWKWWNzxPwBpIubdPj326Vxo/NUniOjJNz9fIwETUPyaEedC6bJLNcJj8xuEoYsc9of5j5NocycJuYQrl9I9BjGQNcKcmudq7vAX8F6iaWI1Kor1qLnEBaZeSzCW2lqxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XIKIa3rx; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-34c565c3673so1528701a91.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 15:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766188145; x=1766792945; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=PT6G//CSwoyy3/u6F5x3/shuTFi68nSq5DX3yECpR3Y=;
        b=XIKIa3rx3KG4x6c6U65+QBSiPLbOc3cgU6c1vibE9ibXWmfnQHKBm9lK04VWYKvZ57
         f43jo5LuvwRn0/LiRSusZBWHEFegCBknBWCCdb1E7JPIFZbuwt/pDrRtuVgSH/VlwcTL
         kBjSSd6Ss/wwJsBuTgYHm7RXQhUh1AG0xAe1XYvvM1xB8R0VU3hcd3S0VWR1icjljeDY
         rsbNwJ6dZa1963jysB+BZRg53gOJ88zmDQuHUbHD/JVhkCy/ozbdj1k3eAlSRcIHCxX7
         Phv4iTM5hgeWfQIWdKiF0VyVpbFxauBrEtT7NCRkZ3mGiLooGrd+m3cN5OSVXSrPKXeu
         JeiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766188145; x=1766792945;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PT6G//CSwoyy3/u6F5x3/shuTFi68nSq5DX3yECpR3Y=;
        b=e3prRYiJYRU6DtjRzRGT5gNff9lSFuASaPKlfcDszAnz2ovthUlpfM1IEwPzcg8jVF
         y6uPEDLmON4x7EXSBwVOxHKVEJ7Drihr0cqDnnT+NoYwhIN0li+m81XUSj7QtMImxKyS
         /du7XrB0+KxXXFGIwd0M831Ed/K2zdho+sP7NljfNGx1irk+OjQ/VcgjWRM3EqnktLkH
         hKeHtAVD0no/QLhi3KhwIvPROyuknFJRzeB8u6WeM9uZmaW2scy09AD5I1C1p1gk9Dxl
         Fk3Ael2O/4AFzv0qAsda1Vrh2QFWwmMxd1VO9zydYA+Dm9pbv+moT9XxbCnrhzE++9lv
         nNEg==
X-Forwarded-Encrypted: i=1; AJvYcCUFLfHHSAxm7ksgbQ+WL12x6D3M8/D5Oa2X3RBQ/IpLYA5rq0SFN/+TNg4n/eGwISbIQEQ74UiNoPgF@vger.kernel.org
X-Gm-Message-State: AOJu0YyxC3wPpYCx81sttGe5HPqwlMIFqqaqTOEk/wIzy1ElAWkJZM1J
	twx7m6n7VXaDYaLw1kvhjVBIpgsjiKDa3S+BbXVGUrvqVX8AsWjpESrp
X-Gm-Gg: AY/fxX7ch2oGGfN1CuFVQL+xRF/WCyFAMmTi1Z9n9HYQ/UaqAj2GjXIyc7yU5eIqSJ2
	/4UDWaNjN6b1HAwchNO2KIMAlcJZb3/7gx+QcmsL25PETMAcKWRm3wIiIFknhMjHoyXeRPojjld
	q/gXvuezxe56HfVgf8/IXG399jG9Nn/1r8bZ0pqJSWgXpoiUhjHlIWZP7AJdvywDEFywEjTmYBT
	SEO+F9IuViD9igM8NlHlDlr956oRHcvYV1athYakzA9pSaR0faowLPMdWrNJLn1empAvoTSqGKu
	rflGyEF9TOLqEPJe/OA/oNTpIOMockqp2QCamJSV1j+DIMVmA7S3syDWL4Xzru4QgbE+nAhbBwM
	jnzii+QsMEPZzdk8HvZ3OFh5yjlwrp9/gO9WIop/1QPo7bnnG4oP05kWt99VyH9kyOpMw5LhuEY
	xfnxZS1fhhJBgfILjIs/vjhoCWfuGHnwW82Tc=
X-Google-Smtp-Source: AGHT+IEcH9OKBPkxN+Q3mASZMLaggmnNmG/6oc6ubaoWDLmzO2xxGs8TrnxJyfUHkNbS0vgQWOhgUw==
X-Received: by 2002:a17:90b:50cf:b0:34c:2aac:21a7 with SMTP id 98e67ed59e1d1-34e71d80ec1mr7778285a91.7.1766188144972;
        Fri, 19 Dec 2025 15:49:04 -0800 (PST)
Received: from localhost.localdomain ([60.51.11.72])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e769cd8bcsm2906687a91.0.2025.12.19.15.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 15:49:04 -0800 (PST)
From: Khairul Anuar Romli <karom.9560@gmail.com>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Khairul Anuar Romli <karom.9560@gmail.com>
Subject: [PATCH v2 1/2] an/rm64: dts: socfpga: agilex: fix CHECK_DTBS DTC_FLAGS warning
Date: Sat, 20 Dec 2025 07:48:57 +0800
Message-ID: <20251219234858.7543-1-karom.9560@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add start address and ranges to eccmgr. This change corrects the warning:

socfpga_agilex.dtsi:612.10-669.5: Warning (simple_bus_reg): /soc@0/eccmgr:
missing or empty reg/ranges property

Refs:
  Intel® Agilex™ Hard Processor System Address Map and Register
  Definitions
  https://www.intel.com/content/www/us/en/programmable/hps/agilex/hps.html

Signed-off-by: Khairul Anuar Romli <karom.9560@gmail.com>
---
Changes in v2:
	- No changes.
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 0dfbafde8822..a977402cfd10 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -609,7 +609,7 @@ sdr: sdr@f8011100 {
 			reg = <0xf8011100 0xc0>;
 		};
 
-		eccmgr {
+		eccmgr: eccmgr@ff8c0000 {
 			compatible = "altr,socfpga-s10-ecc-manager",
 				     "altr,socfpga-a10-ecc-manager";
 			altr,sysmgr-syscon = <&sysmgr>;
@@ -618,7 +618,7 @@ eccmgr {
 			interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
-			ranges;
+			ranges = <0 0xff8c0000 0xc400>;
 
 			sdramedac {
 				compatible = "altr,sdram-edac-s10";
-- 
2.43.0


