Return-Path: <devicetree+bounces-254867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D52DD1D607
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:09:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B8583093056
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:57:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D726237F8D7;
	Wed, 14 Jan 2026 08:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xc9eZZI2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9183803DB
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 08:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768381057; cv=none; b=kj9XAD4xVXPSrtwORSsjojryNX6aegnE+M/oP2GFHoCB+DvPm5Zd9EMximMPChzP3XtMen5iuzLRyXd+3GRnVAg+Rpk0xw1OGLlg/v3Ys0/Iqc47Z6FJ+AsxJQKkNc72yTuTegowXrQm1gnLZUfX/IAt12eqSngElJcHw6VzF9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768381057; c=relaxed/simple;
	bh=iD8WQNBzDHgOnkPSBABm76G4IHl7jfO/G08/hDGOQ48=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=A+91MJpSZ9FhBr2ZTAZwMeaaGzSGlgG9ah4djRz+DGELTE/VCJdV9bMruiIzXQUdZ6So+B1VoYs138D8f214P9pwuZMgTo4rb40uDundsgIKsJap5DM9942uGp6myMDQhl1GiLlK5DQg+jQw3n1M2kd2X+tiSPWRT55i0kjk6Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xc9eZZI2; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-47d1d8a49f5so53282635e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 00:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768381044; x=1768985844; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0XseDb8ZHPBjuoEWbJmFo7HtvNpWYI4+BmzsvRT84Bg=;
        b=xc9eZZI27pev52zqMGrvV/HGrt0l96ZhXFcIjBzzGR3Vj0Nzx/Oqf0tr2PRfpLMEvU
         4WiSa5E+E9CtHKQ92pwj5Da2WKQfdozECMpZ0c+ralJttskOqOi8qtYy9GScfieq2ubf
         yLkEmObFS9VgNyuzUYmqUSljKxmENHrpbIPY5RmUYBPG7LT88LxDYKDQXrfepU6JwRL/
         8U+bQchimwEFmZgNoMAFPHN89uNX778JFa/6Zisey/LMTJdVLKWo555+LRJ5u144cexj
         +Y0RiSHuXFmCE5tZ83x29+1DVI3u7vXRBZyRxYo2g25UJYSSIZfplNc6rG/Dj+rCmHXu
         6W3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768381044; x=1768985844;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0XseDb8ZHPBjuoEWbJmFo7HtvNpWYI4+BmzsvRT84Bg=;
        b=pkY79aXWCBuZ0cj10It2OVN4k72Jgw9Mv8z1cNCcFAG3SfXPrAhuur/RqFT4cVRwC9
         mdlPlrQ/yN9wCn+wC02RKTiiM868CQ91J7sTvixbC5X9hayu7RdtpQl/tSfMJcRcrdAO
         0kR3A/lW1KZlYkKGMOVbgfnQ7sRyHcQpKjDcop/s+RjcH64qlZG391a2XtbyEoTgAodn
         HuTUngrw9mRPULMe+kSo7i0l1EBNdxpA93rjU9TStfCbhW3cEWPA1OZ2jf+/q6YyzbXq
         VjOjbfPDHWo9zpqjaeZtz1QvYPJ26lxJsFHnYYoc5AzDH8HiKh+MhiGw6V1sMNZ7Wy1G
         2Qvg==
X-Gm-Message-State: AOJu0YwTl95MnAcqPwMWOF8mLVEV2TqXjWhix3OXtBfhVsUC/7HqbtgO
	xsaEvh2uzJ0d6UCGOi2cuQQ85V2Bz4kyEfUDE7ErvzepvXVPtwogHqICfpHQzSAw+Yc=
X-Gm-Gg: AY/fxX5YfCBtx5ycDBP7d3dqfFYKZmuK2AUc0eVlh6jUsFdPVB53Y0o5nsHR/Fi+VEX
	ojCbUei2ocP3yoFgIMxso80FHgRBJrmOIBl7P0h6X8nxeoUpXjorZ6KprsYdO71C50SiiTgfHj0
	aaMb2NpEfS2/3c7QQyAfKHeav6HlNO5SJHdbI2hxpIU7QIXE4ipwPFJiVgyzSR5Y0zbKftVbq+z
	VMkG9tPxfAa9VZOIjiJVsijrt66B6tOvBAd2IPbciDIZYUhE/jA+NLFNbvoLkXb74zWQ91nUoX5
	jMyN7o4KLXeaTEkywJ5ensx4786pvT0XIm+we8wvo/+e0+VPIuqDNJvaxWbxn1BC5EdzMxC7mlL
	qAPq8urtpvx0R3KjfgqAwpWBuFKgxd9ZvZxC6Qy9ne4jnTFee4lIt9HR9bom5R4Uq7F4McOaGCz
	1tcPWQAYdkPAgJSRuLMLXY
X-Received: by 2002:a05:600c:8b52:b0:47e:e20e:bbbf with SMTP id 5b1f17b1804b1-47ee335646fmr21311365e9.24.1768381043978;
        Wed, 14 Jan 2026 00:57:23 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:db84:c9f1:21bc:dca1])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-47ee563c8bbsm16828795e9.12.2026.01.14.00.57.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 00:57:23 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Wed, 14 Jan 2026 09:56:53 +0100
Subject: [PATCH v2 1/2] arm64: dts: amlogic: s4: assign mmc b clock to
 24MHz
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-amlogic-s4-mmc-fixup-v2-1-7e9ab5f12286@baylibre.com>
References: <20260114-amlogic-s4-mmc-fixup-v2-0-7e9ab5f12286@baylibre.com>
In-Reply-To: <20260114-amlogic-s4-mmc-fixup-v2-0-7e9ab5f12286@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, Nick Xie <nick@khadas.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1493; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=iD8WQNBzDHgOnkPSBABm76G4IHl7jfO/G08/hDGOQ48=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZ1pqfpx3+J/u6VAXTqIHhXnYBGILsIGj6hHZ2
 GgF6YplWniJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWdaagAKCRDm/A8cN/La
 hW0+EACTZGM3OUj+3pT7mr8XHNiVzYYixPyBVwfOOjbaWxQEZ4ifZZe07/d2KGb4RAmGIJS5Hkg
 x0uDV4cHVpSrbCIYmzdwFYljZvuJ8wCjmn69opZO+/q71bmw6KwJkjvIXqnS5LyR7tz8AT/Kve6
 NdGRve3pqgPUeYq/g05Y2CqZuFvYILYn4oRrTVsA+B3WgrMzPZqPNvGDHOOigqxNzOP7lbQlDrf
 nfxIyNLGnyzAGo+D9N5FFJgK+x88bYvGQfpWyb4ZG6H1ROhXSRkiZp1Zhm1kYBCBzrPcyEKcvW2
 pceBzORj5S2db4ELPgC8AVtoDN3TmmFeTtrgdqHiSG/Wx2AJZJVxhZ7+qj41lF/+MEyBSpP7R2c
 I6DGZbxyln58Z9RS9Iuj5X+E6Tp3nAmqmHE8vP3ePvmmy9+sleiJR1LmbSuDreA96uKR5iHpWc8
 xHrmDNCfyw8XQZe3yCDlzi5AHHrYr/mJGzkD1fcwLJxLCv1dm4bLNyu5xcTzVn0W3ZvuOkVr9LY
 FzMc3JfgM20WQcAIMzRz6vBRBdiOl+cbPK4i0hWonzhQ4//Kc6Ilzg1giecRFx8ZHWzmdpDnwgK
 NrlGydXIK/e8GG47fl3OAUlApjMIBejXDm3npc5P9K3MQeergyqqGiwygfJTflppJ87jOQRs4TS
 +XgthRsHN1vVSgw==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

The amlogic MMC driver operate with the assumption that MMC clock
is configured to provide 24MHz. It uses this path for low
rates such as 400kHz.

This assumption did hold true until but it now, but it is apparently
not the case with s4. The clock has been reported to provide 1GHz
instead. This is most likely due to how the bootloader is using the MMC
clock on this platform.

Regardless of why the MMC clock rate is 1GHz, if the MMC driver expects
24MHz, the clock should be properly assigned, so assign it.

Reported-by: Nick Xie <nick@khadas.com>
Closes: https://lore.kernel.org/linux-amlogic/20260113011931.40424-1-nick@khadas.com/
Fixes: 3ab9d54b5d84 ("arm64: dts: amlogic: enable some device nodes for S4")
Tested-by: Nick Xie <nick@khadas.com>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
index 9d99ed2994df..62538fd9db6b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
@@ -838,6 +838,10 @@ sd: mmc@fe08a000 {
 			clock-names = "core", "clkin0", "clkin1";
 			resets = <&reset RESET_SD_EMMC_B>;
 			status = "disabled";
+
+			assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_B>;
+			assigned-clock-parents = <0>;
+			assigned-clock-rates = <24000000>;
 		};
 
 		emmc: mmc@fe08c000 {

-- 
2.47.3


