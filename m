Return-Path: <devicetree+bounces-168941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9040A94F3A
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 12:13:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A003218904E7
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 10:13:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B0432620C3;
	Mon, 21 Apr 2025 10:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EI7lMEoC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 948B92620C4
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 10:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745230394; cv=none; b=RHNFaXYrUsGDQ1t2+zeUQRcc8xvTsgSbg5AD0B/SbqRPGkyE1lcpeZXKtIYRAbB16fiql7HYJsb9a+feweo6QO4oXwsFlE0FdxgGbeqy/4sDMYagPywlibIhkXkrPtOF0z2fIsJwDDgbYBJ5x9HBcz1zxcQevj7ZKXXe7AzdeXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745230394; c=relaxed/simple;
	bh=FR04IaMx5M3reYvC9Ul0vGkqy5dkFbswq922BLXpjDc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YmPY9zF28x+IGbW7VT06ahiyOHh9dSdlIoI5BjDQRbu/uSXst0t3Kfta+rKPDObhsjZt6L2st3gPQqI38GAg1XYDMRuRvOkcIqZayW/bYILiworqy2rtv/tEVnAbLCSeh3BUz4AIblsEPUn1jlfbn5zVsXrEewkcqkqg35Ui+lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=EI7lMEoC; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-227b828de00so39098495ad.1
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 03:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745230392; x=1745835192; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sTVdf/HTR/Pq03sjtrVZQf/ywmAoP72Oaa16LKk/YT0=;
        b=EI7lMEoC4eos4V7Mtya/yyQHK8GjlXRZkOM9WyEVG1h2dOGy9uNgh/SVB1j3fTtP0N
         iRm4W1dQfuhufPcv7QpNFmJBAyS5dAa6aALvoW5EKWgD3gfA9Rhjprgw7G8ecUSnsrRX
         AverPwptbkKKCMF5Yo9Mr5JR03gIlGw/PdtUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745230392; x=1745835192;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sTVdf/HTR/Pq03sjtrVZQf/ywmAoP72Oaa16LKk/YT0=;
        b=Av4AfDjvyIZmpVU/hftaB1S4daZIG9JtB7Z7Sy3maJSEaiDSWfmMuGRJ0n/RVG80Pu
         I3bC3Vu9rKTxEY7fDGsrGNiLF18v1Ut3k6ePiUP1gEPAaIEJFsS1NcQGnGuzUm5BbK+G
         XJ83V2zBhOS4ryP2HpITGxly5Bp6NFktHvAzXYfUZE6WdtohiOJRf19HefekfuBRoDtn
         FEaOjXze+XG+RF8c/H7iJR8mB3K3HKyY12FcaF1lhKMebMyI2AAqOTqS6EldPMRT+nrM
         5DAArdk32BsMusKHjrQTEOea2g87x9nEvJtJkpCCp1nNlZ8pBkfm/oOalxTZN7kpPvg8
         bb8g==
X-Forwarded-Encrypted: i=1; AJvYcCX4M1FWdBDRxQqmgvUjjdA4oznQ5/Qp+Bs4uphTJxpEd8i6BX5IUsAPuEehXpCbEoC2S2S0Lt47xYSV@vger.kernel.org
X-Gm-Message-State: AOJu0YxNVih+S/2FdVe87Ek2Gh3TiI4vVSZRGNLnUzHV4mxIbifaM891
	88RYY2AVfGo7MuUJT/XUrHCxs2ZuUaVRxJ2zTTXmMJvkpQxP8KdL2AiFpjoqEw==
X-Gm-Gg: ASbGnctDlg7Qc5LBqkImeRlvUXCSds5n5K8Aip73SJNCzJhXWOI3rM3zgkWld+w/kQF
	cUd6daJDCrPfDz5vl9iz7qP3BD1ir4zZem2uP5L9RdmBhaYtJM9Ru+imr2rs0SkFueJaSQ9LYIl
	nzS9HjKjgo9mjDam7ZyvzOCZE6CWP+xtNSMuEHM+H8O3wjhlZfXQk5UyEnJ79FXKas82rhkDVkb
	NgKAyZcx33c771s5QsDNkMYI1wWaWeXGEaBql01bRiNIkErovrsBH+hKe8QXEAk0WIGfELTvGOI
	wCTQ6v2xh2iLntrXgbbxDzfeSN/aXc/R5g7HcZtbv88fMwUrAJNzduBAYHw=
X-Google-Smtp-Source: AGHT+IEzP8P3BuI4W7WctpJECwx8nzR8w2GBK/ppnOU1J4/hN4o5Y1Q6ZPLjik3RIkoMMrSDGxWajA==
X-Received: by 2002:a17:903:19eb:b0:223:5e56:a1ce with SMTP id d9443c01a7336-22c536063e3mr184062165ad.32.1745230391767;
        Mon, 21 Apr 2025 03:13:11 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7633:f42a:d31d:3f9c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22d78db8b04sm38985205ad.238.2025.04.21.03.13.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 03:13:11 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	chrome-platform@lists.linux.dev,
	linux-input@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2 2/8] dt-bindings: arm: mediatek: Merge MT8186 Voltorb entries
Date: Mon, 21 Apr 2025 18:12:40 +0800
Message-ID: <20250421101248.426929-3-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250421101248.426929-1-wenst@chromium.org>
References: <20250421101248.426929-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are only two different SKUs of Voltorb, and the only difference
between them is whether a touchscreen is present or not. This can be
detected by a simple I2C transfer to the address, instead of having
separate compatible strings and device trees.

Drop the SKU-specific compatible strings and just keep the generic
"google,voltorb" one.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
Changes since v1:
- Added Rob's ack
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 108ae5e0185d..49ddc504c160 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -339,9 +339,6 @@ properties:
           - const: mediatek,mt8186
       - description: Google Voltorb (Acer Chromebook 311 C723/C732T)
         items:
-          - enum:
-              - google,voltorb-sku589824
-              - google,voltorb-sku589825
           - const: google,voltorb
           - const: mediatek,mt8186
       - items:
-- 
2.49.0.805.g082f7c87e0-goog


