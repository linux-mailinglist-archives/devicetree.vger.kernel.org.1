Return-Path: <devicetree+bounces-138897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2261FA12D97
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 22:18:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 73BDC1889DE1
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 21:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AACA21DC04A;
	Wed, 15 Jan 2025 21:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dhpDYP4F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB02C1DA305
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 21:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736975887; cv=none; b=k/dLdgd7ZUcsUCjrAD+cLt31G04Y2v/kwPIE3ZAta9NO7Fcb6R9E9M9yoMaj78eOThYo08Z5FIWGfthk0DMWSCmQVQ8gfdguzngvIhNrN52UFnIO0m4onWO24eQZqKEVaC4pjEaaiJGM7Pc8nSKKFfMxp+gJutvNmFCFeNKHtBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736975887; c=relaxed/simple;
	bh=qua8v+Rq+grwCOKhN+//Q1i3H9nLSAtQobvZ8dgtcI0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=S2XCOMGRvfaxcpULvENObKx89ewywfwtAWqtCE9C4RjPxB6pDiB7D1MwhF/yCGGSfFyK2SVG1zJIptumaT/V6vF9z4pNu4sPr57eOJBRCXzi20/xWdOmh6mMwo8T7uuDFU/vq1Bj9jEYbI8LnoY8N2tQaXrZV3Deso88aGTB89Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dhpDYP4F; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-436203f1203so112525e9.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:18:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736975884; x=1737580684; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RygItKIJJDoEUCzJbxmAIl9MdlXUeeZINpK9kjgMTmo=;
        b=dhpDYP4FU5M24sp1vw8YvNj/yfgjteQ2zL+UP7DNUFbOlD5oKffXS0xfmzum1G7sc+
         1MIH76T6GcYgZEs13rW8CDZtGryy99a8hOOtaTXiHiljQSTrrXAvLjB7LO/h0fx0QU5R
         y22js9634yCEnUh5g5zYSN3reSKT/Nq4YfY0TTxyJuuSBWgF0Tjs8izs++71B4Ybi963
         rD6sgQIVgi8D2Iswr//Z5rt7awDNbGepcosOgn7JwAHTcrAFGauDEI4YejW5G9eiH8te
         FDcSoNd1Tarbv/EmxYkbJxY9AGXrJnXRQF7ljenitJeqNcadzxdYD7rOva7ZDFNVcVQg
         oiDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736975884; x=1737580684;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RygItKIJJDoEUCzJbxmAIl9MdlXUeeZINpK9kjgMTmo=;
        b=HBYD0BLJ0m7JJWc1rGgWAkAqTIq8T4Gqx0oDlc6QWL/5o6Efs6mEd1YGsxID0df0gj
         yIHdoWmou2XLHfY4b3rKbKh9o6th1X5Y/ijkuLGR5blazdnqE0R/nDZmJ9an6cGnv4mD
         JabEa5SvyDCNrT22I9U9exzl332NYqQWHdcJGtL8MSOEqtD21Iql+4HvkFeXB5UFZfKM
         toi9/VHAmOtUgE1Lt7QD0pT3VZM/2ZWjslfQZYWHAY/HeLtDBPy2Qm4/De1W1+t4Pmf/
         oK0GbAVQkREesFmCdZDCbUSH2v3j9PJj5zAk0bTmBhmQ0NK6A6vpXAyx6O+AbAGlCxup
         7qKA==
X-Forwarded-Encrypted: i=1; AJvYcCU4Gc6cqbEF5qvy5y+l62tltHZd+i14afe/p6SzWO1tbvFZcwx/SIFcJrZ+vVRjbUC6tzLoVh8gm1Vt@vger.kernel.org
X-Gm-Message-State: AOJu0YyymA5noYHEPKC0xaOdUx2+UCPh1KUR6jGDR44C4nKRnFF2AMEJ
	x0MCIhcsp5cTlNA4mhfUX/vsRtTe+RwlbEEionbojdTyVmdZbv6nwB0PU8vI5qY=
X-Gm-Gg: ASbGncvjh42BXttkBJdvSU9sdFQHjHcw6QlIomU+WKAY2P/uZ0LgBca51Na9sTAJZQ8
	kEP2VhcR1KWRPSjzEMHHXkIQ/gNjQXCu07h6BdLJh3AyAoJ/TtcbRmUW74MC726hXMsmGXBdJEG
	h3674e+hbeyxipJUEwUY1DhC3om6U9VqkdvznKioDhW9CoHMNnAHAfKGMamxi3wzohCO8l7ml/z
	iF+W4jSRRnyQspPwKssY37kvQreZ6yQIDwx5I3Ovp31M5fzYBf+XRzhTWKoBDWQ2mVf3PY=
X-Google-Smtp-Source: AGHT+IGsfOhRu6D0LOsuqf3Qj2pk13pONLIyJ5OgpWh66yJEuII6b5Hg8jLGZocLy0vupG9WNXgWuw==
X-Received: by 2002:a5d:64cd:0:b0:374:ca43:ac00 with SMTP id ffacd0b85a97d-38a872e15f2mr11170817f8f.4.1736975884220;
        Wed, 15 Jan 2025 13:18:04 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e38efeesm18992607f8f.62.2025.01.15.13.18.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 13:18:03 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: mediatek: mt7622: Align GPIO hog name with bindings
Date: Wed, 15 Jan 2025 22:18:01 +0100
Message-ID: <20250115211801.194247-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
to fix dtbs_check warning:

  mt7622-bananapi-bpi-r64.dtb: asm_sel: $nodename:0: 'asm_sel' does not match '^(hog-[0-9]+|.+-hog(-[0-9]+)?)$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts b/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
index d12eac9b3eeb..9f100b18a676 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
@@ -320,7 +320,7 @@ &pio {
 	/* Attention: GPIO 90 is used to switch between PCIe@1,0 and
 	 * SATA functions. i.e. output-high: PCIe, output-low: SATA
 	 */
-	asm_sel {
+	asm-sel-hog {
 		gpio-hog;
 		gpios = <90 GPIO_ACTIVE_HIGH>;
 		output-high;
-- 
2.43.0


