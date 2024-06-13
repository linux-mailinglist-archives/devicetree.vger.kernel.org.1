Return-Path: <devicetree+bounces-75364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 714699069D7
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 12:20:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22C691F26FDA
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 10:20:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 008061422CC;
	Thu, 13 Jun 2024 10:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HsnLA2G5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9EC141999
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 10:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718274005; cv=none; b=c5kmx1YymkiF3nqvbiHk6oQkDgpKe26YLKWjWUol6oiZxokOFmqebI5UkVu2ifgsIr9YWeiJdRA6n0hgBjiMnxkO8t6LmjTgAH7f42lWZ+MVQHg7ypZRaCgqIh956gI1ufW4of7cyyLcNz2yEAdsUYcJJhYHwOcL/ASqfzkQdng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718274005; c=relaxed/simple;
	bh=yJHUAkGXRUAqSw3kT67351NRbqCbUNjFaRw8L2R5mZg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=URMUeEQuOaEuh/AmR7EsTd3BBbBRMIlya2Ni4hYZdG/7P1Dp4vmQE0rAagqr4pY7Xo3da+aql4GBw4MJbhYw1C7S9RunLd1wEtQKSsaG+5m/IXB6tAPmZbdU+wju0MyX9xUiQMJBB6sUJI6sG0PTWph5DR0KHJ01L94/uJSHcHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HsnLA2G5; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-705c739b878so1009732b3a.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 03:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718274004; x=1718878804; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j6xMy0PSx7RAK5KyLRoFGIY2S4TSiOFCk9JAjN+55oY=;
        b=HsnLA2G5q03Ycvz9VqoDO76Hlev3e3ORu1caXOTyCgx1cASqmfRHr1JBK8WMYavsw3
         3N7CseAwqljfUVsysEcD9RbcIw1YWzJhPJAxQI8FTSW1dVRUjDCe6BHaHdslSkm7COSP
         S8/7jchhnGi3DvkobT3RWJTh4apqVl8EqgQ5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718274004; x=1718878804;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j6xMy0PSx7RAK5KyLRoFGIY2S4TSiOFCk9JAjN+55oY=;
        b=IiawS+3EUn0x97+yYScuwhR6s8bcCAx6FwEHt/X3GHyi+A1ybPKNXHpump1gKX10Wb
         SZLFlfBOVjrmnS0txT06zwakmu96JSaaddeKPUfN9/ylp+R5gMTu7A8gQwxvzy+y9C7r
         bctwfkku30KHtmaoDXnkjhHhbyX57RtA7Xg2MuT3YbfnRiX3waCQkoJxYTu2QDjmb9LM
         1AbLli2i974ScdcA3TAkY6iHz/Q1FBkt88+OiP3UpoAT/emj8SfcCpTD5DwwEBk9ujsb
         5vzeI/9eDEZgHyfDXHF3T8/XJ8/Gf+FF4BrfrS2tWKaKa23eltTVMMXZww6GWLVDE53h
         wwNA==
X-Gm-Message-State: AOJu0YzK0gvmU5wnJ9feg67OicJjDluWD+RALGea76VvJ53JtvcLbQAW
	it5zWpq5VU4yObaTwE/Uhb/cIYPIoZ8Bw7o8hxlI8Mo9EUKvqGQdAAp802Nwuw==
X-Google-Smtp-Source: AGHT+IGvGm28fk+okkNWjfFgYvPyFLTuWgmuTCIzXUdUG0qAQ/FS0ndUR84hPXLwOSrKkTwZkSzbEg==
X-Received: by 2002:a05:6a20:daa8:b0:1a9:d27c:3151 with SMTP id adf61e73a8af0-1b8bf0c4483mr3508458637.23.1718274003916;
        Thu, 13 Jun 2024 03:20:03 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (60.252.199.104.bc.googleusercontent.com. [104.199.252.60])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-6fedcf36b9esm817047a12.19.2024.06.13.03.20.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 03:20:03 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Thu, 13 Jun 2024 10:19:58 +0000
Subject: [PATCH] arm64: dts: Fix the value of `dlg,jack-det-rate` mismatch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240613-jack-rate-v1-1-62ee0259e204@chromium.org>
X-B4-Tracking: v=1; b=H4sIAM3HamYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDM0Nj3azE5GzdosSSVN1kE3OLtERzs+RUQ0sloPqCotS0zAqwWdGxtbU
 An6aP6lsAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.13.0

According to Documentation/devicetree/bindings/sound/dialog,da7219.yaml,
the value of `dlg,jack-det-rate` property should be '32_64' instead of
'32ms_64ms'.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi                | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi
index 8b57706ac814..586eee79c73c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi
@@ -27,7 +27,7 @@ da7219_aad {
 			dlg,btn-cfg = <50>;
 			dlg,mic-det-thr = <500>;
 			dlg,jack-ins-deb = <20>;
-			dlg,jack-det-rate = "32ms_64ms";
+			dlg,jack-det-rate = "32_64";
 			dlg,jack-rem-deb = <1>;
 
 			dlg,a-d-btn-thr = <0xa>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 789fd0dcc88b..3cd63d1e8f15 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -450,7 +450,7 @@ da7219_aad {
 			dlg,btn-cfg = <50>;
 			dlg,mic-det-thr = <500>;
 			dlg,jack-ins-deb = <20>;
-			dlg,jack-det-rate = "32ms_64ms";
+			dlg,jack-det-rate = "32_64";
 			dlg,jack-rem-deb = <1>;
 
 			dlg,a-d-btn-thr = <0xa>;

---
base-commit: cea2a26553ace13ee36b56dc09ad548b5e6907df
change-id: 20240613-jack-rate-c478fa76ce19

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


