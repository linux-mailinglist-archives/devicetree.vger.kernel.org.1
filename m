Return-Path: <devicetree+bounces-35259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE6A83CD4B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 21:20:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 97897B228AD
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 20:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E13D13667B;
	Thu, 25 Jan 2024 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iX8wi/PG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB761350C6
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 20:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706213993; cv=none; b=YkXO80cn0bSCB6vk4bchbSpdSdU3qUVRbN+CMmfAApUvBu0mkql8H3QyiMVrW/7vBI0cQramo6wTUdKR+ttCIKhh7sMlJ+/EpS25Z4IjkSHREYC148yMqObsZbH1dH/noD+Snt2eIxJp/6iMJYlcFYOnED56BTt83rTi8a45y4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706213993; c=relaxed/simple;
	bh=t1E44+vT0FQwayv/n/r27Msx6vLqRCV/lgsdxqpVUw0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZUD3Tp1f98b1F3Qj/Otl7cw2HAvhosgPuRbVSSCtE6N3c4tYwOQ3F/cLLAkZPikiEP/ca8NF5wbKGT6bhD/KxtvNYEkEQyPfrjO/950UHeNgdRYExWcQybdOxyDAxwxtEe8lWCklqcN9ZgHG9ocXPVo2OzJBjB+Vt7zVqSKnrSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iX8wi/PG; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3bd72353d9fso5566838b6e.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 12:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706213991; x=1706818791; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gxb5q9ZaK2oTMRN1Pge7GiOfzLVjAQ8vFNMvz6BjbIU=;
        b=iX8wi/PGZY4l2LuSPhVWsI8vzaRP3pBe+0omQpgNY+1/YtGKPwian+FMGeihUxCfN7
         RmuY9XYzYuX3DsSq7BBfX5LUYwRN5MOSyFpPbuIhl/IblO06Br0UsBal6BLSaWkNi9g5
         PNJmOTZt+avdOIIm9EWMeqfz/Eoq98IBjxNojONgqFWLlH4mez5QcOAQfWHIyTC94fZD
         qz+lQW+d5DP7YkeHyu5dDqIA6orReqJ3ElyB96rDFdlsMaq8z39dvzwabGqplsu5fsEP
         NrXA3s+/rpTjbUDTtole2aYbCv17uxrnpxTXhX6qh7kM7czHLLCg27+KClQz0zTH9WrT
         Q2Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706213991; x=1706818791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gxb5q9ZaK2oTMRN1Pge7GiOfzLVjAQ8vFNMvz6BjbIU=;
        b=eacE4+waeTderCFP5vEjLdWMNpNn7z13vKeDj2lclaDixKzfQXbp0uLRDf6GFILeJt
         tscanJRc9u7pDOmMIXOWDSrCNrFuwgLf0YwM78B+iHFzXIKAFpt+oLnt9N0F7iEmtFLh
         o0ffxbKJCDaNNMdqks8OUi8mSWeoawBq3/sZ9iQpcw+QnYNwtjK8ti0zv58EG3bB9Wv7
         qaIBnT44+LoRtPwv/2ep5ull+FaerESpamh31FCxmDvoY6aRVBEmqGOq1bl1LVtSsuCt
         EGSe1xBcJGd+4X2kHOnLZBLHPPC0LBb2ARzIyVmQQUZMlaI0NOyAg4vZ002ariK5zrlT
         QiKQ==
X-Gm-Message-State: AOJu0YyPhAg6+T9NEdNfcoxFPQvmoOl9Bc4vp69KOcEhUFzRMLkwIX9/
	n0WdbnAkYXaDS+P1C1n5pY2gRKKUSWtk2r+Isjet8VA+TitABv3p
X-Google-Smtp-Source: AGHT+IEk+sZmhs0pDCMQ/LJPMTzHvJWLeWPtzylBD5ALA4kCwvSu7Ou0uxt9n7XHVZCYyR44SNcDOQ==
X-Received: by 2002:a05:6870:96a8:b0:210:bc4e:f0a7 with SMTP id o40-20020a05687096a800b00210bc4ef0a7mr93839oaq.10.1706213990979;
        Thu, 25 Jan 2024 12:19:50 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id gx11-20020a056870b90b00b00210cc6cc9eesm3610024oab.33.2024.01.25.12.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 12:19:50 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Correct Indiedroid GPIO Names
Date: Thu, 25 Jan 2024 14:19:42 -0600
Message-Id: <20240125201943.90476-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240125201943.90476-1-macroalpha82@gmail.com>
References: <20240125201943.90476-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Correct the names given to a few of the GPIO pins. The original names
were unknowingly based on the header from a pre-production board. The
production board has a slightly different pin assignment for the 40-pin
GPIO header.

Fixes: 3900160e164b ("arm64: dts: rockchip: Add Indiedroid Nova board")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../boot/dts/rockchip/rk3588s-indiedroid-nova.dts      | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index dc677f29a9c7..3c2278886851 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -195,13 +195,13 @@ &gpio0 {
 
 &gpio1 {
 	gpio-line-names = /* GPIO1 A0-A7 */
-			  "HEADER_27_3v3", "HEADER_28_3v3", "", "",
+			  "HEADER_27_3v3", "", "", "",
 			  "HEADER_29_1v8", "", "HEADER_7_1v8", "",
 			  /* GPIO1 B0-B7 */
 			  "", "HEADER_31_1v8", "HEADER_33_1v8", "",
 			  "HEADER_11_1v8", "HEADER_13_1v8", "", "",
 			  /* GPIO1 C0-C7 */
-			  "", "", "", "",
+			  "", "HEADER_28_3v3", "", "",
 			  "", "", "", "",
 			  /* GPIO1 D0-D7 */
 			  "", "", "", "",
@@ -225,11 +225,11 @@ &gpio3 {
 
 &gpio4 {
 	gpio-line-names = /* GPIO4 A0-A7 */
-			  "", "", "HEADER_37_3v3", "HEADER_32_3v3",
-			  "HEADER_36_3v3", "", "HEADER_35_3v3", "HEADER_38_3v3",
+			  "", "", "HEADER_37_3v3", "HEADER_8_3v3",
+			  "HEADER_10_3v3", "", "HEADER_32_3v3", "HEADER_35_3v3",
 			  /* GPIO4 B0-B7 */
 			  "", "", "", "HEADER_40_3v3",
-			  "HEADER_8_3v3", "HEADER_10_3v3", "", "",
+			  "HEADER_38_3v3", "HEADER_36_3v3", "", "",
 			  /* GPIO4 C0-C7 */
 			  "", "", "", "",
 			  "", "", "", "",
-- 
2.34.1


