Return-Path: <devicetree+bounces-102068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 496719755AA
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 16:37:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E73FB1F231E4
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 14:37:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF2131ABEB8;
	Wed, 11 Sep 2024 14:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hoNaWoKp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C48185954
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 14:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726065332; cv=none; b=J6kRkXv8u/U016XKzJeLOlma9JKd93hPxOV6hWIQbmpTYxg4oEv4sbEywTp2j1X1f9kuy/Dh6ifVv5px6nAG9tLBlK1gMo85m3ws/K48Hpf3lL6G+W8mKDTMc7wk2t4UrK439fhxugcIZyI4NfbiZo52iv62A8svGe/qcTdrGPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726065332; c=relaxed/simple;
	bh=Mdf/C8H31e0A17oTlgLfRigSnR8yQty9jPtcPTYT7pE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=s9d2i4iIkrc0/TrdAA1l7s4CI8lNkUl1dKdtQBKMNmOtgrN0JxfKAh61Ok0TH304v64mN3HpuigPN7GGu7YlB6A0zdyImgrtorhZ9wE1XTSFZkMCD2gidDNnSNoQdPMoDLq372rkKt9VDhXnDxyWY8XZjHATSv86HR+r4ayRY7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hoNaWoKp; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3e04552579cso1581516b6e.2
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726065330; x=1726670130; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5leCC+xnoiSa3zCuz8WQhl2vdhzFBVOxY/5F24dS42M=;
        b=hoNaWoKpbcTj6wsW3ixSDFOVz2BctcfvGorVKQKOMJIi3Oqb+PAX5PymPXqT6qAMn2
         G5U1ZtPNOm7xJ7NUYdaiEw7nZVTm01uQD/Vzi0e/UO7C0/SL+GJL/HgDabNvZRhrFoHT
         BBuKY3JAme1U89hqrAjIflyMdq4WzqoZ9Ac68=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726065330; x=1726670130;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5leCC+xnoiSa3zCuz8WQhl2vdhzFBVOxY/5F24dS42M=;
        b=OV26r9VabigyrNP9U7uLjEmvVS5lTDOMT92O+RjublAK6duvzESKwB+UgeRQoN6Eah
         plhsSQNNruSj+RuPUDo/Af6CsdtTBRujSWQDVZ5m5L9znFm9szYon4h2CHFnb/jSoQYK
         3Y0bk3+tvIf8o1nbyXItlQa1vkalM8sZZ3tzXpFAD0dPi2ZASAHFn3Ormyt4Um5NrJkA
         EO8/4q8Fgw06hUajV4rpKhItVTX6tgw0lSyG3aT1+D+NvDohphtILHq05cv5UGNbmTox
         VSRjKlVEwlDItpKlpt/VOZ4e3pUfGBi91VixDSGK71WQSIhB8s8CHe0bjxTo30vhcD2R
         A31A==
X-Forwarded-Encrypted: i=1; AJvYcCVGUZh7pVN6KBqrMLL3GItIIkkUeMjw/0cQFASrUQD/5iVxzuocOPuUg1Xz2h1/eJ8Qe0jr+t12uXR3@vger.kernel.org
X-Gm-Message-State: AOJu0YySI5MVsLDxkw0kolk1Hr9ktJUcMbB6uzrNBark+FvlFS5k9eEF
	5mw1Dh6gZZpBeimtDVAEr6Dw0uZKfz9IhSKkSXODzShqnJN/77rMZTEY2VMcXA==
X-Google-Smtp-Source: AGHT+IH+J+C6d8gNDzhINHwohdN90QAPrsAQWdc7FOUHpN8LW5zv/B/GqRWKq88yB99+d8bvpAIm1g==
X-Received: by 2002:a05:6808:2f16:b0:3e0:486e:366f with SMTP id 5614622812f47-3e0486e38cbmr7154413b6e.5.1726065330530;
        Wed, 11 Sep 2024 07:35:30 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:102f:d738:6069:fd4b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db1fbb5901sm46620a12.24.2024.09.11.07.35.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 07:35:30 -0700 (PDT)
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
Subject: [PATCH v3 8/8] arm64: dts: mediatek: mt8188: Add socinfo nodes
Date: Wed, 11 Sep 2024 22:34:01 +0800
Message-ID: <20240911143429.850071-9-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
In-Reply-To: <20240911143429.850071-1-fshao@chromium.org>
References: <20240911143429.850071-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add two socinfo efuse data nodes for the SoC information probing on
MT8188.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v2)

Changes in v2:
- Added socinfo nodes in v2

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 6327e1006de8..bf15ac9901da 100644
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


