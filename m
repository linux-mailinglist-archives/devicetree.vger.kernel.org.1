Return-Path: <devicetree+bounces-98315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C3058965B38
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 10:46:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E66AA1C21252
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 08:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1999B16DC3C;
	Fri, 30 Aug 2024 08:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ag+K6H5y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4FB116F0CB
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 08:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725007565; cv=none; b=RsRwNJlfI5Ut/iCcI8Nzj6SjjnX7R/dZv+cZyv6upSIPgD3Su4ZGmgUk1tWGyAotgLfh7ewUxUuuITiA5dpE7fsnF4HZfoWi9A497Pi1zRQjSpjRj4h9+xIaSBFZ1fN3kReoYtnP6UKN3NLnnETfI20DrdtZB/Jb1bjwY5a5b7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725007565; c=relaxed/simple;
	bh=XcGePkJ4pd1B/CZkWbAr6gr9ZCbzy7pKCnrlpq+V1oo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e7+9mWoq42hk1M6paDAALCKeDJNdXi3gDHObbVtpkzPAfeJ1/9VOt0wBMMO2SHfiZTPrY1FUR21y6kATdXB/I/80GveS+ZSznUvPJDTYMsk6CYKysZkHZkscmhVS/fghthB/9rBegeBE5oyS7csCyfrPc72mPqk+RBcS+J2XQrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ag+K6H5y; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-71423273c62so1275949b3a.0
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 01:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725007563; x=1725612363; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MG9yE55j5lJtqIWbVs9SHCJ5Kc9kTWgC1tP2vOkNljE=;
        b=ag+K6H5yQuDZJvcMjHRyWDhBW/eXpdO0abdR0UQFYjSrzv3tEJ50TxO1UtEpdvS0O4
         MctLnW1Sz28/B51XGBlSwz7gPTgnkqO2hOVWOypcKoWwskKZ6o0+eGPgr0iL0LNxjif1
         n/a53YnMaqyVM6035VucI/AxkJNXE2yNBiyxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725007563; x=1725612363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MG9yE55j5lJtqIWbVs9SHCJ5Kc9kTWgC1tP2vOkNljE=;
        b=fG9x5alUu3DSCILVSgJO9A1ThfE/RIe5aatte0fToMRNMWNaczcltWGQFhMHYIJ27F
         y/S7BVoC6JjMFXlvqhVONw1NS9S619FOt8fuHPdbKHnCC8T1NUZ2ACRdcSfwyHeEGZ03
         rB0r0mFpBEsQRre598A/xv5yhOo1c4IdEmFceDZEZjtnA+2cD4M+qtGPFPxt/5RAqA7U
         XP4tP4hXpCcX/PPjXuC1LT7VX99T9k4UksDb6hLs4h5Hq0ouLlCgv0YJGDGKdBIxxY1d
         ThKMPxVqrPR46ZKaI5ovfQiG/VaeGSfPugoYVHP1SQHEw+xa07gYL9un3dSykmiJgipw
         NCtw==
X-Forwarded-Encrypted: i=1; AJvYcCV2+oiV0Q23yfMAUcIOzUHmCYqE2kwmaTdxsQynCZIJ+GWhvMSj8pT5+ZjiLaI3RM1pdrPTU25UgH7Q@vger.kernel.org
X-Gm-Message-State: AOJu0YwtI0xN4XqatpczeM0BfGVf6UGZvUZBEigYNNP0SDJ43aVFO8Wk
	TdGbKg+liU+LrtLUdsu/qkiGvaoq+4cu9MCmjCnxxbmJHEfmJB1DmrLn4iCRRQ==
X-Google-Smtp-Source: AGHT+IEc629GXImBuNOILo97YU6aaZaMx2RzjoxMwdEEvSYsu0H0uErl6hhdNvBxFRkjzwhSGg98Rw==
X-Received: by 2002:a05:6a20:d486:b0:1cc:dd3a:ed43 with SMTP id adf61e73a8af0-1cce100b087mr4623425637.12.1725007562833;
        Fri, 30 Aug 2024 01:46:02 -0700 (PDT)
Received: from localhost (117.196.142.34.bc.googleusercontent.com. [34.142.196.117])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-2d85b0fdf44sm3192373a91.6.2024.08.30.01.45.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2024 01:46:02 -0700 (PDT)
From: Rohit Agarwal <rohiagar@chromium.org>
To: chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rohit Agarwal <rohiagar@chromium.org>
Subject: [PATCH v4 2/3] arm64: dts: mediatek: mt8186: Add power domain for DPI
Date: Fri, 30 Aug 2024 08:45:43 +0000
Message-ID: <20240830084544.2898512-3-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
In-Reply-To: <20240830084544.2898512-1-rohiagar@chromium.org>
References: <20240830084544.2898512-1-rohiagar@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add power domain phandle to the DPI controller in mediatek
mt8186 SoC.

Signed-off-by: Rohit Agarwal <rohiagar@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index caec83f5eece..85b77ec033c1 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -1843,6 +1843,7 @@ dpi: dpi@1400a000 {
 			assigned-clocks = <&topckgen CLK_TOP_DPI>;
 			assigned-clock-parents = <&topckgen CLK_TOP_TVDPLL_D2>;
 			interrupts = <GIC_SPI 309 IRQ_TYPE_LEVEL_LOW 0>;
+			power-domains = <&spm MT8186_POWER_DOMAIN_DIS>;
 			status = "disabled";
 
 			port {
-- 
2.46.0.469.g59c65b2a67-goog


