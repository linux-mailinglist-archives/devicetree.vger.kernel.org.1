Return-Path: <devicetree+bounces-129156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CDF9EABEB
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:26:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BCF72850BB
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 09:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE8F5234989;
	Tue, 10 Dec 2024 09:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LhFn3Y9d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B33E233D9D
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733822784; cv=none; b=oYd/zzDBqgs/712a3c3RQbfrq/WqjIAcANR8AqRQCQcPBqLAQxU4pwek6bDvABMGaKVbc8NO2eRA1WDVztpXhDfcppweZe771+hXd8X+/akx5NpZICOuhVSWyL+4ErA9g69Zr/DYixSRTnIEFApibmL9+RCUgSaVA8ETtz/2A04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733822784; c=relaxed/simple;
	bh=ND7nbSu15y+BqKA6VITHC0vli3cxNfnb8doilPIvVkw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qT6AQtt+p/bdFCmI7En63A42FCqgMRz6KmI2CH3CZFaq5dsOppqOZgLGqXQxJTSyqqCYE7BiyGgrib7aE6SgR9dib4atpk+cxwVorcvEi7Hg2LI42qZyVNJ+6xLI8tUr65SJLLRtYqQ3S1VX7pTVzR2kBTFuT8ppUhBESzkJbxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LhFn3Y9d; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2163bd70069so22266775ad.0
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 01:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733822781; x=1734427581; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V7i5zNgyQQlrRDWh+0G6ogAAGEAyg0BmLGcSQLKBgfs=;
        b=LhFn3Y9d5s47kYQcv/etczjMVXMmMqOaTnUPWVKcsgtVSoQ5Phedz/loyNuHjwn02N
         /Pa7ey0knYiQxYM5HghM+Rez35bv52Act3iDRGQCt4SShsySaFjSho96sbxxYsp5F9WR
         A7LgfSoz27EEkbglIqZkOACoAGb9IGXZACIJc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733822781; x=1734427581;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V7i5zNgyQQlrRDWh+0G6ogAAGEAyg0BmLGcSQLKBgfs=;
        b=tov4uDj4CkuBXqDkusrrjnfddAasDoCq9JkLw2Qge63PcGegxQHuUjqitlZ36OD8xS
         ZwyYkjMFi+oa6UbIzkw+Tm2bx1C5G/u2A4cG7cA2kyH94vQ6U9pke6xd21P5Daw1+kKR
         osTijOgd04hT5rO0GwgoHfxRBFS+VL5qOkdsZ03AauJE777rOIXPYkECO/sFGAfXbZkG
         FqS0xOC1I3Ys/DarSs2yu57Hr7ANIIHtPI++C+RL0r4RjjwJFFS6kcTb/aEPiw7ysPqF
         xT3DheqXTpLhh+xrSyoUXJzKkzeJnCIIRlw0aRkaYG56W33IBN3wue3EGbPvghWmXq65
         xXXA==
X-Forwarded-Encrypted: i=1; AJvYcCU4ezVK69j2NtkAoLPGy+7u+OJ9AVkJN0SFoSAqP17X2q6/vdhySIYeB+E5RFbDqkz6menGR566pYhQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzMnKrTE9SvV4bZdk76+4GtNPeP7S9rlrosRJF/7hWQ7Yt1R1Rx
	8Cf/Nf8AUyyLYZEI+h614cfQjCjYwLRJJazKWBWdaR0l+WqZ8DzR0x5Xa2cjEA==
X-Gm-Gg: ASbGnct7wnb0NroPvJQUyf8m6ZJ/e+BlrzkQTnzj16IW2vh+Mx64ZW0mXWqfnHpeIH7
	PMB3IzphKXMR4HiT+Usu/YWQrseHapvjkLoBfgMWt4qcvVVzvl2uC/vvMr+hC9l/H3ZQNA9xLeY
	vx8K4kWpmnoNVNn3p0d6vrUsXYKOtBZlygn53Q7yMci5RxdJlkdOoKOLRdEb5ktLlyiwZ+IBCHZ
	OlM8nav9zYDlBWO6a+pi34etpn4sKmzvOYIoKvdG+lFSvJXe1zWpq1Eg/cUibj/vWe5kWkU
X-Google-Smtp-Source: AGHT+IEbVN3vePe7Dj1LS50n6Z7qkx2DIp+ZHcNP48MQNc9h/O+CQoe/H6Q2j2soGp26ZPZFTYHuQg==
X-Received: by 2002:a17:902:ec92:b0:215:773a:c168 with SMTP id d9443c01a7336-21669fc68camr66076865ad.1.1733822781417;
        Tue, 10 Dec 2024 01:26:21 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:89ce:2db9:f7d5:156d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21632c4fc62sm49006905ad.194.2024.12.10.01.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 01:26:21 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: mediatek: mt8173-evb: Fix MT6397 PMIC sub-node names
Date: Tue, 10 Dec 2024 17:26:13 +0800
Message-ID: <20241210092614.3951748-2-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241210092614.3951748-1-wenst@chromium.org>
References: <20241210092614.3951748-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MT6397 PMIC bindings specify exact names for its sub-nodes. The
names used in the current dts don't match, causing a validation error.

Fix up the names. Also drop the label for the regulators node, since
any reference should be against the individual regulator sub-nodes.

Fixes: 16ea61fc5614 ("arm64: dts: mt8173-evb: Add PMIC support")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173-evb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-evb.dts b/arch/arm64/boot/dts/mediatek/mt8173-evb.dts
index 511c16cb1d59..9fffed0ef4bf 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8173-evb.dts
@@ -307,7 +307,7 @@ pmic: pmic {
 		interrupt-controller;
 		#interrupt-cells = <2>;
 
-		mt6397regulator: mt6397regulator {
+		regulators {
 			compatible = "mediatek,mt6397-regulator";
 
 			mt6397_vpca15_reg: buck_vpca15 {
-- 
2.47.0.338.g60cca15819-goog


