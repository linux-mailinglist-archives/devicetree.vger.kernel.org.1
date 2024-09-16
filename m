Return-Path: <devicetree+bounces-103163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFBC979C7B
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 10:09:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C12BB1C229CE
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 08:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA7D14600C;
	Mon, 16 Sep 2024 08:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KicKSu48"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CAF13EFFB
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 08:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726474129; cv=none; b=T44dhn/LS1/A45HR4uMsVrEL2CYNCZFq9X6q4RqAKqKUJ1vl7a2HvWbiwGRbz13LL5PKMs7ekSzcIbrUe2Oa/JGIsHfqgj3Xrc1kck4JwGz5YMB7baLshus+rM3oxgRklIfnDMVFL4fT+4L9paagO2xvGIQmkh/bsNK74gwbjKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726474129; c=relaxed/simple;
	bh=9pkmPMaCzuJsZQBTyX4KDWTlCReuscQlzRru6w4vja0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TF4Lu5nXDt30ffQHmaYfgzbjKT18DQ12vLZ99K7Z8AYyTMb9a5/mI6nk1C6mskVo3gqU1sQpyL6nqCX5urnBU4wGbtQADLHmhdgAolANJVZ8/drW570XU8V4819JLrdNYWXRQEj8XNgNHIH6J7fNsH3SNtkoYJsct/oHX2OgiTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KicKSu48; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-42cbface8d6so39104625e9.3
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 01:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726474125; x=1727078925; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P4wUhm0cu3hBHUEYa0x86SgYN8H81Zj2MCjJCMMAWRI=;
        b=KicKSu48qcsBtNHTLhiB1Sl8rxKvX4Db1FV7Le3pufoib+iqpfXvEAd2JkA1g7wFNU
         sR1h5TAJg6SeLgsR2mNbi2eFXODhvR9RyLsWkjsQppVnD8cTqQrWAneNbja51wVuwM8k
         mAMN/gfDDC32Ce8D51r/Hs4hazTpBqzHVxkWeTFsaN43WwxrKiPvMw7xafag5s3WKBEt
         1rb0X2aiQVFEIRtBCLsij8+2DXLfuBuDwRzZGRbrNYDz4HUOOOV9VJGU0VbINLmg/rGn
         XS/jurtSP7MWvHMAw1e13GJsJZyrs0y5yiAC32LBZHhLYYRgS9dkmyYOSWwyuvy9HYf4
         sHoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726474125; x=1727078925;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P4wUhm0cu3hBHUEYa0x86SgYN8H81Zj2MCjJCMMAWRI=;
        b=neB8GLtCC4fo1+GautzpTK6H+3kFm3CB8+gi5qwSD8QXUWPOKI5I2CM4g+cf2t3A5k
         VcEXHT+XiZ9trZMUpiQ+qURRQZ2s81S5AXK+U0kOSAsLz8cje7YjFgW1Ubvsr+ko+Cog
         a7lpOIYgcoYi1FpgsQzRrND39NUTZ5xY845QuU+7lqjdT3lbsOHQa/FaLyVO05SEoWKC
         SngbxELm+Skrkmt2f9XszMUMga+sEyUuCkOVEkrTcW8H1chQ582DcAfHdIzgSivP0jUQ
         GFsnSO7lUpkyxhb4vKdVZdduh5zmPf7K8/oUqqqy5BLhM9QxiY89C/Lll5Ss1PVy9VRY
         2LZQ==
X-Gm-Message-State: AOJu0YwXxLr7nhJ+lPmSdJc6tJxK4zz7TbBydslUBnRC9l2rK5rcXIke
	XFtOE3hN8izWGdkBLgKaxzjIjJQXPofqV4p8MaEiEW7IRrLbkG7rciqjYU0iThM=
X-Google-Smtp-Source: AGHT+IEEtFhy5pnqwLbguE0Let2Vs6QT/MwMgpvWC7qAp530UpnXgzMO17yRHJNo51o4e9eEDEE4Fw==
X-Received: by 2002:a05:600c:3588:b0:42c:bcc8:5882 with SMTP id 5b1f17b1804b1-42d9070a259mr119157665e9.7.1726474124954;
        Mon, 16 Sep 2024 01:08:44 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42da22b900esm69309465e9.1.2024.09.16.01.08.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 01:08:44 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 16 Sep 2024 10:08:32 +0200
Subject: [PATCH v2 03/11] ARM: dts: amlogic: meson8: fix ao_arc_sram node
 name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240916-topic-amlogic-arm32-upstream-bindings-fixes-v2-3-0b20ed4f0571@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1379;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=9pkmPMaCzuJsZQBTyX4KDWTlCReuscQlzRru6w4vja0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBm5+eFEOLQNLSwLkI0iQ0DaKiD+pZC4olkBikY4QDM
 KiPaNseJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZufnhQAKCRB33NvayMhJ0bSmEA
 C7/HRuENo3HLTdS3Lbuxn2YpbvD0Q9p0LI+brsjmm5m/UXGmJZg7a8AlD4JKtmoR7QyFMRkCXfEoWz
 VrY3s2HPNj2f+cFVRfGVOeOSqqEWEe4Guv/OIjccXwmbEVhnj+WREPrjjgqeVM3V7pVDxwpKUWHLrv
 xvstbuTO/rigmCnmkEGcaOSMzQJcXNDBuVt0oz0XOShNrcfkY3VmStXOuacT//CvQcmUgcf2M3KkRG
 NaXjSU8JCKIb+QQeHlo1aDNGIw+cAYex1lPgKQbjllEAaZtW0f3bWfAnks+Uq10PFl09Bvlnl/PSBW
 j/QSS1RIlN8UAgyqQMbtG2MUNAXy7hAEK/gCK9iERdTfq5tjl3j+AN+3PwGdRl3PwepyXl3cl2Nxe2
 oguXtaRIiVMhv1s9EVn/+275CHw/bO3KbOPaQ1nzkyj/sSbc8vWzobPNNHDy7dCGeilH+0JkUYGA8f
 qZ4P9yfBMpA0x4dM4bgiViwovaN7ZSq7S+pRwiUriz0yX1n5BiyZCEaG7x9lgRK29MR6qfL3eu12SN
 uubzT/8Iwm9VPgOU3e8cHZ0NMiqUMzxhDkutmPdiAuRi2ztyq1aC2Mfv+DOZEDaNh6LXaLUHrudCo4
 tIey1HjUJ2ZHTY2/cSnJsqfsKwlhqM7DfPoUchsCdLMmVIEo4DGRzwmYZi8Q==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Use the proper node name for the sram, fixing:
sram@d9000000: 'ao-arc-sram@0' does not match any of the regexes: '^([a-z0-9]*-)?sram(-section)?@[a-f0-9]+$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/sram/sram.yaml#

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm/boot/dts/amlogic/meson8.dtsi  | 2 +-
 arch/arm/boot/dts/amlogic/meson8b.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/amlogic/meson8.dtsi b/arch/arm/boot/dts/amlogic/meson8.dtsi
index 06174d8df789..1023ff0a4f9f 100644
--- a/arch/arm/boot/dts/amlogic/meson8.dtsi
+++ b/arch/arm/boot/dts/amlogic/meson8.dtsi
@@ -589,7 +589,7 @@ mux {
 };
 
 &ahb_sram {
-	ao_arc_sram: ao-arc-sram@0 {
+	ao_arc_sram: aoarc-sram@0 {
 		compatible = "amlogic,meson8-ao-arc-sram";
 		reg = <0x0 0x8000>;
 		pool;
diff --git a/arch/arm/boot/dts/amlogic/meson8b.dtsi b/arch/arm/boot/dts/amlogic/meson8b.dtsi
index a3669025d8da..641cd60781a3 100644
--- a/arch/arm/boot/dts/amlogic/meson8b.dtsi
+++ b/arch/arm/boot/dts/amlogic/meson8b.dtsi
@@ -535,7 +535,7 @@ mux {
 };
 
 &ahb_sram {
-	ao_arc_sram: ao-arc-sram@0 {
+	ao_arc_sram: aoarc-sram@0 {
 		compatible = "amlogic,meson8b-ao-arc-sram";
 		reg = <0x0 0x8000>;
 		pool;

-- 
2.34.1


