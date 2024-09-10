Return-Path: <devicetree+bounces-101590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BD814972997
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 08:33:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F3A22810C7
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 06:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 717DB17A5A1;
	Tue, 10 Sep 2024 06:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Msr6ugtA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F361617A589
	for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 06:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725950020; cv=none; b=TW2+HBQojZITuNrNMOL4jn0vLQ4+AyRJ+7UXtn94qmt1qZnWzqQCNr2w+rDzhbctQfvJkC9ijGMrlfBzCXaDK/S3nsmiprp6p8qXVyKErl2Qs4tG8TSVYZEzMq4yKl3gRR9s9RmkVPq39lfT7TrjrSv+AMuFTk7dgUTa/4Yehtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725950020; c=relaxed/simple;
	bh=W36EA+8bHBy4oo5rtfqzvMSAIZHUyh8OsV37A6Esrug=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Se/92lZdqwdrhsKUjydsV9LEvY4uTFV0IWCF4j7pXatIB4Vz6s/bF1bgVDZA0zTP5q196F3RDforZYu7K08IJ3Pb2m8OP2/86wBk8WIKAHvB+V5JoWVCf0LpgdihEaiPyzZ/61r+HtpPhizXSRXgX5Zg5nXKw75a3kxG754mbd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Msr6ugtA; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7d4f8a1626cso4057012a12.3
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 23:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725950018; x=1726554818; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+/aJw7OF4dGO4YwB0NFwJSdiUCvGjw20wyqsbh56zsk=;
        b=Msr6ugtArhGoCU8pD3KzvRJjP9ImZoaCheH2l0nGFjDMg5zLw9f6xbok2k70tCVjDW
         ypab37o9y/1tFC2BjGzrm7SlSlEnAUhwhYAxXHZ3aynKGq0DFfknO5orYleOgfIJJeVT
         R8YqbXMML6A9kiP5f3PHrxYG+Nqqq8dVW3HgQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725950018; x=1726554818;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+/aJw7OF4dGO4YwB0NFwJSdiUCvGjw20wyqsbh56zsk=;
        b=FciGH6nphxTQp6GcFLE/bhEAEGGks7I3H196TSj4bOrbtF+pOwAr4taNWEAy2mbzhj
         4vmHMgy749ojrXea6sdjuuuKEopdmbHgTE6PmkOY5tHJ5FCAJmvdWZ5JulkE/oCwe1TK
         WZUQpoZJ83w8+Vq8O4DAtsfo18VcAtuVuinJxgUxW6nuK5OQ4XIKl7+5cCFPTZJW4B0L
         YjvyD2o7HScYqB0U7dch/HaxgH1CYBMlYnq+vHK1cVVPyvpygzTtulm5hfEfaSd754Jd
         mYLEXvNT7ESnIJz0f/x80WODORA63tE1XY/R2zqlit8JwkyUZ+B+cDrSWm6+THgUCyaA
         xP1w==
X-Gm-Message-State: AOJu0YxpqOFrTHei4/XCQmMWf0Z2c1yRbXRRNZcOPxvxqDPjyuszUzrn
	Ew/hPSu5XseKN4Fdgog7/imFEXtIXea3MrBDB9SqsYuqAGle78AsL5YQsQHXzQ==
X-Google-Smtp-Source: AGHT+IHZAOmJi6NMS7af0hTyK5lmGDFP2TH09MXuOWEpUh2DhKcLpAp2eDRZDwrIT3I2ERS0dm+E9g==
X-Received: by 2002:a05:6a20:2d0a:b0:1cf:451f:4624 with SMTP id adf61e73a8af0-1cf451f4876mr6216404637.21.1725950018062;
        Mon, 09 Sep 2024 23:33:38 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (30.191.80.34.bc.googleusercontent.com. [34.80.191.30])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-719090c9b08sm696684b3a.207.2024.09.09.23.33.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 23:33:37 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Tue, 10 Sep 2024 06:33:33 +0000
Subject: [PATCH] arm64: dts: mt8183: set DMIC one-wire mode on Damu
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240910-one-wire-v1-1-d25486a6ba6d@chromium.org>
X-B4-Tracking: v=1; b=H4sIADzo32YC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDS0MD3fy8VN3yzKJUXaMUgzRzQ0PjlGSLJCWg8oKi1LTMCrBR0bG1tQD
 hj87jWgAAAA==
X-Change-ID: 20240910-one-wire-2d0f7113dc8b
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Yi Wang <hsinyi@chromium.org>, Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-7be4f

From: Hsin-Yi Wang <hsinyi@chromium.org>

Sets DMIC one-wire mode on Damu.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
index 0b45aee2e29953b6117b462034a00dff2596b9ff..06a689feff52945d141d196d439cba034f25fdf6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
@@ -26,6 +26,10 @@ &touchscreen {
 	hid-descr-addr = <0x0001>;
 };
 
+&mt6358codec {
+	mediatek,dmic-mode = <1>; /* one-wire */
+};
+
 &qca_wifi {
 	qcom,ath10k-calibration-variant = "GO_DAMU";
 };

---
base-commit: da3ea35007d0af457a0afc87e84fddaebc4e0b63
change-id: 20240910-one-wire-2d0f7113dc8b

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


