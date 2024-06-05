Return-Path: <devicetree+bounces-72837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 022AC8FD23F
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 18:00:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDB291C23829
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 16:00:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D659A2A1DF;
	Wed,  5 Jun 2024 16:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Re92zsZA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD04839FC5
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 16:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717603238; cv=none; b=E5HtxaxDzkOEJHgCY0V0ykD1IhAYKSXfx0ibZncIt4PAxNw/eMCRIZnOWQ5W/qJtioHdJAc8bhh4IgpHo+nrCRmWQYro4schF3ZXzY/PVhVpNLcUSYd2HznzgeosDGpo6IUdJ2GISse2UzTPmBKFvZI+hnFIG1XKYQHZ73PTiC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717603238; c=relaxed/simple;
	bh=OkPU434HzNDB9Zy2Ni7fqW6kRWxa+k2mi0HjkFDCNDE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cLiE7w24YtKbo6UXGWTev5TxUWShmqvwS8VVWPKQt2G1/Ytktd0uhSZZkqPhtHc4EVi5giYswFSno8H8EMKzBmB78xc4ozzBLQe3drGC+KN5/p6XD/FCx2ahmTkOB1orJ3kKSE0A6EwiJ7YKlgOe7zhXgMGnC6WsbMHKkmcd7T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Re92zsZA; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42155143bb6so131165e9.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 09:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717603235; x=1718208035; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=50R7nvxQHynUojAseHkwFUtQ6Y11lIc3pU4/cZlSRlU=;
        b=Re92zsZA+ZacZRkqP48MLQUV4m/+BluWE9wvQCU9ReVP6FdqVgKyF6bs5TEoHt2rLO
         WxbgSXHI7UrviGdn5dtN186hAgI42ZlX2EVr9CQOr2O/kuHyfvR0YmBthRBfD2qynbZ2
         TadQDmwQY/XUCwX7fNtodIWh+tChcEB4hkyYGE7WJScDYKyLxdYHwtAjlFDjA5KbU1jE
         ctHfGxj6hvjUdwRqCJKzDtgvT1opouu1PDm1mQDNNNcYbcei7RduU59/rfWs77h0J0Bk
         F2f2TwedxYxL40qmT8Iw5ZsI0sBYjAkZFlVilYeGcQ3+vAylWcj5vx7ThgtIK07YC8Eq
         zIjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717603235; x=1718208035;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=50R7nvxQHynUojAseHkwFUtQ6Y11lIc3pU4/cZlSRlU=;
        b=e1FaHSh88w0BI2fazu+nE65sXR1VMF3obKCu//+i2ixeb/UTAYRX0ITiTk+RttsdCA
         Mg9M2+q4xzZAzW8HySF6wu8aKJGmLGiSuZ50ZDr2KRHPSr5dSd7CXcwBiXmcsm7dmwRT
         LXdygdHXdDncSUUaRE5yVMG0OXOASnzTFJypGa6seefjlC0FpuBEUoa7jGwyUO66e5Dd
         45M9mkiFts3y3sDCAlGIs6UIon8KxhP6ohTU5yRCNRlmMdEB/BrYe07F4h56neKOuoVC
         7Zf7rby+0q9fLc5X66oia6fMaFtb+v/kQRJom7NvCUZCJXVwMsZ7b1duBcARHEeQnQaV
         MQXg==
X-Forwarded-Encrypted: i=1; AJvYcCUpzruFzYkogcmgXBYcadbc77gRdDVafW2xwZWGyWWICIAX3D1e7uVBIMJwf2I6FcgiZujz07nqGBgkXx4IEnEvUpX5mVbDqbafBQ==
X-Gm-Message-State: AOJu0YymMUKez32uNOqPeTh2goTG0uVuLjRRH4ZMbMaWDWaSaPU5gnKT
	fa1b95uTDyNy5IfSNhrH4shUhVdh9ui/JDjBmOgAGzLXCa5wfBEzG7twp6ZIAyI=
X-Google-Smtp-Source: AGHT+IHRPeQqL0o1tDhRPns//LIK3Qj9qE56wtDCYLQoQAn7bt3M2TI9iVXx5am/KB0iHE9ARvPEdg==
X-Received: by 2002:adf:e9ce:0:b0:35d:cf2b:9106 with SMTP id ffacd0b85a97d-35e84070ea5mr2075681f8f.26.1717603234938;
        Wed, 05 Jun 2024 09:00:34 -0700 (PDT)
Received: from krzk-bin.. ([110.93.11.116])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42158149008sm26288975e9.29.2024.06.05.09.00.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 09:00:34 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RFT 1/4] arm64: dts: qcom: sm6350-pdx213: correct touchscreen interrupt flags
Date: Wed,  5 Jun 2024 18:00:29 +0200
Message-ID: <20240605160032.150587-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Interrupt flags 0x2008 looks like some downstream copy-paste, because
generic GPIOLIB code, used by Qualcomm pin controller drivers, ignores
flags outside of IRQ_TYPE_SENSE_MASK.  Probably the intention was to
pass just 0x8, so IRQ_TYPE_LEVEL_LOW.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6350-sony-xperia-lena-pdx213.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350-sony-xperia-lena-pdx213.dts b/arch/arm64/boot/dts/qcom/sm6350-sony-xperia-lena-pdx213.dts
index 88ee04973a2f..bf23033a294e 100644
--- a/arch/arm64/boot/dts/qcom/sm6350-sony-xperia-lena-pdx213.dts
+++ b/arch/arm64/boot/dts/qcom/sm6350-sony-xperia-lena-pdx213.dts
@@ -293,7 +293,7 @@ touchscreen@48 {
 		compatible = "samsung,s6sy761";
 		reg = <0x48>;
 		interrupt-parent = <&tlmm>;
-		interrupts = <22 0x2008>;
+		interrupts = <22 IRQ_TYPE_LEVEL_LOW>;
 		vdd-supply = <&pm6350_l11>;
 		avdd-supply = <&touch_en_vreg>;
 
-- 
2.43.0


