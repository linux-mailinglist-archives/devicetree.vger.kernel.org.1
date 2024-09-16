Return-Path: <devicetree+bounces-103162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 880F3979C77
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 10:09:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A71211C22379
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 08:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E2BC143722;
	Mon, 16 Sep 2024 08:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p6WYta3l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2254347B4
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 08:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726474128; cv=none; b=bDhhZOKVmE6/dmewtrNDDz6J3fmNlA9drRdyva0m+nflyo0JoG03nor5xO8Q9tTQYxrKUK8QlQGfWtxc2MEYHod9Rx4O9u1TzE70pnz3+ADkw37o+jzy+/ORxzdHIIZubAW/w5vUZghLIFPx3BP9EetnJAhtVJbmWIC9nZSAhUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726474128; c=relaxed/simple;
	bh=pMewlYYDF9agGKPA3HCGL/qAhfwWWF/OUrcnBP2XiME=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KoFoh6pn6xVDfkhOIrV5aIGwhzZAcRJLfZquO73w6q847kHlEhatu4cU4MUrdYB8pXrdaTvkb660pNZjg24edT8nlKb3Dx/+aa8RvUREtf+S5JSWX8/5zg5Kn0NsIvzmkJhncYi8js9FXSvNYNRlcFHhnAPZAc4BNCW7LIE3Kxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p6WYta3l; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53654e2ed93so4440447e87.0
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 01:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726474124; x=1727078924; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6rsbSiyM71mODHTPu9JLHGloK45uN6FAOdQl+nPVppY=;
        b=p6WYta3lvS7ta3syvCSoX6ocWh7km/81djgnx4IziQlwrCC6nqrEQiO2uD1n4Ka/fy
         1+BoIhNCA60AfW90HKv/TrZL5fkdEoZBg20ddayr6k3sg03OkiIWjNTS8TP3CZBRaHTY
         CsY4OjcyIkhJOv3N+JtchMGXcfUoRcVsOWgByPjYhda8Mnr5bX64zmLthK1Wd1EfgLUB
         aChhmytIjnNhEOKMOt15NIc4UlbC1jLy/uYCR1acNoaayyFFG4tgfhjzVfdnvpc5rHdf
         5hM0skLg5FKKhvGfQjw8lT+z81GHbBqNpnEMKDtXVCDRzMBso+zMJGsuzmEdDafnHm+y
         lmHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726474124; x=1727078924;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6rsbSiyM71mODHTPu9JLHGloK45uN6FAOdQl+nPVppY=;
        b=ZhnmUmkrAD5XYAtC8d6PXcH7rDndb9d6l74NGflTOcsLyidVf5JHKIS+jAF2sKnjVO
         9PR6aw5ZdPm42glxWcJpMdR2CIPTTBSnfsJ72kHu0bq0z+u05ROor2muYXu0sLZ5z0j6
         K4TzsrfVtYQLxbqSfPlBTCESRmDznw3IrZh1u4mg498t5s6IN3KKYEJtNPHrGYMVlSnI
         H9klstOKx7+CxzBJUf7zG/Q0kQ6gchrfEoDmIObdCMHzohdrC6X1d95IsMV1opdTIzfD
         lnEEFJWzlOGkTQyCbXGo5akDu6eLNkp1lPY0lQ7Gtc7ZuLqHkWJN5xA7xz0v5SiHcmgC
         D7LQ==
X-Gm-Message-State: AOJu0YxVYUHJ+Id2eDqjnPsvi0yJ+lUrWpO1EGGyEAII87ZfaH5XV2CA
	hawr3ayv0i5/6dyNlXSp5g75AztL6V0mINRa9yQQtnWXB1zOJb/rPT9oQKj+4mw=
X-Google-Smtp-Source: AGHT+IGeYYiQmn4lHzDy++xVLZnjV4G+rnbzuhYdFOi1c7P53YevUahnkDAMBRV3H21walWQwmZ2Tw==
X-Received: by 2002:a05:6512:1153:b0:533:466d:698c with SMTP id 2adb3069b0e04-53678feb525mr7075144e87.39.1726474123083;
        Mon, 16 Sep 2024 01:08:43 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42da22b900esm69309465e9.1.2024.09.16.01.08.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 01:08:42 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 16 Sep 2024 10:08:30 +0200
Subject: [PATCH v2 01/11] ARM: dts: amlogic: meson6: fix clk81 node name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240916-topic-amlogic-arm32-upstream-bindings-fixes-v2-1-0b20ed4f0571@linaro.org>
References: <20240916-topic-amlogic-arm32-upstream-bindings-fixes-v2-0-0b20ed4f0571@linaro.org>
In-Reply-To: <20240916-topic-amlogic-arm32-upstream-bindings-fixes-v2-0-0b20ed4f0571@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=885;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=pMewlYYDF9agGKPA3HCGL/qAhfwWWF/OUrcnBP2XiME=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBm5+eEEKe9s41rFo1BlQuTVP892PJvMrTQAUrZfwSF
 twdCR0qJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZufnhAAKCRB33NvayMhJ0YhED/
 4vq3I8WXmal1J7yJ1RWWrrAYi2MRPxMzaGUvDUIq/Bt3h1NWlxmRXp7ZaVBIDUGPxM4uHpf3CvcoYL
 uIm8KhjU1AhLwlAEr+P4V6Y/CsbfvkhQU9SYSzmHUeLcfQn4PBrVIBOyx+ewE0ph/X6seeDwIt/2ny
 0ZPSDtSjBAxPtXkwoJlwj2Ap4HLbPt5J8ADYYU5dxARsai5bL2DIhIAwOY3vLdFUVQBR8r+uDI5+ds
 gbmzxrSAJM/mQljVCYZx/mEvEstnOt+lGQzoKqZzgwxTwzfxLZSkZ0+l60iJdLPTXwF9BpUZcQQgdP
 yy+pQCBXX8dbISkmeAFzwtyS493SOhIdkIgxR/8vQX0fdPSe/A7nxO1SCTx6qlkuwYKTkVpPyQ5htv
 YZJNTRaWRugVWJQ0E60YkuLmTCpSQtns+07Cut7gBKUPtdTDIesfwmoDGtc7g0R60Fd3Z2pJAqJ7/o
 q5oHlmZdDEBTCZyM1YdRu+0iWI5tBsMEYampbTzKVChIAlgBUn3bydhYDrBPk9DMZ+0KjNoidhFDGz
 anzJ8LUYJWMPTwrZA5oQeDnm9vWeu9Yo1O6nH3DabLSEdGu3ACmhEfYf8bo8izntm58dkp5TZngW2s
 8OmL1nxVqVtj1elkM37AG9Jiov5L6PaoRlzZJ4eswEVnVo7c1T2/8wHdtfkw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Use the proper node name, fixing:
arch/arm/boot/dts/amlogic/meson6-atv1200.dtb: /: clk@0: 'anyOf' conditional failed, one must be fixed:
	'reg' is a required property
	'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/root-node.yaml#

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm/boot/dts/amlogic/meson6.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/amlogic/meson6.dtsi b/arch/arm/boot/dts/amlogic/meson6.dtsi
index 4716030a48d0..1c4ea7266f66 100644
--- a/arch/arm/boot/dts/amlogic/meson6.dtsi
+++ b/arch/arm/boot/dts/amlogic/meson6.dtsi
@@ -36,7 +36,7 @@ apb2: bus@d0000000 {
 		ranges = <0x0 0xd0000000 0x40000>;
 	};
 
-	clk81: clk@0 {
+	clk81: clk81 {
 		#clock-cells = <0>;
 		compatible = "fixed-clock";
 		clock-frequency = <200000000>;

-- 
2.34.1


