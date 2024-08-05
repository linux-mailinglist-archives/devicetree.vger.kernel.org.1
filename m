Return-Path: <devicetree+bounces-90981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1312A947594
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 08:51:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 42864B20EBF
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 06:51:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A570E146010;
	Mon,  5 Aug 2024 06:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ba9lHxrz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C4B1448ED
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 06:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722840666; cv=none; b=kQbAfzInjqMS4CXov8CD/ABZccTPdZPTu8gVVg9bh5RFVUmpJa6yAIRUeEE7N6bgamt8JbjsrzpJqW08RBJmzVsr3S3OfGRqMSZHlIkHEmzYwZFmZhiUVhDEsvANWcW7pvEmDKFTyMoDP70Ruud/8+bJZoirI+/EaUy1laFGivw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722840666; c=relaxed/simple;
	bh=nMoB8Z+kiuOwF83wBj6rCYQpxQQX9hZyF8J1qa/VqZM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qOLyOohw8AjgwWNe3f2tT40l8eAmG3GJ9vaWS6iUXWo/aBaUyNE5r3ri6hMf72py4inCeTmsyn0K46tKZ1gllvcwglz8sa+IxXmICYG45hkzAOGjDCwk/jPytx146Eul4Xw+j6sYdIwFdDKUoQwkr8SxQepEoayh3hDlJNCSmbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ba9lHxrz; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5c6661bca43so6188990eaf.0
        for <devicetree@vger.kernel.org>; Sun, 04 Aug 2024 23:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722840662; x=1723445462; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6p/MeCAGJmUZEzkpiAKS5tn4Lz8oeVbtRys6Pcnb/O8=;
        b=ba9lHxrzwj/5O7EZT2xKXWXhSwmzwaLM+ZK+mNXWUhe3dQmhtqRtRgt1YzijjVY8Sf
         lRBIynywoyos1GtTBEekjfgt2Ilsls9YrEOKaM4Jj3vmoD5XECFUPIaLdpvhOx2Z+bJU
         XY1046nXmYltu+2no8ZhzCmqi9HyiU5OcUTiY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722840662; x=1723445462;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6p/MeCAGJmUZEzkpiAKS5tn4Lz8oeVbtRys6Pcnb/O8=;
        b=j1bCqG0ReoUFvZNMjgCT0zzcRiGiukh6KP57c+Nk1JmsLNn6PfMRMFhfCqy3LTfQZX
         s5ZEkfAYnefexqwg8eEgiDCP83/JwrXa8o7W51u7iij2A6OMiDuDqCsnuelg1wtRzvXR
         UzevtdvabHVWxhIPfLYhB88CblWaVBpUnGVZMzqvDFu/W/9Q91M1lp+Emx/nVPXgIF/c
         zNMQjH4doapXkYF9QaWEqdq3BsHrRZhFrUvR2dbQvBQyy+4fwtPHIHz0X/D6WTpnt7bb
         fpNENcvJ/lP8wz9jjt1gL8QB3XfKD4HwiiaxvW6MJ6wrGFI6ODxcbz6///4rhrbYqGNi
         qvHA==
X-Forwarded-Encrypted: i=1; AJvYcCV1Ur+ArLB112kMErnXqybx/czn2rbaIkhuGFdowSgvcJr/LXhtqFCF2L7qroK7Wg+/uaARuW5EAu7Li1pZ2eUv5kN9xGg6a3xC+w==
X-Gm-Message-State: AOJu0YwzOn+o+cN9ogjsuleFkk4mq+npXlX2DHbbY5A8c1iF/XsqVuZC
	6xnKa+H8Nctw43lB5WeiOVghHyxiw/UCGVHUEQqbWhyANqgWemyHM+Fuy9+F0w==
X-Google-Smtp-Source: AGHT+IFeX6wpUnZrmWE5aZV2NCgOET8WAh/Xbg6xnvw90WG92Ej9Zh6Sd8ao06GrQ3VZ/X84x6+vsw==
X-Received: by 2002:a05:6871:582a:b0:268:880c:9de3 with SMTP id 586e51a60fabf-26891a9aea9mr14453542fac.14.1722840662294;
        Sun, 04 Aug 2024 23:51:02 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:b430:a369:61a6:ec2])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7106ecdffe4sm4779788b3a.128.2024.08.04.23.50.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 23:51:01 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Herring <robh@kernel.org>,
	Kiwi Liu <kiwi.liu@mediatek.corp-partner.google.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Enric Balletbo i Serra <eballetbo@kernel.org>,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Hsin-Te Yuan <yuanhsinte@chromium.org>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH] arm64: dts: mediatek: mt8183: Remove clock from mfg_async power domain
Date: Mon,  5 Aug 2024 14:50:23 +0800
Message-ID: <20240805065051.3129354-1-treapking@chromium.org>
X-Mailer: git-send-email 2.46.0.rc2.264.g509ed76dc8-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This clock dependency introduced a mutual dependency between mfg_async
power domain and mt8183-mfgcfg clock, and Mediatek has confirmed that
this dependency is not needed. Remove this to avoid potential deadlock.

Signed-off-by: Pin-yen Lin <treapking@chromium.org>
Fixes: 37fb78b9aeb7 ("arm64: dts: mediatek: Add mt8183 power domains controller")

---

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index fbf145639b8c..267378fa46c0 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -872,8 +872,6 @@ power-domain@MT8183_POWER_DOMAIN_CONN {
 
 				mfg_async: power-domain@MT8183_POWER_DOMAIN_MFG_ASYNC {
 					reg = <MT8183_POWER_DOMAIN_MFG_ASYNC>;
-					clocks = <&topckgen CLK_TOP_MUX_MFG>;
-					clock-names = "mfg";
 					#address-cells = <1>;
 					#size-cells = <0>;
 					#power-domain-cells = <1>;
-- 
2.46.0.rc2.264.g509ed76dc8-goog


