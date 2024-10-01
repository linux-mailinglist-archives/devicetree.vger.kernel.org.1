Return-Path: <devicetree+bounces-106778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEA398BB2C
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 13:33:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 712CC1C2349E
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 11:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9DE81C3F1F;
	Tue,  1 Oct 2024 11:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TqnW0ByB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C6641C3F19
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 11:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727782294; cv=none; b=Qc+4nwoTjQgtqvByEt3gO9scHu3WJIlyHBdh6ptdinzCrxzCy7roiO+1yIy6mfJq59wf5ZHEWgEhKqRBAzuywOEW8jq1D7YtWcTBi5LbY5w+DG+N4HjlYac2uTFtGFUOdZ6PUmU1sXM61F+Xo/3l1fz8A2s2PlLImxn5y7ScYIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727782294; c=relaxed/simple;
	bh=nLKLUoRAXjBaJW9yZt4O5whKBT4sDQoOBzI695cAKQs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pNRy4rjDDBKTi+6L70lDLSxn8DNavqwPvAgKqNuAfO0t8T+iNywKyo9a/2GTicYgP4H2WMKRIHOaKMSnXDYDOTwLvqvoMq41koiEozZCdr0zEGeiVDzgd8H7ppiummsh/vSKSI2JNFTVUZ0FqXznbOqqZWyJPKsJhkaLH/YUSZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=TqnW0ByB; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-718d6ad6050so4517775b3a.0
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 04:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727782293; x=1728387093; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LkkLEEucgoW7bgbQKsmRzFtFQZp/ikQpw3ZnY6QygrQ=;
        b=TqnW0ByBDthk759UhDyS1XknDeryE1wDn+3Z3mM5ss9PiJhcmDuVLq5okD+3i8dYxQ
         Yws+36B+GYM08mDLXRR11kYxqSl4SwN9lTWXvrxCUbwb/kOe8zLG+vYz+R7FOx3A3zyu
         3LJaEk9pjpOeRjFBu9Y3UBP8mMwGHvj4tvPhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727782293; x=1728387093;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LkkLEEucgoW7bgbQKsmRzFtFQZp/ikQpw3ZnY6QygrQ=;
        b=VamRyJCtg6jBONVBQGOohDmCU4CIXfhutAbJYOUzpKceH2PpNfjuxfHcYQKx8pbK4F
         xSGkkwGdJP3g/eibypbVRO/5tPEgcfyDAtI+o43XfKgi32NFMflQ1ihBpld+OD4gsiQF
         kfSzZ4WrE4Z9uechJw4DV2l0VtalYTjGDQtcJOVV0b8mtgRabCj59RQ5JB8AfMFgFpX/
         SOknExFeVJ7WpwpWWFvjZWY6C5K1Fc/phnnXwuSrGyXukoVCVDVA7OwnqQi8HAXC6IWk
         yW6Gl/iuII/lzKiFoHnE/KaECHvFdQ0+27WTMRUgA1w+JPqxnHp/cPSkZedkky8i2nd9
         YJ6g==
X-Forwarded-Encrypted: i=1; AJvYcCXhuZxcNyv7QzypaanrIPyrC/8YYZNYfWU75VEfIPxEzTsrO2zmLEJ+BGhotqJ5nczV+2MCcL508ybn@vger.kernel.org
X-Gm-Message-State: AOJu0YwEYKBBzV4TGNnkW559FIyzNTIB78/T02D6EeDuRuXY9j/9WiGI
	SoFzhajH+bhac6vR/1hT/8vmPyKby5bSKzkwvJNm1kboohF291bB0YGEhzy7VQ==
X-Google-Smtp-Source: AGHT+IEgzRkoFd2sNCI4/vjWyPLOdY4pO3TPXtmTpmnMfuOP0TUArqKEjA+xqCTmER3Sm89xeggSoA==
X-Received: by 2002:a05:6a00:194f:b0:717:e01d:312f with SMTP id d2e1a72fcca58-71b26078cf5mr25062339b3a.27.1727782292819;
        Tue, 01 Oct 2024 04:31:32 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:e044:f156:126b:d5c6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b264b63d9sm7810646b3a.52.2024.10.01.04.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 04:31:32 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 5/8] arm64: dts: mediatek: mt8188: Add missing dma-ranges to soc node
Date: Tue,  1 Oct 2024 19:27:23 +0800
Message-ID: <20241001113052.3124869-6-fshao@chromium.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
In-Reply-To: <20241001113052.3124869-1-fshao@chromium.org>
References: <20241001113052.3124869-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the missing dma-ranges property to the soc node, similar to how it
was done for MT8195 and MT8192.

This allows the entire 16GB of iova range to be used and enables
multimedia processing usages, like vcodec and MIPI camera.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index cd27966d2e3c..69390da9cfe0 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -878,6 +878,7 @@ soc {
 		#address-cells = <2>;
 		#size-cells = <2>;
 		compatible = "simple-bus";
+		dma-ranges = <0x0 0x0 0x0 0x0 0x4 0x0>;
 		ranges;
 
 		gic: interrupt-controller@c000000 {
-- 
2.46.1.824.gd892dcdcdd-goog


