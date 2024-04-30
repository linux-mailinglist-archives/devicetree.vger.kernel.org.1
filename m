Return-Path: <devicetree+bounces-63952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DB48B7456
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 13:29:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A7F78B20D6B
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 11:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7724E12D753;
	Tue, 30 Apr 2024 11:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lZEy/2Fd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D584B12BF32
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 11:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714476579; cv=none; b=WbMBJGV4ZoWkQLq/w/1PCM3nfuODZSRqVKCleVD3cs2ppKor5iAfxrhwiROgX50qAKfIE5gLANSmOPs2U02hQzBpz/quxfb0NK7vrQ+Y6Czqpl2tVc0UR0Y9zwQdFdrwaxRMD8DeYTYNFhPrupZ8ZAoLzgKf41YDLdL1vJX8USM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714476579; c=relaxed/simple;
	bh=ByNXpIbUp1tdcT5fDN2U1EvDZjdgU5Vuew+Elg3JFww=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=Llxk6Yhu2GOdM/y26K9bno5c+NjDarbRR8hhKt+V4xXgvI8Yge3zeba/MpvqoC+mNYDTrAVaf6QgfETz+qFvyY2hhLmhVmYow12hPKXYbaqfQsBElMoAGc6RN+rW5VfsVTypUn4mWPC6MMFCbG/rNZx1O7mOcWMMEq5iQIvxojg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lZEy/2Fd; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a55b3d57277so670176366b.2
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 04:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714476576; x=1715081376; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LJ5RydUkkwZXKOtsqxNgzU2f/vZYNrNlgDDywN2ZRKw=;
        b=lZEy/2Fd6gtVwyl2C2f9xgO7yWY1v9CiOZ5mArgucNKMpH52aUW8ktEuq1lLw8FItW
         hkccVuyboqmi833k7GTuFpVktYZF7pO8uyBjqFN8UB28CrwIdFwKL8nrVt0cFKlDbTE3
         DBjQIxhewbSmF8tRbTRBEH47FTDVouNZAbxcfTM8ODC0njBriS5VEaDioHH2vPLC8mgW
         BOYBcp1ah9pEyKyToYNALgy8mqq4ioMwayhvgg8fPQgJxvuDV+H3MHmhK08lOVKHzP94
         2T4boFNvoXLGgj8zFZuTFTSW4AOtswL4sUcx4Q523d4TsQghI2vvqqtXPBdBWHiTFLm1
         LIfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714476576; x=1715081376;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LJ5RydUkkwZXKOtsqxNgzU2f/vZYNrNlgDDywN2ZRKw=;
        b=v4dpYL4VgX2YL8ZqjoeoOUpFmvH3QVkBkhv5oMY6nvbycRYFNUck5x7urrZfuls85/
         WXe8lwYePbIXIhETIVRi5S1lFb+BrSWzGc745MCRUcWSbG18RD6P1x20R8Ec6HaPVAtP
         3OYrDe6jgy8T/kWpzpAJHWMQwQ/6Gg6ZA6j6NXPwNawt0JOsgE2Fc65VkdEgcbKoh+ll
         9th77/IxptrD/CkmhLYclWFUTIXEiwifyg0t/e91fjZm6a35ardHsYyviN31Wi1SAeJ9
         12Q0ETnyP+DCLHBxEkgnKMBWajOyI7HhVew6zJGQpp94KUA/4jwoYo9HlGgT2w/7OLvO
         V2FA==
X-Forwarded-Encrypted: i=1; AJvYcCWfJSLZG/vDd8FauCmXnHh3Nz8DnXqo1qu0c1aO7bT4jjyPknPh56mDcfZZ7HdHXl5yzTa1iOl/+sBnRBwG58/Hn+37T9TYlHgKTw==
X-Gm-Message-State: AOJu0YzCKhmQmFTO3/SVhAj/fpriEemQ+8BADBlmgzWMunIJwm5dJm5G
	HxzfZnv5CxpyDAxx0LvLd77UcCWmIIxAfE7aEwndm4bWe0Iq143TjqMdQA==
X-Google-Smtp-Source: AGHT+IFo5ZGnjQCPS688j4f9wiUKZH2MbwH3zWAC6ifm6oWwKmTEpIQmQBul1GifHAHKjlDOTLvr2A==
X-Received: by 2002:a17:906:a411:b0:a52:23b6:19c1 with SMTP id l17-20020a170906a41100b00a5223b619c1mr8203519ejz.76.1714476575812;
        Tue, 30 Apr 2024 04:29:35 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id k14-20020a170906128e00b00a525609ae30sm14954596ejb.169.2024.04.30.04.29.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 04:29:35 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: mediatek: mt7981: add efuse block
Date: Tue, 30 Apr 2024 13:29:32 +0200
Message-Id: <20240430112932.20475-1-zajec5@gmail.com>
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

MT7981 (Filogic 820) is a low cost version of MT7986 (Filogic 830) and
has efuse compatible with the later one.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/mediatek/mt7981b.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
index 2d7f91196e64..a5ea168c8fa7 100644
--- a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
@@ -133,6 +133,13 @@ pio: pinctrl@11d00000 {
 			#interrupt-cells = <2>;
 		};
 
+		efuse@11f20000 {
+			compatible = "mediatek,mt7986-efuse", "mediatek,efuse";
+			reg = <0 0x11f20000 0 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		clock-controller@15000000 {
 			compatible = "mediatek,mt7981-ethsys", "syscon";
 			reg = <0 0x15000000 0 0x1000>;
-- 
2.35.3


