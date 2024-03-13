Return-Path: <devicetree+bounces-50268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C5187A8C4
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 14:54:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A29531C21F9F
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 13:54:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCC214206E;
	Wed, 13 Mar 2024 13:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Z0AJ8SZx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C1741C7F
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 13:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710338041; cv=none; b=f2EC6zcGdGGmzcHXJDh2zAR3XCphCc60UthcSneQ9z8tHTyOncvZFu70mjm6gmzcXbX9y3LOEiIyp1VOaqGAQjyXQW45B0VeFR5D46exQ+/I5kYzE+TSkNXvl33nQ8IiJstQHID4m7drb2KEOA8jHMdvN/5SdScA9vA6Q5LUiB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710338041; c=relaxed/simple;
	bh=1WvjdW9Mx5rCDs4ryRQnEBXl7hdJ86vv3Rwr2lWNiTU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=c0/he0KE4tYsQGW6eF4e9GEiK3pW/KnI6Vp+DUZENHRK7QCBJUHi7egUrWHO2/MtiZoOlgxbrEyMrDquEBeLom3ULyKUtufAxQV4/7UxMUzG9Uoao9RSKe2Tfa/aCHGF5zyqxLK1oxqt3Hey7gWUGUTwyYzBvwfYqFADXZlfb/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Z0AJ8SZx; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1dd955753edso31912165ad.1
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 06:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710338039; x=1710942839; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/heQt+Db0ehDtq1JCZPcwy70snmGl2Z1H+WOU5UmOPc=;
        b=Z0AJ8SZxfVtjG/Fxm22gxUuyrKinQe3S6HmcMmxS04Bs/ME6jAyaoVDA7Q+loTYBOw
         bq1nNr9nAbrgumD8Ltvs5vibW9VYe43OWi4Hg1kaFvWIbeYytq4dq/WzVTtZdSTxxZ6l
         65A2XdzrrFSJ2LKkWv8NzyC/KM0CeVir4kuV0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710338039; x=1710942839;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/heQt+Db0ehDtq1JCZPcwy70snmGl2Z1H+WOU5UmOPc=;
        b=rfQaPsjFwUOAtiKZb+ue/2990rdwDzLpU8Txaylf9FgjFpWfVJPc2AtppotWIwRV5b
         4GnQU0uQOO/Z664mZkaicqT+ZRiZnlrrEX7SIDR4XaSdbpYnD2h1zC7/Lg1lqadGznY9
         e3zA68c6wQPKuA66Xn/5IQXVWZzgHGDn2CNoOQ4q1i0xuR3dZ8fpK6tx1wfM+FPE+OSQ
         sec5wPmYXHRnh3/7tpTrZhSB8Zpj2ZTiQDg+nSMwrXYiQ7nx9HO8E/baHvEr3noYoV6D
         /OUtA93yNMPs0HefJD6iBXvi//ntR1OApxcLV/kin4kQaybE/j8yJ7kZZiSIm0+GHNiz
         7zwA==
X-Forwarded-Encrypted: i=1; AJvYcCVypenPH+eSKx5vBnYz7BnsSR+KbP57K0SZ188XmOMcwDVR/cd9cOhVa1z5zH6ZbAC5swR7RJoEByNLKRx89S5UBsFmcW1/a0RgkQ==
X-Gm-Message-State: AOJu0Yz3zqsQvA5T1ugDUCddrEGOjWtbFW+A9WVZGVGFqNWkfkHeER7B
	xlZ7TfetnCOEJeKOSIUSQg5Ljttu/C6kOZ30mxLCSmTo5pMPQ5q4NmCiT0BpIg==
X-Google-Smtp-Source: AGHT+IE3PgaxgQ7zHkHAgGrWi0X7VbrllC27gi8LCOikz9dtE/g945xwEfsoOmxKeOZnqAPMvOWqew==
X-Received: by 2002:a17:902:f544:b0:1dd:aa58:a648 with SMTP id h4-20020a170902f54400b001ddaa58a648mr8030088plf.43.1710338039452;
        Wed, 13 Mar 2024 06:53:59 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:3708:eea3:d1b4:2032])
        by smtp.gmail.com with ESMTPSA id d16-20020a170902ced000b001d8aa88f59esm8632504plg.110.2024.03.13.06.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 06:53:59 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	devicetree@vger.kernel.org,
	Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH] arm64: dts: mediatek: mt8192-asurada: Update min voltage constraint for Vgpu
Date: Wed, 13 Mar 2024 21:51:36 +0800
Message-ID: <20240313135157.98989-1-treapking@chromium.org>
X-Mailer: git-send-email 2.44.0.278.ge034bb2e1d-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Although the minimum voltage listed on the GPU OPP table is 606250 uV,
the actual requested voltage could be even lower when the MTK Smart
Voltage Scaling (SVS) driver is enabled.

Set the minimum voltage to 300000 uV because it's supported by the
regulator.

Fixes: 3183cb62b033 ("arm64: dts: mediatek: asurada: Add SPMI regulators")
Signed-off-by: Pin-yen Lin <treapking@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
index 43d80334610a..5cc5100a7c40 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
@@ -1448,7 +1448,7 @@ regulators {
 			mt6315_7_vbuck1: vbuck1 {
 				regulator-compatible = "vbuck1";
 				regulator-name = "Vgpu";
-				regulator-min-microvolt = <606250>;
+				regulator-min-microvolt = <300000>;
 				regulator-max-microvolt = <800000>;
 				regulator-enable-ramp-delay = <256>;
 				regulator-allowed-modes = <0 1 2>;
-- 
2.44.0.278.ge034bb2e1d-goog


