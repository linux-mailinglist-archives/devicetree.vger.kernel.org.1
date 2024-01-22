Return-Path: <devicetree+bounces-33717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 670D38361C0
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:32:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FE521F21FD0
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:32:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83D103BB3F;
	Mon, 22 Jan 2024 11:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=smile-fr.20230601.gappssmtp.com header.i=@smile-fr.20230601.gappssmtp.com header.b="is7zf3ei"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF713A8E3
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705922460; cv=none; b=i1sxQ+tsGXtx4N6uz5XzumzwlV5TKGfVcR24IhERAKJgsLJtvEhMIDAmYy579XtW0zAEVVXWSMVhNI9SDYEHxxcByOH064JrfeiWijyZ/EqY3rOmwgfWHiQpE3V6LRxR9Z655UTLXeEOgBAXej/Uc0OGI2V9dm0eAd4qA105MFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705922460; c=relaxed/simple;
	bh=ka/YWnYO71wVj2LTeee75OH2fQvxjGgTlJ9lY9vTP4M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ayuw+kSaaS8EdrhKGHNAAcRL2Oe5cEsncHWah8F72c1qr5cD4MIVQEK3bi8PwOR7IQdBUqta5C1iilbY+GXdlF3YJFuXb0oSBy6+6ojodxDhU/BBGHuXffHG8nxndjmm6WKdRU0ggtyEppZ05vIa10d+4kj04XmuPFQ0KZyWtxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (2048-bit key) header.d=smile-fr.20230601.gappssmtp.com header.i=@smile-fr.20230601.gappssmtp.com header.b=is7zf3ei; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-40e800461baso37059225e9.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:20:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1705922456; x=1706527256; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OqplCx4aFnfmLBjauycIiJ63cmJG88QgQd5RUSern+E=;
        b=is7zf3eiqs6Js7reW1IyBF+/B/JutepU8rzhSfjQn445jacmTJ8Emsw+srs21juq7V
         m3Fh0vkM7dVh21UBseF3MrmqprYJfcfZ1AR9eamFLsmN1vYA18Yn1Pjm5aHXQNEw7czQ
         vENVmBq+ymMubxUky1Q31Ce4EtOcEv80VseCXfuOhRKYvw06xGZCD+CX9KfqJaIUJ4IU
         OyM0aMwkpyR6EBQkzert4OurWTfsUgZyuVY9nDXGYL35bQp3339BUAh81R1nosojNJZP
         Kqp0YTBFHMImLAWPy/V2xQnweOHthygIkTgT3zDgmM9CoR4dlrBmo0qdOa5i/yr+M8W+
         g/+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705922456; x=1706527256;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OqplCx4aFnfmLBjauycIiJ63cmJG88QgQd5RUSern+E=;
        b=W6WsYrT4Us7sMaQ7K0h3je2+a7xnpHgMYSw8niPnMTc9U58rrsiQ0iF2tfGsJmIXKD
         D6AApriRadxbp62Wx4zaB7w0S1dWkdyhQscOcJbLVWzdXwNQ6XJWVxevHCJTaKFv2gPZ
         yCe4ysuFmx0urj0JsXrZAkzjfpztapZxUk+YQXasfr2vHSbj5PTOkCNxGZ3oF44//j/z
         WfAnEc21d9aZZu5HoePwaGfL3k3/KZy2d10hnWvq3Rj5EgfuMoG48GeLpSyVsh6g9LN3
         Prv7IQNfGMRlpLYR6sWs0rnXqOUP9zZRa+QSjSBtr6ZZ2ml2gYlW4fjC33jwar3nc8AS
         taOA==
X-Gm-Message-State: AOJu0YyIWIaFJx/4lIJXFhd05EFbp+nugMD1FUyj9+crLLmYCnbemYxo
	JYuwX6jqrsxhRYDfqAcwn4q5rLQIW8V+LVKeNPiAunlGck4G4guJTe24gELt/C0=
X-Google-Smtp-Source: AGHT+IHKOIuqQwrtvviYLgdS9NyIi9OfVwZxGTCGxfpg4rM2YX4gt7DOFWPJ+fKO23tfiXwY9hQJQw==
X-Received: by 2002:a05:600c:4897:b0:40d:8fcd:31aa with SMTP id j23-20020a05600c489700b0040d8fcd31aamr1153660wmp.327.1705922456510;
        Mon, 22 Jan 2024 03:20:56 -0800 (PST)
Received: from P-NTS-Evian.home (2a01cb05945b7e009bdc688723a24f31.ipv6.abo.wanadoo.fr. [2a01:cb05:945b:7e00:9bdc:6887:23a2:4f31])
        by smtp.gmail.com with ESMTPSA id w18-20020a05600c475200b0040d2d33312csm39204614wmo.2.2024.01.22.03.20.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 03:20:56 -0800 (PST)
From: Romain Naour <romain.naour@smile.fr>
To: linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
	Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Romain Naour <romain.naour@skf.com>
Subject: [PATCH 3/3] arch/arm/boot/dts/dra7.dtsi: add missing unit addresses
Date: Mon, 22 Jan 2024 12:19:48 +0100
Message-ID: <20240122111948.416444-3-romain.naour@smile.fr>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240122111948.416444-1-romain.naour@smile.fr>
References: <20240122111948.416444-1-romain.naour@smile.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Romain Naour <romain.naour@skf.com>

abb_{mpu,ivahd,dspeve,gpu} have 'reg' so they must have unit address.

Fixes:
Warning (unit_address_vs_reg): /ocp/regulator-abb-mpu: node has a reg or ranges property, but no unit name
Warning (unit_address_vs_reg): /ocp/regulator-abb-ivahd: node has a reg or ranges property, but no unit name
Warning (unit_address_vs_reg): /ocp/regulator-abb-dspeve: node has a reg or ranges property, but no unit name
Warning (unit_address_vs_reg): /ocp/regulator-abb-gpu: node has a reg or ranges property, but no unit name

Signed-off-by: Romain Naour <romain.naour@skf.com>
---
 arch/arm/boot/dts/ti/omap/dra7.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/ti/omap/dra7.dtsi b/arch/arm/boot/dts/ti/omap/dra7.dtsi
index 6509c742fb58..565ac7691a2a 100644
--- a/arch/arm/boot/dts/ti/omap/dra7.dtsi
+++ b/arch/arm/boot/dts/ti/omap/dra7.dtsi
@@ -638,7 +638,7 @@ mmu_ipu2: mmu@0 {
 			};
 		};
 
-		abb_mpu: regulator-abb-mpu {
+		abb_mpu: regulator-abb-mpu@4ae07ddc {
 			compatible = "ti,abb-v3";
 			regulator-name = "abb_mpu";
 			#address-cells = <0>;
@@ -671,7 +671,7 @@ abb_mpu: regulator-abb-mpu {
 			>;
 		};
 
-		abb_ivahd: regulator-abb-ivahd {
+		abb_ivahd: regulator-abb-ivahd@4ae07e34 {
 			compatible = "ti,abb-v3";
 			regulator-name = "abb_ivahd";
 			#address-cells = <0>;
@@ -704,7 +704,7 @@ abb_ivahd: regulator-abb-ivahd {
 			>;
 		};
 
-		abb_dspeve: regulator-abb-dspeve {
+		abb_dspeve: regulator-abb-dspeve@4ae07e30 {
 			compatible = "ti,abb-v3";
 			regulator-name = "abb_dspeve";
 			#address-cells = <0>;
@@ -737,7 +737,7 @@ abb_dspeve: regulator-abb-dspeve {
 			>;
 		};
 
-		abb_gpu: regulator-abb-gpu {
+		abb_gpu: regulator-abb-gpu@4ae07de4 {
 			compatible = "ti,abb-v3";
 			regulator-name = "abb_gpu";
 			#address-cells = <0>;
-- 
2.43.0


