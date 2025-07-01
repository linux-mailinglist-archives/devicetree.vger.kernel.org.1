Return-Path: <devicetree+bounces-191400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 491DDAEF256
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 11:04:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B26504A2DF7
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 09:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C83FC2701C3;
	Tue,  1 Jul 2025 09:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Oy6+DLm8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73BD26D4E9
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 09:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751360503; cv=none; b=GTnQ1wAUe7cPeGkgyb5QKv21IF3ryDXDbpYjNonIml+Ej1QoCleQzoJS6qgt3dyVtG2YTVSIUvwW+EueEsA5alfyvNcLns3LYoIiUmBUhvWKjYnjHiKFXF1TWXKxBFh5m+CaYIoHBiJjoXNcdEGdBcxTBB7nmLmUzKJt/CpwX5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751360503; c=relaxed/simple;
	bh=8I/seT/85wMKp9dokfTmL7c3/ay9b1ucl1JER21Z39Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YDt5ga3IGMDnVgHl+EJeAzgnQJuF3XfirkmEFi5e+VCfgDZWXT+1d8TitoriJIvl0zJyvp7ZcKEH5qf0SgVzq0CaDVDYC8T+U/OaaUBE8+wxyJ7/y6ItjzvXwOf1yRMLNEp61a/3gF2+9aw1Tihya/3bYpxl9ljEDFqGBlXUY3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Oy6+DLm8; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-450cb2ddd46so30719855e9.2
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 02:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1751360499; x=1751965299; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TEZfpgVz92TePkzW+W3EnTL8/wojxpCAVdg7T0jc8Jg=;
        b=Oy6+DLm8t0eQQ9gOEUWDnWxJqxWQKNWWlxNnsujEpUJkvUoXt2e7VCaAwhxT3vKJeQ
         fxwchfsmfLeJouV28vg9LTDDiqIJF0+sf4nV+FrR9MgKJ3LqCmonlzBb8PNi4ArTiZIM
         iXtJASjr3dy+Aa/setNrjNeY/zZ1HvbDHpOHzkL3A1V7UUgU+3g71FvwhL1s1kbhBez/
         LY++CAK43/l0KfQd8byyz28dpVwrM/zozvmPG7+8i2pqPKKzDCHZ+3PmmhVXM1i+f4CE
         q5ECSOcbpxrdQQ/8XmL7RSMPZJJzU39v+U77qel/2bUKT4Lzx/17MfYFd/S4W52HiP5z
         Y+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751360499; x=1751965299;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TEZfpgVz92TePkzW+W3EnTL8/wojxpCAVdg7T0jc8Jg=;
        b=X4hHv5YQHPLdFB7AZ1EBgsl2k107V75kCK8PwvVIiTUu+gbZMzfpJffSiTvuaA+q8G
         PlRmh1M8iIA1YTAMoWF7c5GvDyAdJ1MGW03rG99U26QQTLkjyeSm+FFqW+cT/fLtoUfg
         eny1JogUMbUKfbAvA5YynS5Pj3k8j4VlUpM12KQb9xqiawH3XeucMT7EhUtKADocPqVt
         P7RWxIPDimJ/HHtKFlOoXv5vDaMLHuzKH7kR1/5nWEilkRr/qc8aSOtBIB5feROvVome
         oEAEatrjYk/DYbKsdJ9Fc+YZsg0QFVQZt4o1+VNHY/futVKmS7jG4g18KZxjeVPtQnv2
         GMTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVD6mTeYXXzaUV4Xv/Df+lH3VvNotOCKbiY2hi8ai2HNAJL+30/LFWp4kxlW4tszouR8JIIxNLtTIhZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1EdporXNMobnXX0rZnYhI3LhLJyDZ2CorWgUAnOvtwFhtOFnF
	8rtzU1/GYeWKQ2vhSUFbnw6V+OmOa/aMrowd49O0cwtuI53SRCRy3qLZ5m60bd9DeTI=
X-Gm-Gg: ASbGncsRrt0XlPCKYSH2rBCz5gSylyglFh48do0mVf8gNembTQKh9hMgnfD2Ni/iwht
	2255G2g+jByTJ+eymmtKEbRRfgZKPZ/d+D1+U7YZo/p8nMDHMktNqQPCPfhj1BsCHzjyP5MODN4
	U+Wd3InA9e4Sc0aMGWCGphjVpg6ki2QDqbKzhi3zVAuWNm3nXVAdsxsQiogpRj2Q6dGK9ONTrA7
	PwSfjTBcNQ08Ff2Odmwv/TFy38pFBkHQitXz2ACZj1uD3IMIxPnc8PMel03eDXnrHacJfWABVbJ
	R1HbvtctRDzBjKc3NBvLrYy3WnoXepQVGqTNvqvXRNXDfSBPpVIjXgh798xL5enyQw==
X-Google-Smtp-Source: AGHT+IH28bGKzShEfA+MLMc8AaPF4kIpkFpzgw9PDmFhy87DLkzQ3JI6j/S8k6ijdDPU+aLJnH1wJg==
X-Received: by 2002:a05:600c:4f95:b0:453:23fe:ca86 with SMTP id 5b1f17b1804b1-4538ee50438mr173879135e9.4.1751360498784;
        Tue, 01 Jul 2025 02:01:38 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:a387:7a32:8457:f9b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ac6ee0d0b9sm6949707f8f.18.2025.07.01.02.01.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 02:01:37 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 01 Jul 2025 11:01:31 +0200
Subject: [PATCH 3/3] arm64: dts: qcom: sdm845-samsung-starqltechn: fix GPIO
 lookup flags for i2c SDA and SCL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250701-qcom-gpio-lookup-open-drain-v1-3-9678c4352f11@linaro.org>
References: <20250701-qcom-gpio-lookup-open-drain-v1-0-9678c4352f11@linaro.org>
In-Reply-To: <20250701-qcom-gpio-lookup-open-drain-v1-0-9678c4352f11@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1187;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=+DBS7NAhgqWQc/bDKA/6Q/4j1r/Tyn90fNvYlC5yibM=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoY6PuTj2gRg7KtMHO6CQKF7GnTfwgNTxTdk9bb
 Uw/5jywPfOJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaGOj7gAKCRARpy6gFHHX
 cofYEADDt1fgSSrEpySCEs2NfUvmIo4A0wv6ZSlcFxUd34Nd0lQcNH1sqmMsMLCPQrp0TzVQwsz
 q/MYhdDEUnev8ynkrzUtwRPzo+laXWyXrVysav4zrV72aAnjlaXxcYh/f0bjMkOZo/4HSsHgG7B
 wPdwhcF1IYTilQHaKIEgf73qlR2MKU879o6KHR3KCJzOG1IsTX9Ehz2HduFyM/OTj8HtTlahHCP
 zUAoiWRxxa/7uQVvZiYIdkKQKB8QRFWhGvEXHagWS1JAtYe5A8voay84o1jrWHyaYifC+HBU870
 63Ama2CfZKyUO5OOMqhIeGzNU+NJa27w/IPUtQgVhcgb7WJMBly2IYSFWCtAQ4JOC4id/Zm3pbG
 KileB3YZB8rHV2+LcvwcwHq2sWaHherNsxy+mKw9Ms6vMjvOp2P3c2MS0ujUBfO5oZYJveDuCVO
 UGaxuhKrII/t9LxkmJJZrnxuip99hLPC1gC/GRsqr7WjzY1n1ZaNYbHQ1Q+NJfJw2ZC1FohJesU
 kuAGvmlrZbOY/9Ouy558wqPeoWjwTqKE911Sq4BX4cNd9/Feo/JamkAuwJ6ERfRJ2uFHYqZBEVu
 sPe1RaGWbFIGcf6o9smX0JxdP0MFwDFbx3tucFVPykY1rs3Obux6SawdrgrlVNR2yngjJcVejDh
 aduQHULhaJRxUtg==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

The I2C GPIO bus driver enforces the SDA and SCL pins as open-drain
outputs but the lookup flags in the DTS don't reflect that triggering
warnings from GPIO core. Add the appropriate flags.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
index d686531bf4eacae2105bbed3a9d5478b45a4b2a3..9076d8eb4d50af736d5c4de7158fbf32231f6629 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
@@ -145,8 +145,8 @@ rmtfs_mem: rmtfs-mem@fde00000 {
 
 	i2c21 {
 		compatible = "i2c-gpio";
-		sda-gpios = <&tlmm 127 GPIO_ACTIVE_HIGH>;
-		scl-gpios = <&tlmm 128 GPIO_ACTIVE_HIGH>;
+		sda-gpios = <&tlmm 127 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&tlmm 128 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		i2c-gpio,delay-us = <2>;
 		pinctrl-0 = <&i2c21_sda_state &i2c21_scl_state>;
 		pinctrl-names = "default";

-- 
2.48.1


