Return-Path: <devicetree+bounces-113741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F709A6B8C
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 16:06:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8CDB51C2238F
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 14:06:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 144AD1F8931;
	Mon, 21 Oct 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FSrckexO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CC8C1E526
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 14:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729519553; cv=none; b=WlQY6wcOvfGgfe8Wqjx39cTruv5n60JffbpkgeQUfjF2MK22GOTPoodHHwiS/VjrMlZWWVpgcxdD4u8extlclCSxyIaf8RRUmOcKQqhU/aEOqz/IOj+S7yW5RG/i/uneydBQff6Rxxz2faIqdm5+lnPppF3H6LIXK34mDgfVxEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729519553; c=relaxed/simple;
	bh=eedBscw/LGWNdzKVkTU7WWL5VO1Qm3yPV32Z9qjHYBc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Mn3iNZIHzRr5wFNQ8jTsPyGn5fsboc8ski2OeFH5urJLUbp8Ek/gzTAEzwu+y3BxLrwbk4FsbG7In9z2XGdtwdk8N82nUJoi/eDDER41zgbu3/kNa6EWmjxuqbb8+AkL0Jr9AaHmQTLyepC6RVN7bs0Pj2xDzn4Vf8iLgHnfAHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FSrckexO; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-7cd8803fe0aso2981227a12.0
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 07:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729519550; x=1730124350; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lVisE+PE807hpO8CSAN7tilp7Z5USiSARLUB5mQ6sGE=;
        b=FSrckexOgwmjvmNzAZf4P15GD6f/ullMommleZNlODPiqg1U9kP/ThP9EmGTzO95rA
         4L+8KFs5W7DHXeruEccgXZo5Zc8qaU4i5y3cm45J1xT+LiMbsvkWR7wJOkR3DfLiU0jp
         mkvdWAbCNHGaDOuhj5eGSyYSbNWhLfVFzuPIQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729519550; x=1730124350;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lVisE+PE807hpO8CSAN7tilp7Z5USiSARLUB5mQ6sGE=;
        b=FCGJlYPtZnz6aRAeJnWBho/onaNBrQvtr7izx4svZIdg7vFVEDeLSHgUDjejCU1J8p
         keOeSxrfHWjYn8bQ3auu0JRf/vI9gIhPvpESfydGt47J2KMRu4mi3I8k2KnlBFxn3rMS
         lh7f2U+klxgQP3T37co2GcH0O+KfYvObNYsEv+EpFZ0zPs/ibNR0b/PKXz+nY9RaYK94
         VYgDt6sy4bHoiYRhYxseZ7rT7bd4S3Vri3GSGQlOr/MLvd2H5QP8KnXKQczbAM1vUtqB
         1n3nEpd/5G8VzXUm6mjsFBuebbXykDaw7ykiJsXN9hOOk4XRYPHq4POJ4b9vF9Zt55JG
         SgHA==
X-Forwarded-Encrypted: i=1; AJvYcCW2z3CaJ0gekeCu91BycEtHml06+GbxoBDlPyWSGwbR4eKCI983OM1bVkpeXpWZAb9Rl++w8tcTXkTF@vger.kernel.org
X-Gm-Message-State: AOJu0Yzxupr7mzhKS1PnVFyNFlGypjZdzEzv0Zb9wdO6xFWKFZiWoMff
	XwObo33u1ZrpTCFf9iXKulrO9cWWqwsrVqPnVfkhjFLwU4geIHFHDtf5UJeoqQ==
X-Google-Smtp-Source: AGHT+IFKl8bzamnuWMLgNJkuqVRi9dnOVZzxVFFalqgJLx3tvd/wT7dAvKU2gZg1sxaZIisSRMrfSg==
X-Received: by 2002:a05:6a21:350d:b0:1d9:ea5:19da with SMTP id adf61e73a8af0-1d96b6b6ed5mr25344637.17.1729519549873;
        Mon, 21 Oct 2024 07:05:49 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:ecc1:dced:8a05:e4d8])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7eaeab57e36sm3133318a12.43.2024.10.21.07.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 07:05:49 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH] arm64: dts: mediatek: mt8186-corsola: Fix GPU supply coupling max-spread
Date: Mon, 21 Oct 2024 22:05:36 +0800
Message-ID: <20241021140537.3049232-1-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.rc1.288.g06298d1525-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The GPU SRAM supply is supposed to be always at least 0.1V higher than
the GPU supply. However when the DT was upstreamed, the spread was
incorrectly set to 0.01V.

Fixes: 8855d01fb81f ("arm64: dts: mediatek: Add MT8186 Krabby platform based Tentacruel / Tentacool")
Cc: <stable@vger.kernel.org>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Noticed this while trying to align the downstream Mali driver to the
upstream device tree and binding.

 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
index cf288fe7a238..db2aca079349 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
@@ -1352,7 +1352,7 @@ mt6366_vgpu_reg: vgpu {
 				regulator-allowed-modes = <MT6397_BUCK_MODE_AUTO
 							   MT6397_BUCK_MODE_FORCE_PWM>;
 				regulator-coupled-with = <&mt6366_vsram_gpu_reg>;
-				regulator-coupled-max-spread = <10000>;
+				regulator-coupled-max-spread = <100000>;
 			};
 
 			mt6366_vproc11_reg: vproc11 {
@@ -1561,7 +1561,7 @@ mt6366_vsram_gpu_reg: vsram-gpu {
 				regulator-ramp-delay = <6250>;
 				regulator-enable-ramp-delay = <240>;
 				regulator-coupled-with = <&mt6366_vgpu_reg>;
-				regulator-coupled-max-spread = <10000>;
+				regulator-coupled-max-spread = <100000>;
 			};
 
 			mt6366_vsram_others_reg: vsram-others {
-- 
2.47.0.rc1.288.g06298d1525-goog


