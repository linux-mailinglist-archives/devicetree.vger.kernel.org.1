Return-Path: <devicetree+bounces-82077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F06591E5D7
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 18:52:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3365928425A
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 16:52:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B22016DEC2;
	Mon,  1 Jul 2024 16:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iRjSIdnk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F3C16DC28
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 16:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719852738; cv=none; b=bwTzApa2d4jA7e1r/1xMumrAS6+cp1RtJUnuS4V66sFVlm7IcGxknMSgqM/q1GME6xFuaoFyEf5st4ktVwSTpBfLIEGbJwWbkOTCVaLKVTdYo96De1pufRqTVWOih+pJ7qhx/GR+CuRIv+KgBtQE0mt8oRXkCV9ERRWaf9GbWpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719852738; c=relaxed/simple;
	bh=LfhPYXx1136aGoc3fyTTDv+kWzJyktzhCtel+WRHcBY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hACWxNssk8eyebGpiNfI7ltiP9aZI7YymO3sILgLnDAhGgSo+qNwSH4g3McQzaUYiHoXD0/mWgMmw0aumJQd+HZ5uDRI5/B+ECFTgVp+Itk6mAG3tisKA/vMzGz/CTBYZiEF9Q2mj+q63vbEITAnNqcXqWZ8V/6a1A8ahjH2cVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iRjSIdnk; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52ccc40e72eso2435398e87.3
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 09:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719852733; x=1720457533; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7DLhKao11vlhFu7Ijyxr0/p1XMO5cSa7m3wOhNIHXok=;
        b=iRjSIdnks2VymrqaE0O3OtzxoN+ky5H5HkljiWW5sBhrdNf90bNj7xbWOfpBPnk5bS
         4w1ci/rYEzg7DV0c7ie/q0UlWFXOn+nbeANVQzVTb3HaxnTn8wUDMzXqpKA7UvJOQuzo
         gar2mZLCFHfPcWuDhCkS73ZT8bxwU+iBph4vqDLmCDoZOfeb+xachXP0qi0WgmhLP0sl
         q5mhZiAysLZa0zjqLHRgXZmMFOgNinU2HJoK778qof+iIcFo4T9xTbr7dA8TQjoUs9TO
         lTDc91kaaJ/MTCDR2s0L8ih5WzIX4KQScgo65r479e/oO9ndPHUzzqEf9CtVPjGTsEZ6
         MqAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719852733; x=1720457533;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7DLhKao11vlhFu7Ijyxr0/p1XMO5cSa7m3wOhNIHXok=;
        b=k/xgS5YdyVhZpNQ96kNOA8YrPDvvINC8FP2noUNjSkGOnByYO9ZlDr7UvZlb57fnyj
         6LxPSYZSMo1oKBcyCu7YUf2Q3UAHCPQ9tUYcwWPqf6jT9v4szSwuX/voKS+IhrWvk8fu
         2uZWOtkGFyvDi2EPmfJhR1TZ/UmBnVUUGRiBJwLHw8eVgm5Eo3EwpGRsZQ5QtL8vqzGU
         a/r5rviXn9VmIC6fCXTIF0aIhaHOSQ4AwY0TVAH4fwmajssSTmQlRq5U5eG0gUKCpYPo
         OXCpMLtL+MMtW4plPU28YziGpH2k59yt/X7s1HJOGTalLAaw2TUXcs2ocMpWj/SVYslE
         Rtbw==
X-Forwarded-Encrypted: i=1; AJvYcCVDjuLlvLTPRKQLU4muUlFhSO1ryjpFFLDbWrD+0kKBFpFBJWBE8wDSb+7A2FMJ67rc8oUCoHxk7o+e7rIGyoZ5Gxx5hDdNNV2xpg==
X-Gm-Message-State: AOJu0Yzu5aNceThd+//THLJ5DTaCFE536XNyNbqZOGmOmhR5/ltLiXFc
	31abf+fePxacXT3rrQScUANwGsnG++vPf9heys1swdNameLjvNtyBr7U28kjSOI=
X-Google-Smtp-Source: AGHT+IGVBd6ahqPkvFTNsvNE96KHbGOgCNIg9WAbHWQs5hu1T95sXrHepxbEMFbdl7cMP3EZjHaqhg==
X-Received: by 2002:a05:6512:3409:b0:52c:dd8c:a481 with SMTP id 2adb3069b0e04-52e82747fe1mr5513062e87.59.1719852733550;
        Mon, 01 Jul 2024 09:52:13 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0e0b7csm10528456f8f.49.2024.07.01.09.52.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 09:52:13 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: amlogic: meson8b-ec100: align GPIO keys node name with bindings
Date: Mon,  1 Jul 2024 18:52:10 +0200
Message-ID: <20240701165210.578817-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect the GPIO keys node names to follow certain pattern, see
dtbs_check warnings:

  meson8b-ec100.dtb: gpio-keys: '#address-cells', '#size-cells' do not match any of the regexes: '^(button|event|key|switch|(button|event|key|switch)...

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/amlogic/meson8b-ec100.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/amlogic/meson8b-ec100.dts b/arch/arm/boot/dts/amlogic/meson8b-ec100.dts
index 3da47349eaaf..49890eb12781 100644
--- a/arch/arm/boot/dts/amlogic/meson8b-ec100.dts
+++ b/arch/arm/boot/dts/amlogic/meson8b-ec100.dts
@@ -34,8 +34,6 @@ emmc_pwrseq: emmc-pwrseq {
 
 	gpio-keys {
 		compatible = "gpio-keys-polled";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		poll-interval = <100>;
 
 		pal-switch {
-- 
2.43.0


