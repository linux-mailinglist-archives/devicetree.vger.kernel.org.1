Return-Path: <devicetree+bounces-102377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F8A976C6B
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 16:45:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C512D1C237B4
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 14:45:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 179471BA294;
	Thu, 12 Sep 2024 14:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HZ1LgLP7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC5841B9B2A
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 14:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726152286; cv=none; b=czlVZw2tUG5jgeZL4VjVJADCe54M3HI5S3jOUpexzrsHW/Rf5MTke+nA7SMToOsJW1wkRs/VVy+tpQ5XoPNPAmwj9M6BzdKoMEH8YnNNW8tJXRwVDti/Htrzjhnx4QVAAlbUZYvdsYjiKKI87XVz44dB5O3pFKZFTSonSRNQwkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726152286; c=relaxed/simple;
	bh=RDZTD0ddsCBrpFPbbEm78JMGTuO/C6UMRKc4Ag2Bbuo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HBOvths65JEzJy6s1glNW/kFc9WmbZ7Wg5iXeNjnhbIEKxqOzNySLRzUKU4yiV9gVvpATtPYI+SBG/x3E/AP0EwPTqBIcHbv7dO4HsBHWH9xWtNubyBuxlwdC332WLKb2V/ebLSKH7WdPpM4KF+z3yhtjXjCP3hOBLWMB1EqNEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HZ1LgLP7; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-718f4fd89e5so908099b3a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 07:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726152284; x=1726757084; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ENHzAa0J3LYULKcETMFEp8gDeg2pft3wUA50kLkpahc=;
        b=HZ1LgLP7UdZsQNPUhIlXvYA4TG5bUeY7ACIWFkStsfUddDyQZ2z8pxtoPeKikBp2Ml
         as2+Vf1UdEzgRPCuIc/DAIkTn1Dm/el9iUcV3jIbgU0uefT0HprmUge9TQ77bwXtlVI3
         y15lGNAmOxWX6T4K6XOicbV7i1AaUqZao07bk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726152284; x=1726757084;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ENHzAa0J3LYULKcETMFEp8gDeg2pft3wUA50kLkpahc=;
        b=bqb2WdZTVS+Hbizno5LF42YN0li/p8wbgHeyWvuLAwVfs0EN68F7qla8PXe8QaIk7t
         hM7Yi0cIa8/W56HNSOhBPp/IvME+7YH3g6qwHmxX5kaKkd/dNUBqUxSQV5eD0dW43Qtg
         BQBVzcpCHKgISvExLStx1+80QXJXq8uhbTGDzFEkdTBDE2BwS1p3QVL5VCbcueYF+Oqd
         /MOwP/LbIJISkxfW0BcYkmIU/eUYu81aPGPM6VnOaE7/LWzjYa6n80E8LiMKIQWOBUUQ
         TPfvgaUrCpEoHvj7sSriR5wP3T8wNGfthbzSaESxUzt8X+jyKovG/lWQ06PAawX24+Rj
         kHsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWM239Ud9n7sp+audT8wR/V3FNosbHC0YcqUNAaHnffL46qCjGeNtYdcbuzdZbVSZhU4ySiqOF1B0Qm@vger.kernel.org
X-Gm-Message-State: AOJu0YweVON7Urx3pxWQGW2+OdCYqyKZdkSq0d5XYE0zJayAgC7yEEV7
	1e2kcqkglj+HnSj4fWQYOX0ykn8HGu4Zxa21XGVM1GOp1ibA746cwkE1MGOfXA==
X-Google-Smtp-Source: AGHT+IGmocmHhOdJqPoiASVWIbhrUvuzbyP0frIxr5SqJiWxgxpjRkvqPtBS2tOxjv28s+maVvPRJA==
X-Received: by 2002:a05:6a00:1790:b0:706:a931:20da with SMTP id d2e1a72fcca58-719260654f6mr5526880b3a.3.1726152283924;
        Thu, 12 Sep 2024 07:44:43 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:8638:897f:b6cd:8c44])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db1fdee186sm1826269a12.85.2024.09.12.07.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 07:44:43 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	CK Hu <ck.hu@mediatek.com>
Cc: linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Pin-yen Lin <treapking@chromium.org>,
	Fabien Parent <fparent@baylibre.com>,
	Jitao shi <jitao.shi@mediatek.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel test robot <lkp@intel.com>
Subject: [PATCH 2/2] arm64: dts: mt8183: Add port node to dpi node
Date: Thu, 12 Sep 2024 22:43:59 +0800
Message-ID: <20240912144430.3161717-3-treapking@chromium.org>
X-Mailer: git-send-email 2.46.0.662.g92d0881bb0-goog
In-Reply-To: <20240912144430.3161717-1-treapking@chromium.org>
References: <20240912144430.3161717-1-treapking@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the port node to fix the binding schema check.

Fixes: 009d855a26fd ("arm64: dts: mt8183: add dpi node to mt8183")
Signed-off-by: Pin-yen Lin <treapking@chromium.org>
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202409110843.Hm5W9upr-lkp@intel.com/

---

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 266441e999f2..0a6578aacf82 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1845,6 +1845,10 @@ dpi0: dpi@14015000 {
 				 <&mmsys CLK_MM_DPI_MM>,
 				 <&apmixedsys CLK_APMIXED_TVDPLL>;
 			clock-names = "pixel", "engine", "pll";
+
+			port {
+				dpi_out: endpoint { };
+			};
 		};
 
 		mutex: mutex@14016000 {
-- 
2.46.0.662.g92d0881bb0-goog


