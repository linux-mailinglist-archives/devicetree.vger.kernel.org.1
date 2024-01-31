Return-Path: <devicetree+bounces-37052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87088843938
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 09:40:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B93F91C21ABC
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 08:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E62A5D8F7;
	Wed, 31 Jan 2024 08:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dNiZ4tXs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213ED52F67
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 08:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706690418; cv=none; b=Nl4wcB7K2P1QlwwIf65C8YTTWxRRCsfSC4KZkiuoHJ7SN79peLuT52WVEjRzeOrzhbHQb9mBWfVuQMhF2Jycx3FST8AyFjiupTwXCGyelCwjMVlT0EFKVvFMLJtZYtqmyHffHqFnoDrw8oO+TdbLzPYhOz5wKoOciB5vyZpbBj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706690418; c=relaxed/simple;
	bh=b6KvYye15yUeepIZfIQKcQ7MF23r5fOL3OVwtXZYmv8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VVCJ1w5dLxmKagxfouvH6+/yXIxxwuIs6/sHrlfA9IZmDPXkb2R+4C4gx1v0/3LS8KlWyOmkeK6/lVJLjyROtzre//VOwey6Wl+9cQA1nXGmO0oHRL0Mt74QaM3dCyIKqyKHHp5gmdfBSvsaprAmFgwpnxlM5fiaeZ1fbww0dT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dNiZ4tXs; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-28bec6ae0ffso2525453a91.3
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 00:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706690416; x=1707295216; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qlp2sty3dR9Sx4BVXNTcLCm3HU4Y5f/yXJCeA8/jKio=;
        b=dNiZ4tXsqs9xOA0FWONckhb72uT841I+WqebwHaW3eY5n8IO2eKxPRmME06uV/b4CG
         c2HkxvVplfvvI2z+4JjhFhYD2KSw3fOipuI4wuqst5opg69iw9At+tFS/wlC10LKkfkR
         lTcSmIo2t+eu5vvUv3jQpAhgXO1mn2YIWlbag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706690416; x=1707295216;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qlp2sty3dR9Sx4BVXNTcLCm3HU4Y5f/yXJCeA8/jKio=;
        b=XwqYw7xngBFrQzqyRtdq8HOnkNa9gaIKkPKgjWbsAF1gJgcJQ3YRJ3eqNffuLHd0h2
         5E8T5nQ0ulFhqUEuQ1Hynrz1yAs8r16PiIJpcN8U52++3ZxTW4qfGpYnONjDqpJXHofU
         alsV2VokK6MMtef/xCqWMBmP5XijYWhTlag6XmYkUSehMNmRNlHd+DQZR0CWI4Croqxm
         FhKlZPP/11s+t3PQVDNPKf7YOcEk1x8mU+L9y/nqeVlTGGvqopiNAkseGgHpQcpNfmQz
         il1U8jJ3sKUAnyQHXefRb7IpVASGgsnAlOWWr1RLrSaVMHLm2Fpvb/6m5I6KEqKbE4W9
         Alug==
X-Gm-Message-State: AOJu0YwmufZmy1ppArglSFebEmTVq9M6qAvjoDcscfr8eiSTRcHcge0w
	8irZqkuyqj+FSFeZTWj/ufe8TOPhE5T4Nl7lfjbot6DVKOOfbiR5nGjRgx8r6g==
X-Google-Smtp-Source: AGHT+IGeOC1b4+fEfR2BiaeqQXuckhfl4EogvEOKld9sN382hSLr+AIdEJ0dHzu5M2ho8pU3UVp7/A==
X-Received: by 2002:a17:90b:182:b0:290:e010:2f90 with SMTP id t2-20020a17090b018200b00290e0102f90mr1002677pjs.30.1706690416436;
        Wed, 31 Jan 2024 00:40:16 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:74d3:dadd:270b:194a])
        by smtp.gmail.com with ESMTPSA id pq9-20020a17090b3d8900b0029051dad730sm887800pjb.26.2024.01.31.00.40.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 00:40:15 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH] arm64: dts: mediatek: mt8183-kukui-jacuzzi: Add ports node for anx7625
Date: Wed, 31 Jan 2024 16:39:29 +0800
Message-ID: <20240131083931.3970388-1-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The anx7625 binding requires a "ports" node as a container for the
"port" nodes. The jacuzzi dtsi file is missing it.

Add a "ports" node under the anx7625 node, and move the port related
nodes and properties under it.

Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../dts/mediatek/mt8183-kukui-jacuzzi.dtsi    | 25 +++++++++++--------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
index 6d4b225a592b..783c333107bc 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
@@ -150,21 +150,24 @@ anx_bridge: anx7625@58 {
 		vdd18-supply = <&pp1800_mipibrdg>;
 		vdd33-supply = <&vddio_mipibrdg>;
 
-		#address-cells = <1>;
-		#size-cells = <0>;
-		port@0 {
-			reg = <0>;
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
 
-			anx7625_in: endpoint {
-				remote-endpoint = <&dsi_out>;
+			port@0 {
+				reg = <0>;
+
+				anx7625_in: endpoint {
+					remote-endpoint = <&dsi_out>;
+				};
 			};
-		};
 
-		port@1 {
-			reg = <1>;
+			port@1 {
+				reg = <1>;
 
-			anx7625_out: endpoint {
-				remote-endpoint = <&panel_in>;
+				anx7625_out: endpoint {
+					remote-endpoint = <&panel_in>;
+				};
 			};
 		};
 
-- 
2.43.0.429.g432eaa2c6b-goog


