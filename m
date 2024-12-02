Return-Path: <devicetree+bounces-125884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CFC9DF97F
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 04:21:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51B461614DF
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 03:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CF3C44C76;
	Mon,  2 Dec 2024 03:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="bd67FZgt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7EB13E40F
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 03:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733109704; cv=none; b=gjXVaAdQM7Hx68vwA4QxwK0SHi+mJyZLWuP24V+lzUBKOkBULCh8vgULXWFUNclGKKw1M94ZZXp5iUR/latTpGVPumUIfHgmBU1dRbD1vQZZ/QBx7KmWZcBth4sA1CBIswOWLePmhBBXFBP2k/2bG+oHZ5fu1cU/DQAF1p5m1h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733109704; c=relaxed/simple;
	bh=19k00t3bhSauQp6R24aL1bW0bHM8u7tNAtzDOGnrjIA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=fzmAlDLuUDIwQyoEQj4NINz7oypbKQNztmtQXTMygGWx23Avze8YW1xyfjZADluChI0r69+D2leqw618Alp+MBe+PQ9p3opDS8E/1AeOiS6gwCTfA+PVKNZEF1pOJ61J3ULkXEfkMpjT4mFvZmvuB+G/+hDPmxIvtIAkxsrLLd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=bd67FZgt; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-21571559c05so616185ad.2
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 19:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1733109696; x=1733714496; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LwpNUnjMlFvYQmQxOKj3RBcYwjK66Q7pEDvGTCX7zBM=;
        b=bd67FZgtAosiN5zyQUj3fgGBqmDkRD/fCSP7ylltYe5uuGg63PbRc4J8nMRohuwQFy
         Gjgd6Eb6wAl/N9rtMFyn5NeqNTKYUdn8D4om/40PBPMaVoJsjB7jt5B2NJNB2Zi3aNQe
         1zS7ScHCWZsHDS8tlzeGg+PJp9BOEWs1z1bzhoggeWxb2F3eXCrEz2S8e6L3Z8aRQhnS
         gJICYPUBWpReqwYU6yvVNGdsAqm9s04nZPu7uLgTxYsIANN1EVRBdDRaiXgrA05FOPUg
         iIzKrIMnhFvv9eX35gfXLQlQ1/OWabzHxbzFsEcaohlew5YLmpb8u/2Ey5uqmVNpKhaf
         NiRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733109696; x=1733714496;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LwpNUnjMlFvYQmQxOKj3RBcYwjK66Q7pEDvGTCX7zBM=;
        b=eUOt/qm0/AkH8dPeUoA1lkREZTP8+71A5MHF6Bh7YLlMOj7t+dD8SCZ2gGbKCxt5Er
         irKzIn3YlzG9AQ2w4F8TMBg87Ef4u02I7UwZHl0MuJCsBU04bh2DMyVdvJMHtgoBKKNo
         J57Qm++AFgMd5KlUFuTJI/CkwqQ14z+w1zrc1YMfZcG9UjpKKRr0kHb2oBetV2E0g+Wt
         Zbbmjvp0xoJ5wOaIWsmTlH+3SPJ7PdRE2+ZrADF99V/mLiqGMQUyvrS17xQFLdve3zm1
         upnHbILYpe4FKzfanWsJ31+quSuN5uCrLPTKvll+3II4a5mQIefSdup1/xqBafB6AsA/
         stZQ==
X-Gm-Message-State: AOJu0YwxBHvrsgqGRV8PnZaCleG2AkL1glqsiynCbhhCW9K3awVpamc/
	RIX9ldHinFBVA1ysaN/YN9BeNy3XF/VY0utu9hKnkgcAjH16beDhN3G6kqPKXdY=
X-Gm-Gg: ASbGncus/luveBf9McuxXpFp9SNV1Bz7dmYoo8k4mHDDMBKawUfGkXUzbOl4B/ByzGS
	K/EFdeKc8AioyWSZxvyKI04HK1QDTjnxCna1Iz/S5BKzjzKCeP98klyUS6kFmeFxkabyJLmydpT
	XODUf1kzZwnIvU5SaK310KfTFXXuGr2+saA9FVFDWxSGL9RT4l/0YLT3zMTqFgDgnUjwW7+lLbd
	ZX8zhDu38w369ZocNUfMNMZ/s1J9dbOYwL0QBT94neGSt/R3rcI2khAIUxlWph8ncUfM6y73D/E
	2jEWENgfwQSP1A==
X-Google-Smtp-Source: AGHT+IEJN88pnwqqXHYSIyic7eyBMjw0obUFHPnwV3eN7HNKvCq55lxxoodclMDswm8TKyzGp9aVVQ==
X-Received: by 2002:a17:902:edd0:b0:215:435d:b41a with SMTP id d9443c01a7336-215435db4a5mr63665425ad.1.1733109696542;
        Sun, 01 Dec 2024 19:21:36 -0800 (PST)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21521986004sm66305725ad.184.2024.12.01.19.21.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 19:21:36 -0800 (PST)
From: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	wenst@chromium.org,
	hsinyi@chromium.org,
	sean.wang@mediatek.com,
	dianders@google.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [PATCH v4 4/4] arm64: dts: mediatek: Modify audio codec name for pmic
Date: Mon,  2 Dec 2024 11:20:35 +0800
Message-Id: <20241202032035.29045-5-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20241202032035.29045-1-xiazhengqiao@huaqin.corp-partner.google.com>
References: <20241202032035.29045-1-xiazhengqiao@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

change `codec` in pmic (in mt8186-corsola.dtsi) to `audio-codec`

Signed-off-by: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
---
 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
index e324e3fd347e..cebb134331fb 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
@@ -1276,7 +1276,7 @@
 		interrupts-extended = <&pio 201 IRQ_TYPE_LEVEL_HIGH>;
 		#interrupt-cells = <2>;
 
-		mt6366codec: codec {
+		mt6366codec: audio-codec {
 			compatible = "mediatek,mt6366-sound", "mediatek,mt6358-sound";
 			Avdd-supply = <&mt6366_vaud28_reg>;
 			mediatek,dmic-mode = <1>; /* one-wire */
-- 
2.17.1


