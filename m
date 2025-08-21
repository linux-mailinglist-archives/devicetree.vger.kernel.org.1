Return-Path: <devicetree+bounces-207303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 584CCB2F157
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 10:23:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5234CA05A45
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:19:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 939411F4C8E;
	Thu, 21 Aug 2025 08:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TlaJWLiv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA956222564
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 08:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755764123; cv=none; b=n9Z+cv2vbLdcEP3sZ7rlN6Tmw7KIgsHRzu/ClazPN6UbufRcu7J09FiQFYLTwNqVQtjpIJGjzIsHXSd0D5XZZcHgOilFNBJzSgMysdJGIGIGCAgyvorMRE6NjMUEUkSjHyEH8dd+ETUsoljTFL59qPvdkv8peag3fSdnUleIxR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755764123; c=relaxed/simple;
	bh=vbt1tqWXbFfAK6B5ZYBim9Em4IvHCLkqexMFE5GgN+Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=R9F6zwiA61BxRbaPbToj42niP5L2Mku5hRTcIaNAFgClPkbXzKStfFaGqmTMK7t4qdQflD80WukJ6pVH+9gTTSkvpwjrYi3FHK4V64dijU8aycYdsC/46+H8z7Hmfl6NSCWC2QOgE5lPPFDXg5o7ONK1w4u3BPs6PIBIEi9bwvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TlaJWLiv; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3b9dc5c8ee7so646305f8f.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 01:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755764120; x=1756368920; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L8HSFHjzyPcrkbwgrBZxmVieuYCxR5QQsHAxl0KSDro=;
        b=TlaJWLivKT5rlAmabl3+tPeLlI2c+E0+q9BDTQaPDGJYjbzmpI5RXg4BgVjbPK2W81
         Ng6nnQfv3Aa4c3CDkwAB3x5CpJILY6fviKeby3ckPxRULlGivrbGv93COZwYrEDbgzQl
         GhoB+b0+MBrEAWR1N7Ett6LUJEfhD5XtdEEuFfRD+PUUpnXkqnPu1qremdtQyALdua1q
         9L6rZxw70jCHv9zAHIY8L2/UJo3RkD65rrTKtM/zn87A3n4KwF0sqYziOYBvTklOr0JG
         TAZA5Z0f3hb2AS/0HKRDN131okuCIEPW4muiXd5+q4Y6llPgX5oOH7t4kB9gPo/kC9wd
         mbag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755764120; x=1756368920;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L8HSFHjzyPcrkbwgrBZxmVieuYCxR5QQsHAxl0KSDro=;
        b=V6vQrCFE+b2RzSGis/VtQusYxi+2JzBHywXDTw6RpwfekyQIaHfNkFFTMx/7iUJsDb
         8YA8WMhbG9cA8BmxS0ZwDVsePSWj9hV7Nf3C3/uMXTs5c5NMOFyVxvKEo5EEcKCcm/2e
         xSTDYKPQ0oS98GAq4+6FZdR0OqMYWkLl6AcGQwDxvAfeDGcssZPkQrklV/xyE+hp524i
         x9AL32kmd6CKF3c3Whp2kzft7tMKEtp/oUTmzBAdxWy6MtkvEc8bcQSVu3WK1zIhrs1L
         Xk8MGJ0R0Ob/EuCMjtM6eNdBPQQ0OWm9B4rH4VeRRb4ofEZmEDfEB0U4s89CHGqKJUIf
         xd9A==
X-Forwarded-Encrypted: i=1; AJvYcCV7zlA+Wo9F+GDIIeH9GmjieDCsQBANs+hj1J651pdaU4zCGRpo97YUngJ4PL4t0XFfpy2F/TL5wwph@vger.kernel.org
X-Gm-Message-State: AOJu0YyNlTyIuuu3dCie39143AqELed4mNAb1s9TZBexhruRKUam6nD8
	KQrwm9Uw377Sklg0iddoKfLJOwGTq+VeIMVQh5PG26WJGiolMBSbJ+vewnZNkGT4yt311Lpk1yH
	C3kRn
X-Gm-Gg: ASbGncv+upLq0QJCczQGyN481uPzGscao3v/0ZIDph9P7sa9Pg3oddnqoY+cvUJawtG
	kBuzcNClCkU06HuAU+HJtfLb3uexdpV+1zSYOxCUmGeZDRFZ4wVPOG6zNWGnreu7xtM1lsYceZz
	7udKLEob4hIwisXvlKALKK4Lj/0OFPH+FR9nnS0jQAhN1dPrODYui4E+NWZeoK9aMN4m/BCTOoZ
	V7YEKakkHRqq6eD5JepsyJ18GxcZpHD7WDII6fuxgFO49MN6N6DEZZk1ljTsvIjSmQb1K+OT1WZ
	MbZOFOU+H7Mh9Cdhr9uB+OtutPyA1TFPtR3T42dTMek9uJiMX5/+BveVEbiENRS1ybE1YZKzd3d
	vIwJp0Tw01bCSIsVFA9DRmbhJEx91GU9LIGPs
X-Google-Smtp-Source: AGHT+IEfsa76mxwpI1mrE8C+XPfI0wQymO/M6OmtRNn6x49Iow6tML+yuHZ/KY6s376hy9gytb5+9g==
X-Received: by 2002:a05:6000:230b:b0:3b8:d14b:8f86 with SMTP id ffacd0b85a97d-3c49622263dmr1061603f8f.45.1755764119857;
        Thu, 21 Aug 2025 01:15:19 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:a59f:f2cf:3ca3:965])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c074e38d7dsm10536232f8f.26.2025.08.21.01.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 01:15:19 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Thu, 21 Aug 2025 10:15:09 +0200
Subject: [PATCH] arm64: dts: qcom: sdm845: Fix slimbam num-channels/ees
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-sdm845-slimbam-channels-v1-1-498f7d46b9ee@linaro.org>
X-B4-Tracking: v=1; b=H4sIAIzVpmgC/x2MQQqAIBAAvxJ7bkEtSfpKdLDaaiEtXIgg+nvWc
 WBmbhBKTAJtcUOik4X3mEGXBYyrjwshT5nBKGOVMxplCq62KBuHwQf8pEibYDNUqnZWN4YIcn0
 kmvn6z13/PC+fFg9eaQAAAA==
X-Change-ID: 20250821-sdm845-slimbam-channels-7b30485172ee
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Srinivas Kandagatla <srini@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2

Reading the hardware registers of the &slimbam on RB3 reveals that the BAM
supports only 23 pipes (channels) and supports 4 EEs instead of 2. This
hasn't caused problems so far since nothing is using the extra channels,
but attempting to use them would lead to crashes.

The bam_dma driver might warn in the future if the num-channels in the DT
are wrong, so correct the properties in the DT to avoid future regressions.

Cc: stable@vger.kernel.org
Fixes: 27ca1de07dc3 ("arm64: dts: qcom: sdm845: add slimbus nodes")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 828b55cb6baf10458feae8f53c04663ef958601e..02536114edb88b86fedcc9be50c2205d2018e975 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -5396,11 +5396,11 @@ slimbam: dma-controller@17184000 {
 			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
 			qcom,controlled-remotely;
 			reg = <0 0x17184000 0 0x2a000>;
-			num-channels = <31>;
+			num-channels = <23>;
 			interrupts = <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>;
 			#dma-cells = <1>;
 			qcom,ee = <1>;
-			qcom,num-ees = <2>;
+			qcom,num-ees = <4>;
 			iommus = <&apps_smmu 0x1806 0x0>;
 		};
 

---
base-commit: 1aa50d938e88fcad1312467bd09be4037bfe68ff
change-id: 20250821-sdm845-slimbam-channels-7b30485172ee

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


