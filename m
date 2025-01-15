Return-Path: <devicetree+bounces-138890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD14DA12D84
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 22:17:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 149D91888EA7
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 21:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CB151DA60B;
	Wed, 15 Jan 2025 21:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EJqWxZ/O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F6D1D9A42
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 21:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736975816; cv=none; b=QHNP717c/WgieD4kfmp9FatnNuoSaZ/s+5gyXu0LLyFPx+5xHSkSWHpuX4SwlCxUxXzrvkdnOZzV+bsRUNwhj8CjyNX8VgcC4SXrCPHahd0UzxJ8gY8fOS09fNx7F0YdAlRw7DnZLFgfbAtzJAeFPdrNZCIGrT7o2gz1i8uGAEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736975816; c=relaxed/simple;
	bh=e6eUaMB8aPRTzS7gkwN9UDYKMht2OBUHjnRw8q//rWw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OfAooPQyb2uHvt6Y9Rd26+x3xOvhe2eC4+3i8cW4FL6/gidR74zLfbWtOPQtk/6mBdz53Z8GFlL/ZmNlOEJnyUpyqprgIWmIwRr3rkjvQ8clbq0YqxPqMT3J9I1JsY8Xt4ZFHFGdvv/nf5vwimfeze1MLOKtMU6ahMBI75PIPBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EJqWxZ/O; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-385d851e7c3so11787f8f.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736975812; x=1737580612; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NsnPZoz0kKjrB9ffP+P4GUuJA4/6fco/c0/24GKI/n4=;
        b=EJqWxZ/OnbiqyIyj3c7eZ7G6ysRmyk0q2/PDpNAMChjIfCbhpfw7w5REf03XXgSzhO
         B4sxUIkm8X8YT81rbYO1vy4S8uxbEqk/sY5W1ZBNwECVoR4WhP7mjJE53Zgy2eHGoieV
         /MrvI6k0vQ9Ihpo1QTDQsHJ3wL1/2nPhp6mgB9IoDoRRyI/GbYsVY/AYtc1tjg1IpUCy
         0qvVpX+j47IXY6zUJ2ToqEzYMt/dv0LQn18I4DpXPKPtj4T3E1xDDuNIg+9UlTdh2wdN
         QKE7smdwapXpPLe14iEpSynQj+lyTp1IcoPhiFiIKtgDP6Wtngyg0o4rGdo1NknnuJJ3
         mjtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736975812; x=1737580612;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NsnPZoz0kKjrB9ffP+P4GUuJA4/6fco/c0/24GKI/n4=;
        b=fTbAdaLXMtRK4hfUJRmKCPDyGI7UpYyAXy3450PCLsAKthtrBOIz0CzJAwrBWuSI3Z
         JWAf8OhHN+prHGaYvvY6aJ/GlyIShschTGH1ZWcomHxABtUmkjkTFIyZhxF997kjIW3A
         6lq5kSJBSMCcTOl3xY3gppDUs1EDQGEnmaLy5UdiHDvLEd/oyiSZNQj2rf7XBQEXfjMW
         J29BZxR3kRQHM0kJNBCG6UYgxWSZ2rzjfWtW/A7vty8MGi/Z7g6atlA33jh1/Om0rlui
         yeJo+Wus5vCxRvPLGnNpnUp05vQBN1/lL4aqb1bwkCQNigbqCzFgCZ6zay+/Nnzp6YHm
         ny0g==
X-Forwarded-Encrypted: i=1; AJvYcCXPzD4LarZEPpQh7EOdxRDuCRlwAzgeikjZF+hjzU4Zd+M8bWzsq49qpyna4C7hfdvlkIzJ7o8qebm5@vger.kernel.org
X-Gm-Message-State: AOJu0YyWUtVF3DXVT/f561AbMewEEVo0sByZWqerTkQHJaBPrZr4Qmec
	RkvL3C5nwUOZ8OyvzPME1g5AtqK8lZav3ve4XeizS/+Zc6tM8KiONJv4vjuJIs4=
X-Gm-Gg: ASbGnctp/+LB9knkmeFjfFul6w/FHha/MbdFW4oOQ+8dQatfYsccPdB83sTcx/jDM7p
	tcsEheCfih8p8iTdY9hbKGpqgz7Y4B/92GkuKBPEqq9KSuLv0Qm9by3b6i59n53DFBHBj2Bt5pJ
	c/S1uc5a911RFHSdXIOg0N4opX4mpUuDjSuulSHTewKFFHcbdbSvRu3iIKOgkLPWXIOD34sHVuT
	FHJFoc/VdS8EplHO5aalgUqBR0v+i+lcr0JHf2v7GD0flqtwpnoU6OdzBdmFgOeidfSXdU=
X-Google-Smtp-Source: AGHT+IFZU0fqytlQ1fVIsSgz83C2pBbEdAy8FNPafokDdGF9ctrc4yCGCcH68JxwD6L7jiw3VqsxOg==
X-Received: by 2002:a05:6000:4618:b0:385:ed78:e188 with SMTP id ffacd0b85a97d-38a872d9f27mr10701277f8f.5.1736975812036;
        Wed, 15 Jan 2025 13:16:52 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e4b80c9sm18435707f8f.84.2025.01.15.13.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 13:16:51 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: ti: omap: Align GPIO hog name with bindings
Date: Wed, 15 Jan 2025 22:16:48 +0100
Message-ID: <20250115211648.194016-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
to fix dtbs_check warning:

  omap3-evm.dtb: en_on_board_gpio_61: $nodename:0: 'en_on_board_gpio_61' does not match '^.+-hog(-[0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/ti/omap/omap3-evm-processor-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ti/omap/omap3-evm-processor-common.dtsi b/arch/arm/boot/dts/ti/omap/omap3-evm-processor-common.dtsi
index e27837093e43..70e33cdd519a 100644
--- a/arch/arm/boot/dts/ti/omap/omap3-evm-processor-common.dtsi
+++ b/arch/arm/boot/dts/ti/omap/omap3-evm-processor-common.dtsi
@@ -205,7 +205,7 @@ en-usb2-port-hog {
 
 /* T2_GPIO_2 low to route GPIO_61 to on-board devices */
 &twl_gpio {
-	en_on_board_gpio_61 {
+	en-on-board-gpio-61-hog {
 		gpio-hog;
 		gpios = <2 GPIO_ACTIVE_HIGH>;
 		output-low;
-- 
2.43.0


