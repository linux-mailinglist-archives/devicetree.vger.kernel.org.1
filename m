Return-Path: <devicetree+bounces-101998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E602F97503F
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 12:55:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24C171C22411
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 10:55:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5882319DFA2;
	Wed, 11 Sep 2024 10:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lzY/EZG1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4BB19CC26
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726051947; cv=none; b=M0mu0znb78SCn+/nhuk/7uGK1zcJsFtab/OMahj79vPHTLpuzE3/kj2L7BPylQSbaXdB7lLXk1/+j4bt7sfgabCUUuwx7fI+/pUyfXRLHefLfcbQ2S0of8ODorXPugeTk4mF6c0+nUqb+FfqyO0LfwZlrUinw61zg6TCy9HjImg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726051947; c=relaxed/simple;
	bh=qOuQg0DDsD+n5L9nc7IyguZnjP6TS9lpu/rn02ZrZN0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fY6R+3jUHBN4z8D/u8l/aTc3c2NSLRlSHeTnmS5Lt9HSv+D1uunm6XD92JTtO7/DXh06OtTNmEPzdhlqOwF+3DrgstOqGfnUZvgvYux0LokAH3TN1knwbVZ7H68Ex9H1BvJe0DKu91zYyjbFl7HvVfQBIM/jw6Vqqvki82KsDq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lzY/EZG1; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7191fb54147so237770b3a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 03:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726051944; x=1726656744; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rBK5HrwCcAQdUPHX8HmJCGl0lCk1GIRThLwD9xKBAaE=;
        b=lzY/EZG1Jb6i93DQTbPjhik2R6yxnOFhQotv5DyuxHe6VFG3v/3oHAVddgviw0boLs
         YXaxovColL3xqDiYPooMlFxxXdDLAxlXtbQW+UkKCk2coXNLHVixCh+NU7YbR1akmTJ/
         zsEcMknnCWP2dCK6aPPc/hmuRwBFnskof1KeA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726051944; x=1726656744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rBK5HrwCcAQdUPHX8HmJCGl0lCk1GIRThLwD9xKBAaE=;
        b=QxjzAbwyswHRaa3sRCevcLPcHQ0n1NaCwbrQaNWIFY9CcROUiWtol3U+YMRW0uLelo
         0YFvgNJaDWCUkimK6n45EknKsW8TltuYeXeA75gGSxXr85cUDiDerNqehi57vqyDAImM
         K+PjNZ8vfFfmiO/sao96HRm+mHZPQXzHbLsz85Cnn/9c6uQU0xY3CB8o58pWi/oGTOI8
         Xrqpjf0UJB5PKpS6pFor0RoZhDsz/Gw38+2sx5Rvd4Hl5TzJSJo1IuX3tACzsDO5ZGbx
         3Y4BVwognsy5xXVc1y0y/N5iaPIVxw12vksEM6MgqtsSRs2UrQamkXrmT14YAq8lZzMu
         xXIA==
X-Forwarded-Encrypted: i=1; AJvYcCXalaulocnQYf8wVWPcCP8F+LwMIXiRUdfBo9YnDwPwEN0TusuN6V6Q42SCP7B+9hpZ80C5Zc7x2JGX@vger.kernel.org
X-Gm-Message-State: AOJu0YygnXiU38zvEpwK5+tCWoQpoYVj35hzZNzcKYyrI1mLMB5MvFE7
	rMRNXaKuosJlM2JGki3+JIDsnsbi4sPxkf9R94XdzkIJc1cRN9YMrv0tV/r2Ng==
X-Google-Smtp-Source: AGHT+IG9YgMDxM6JH6QzsTZiuEKQdBS+aqMoSgP+yD4hhHJ4WT18x5zG3lCN0kR9XJqx6yodEhrX6Q==
X-Received: by 2002:a05:6a00:148a:b0:70d:2e24:af75 with SMTP id d2e1a72fcca58-718d5f06932mr27638808b3a.24.1726051944217;
        Wed, 11 Sep 2024 03:52:24 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:102f:d738:6069:fd4b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7d8242b3d13sm7147352a12.52.2024.09.11.03.52.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 03:52:23 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 8/8] arm64: dts: mediatek: mt8188: Add socinfo nodes
Date: Wed, 11 Sep 2024 18:51:13 +0800
Message-ID: <20240911105131.4094027-9-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
In-Reply-To: <20240911105131.4094027-1-fshao@chromium.org>
References: <20240911105131.4094027-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add two socinfo efuse data nodes for the SoC information probing on
MT8188.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

Changes in v2:
- Added socinfo nodes in v2

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index f459e86d4024..37fd16691ec7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1904,6 +1904,14 @@ efuse: efuse@11f20000 {
 			lvts_efuse_data1: lvts1-calib@1ac {
 				reg = <0x1ac 0x40>;
 			};
+
+			socinfo-data1@7a0 {
+				reg = <0x7a0 0x4>;
+			};
+
+			socinfo-data2@7e0 {
+				reg = <0x7e0 0x4>;
+			};
 		};
 
 		gpu: gpu@13000000 {
-- 
2.46.0.598.g6f2099f65c-goog


