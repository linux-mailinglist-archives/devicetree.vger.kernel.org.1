Return-Path: <devicetree+bounces-82184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB56791EB46
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 01:12:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE2841C21251
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 23:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13677172763;
	Mon,  1 Jul 2024 23:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O4jQ5fA2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A509E4779E
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 23:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719875572; cv=none; b=WIKM8sgUVz7Q5LX/SKw6NzsYOziRtnnw2lYgc5QGDVQM9gROhvwQG4o1V5mm1JusDpAcFxNVSXIvhggsBN42FizMn2+SETE8GU93EhjfZ/vn6eynowLpnmvPLWX8975pPUTICDSW+ZsvL8lBvYOvLIikoEvwZL802YFNFUuQwFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719875572; c=relaxed/simple;
	bh=xul8rd5SnxlPA83f9ElSRQazhC5Yww2tU9YN9ZgREao=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UPVyYfSXEW75iw9e4svUZnAYJcNajO4I/KyBjy0RPih9uyYUkXJfcATWsrfDoF/ArTcaqDPfRLeFGEU4vnuwBnfzf4qwCzozySsh4U1mYyrEe5cmRU5jkcpAc4tbs3V8eYNpf49hPFAJ43P2938d5ew+A/ZGaoMeDsEfPXQlbWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O4jQ5fA2; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2c86869685aso659891a91.1
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 16:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719875570; x=1720480370; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RNPxq5Omk4VieJCqSI/o3wb5i0TntyZ9aus0bMWHMDM=;
        b=O4jQ5fA21/UTSICWV9spu0YT5rT4R8AAfEFhF8XIf9RGEhJbDhdyDIzPI2HNLSAEGf
         3OQIQAQOd4dMbkE+2LJ+DmXAJ74WMmV/ZjFIinZ1mYtTjrrQURXzFz0nDtrT2JRcIR0F
         HZT419k7vInt+LpkmDGygYnbHwuLTpvjzrVcYuSEjVtU1qBFtaPAdvV4Nbeyt8wdDzPS
         1Ba6ivk//3N9cvmLBpVlIxQ5hQDSMb60vjvlbeoe8R0Xf1l7W8yCxftlARQcumFuEz63
         af+85gkDrRRaS4eIyhT+B/MGIGKs8K4sO6rEo5KvEYHUQil2vhXqLkVd2tZ87OkmetD4
         /QiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719875570; x=1720480370;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RNPxq5Omk4VieJCqSI/o3wb5i0TntyZ9aus0bMWHMDM=;
        b=QKwftJHRg1Nw1UVtnbPIW7xgVRcAhyAB5jCmejXXVeXP6+Ik5rnJTVP1F3cBGvg/1F
         RYbrG7u0q6ZgxlwaNd05L02TtEb8R4bSo8/cQyxfTYV+JQzLQbRX3kQUr5i7xOVhlWUd
         PhxR78UxFF8tF14VrZq+q7g/rPMHLGweOexCjRm2CiE2PCVvttVW+ZjEgGMLtKXWjAIm
         5ild0MAxiZGao9NCLA6Wcc/8DRQpat53BlxBS6c7ilNfC5FtwlCK7msn0ABDrlG7HpL5
         eJZHLzMlGkEJB+YT5kMw12MTTcOZa7T5R+aZlS5vlRfr1yWBDvj7ywan09E7cq4bu1rh
         jq9g==
X-Forwarded-Encrypted: i=1; AJvYcCV7S3HEiC46+NmCDTZpj/BdWALZXbTZxwxcb/0wb9l8F188rBvopeoyrzyCjQHEZXUe5H+jtaUNhwVTb3jHUX9K1jVex0JW7XnJWg==
X-Gm-Message-State: AOJu0Ywuy+iuStT3QUEVJBApgObvkcpannR6ZH2lp89+aHRoan/UxXaZ
	ZPNuCLKZQ7tPt6xvsQuvg1F3jpspo2V7IOih+htHeonOMkk+E0vX
X-Google-Smtp-Source: AGHT+IH3DQp/2pM8D5quTRswiRysfI5t32WRKIGD9bBcJc2WV96fpSibhV6GTKkinVQGfgMnVRCxEw==
X-Received: by 2002:a17:90a:de86:b0:2c8:6e4f:6bab with SMTP id 98e67ed59e1d1-2c93d788ac1mr7182795a91.3.1719875569988;
        Mon, 01 Jul 2024 16:12:49 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:27dc:3453:bfb9:bce5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c91ce17d00sm7368589a91.10.2024.07.01.16.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 16:12:49 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tharvey@gateworks.com,
	parthiban@linumiz.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] arm64: dts: imx8mm-venice-gw72xx-0x: Remove compatible from dtso
Date: Mon,  1 Jul 2024 20:12:29 -0300
Message-Id: <20240701231229.197614-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240701231229.197614-1-festevam@gmail.com>
References: <20240701231229.197614-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

There is no need to describe the compatible string inside
a dtso file.

dt-schema produces super verbose warnings about that.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso | 4 ----
 .../boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtso     | 4 ----
 .../boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtso     | 4 ----
 3 files changed, 12 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso
index f6ad1a4b8b66..47d3c0c49e8a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso
@@ -15,10 +15,6 @@
 /dts-v1/;
 /plugin/;
 
-&{/} {
-	compatible = "gw,imx8mm-gw72xx-0x";
-};
-
 &gpio4 {
 	rs485_en {
 		gpio-hog;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtso b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtso
index c3cd9f2b0db3..7fcd8c851159 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtso
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtso
@@ -18,10 +18,6 @@
 /dts-v1/;
 /plugin/;
 
-&{/} {
-	compatible = "gw,imx8mm-gw72xx-0x";
-};
-
 &gpio4 {
 	rs485_en {
 		gpio-hog;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtso b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtso
index cc0a287226ab..b19e38fc27ba 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtso
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtso
@@ -18,10 +18,6 @@
 /dts-v1/;
 /plugin/;
 
-&{/} {
-	compatible = "gw,imx8mm-gw72xx-0x";
-};
-
 &gpio4 {
 	rs485_en {
 		gpio-hog;
-- 
2.34.1


