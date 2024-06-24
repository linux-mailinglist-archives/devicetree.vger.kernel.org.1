Return-Path: <devicetree+bounces-79207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7264914598
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 10:59:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C5C12809E1
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 08:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4687912E1D1;
	Mon, 24 Jun 2024 08:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UZ1u9fIW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A64129A7B
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 08:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719219582; cv=none; b=qxEfj1ikogIUFuk4/1/Ri/pnGLGfXw27w1bFzQbQ67hckC4uIYEp2dVVz5PrEY2YIW4K9nVgRgk7FZ1XF1kHDB7grf2fhhntsHeTdVQf93T968Ufy0/JFpn2+Zp8+XN6YktD8BnqnvE6IdekWgGizSeH4wjpNdOM3MCq6z7oOYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719219582; c=relaxed/simple;
	bh=4vbufuB4y4HcWNXeFKxHJ6i+FP3N4mNG2mVtr5aRhkc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Y1cjEjQOrVQnurKVTPkIGd1a8TZMJ+/4xxORMia1B5DJHyWqF5qG+Gs/VCQmPaLC5uBBC8ay9qQmXcrfc8voaAOEYonmTzZ8pegtiC5jGjHqESoN2HXDXGplmpzlhWc4ep2p+3cQ81giiomQPQcYSeCyUsB+bcWdXQtJvpKe/jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UZ1u9fIW; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4248ea53493so6994015e9.3
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 01:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719219579; x=1719824379; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Qwfp/9sZTXGBVFvGswGxn/KcFzTCnphPWghJX77Bcj4=;
        b=UZ1u9fIWQMUI7u4TH0jILOe7bTLPDQOW88mcewz5IuNfOzZOYN+5lRvCaiaLdUb/JC
         cT7cX1WdPhEJiF5JjRXAQeQsuGxqccrS76D6iO2gKAxhfj13dVzNorL0zCkrb8WXFF70
         3RO8TmlD6GXg+TjZBdeQYMUo99m6YbW/ayfnrohp3ec5v1yMXSdGl2oCqdxgU0h9dAps
         ffNsHedgEhcwpCij9MfzWaN67amfcXVOUzda9NKI4JrPHk4u8lqjroDNjGG+bb7qLrf+
         EWFCe8cjwobSr1Qm5JMtmh9Yn4Pp/+i53HRABKK5ZC+UE88znOqdIzLLogt5rKEPK9+Q
         1atQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719219579; x=1719824379;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qwfp/9sZTXGBVFvGswGxn/KcFzTCnphPWghJX77Bcj4=;
        b=WdiS/PkJEJcUDFUjg2Cr2hZP4eWJinTCBTZeofaR8DNGjIzTQaOd8aObea/AKGqGnx
         BysYAl2h4MJ3es+79COIHbRfWfxDkRoxhuy7kxMAUp0y+YgRIU2n7YCTl1zu9UxgK6aQ
         qgrDVVzIzLSCSYwTgYb85XwDDmClv1ZtHZxuKSEd4FQjkNoePHUjH9UPMoNFMK529mde
         O70Y8nNFZuQaxhVD2hER8hPl1xWsYvaJPUGwHLes34G844SbomCgS1kVl8tyz8n8gTvQ
         GJnTtl9KBOy1GiYRO2B1js7JuekTJIimvFXUHrbFLdXuYR12xgDw+ZVoimCbvWSxm/vk
         vGxw==
X-Gm-Message-State: AOJu0Yx/xOr6MaImL804sK0n6SoZUgIAqNpqB3sU5YSFTGQaauuA+79i
	XymS83lT8S86GeLpbAu9eRVvvGoxgyFutRPXWkZQ8dMoGmlvEK5FpygvSbOaYvY=
X-Google-Smtp-Source: AGHT+IHWiEG8wFKdZAg1jKI0iRl/ES1d+thsjyKmjiaWMU0FQ1O/QCzoZCZ7Pjlz3Pdnc4C07ShYrg==
X-Received: by 2002:a05:6000:18a1:b0:366:eeda:c32d with SMTP id ffacd0b85a97d-366eedac457mr2823891f8f.31.1719219578473;
        Mon, 24 Jun 2024 01:59:38 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424817b5554sm130779995e9.26.2024.06.24.01.59.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 01:59:38 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 24 Jun 2024 10:59:36 +0200
Subject: [PATCH] arm64: dts: amlogic: ad402: fix thermal zone node name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240624-topic-amlogic-upstream-bindings-fixes-dts-round-2-v1-1-0a21f456eb8d@linaro.org>
X-B4-Tracking: v=1; b=H4sIAHc1eWYC/x2MywrDIBAAfyXsuQvRpoX0V0oPPla70Ki4JhRC/
 j2S0zAwzA5ClUngNexQaWPhnLqo2wDua1IkZN8d9Kin8aknbLmwQ7P8cuxci7RKZkHLyXOKgoH
 /JOibYM1r8qjx4cxslZrvNgTo31Lpivr2/TmOEy1lBcSDAAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1185;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=4vbufuB4y4HcWNXeFKxHJ6i+FP3N4mNG2mVtr5aRhkc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmeTV5cadVbmem+qAcU4856cQkb1UV3Xs3IR2j/1v2
 rGqX3NCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZnk1eQAKCRB33NvayMhJ0VxaEA
 ChHOr0kEAehT4NDtEaOE3JKHCdK00r1EBIEgdTnjHyH9stX4eWTrFpdm1g4I103XVb6HZ03oeMI+w8
 ln66xeYRXK2C5OXFx/zCOKDgRbaPhlHzBSixmE96VdseDvrpYyCe0o6j84kDSgr7uAjokC1WcOtw7P
 tDeHbb9FBbdVOWIbCLyUKb/efiLpW6vjMFafC8PftJBZVW5wXAJWSV3/S+VzsptfcL7ODoQCRrv+Tc
 u6jQe8TK3NSjrHaclHHz6bGfKlO0vgwXhNT7bDM3GXaCEWt4jg+cvboA2cN1348L5fCWvuxxM6mh1a
 P6AsMA8NZECf+zyReYEDLTcK8KybzY93adUsx5UpzRtuUhzORv6lmR2IDefMsBhwguBmUmJOaqcedA
 KOp95Kz0zq+kgI7vnyblt40FyGjz36DbPltwhr+ZIilFBFfacOnSO9JV/HwR1WaGjzUve0IojjMErm
 Cx7rDebMUJHm2ih6UHrk4szyU0gdKZIAd3ZfxTSQ4/2UVXio8/E+UbZ8f3FPV12F3MrhVk3FSRxr8w
 sWH8BjWdzVtfShSQTfEBt9JKln0IOt2gp/0UJS1dT1SQ9zIEgxpfMGkpHsk5YtSqs89OYscQghnWbY
 939ljc83tSGUHj6Lc1BIR1U4JGRlurFSPOj1wyptScVVaB7umcPRMYEEkUDg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Fixes the following:
thermal-zones: 'soc_thermal' does not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,12}-thermal$', 'pinctrl-[0-9]+'
        from schema $id: http://devicetree.org/schemas/thermal/thermal-zones.yaml#

Fixes: 593ab951232b ("arm64: dts: amlogic: ad402: setup thermal-zones")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-a1-ad402.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-a1-ad402.dts b/arch/arm64/boot/dts/amlogic/meson-a1-ad402.dts
index 6883471a93b4..0d92f5253b64 100644
--- a/arch/arm64/boot/dts/amlogic/meson-a1-ad402.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-a1-ad402.dts
@@ -86,7 +86,7 @@ vddio_1v8: regulator-vddio-1v8 {
 	};
 
 	thermal-zones {
-		soc_thermal: soc_thermal {
+		soc_thermal: soc-thermal {
 			polling-delay = <1000>;
 			polling-delay-passive = <100>;
 			sustainable-power = <130>;

---
base-commit: 202661addeb4130fbd99075ab7b4f5290a692542
change-id: 20240624-topic-amlogic-upstream-bindings-fixes-dts-round-2-5ca9b1193bff

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


