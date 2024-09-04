Return-Path: <devicetree+bounces-99782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B7396B311
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 09:41:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B8991F21081
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 07:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2108E146A7B;
	Wed,  4 Sep 2024 07:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vqFFYwJJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561AF4AEF5
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 07:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725435697; cv=none; b=Sfz7+8hGtLxmFtBdvdjhsDFguTpG0cs0K4ilB0G1/pQEMlAyNjVZfu3Y9zITrKxednbVl2EGUXMeN8KIGdTD8nnCa4TikOn08mz0MWiK9ItuOR0QlTpU5DBpidzy0vyxludTcd/saStNgvcpmrCvUMZ7lUdk/SCP0axmTmbvKAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725435697; c=relaxed/simple;
	bh=Qid8qxN4GgXSoeK9U8lFaZNfbor92P0uuXWDtdswoBI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=iyqSByqEg5kh0ZS2XKgUCM16buiDGHmihRuulqghc2Lg4sNEv16/01IDUGIX2OraPq7+K6GMYRWyFaYKthrZMcYFWOmkyCnPU3rAQbhoAzzx0/lPx2Nrch506SUrR0Ns7X155gaDo80yx1LFqScSoOEVK9vzWA6OIoC4GlW+Fkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vqFFYwJJ; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42c7a49152aso43505515e9.2
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 00:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725435694; x=1726040494; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5ktJv7V7BsrY6lxWQLsF6JOBPSNpEG+StF/aANqrJ2c=;
        b=vqFFYwJJ1upLyQlXFk+WQlTLlWh5AoCHh0uoT5b7nGIGkY945oOtGnqZ5SXKtW4zPd
         8azSniXLWffQNLlEH99cQrJEZZ0HMu3xf1kh7Wy8hmFcZot5yt2fb6uzBLQiMpkZOZWv
         DK3BSL4bq0AkFT1stZ0+Iumct6O48S7QYOLxAA+D001DZOZvP/OVEMtyrNy0536pIjUs
         7hUaPaLCrAZG2UJ30gAyDClU5xSwGc0CqlZGrGKH4esceVYTyB4ovsfn+M2dN/+d3vsl
         YX4XFq76muojZh38CSVNnj48XEhMJnR5uxj8ftICfGmuWzdveXELzgiPQlE+PAI5hkIu
         FrSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725435694; x=1726040494;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5ktJv7V7BsrY6lxWQLsF6JOBPSNpEG+StF/aANqrJ2c=;
        b=Xht06SiOAengI2asDGNOZ1XfYashk9JkkXKkBeIHf1yO+WOwK0IjZTEfM3mSFefpLU
         sA3MB8RSCm8nNFlHAPiXzwBxJZ4lMPIJAStlZzB/eq45Uk9NL1JUFuLHTJQHZPJFAGcX
         a8VIGJQ9BxdX/pm5XyiNrU1c+LbpTSAcvHJcOyoM6mREZVW/FSrCajEBV21uLUb3hcmW
         UAWfRa5gz0I36BbBWxdC1e1SXAeMoglgeBpVTxRJuL35au/FFqJuFnQtanry3SSoPnk1
         2FzEIeoJpLFN6lK/g8lPAt42Xl8zVyO9WaYsoTnGFcpBClm5wk3fvXhHwdWSNyvYSm0+
         Nvxw==
X-Gm-Message-State: AOJu0YzNqUdTrH7UwKMVVZpbErHONmGBmENQsDq8iXEupfil1/O+Tk2U
	NFpU+Bvdaju21poubw7OL4Q9tTEG/tZ7l4qpjC4vowsskR2shtPNIYkjr/ts4KI=
X-Google-Smtp-Source: AGHT+IEUGTueck2wFIO2xgQtM82YXoUnrNJGV14z+9hEAlfrmGF1YjQsrCNhTbaVg6SSg7pq7AvOuA==
X-Received: by 2002:a05:6000:d8e:b0:374:ca1d:85ad with SMTP id ffacd0b85a97d-374ca1d8830mr8037393f8f.56.1725435693139;
        Wed, 04 Sep 2024 00:41:33 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3749ef812cbsm16229212f8f.83.2024.09.04.00.41.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 00:41:32 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 04 Sep 2024 09:41:31 +0200
Subject: [PATCH] arm64: dts: amlogic: gxlx-s905l-p271: drop saradc gxlx
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240904-topic-amlogic-upstream-gxlx-drop-iio-compat-v1-1-89ad63aad915@linaro.org>
X-B4-Tracking: v=1; b=H4sIACoP2GYC/x2NQQrDIBAAvxL23AVjLLT9SulBzMYuxOyitgghf
 4/kNMxlZodCmanAa9gh058Ly9ZlvA0Qvn6LhDx3B2usM0/jsIpyQJ9WiZ0/LTWTTxjb2nDOosg
 sGCSpr2gf4W5GQ4ubJuhFzbRwu27vz3GcJfBl7H0AAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Christian Hewitt <christianshewitt@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1150;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Qid8qxN4GgXSoeK9U8lFaZNfbor92P0uuXWDtdswoBI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBm2A8rsr7kWhI533NglBEyxt/ZYZF5X3Z0vo5qlyQe
 z2dbrYiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZtgPKwAKCRB33NvayMhJ0QMKEA
 Cj01D+2OgeAg3xlMyNviRxY2UQbi/fm7Q+wEUMp3BO4NuW8b13oXsNDx1q+diX5VEtd7wfHu31zeW/
 BraOC+zjRejMBanfZFvqO2QIR8NRrFwoLAJMRN43ZyRNKwFN9kkP8t9opQpZ085sUJ0Yj5R12fus6R
 M6zEQwWBvIMAJueicPd41m1ts4QnuTXLawJI1RyhCsbV0crquH3g6ImRSOcxvqEXqg60hj9U1HnscI
 wP8ZlhrfkIPfXqaMykmo7MkbV/i/tQViBH6o12Y1kfIlaJFPjZaLkC6gSSUuORXqtg+naZXbcYd6Ii
 fedAibH1RAp0yzoWFGiNf8Xs5a9aYmBkhxj80xLF3xn+oztrSmRJVoOsFIGMr9MJA7XIkfsa/bTElq
 jl7YnG8vUJiZbPAtf6Y3IODLrE0qnPnv7pJ5aIZjhuIL5gGd0HfOg/mjpqj3fImNgfQqNLpmzOa7RT
 Va8Q/zv4CVKS88BUesKUYT3Dnm7bPuo0VVH7Q6WDUTb0wQ0Gu2c8ukS4OvSDpajKewU3OsXgMZlMKh
 MH7ZuPyYSXOHIE5Dj7kZ44xzcfsWvwhw3ZccSC63esxffBI+u0R+jl8OFaovE5IE+Bxofn8H5BnbIR
 8Kao5DjzHE/qZmOjkYScUKwDLLdCPvPcXBPjQisRVb+9QC2tFx3mdGT2xqYQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Drop the undocumented amlogic,meson-gxlx-saradc compatible, and fix the
following DTBs check:
/soc/bus@c1100000/adc@8680: failed to match any schema with compatible: ['amlogic,meson-gxlx-saradc', 'amlogic,meson-saradc']

Fixes: f6386b5afa81 ("arm64: dts: meson: add GXLX/S905L/p271 support")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-gxlx-s905l-p271.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxlx-s905l-p271.dts b/arch/arm64/boot/dts/amlogic/meson-gxlx-s905l-p271.dts
index 1221f4545130..8af50afea860 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxlx-s905l-p271.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxlx-s905l-p271.dts
@@ -39,7 +39,7 @@ mali: gpu@c0000 {
 };
 
 &saradc {
-	compatible = "amlogic,meson-gxlx-saradc", "amlogic,meson-saradc";
+	compatible = "amlogic,meson-saradc";
 };
 
 &usb {

---
base-commit: 6804f0edbe7747774e6ae60f20cec4ee3ad7c187
change-id: 20240904-topic-amlogic-upstream-gxlx-drop-iio-compat-28c5010ef433

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


