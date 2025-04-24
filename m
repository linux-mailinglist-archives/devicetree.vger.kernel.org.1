Return-Path: <devicetree+bounces-170293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C8CA9A6CA
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:50:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64F2692604D
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:50:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50E41227BB6;
	Thu, 24 Apr 2025 08:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q/lU12lk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8082C221F05
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 08:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745484456; cv=none; b=dosRhfXHz52lgSft61zPBDpMmctmrhAXdISFxZeSO1Z2BTIFBpN/+YLZPPAZEqWM+bQtrBGMWbdBB85L0bF/EwdNe/nqOXcGHh+tFmXCJsteTQDZ0hu6qYETuSDxTM8V1LdKbwQPK9DHKYtnp0kI36ZVE68r05QBciOsKh2biUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745484456; c=relaxed/simple;
	bh=F0xOwzDPtFS9U4iNvPRsZNyW2uHbepoKdjhv7XKbvew=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=diAGQU2QrE4P83whTqiyO4j4jnZB+Rop5YG2h+voe4CUf6RRwVMeH79fqlFF7I6SoXscleZKYD1FBsKVmOOb6a9ZCcEOc/WCcOT4nqEzehZLiGuT+AOB+K/EaGEFhed2+2WvlP00m7urLi884inD91RLca3Di/Yo3XbX+pZQhsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q/lU12lk; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5f6f3f2af91so16865a12.2
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 01:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745484453; x=1746089253; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MfUui9CnzkUm11aexUOZ7jdxIuh9w7zKBILc88SrxCE=;
        b=q/lU12lkk2a1eC3G/RPv2nI4UHEmPcuxVLjxhTtMG0KngjFgJc6LNW47h3xPgZ3rQy
         vRiw1hBuEbMpR78vKhulJdCNhsznA23zfZQV4HavNnA65iyDtJRuZ1CnoKVhI7ujXzQD
         1kefqX0NZ4SXzRD3sBLUmoRJ5AQJnoo5W+HBRzYn/QxssBXNCd0G4IukLsUp3MJGxSY2
         XlhVzJRXD+QnZDhq+EqVPjiuADHc7ldAF1nZqQk52r/+kzIXaoe78kwRr8lBthaawRse
         ONfQsfcdjKh8F9mWMOJmA/vhlOaN/cpTE1JntY779Xb+emOQ34BzF+PoQ0+QOIvcj2Rk
         XnqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745484453; x=1746089253;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MfUui9CnzkUm11aexUOZ7jdxIuh9w7zKBILc88SrxCE=;
        b=PM3/yN4nL0yzjJod11NiA8TLeutnhyTD8ZuKj1lp1Yft6EeJbA8hBMXWSuaZX5oV+L
         z2oBdOGDuNa3Ah2w2eDq8AuijK3mA6hZU+3WNBNCLNC+gaCA3IV27mmgoNI9DJL5BcGK
         2hKp77TGSmWjZLN3Ur9XR/roKVJloQkUUPVvTP3PnShDDMwfD+zB0ykRuMgSrsEkem/q
         5Dhxl93MabP+ByOgc+27eJsOGYbdJMxK7F16QhfMNA6o9I5rUlkooq+cUWxh9HgtUSJL
         Xcm2PdStupV31+20Bq8R4Y42+WlpFTiMRu6JI+OQD1ZDj8+BE5uCJqf31NFPyIiWGFO6
         GIrQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcrK0qKSGCggG2u0daY7AkGMVRuPZhf0s7WVF+EMq/EuvHAL/k5kLQY9V6bgR50NVpJw/SSvsypVXH@vger.kernel.org
X-Gm-Message-State: AOJu0YzFtuG02YVFZ12b+UXEntYwaeYH0K/7zqyalSQeYy6bY79frVCU
	QGqSeJu4RqZH+mAjeTPX/4PMWymMIWZSLqbbW8hxsXdXwmKo/3SVfABrCnPUN18=
X-Gm-Gg: ASbGncvEflXmRXLXSk8IspwUpHL+ZbM4Pfdv7eKOxm69CvmloKmMgEVuNpRAYLysNh3
	Pq8HiMxUzRARNjYjuF0bpnAc1EbVK2GXycfpHvx6WJLbFS0OBxPHPZSN2FFhy1S3J7UA6bw182f
	Alv4KQE45gmnKzIkv9gXFkUmCiW1ahl3T2Pq3FWPWwU8OifpGFIqscXvN2thTVWp6RQIuEWy9Rt
	1cnhmtylt3I5zwvc89nmMB81RNWQtZcUYysSrFm0NXAqWgfpE4J7W5iNMYMiqly6IYxsb3/YF8c
	NqGrL4cAYL0xhtHnDk6QcpLh7rGb18w+14Nspr/h7AbMsrW4Kw==
X-Google-Smtp-Source: AGHT+IHLFoX7CwatJ2mbMZsle/jLjUcm5nShwK0CF7ojgyWJgAROD1BSTHdg9v5UKfR1EFXoUy7vkg==
X-Received: by 2002:a05:6402:2111:b0:5de:ce71:badf with SMTP id 4fb4d7f45d1cf-5f6df23404cmr585098a12.6.1745484452651;
        Thu, 24 Apr 2025 01:47:32 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f6ed416ceesm810348a12.52.2025.04.24.01.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 01:47:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: rockchip: Align wifi node name with bindings in CB2
Date: Thu, 24 Apr 2025 10:47:29 +0200
Message-ID: <20250424084729.105182-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since commit 3c3606793f7e ("dt-bindings: wireless: bcm4329-fmac: Use
wireless-controller.yaml schema"), bindings expect 'wifi' as node name:

  rk3566-bigtreetech-cb2-manta.dtb: sdio-wifi@1: $nodename:0: 'sdio-wifi@1' does not match '^wifi(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index a48351471764..e7ba477e75f9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -775,7 +775,7 @@ &sdmmc1 {
 	rockchip,default-sample-phase = <90>;
 	status = "okay";
 
-	sdio-wifi@1 {
+	wifi@1 {
 		compatible = "brcm,bcm4329-fmac";
 		reg = <1>;
 		interrupt-parent = <&gpio2>;
-- 
2.45.2


