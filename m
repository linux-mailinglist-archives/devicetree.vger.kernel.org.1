Return-Path: <devicetree+bounces-79677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A439166AB
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 13:55:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BA7E1F21D61
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 11:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F010514D712;
	Tue, 25 Jun 2024 11:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ME/rWC9F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80FB149E17
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 11:54:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719316492; cv=none; b=dDBOFkAoX65oHcnzCx13r5z01DzsXPeV/aQuDBuOrKrTbtfawI/5atINfaWqop3xBjm9uHgz7A0I1hBZ2BOfhcsY6lUupuvMvh7sSrEc1l7GJg9Kd/QW1jd0+LKpdxa1f2hcEyv8/ezpDtsOd/KunJPI2WmyAWYUlfkL4D+evkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719316492; c=relaxed/simple;
	bh=QEhjfjjl3Gs/schsMwIRhpSaPScpnfCjXKY3ZDk6E70=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aKJvCdgWEQPKZLguwkWNYTJAXuuflH3WF1U7kymxIPjOqoQmurmy0AygAju9n2oA1BE8b5H1l0FfjPiMDZZxpJ/cZIyofDMioz3nkLjSj6LlLMXm3HnPplrvNedUJFS7KgI5uPZ0xNwRgZB79RuoFJOH6yRQCp7nHrOo2ScUOkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ME/rWC9F; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-424720e73e1so44377775e9.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 04:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719316488; x=1719921288; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zo/JwLek1zoDmguFxrFNc+yd8tiMt4oeP8zyhyzsa9U=;
        b=ME/rWC9FLCaQhX7AG8caxTh2LlK7C/CbsndJrS41TFFXm87bgB0fsv26m4hxqSL1bF
         cYEzAJYdVYNXk8wVO3RfzxYHlyxQlcsEVPFAGL4cWzxs/VzTttfTco7+4VlqEH286bsH
         y85B1dyYJvMWF7OCvHvb4Opl5l40f8osZK+eU1Kfv8cRtui8q+FqfUC/Zh2S/eoTVPaj
         qONrnNHopdqH7D3skBRUObrGQvcJx8Jnf92G+qRtS6LX3fWHBv1M72eMeNo9ttpQkGIe
         QgaXMsdjwxIruNx9ENawml/joLz1YsVXBvE0oTVNJQdNyphQF43/dLgT4jTchU9g4BZD
         Wf7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719316488; x=1719921288;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zo/JwLek1zoDmguFxrFNc+yd8tiMt4oeP8zyhyzsa9U=;
        b=j11pYYIxYTKSyIxD38LwiBsDeKfb6cBCsrxe2IbT0bYqXOAYf97mhnhvNgkIeWSNp5
         pMfXpuCDknTnqs0bWho1NqsQ7b3fXTlStOClhZhvyhA4b708arolZ6YIcQmzaul6jkhz
         PvmbqdvrW6ohetLfw0EpZjXSWUVyeKFjdfkJTQt6ErMnbldEDQuD8i3+AhGJLdCJDlZW
         46adzeHJ6zJwsuW7r2B9sp2xklJE4eUOEEujgbc9tupsn8i5rBXpuPfCgJbdMOX4UPBx
         BifEMRmVTHRcrK7Sdysx57n7C5997J9D7adAbDub/SKFfEmOcIHGDGkRRzaf0SFhoQ3T
         jn7g==
X-Forwarded-Encrypted: i=1; AJvYcCU60RaoNGqdLxrdxceNl3YDS7Rp0GvcWRySZHGd7MpaEqCU/zYpZGoxp313We5RCZf8dhSQJ+1duXRCHwt0RsLyUT/y7NJ4JGaRvA==
X-Gm-Message-State: AOJu0Yxdle/g4rFY/8NvM1PikG+fTVesg+4nIuOJyar7/LgwDYUO9Vm8
	bX5HNRGan63hJPwvYkw4Jl4zWZRe3RVvD7sFfSbLHjOOrW1WVOPXFsd2fsgQAyA=
X-Google-Smtp-Source: AGHT+IFIZVwSrEzsurp736JXh70kVDQzuz2SL8RzFG/oZ2827PEdmqkw9RLl/8WeuoJ60IR9y3yTwQ==
X-Received: by 2002:a05:600c:4c14:b0:424:a5a5:a4a4 with SMTP id 5b1f17b1804b1-424a5a5a83cmr7239865e9.32.1719316487864;
        Tue, 25 Jun 2024 04:54:47 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:1b57:b4a1:3d50:32a2])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-366389b88easm12747240f8f.39.2024.06.25.04.54.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 04:54:47 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH] arm64: dts: amlogic: g12: bump spdif output drive strength
Date: Tue, 25 Jun 2024 13:54:41 +0200
Message-ID: <20240625115443.934763-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

Spdif output currently uses a 0.5mA drive strength by default.
While the result depends on how the spdif output is hooked to
rest of the system, this is a bit weak and signal quality
may be poor. This was reported on the vim3l for example.

Increase the drive strength to 3mA, as used for TDM, to be on the
safe side.

Fixes: 649675db939d ("arm64: dts: meson: g12a: add spdifouts")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 138fb18c6480..4057ee808a58 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -987,7 +987,7 @@ spdif_out_h_pins: spdif-out-h {
 						mux {
 							groups = "spdif_out_h";
 							function = "spdif_out";
-							drive-strength-microamp = <500>;
+							drive-strength-microamp = <3000>;
 							bias-disable;
 						};
 					};
@@ -996,7 +996,7 @@ spdif_out_a11_pins: spdif-out-a11 {
 						mux {
 							groups = "spdif_out_a11";
 							function = "spdif_out";
-							drive-strength-microamp = <500>;
+							drive-strength-microamp = <3000>;
 							bias-disable;
 						};
 					};
@@ -1005,7 +1005,7 @@ spdif_out_a13_pins: spdif-out-a13 {
 						mux {
 							groups = "spdif_out_a13";
 							function = "spdif_out";
-							drive-strength-microamp = <500>;
+							drive-strength-microamp = <3000>;
 							bias-disable;
 						};
 					};
@@ -1826,7 +1826,7 @@ spdif_ao_out_pins: spdif-ao-out {
 					mux {
 						groups = "spdif_ao_out";
 						function = "spdif_ao_out";
-						drive-strength-microamp = <500>;
+						drive-strength-microamp = <3000>;
 						bias-disable;
 					};
 				};
-- 
2.43.0


