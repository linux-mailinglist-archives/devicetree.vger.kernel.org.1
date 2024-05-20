Return-Path: <devicetree+bounces-67743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4C98C98F4
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 08:30:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 618F2280E7A
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 06:30:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D84E712B95;
	Mon, 20 May 2024 06:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N8wmgU98"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3120433EE
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 06:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716186654; cv=none; b=sOR8eTslCIadVz/cMNaKLRtbeIZuYucalTLTO0x59wAZZbB6qvFfK5M9S8fWkaFvfT3T9qThdmfazOQJCu4pmuaxpFeKbcVjCpsQmZKhSEPBCpgp6Ftw/xsjGoeUAdV1P+5sH0alrBIgccSbf6Zy//8/1NGsjhgKqGpXkY3GP98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716186654; c=relaxed/simple;
	bh=dR8Dy8OqJjBm37/ju9JDW5IRvGDhJm0mBLD8LJugAOs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=fox1l0TJJP3g1zjWkvplxaQa9Glqa3z8WlP9PkIdnzXnpN+tlXP3rjlEzN/G499fAHtprkbDpkPJRRx7sUnvtTTimBeLmMts2nKnE1n0tCdA+wfz9sXdHgwcS3ojJU02xnxfioFVqryB9PVpTOvtVdNeclA2Ucpmin1AK42/7tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N8wmgU98; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2e1fa1f1d9bso42949911fa.0
        for <devicetree@vger.kernel.org>; Sun, 19 May 2024 23:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716186651; x=1716791451; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rz+bZ02LFpOpWAtlLL58CncIUnYmXf+/Ztkgv4PNBmI=;
        b=N8wmgU98YsNrRJY4kCm40wFAb69mR4cXmDMkZ53AOAxmTQv8Fl+b4xBj6mwTwEz/+Z
         Ja4bBO/p7Ei3N8d+yGIcWmxFvBgLmWJZOy72P8obTlqaf1YFG/bGjGuF6TKgU3+jIvHn
         5yTvXN5/4IlxLQF9+hZzDF+/n627dqlV28oZ4eaLK+nrlxlibw7DRfB8seqsVICzFleq
         DAnAt37clg5d/6i9a+LHkZ22r526LwgoemEkfAbwyP92JQYV03OM1a2xRy8PStFnYll9
         z73bVg41lap4PyPAswje7TA2cKXIX8W6pIM9i24+ThtDCYeHlzMYi+vUt8WMzUxMMfZd
         XCcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716186651; x=1716791451;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rz+bZ02LFpOpWAtlLL58CncIUnYmXf+/Ztkgv4PNBmI=;
        b=j6mnnsRp/wGSdSlIz4IvdB1MxrqodM+7UrnzZIeBroyPaUQsCUaBM732z5eVYKrR4D
         tVjGQN1w+t8bRjJH/4w7dYlsS26bi6sBnpQMBmvXdOp2Y0h+VxksPvrOs/kyhjhkekeJ
         simdNaHIfgIyQnnAXooSqXde0uyw20jmap9JdRh0re2ZziQDzvXxzAhyDCXToWhXNBM8
         UkSHrRhos0QfSfnOtlp7l+a3pBraDgYbVMLPPxVUw24I8bQLCIkhN3m1OMHa4yst3J+a
         1Ap6cTT0QuEkx3wsNQ35zGXlbqQ9fPxjjPxGiLekVpYpJEJuAVhdA53OE7BcVAOlLxM3
         qTJg==
X-Gm-Message-State: AOJu0YxjQzH24p4q/HE3egHJvmuHFSC99dzwjoseV4QXPORD99gWVyFv
	Aux47GtBlenZSradid2clhgB0Opt+AomoGF+5W/WRHOqEzdOJPp0
X-Google-Smtp-Source: AGHT+IHVYvnvCXtm+95G/SYDMO0LSxZtBoXuchY1RlSE1t1WtKyDMgbJXZt4O2SbqjvxZyTfxOoH+g==
X-Received: by 2002:ac2:4c50:0:b0:51c:d1ac:c450 with SMTP id 2adb3069b0e04-5220fc7c5camr30222428e87.10.1716186651016;
        Sun, 19 May 2024 23:30:51 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5cdcd149c5sm579170666b.201.2024.05.19.23.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 May 2024 23:30:50 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: aspeed: convert ASRock SPC621D8HM3 NVMEM content to layout syntax
Date: Mon, 20 May 2024 08:30:44 +0200
Message-Id: <20240520063044.4885-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Use cleaner (and non-deprecated) bindings syntax. See commit
bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout") for
details.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts     | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts
index 555485871e7a..c4097e4f2ca4 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts
@@ -110,11 +110,15 @@ eeprom@50 {
 		compatible = "st,24c128", "atmel,24c128";
 		reg = <0x50>;
 		pagesize = <16>;
-		#address-cells = <1>;
-		#size-cells = <1>;
 
-		eth0_macaddress: macaddress@3f80 {
-			reg = <0x3f80 6>;
+		nvmem-layout {
+			compatible = "fixed-layout";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			eth0_macaddress: macaddress@3f80 {
+				reg = <0x3f80 6>;
+			};
 		};
 	};
 
-- 
2.35.3


