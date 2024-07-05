Return-Path: <devicetree+bounces-83482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC1C9288D4
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 14:40:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D79F2281C16
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 12:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24E6414B96B;
	Fri,  5 Jul 2024 12:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="5OHvvjoQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3547614A4F9
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 12:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720183218; cv=none; b=XvNUb3+EzaFBNLjo2HvyOp6tbfI8kjPl8wjSVBOz+HJGMXbyr8p6N/EbgD7tsb3lMV6QD1RExjKnnvkJpPkr9lo+sqCsUvwDDgTEXc3rH9RV1xF956ISNS0zv2zhn6L0D2a5pvEWE/GRvs0ncYQSFqj5o7kCa3XQQZ1LWzP12vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720183218; c=relaxed/simple;
	bh=Bx/r7C98r8y+Q01nth1t1QOQY/SzRCdAabao15b9jqQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GEb2/UyWDdf9X1XXAuLbByp57GOOvvdi4zzrToK0UrDEGqiXWKJ/WIyBNR9SHCDBj8FNFLnl8jAS9hM1iHhTtA3gXREZcUNzHw4j5abK24va1TJLUAhYzvZX+53pEKqkUYsRvJZkN5Ug2M3x0QYnCuS5nx8WXV67V3wB9s5ApnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=5OHvvjoQ; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a77cc73d35fso99927466b.0
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2024 05:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1720183214; x=1720788014; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7B3X1HRJq5YzkKC2Hubg20so80avGRngimSnJNAkkXU=;
        b=5OHvvjoQdFgQlXx3FxCIW76glNs9Li9alEOxj0Ll+beW4BJQy5HxQk+6Y7SAolzAF3
         HdRXTO01BvXL58iVmDU4AnL4j+q4BF4qzMZWvzc0A2YZ0XszC5tk/8leYhpxnromS6dq
         M+TuzsJQE0KlW+kUwPxGb9Ip+pPWAnCdNvom0YOcrFIGFavWDvX5cLQ7xVCh1jRz1f3B
         PNov9zWeKT51i8HgPqzM7WSnVbAE68LlhiO1K2UI9Ahh27XNV+zWDf/y2bNZGz8dxfdV
         uWoiaVwZPPhpSPxM+rfx3Z/4rrGyjgg1cIfSSea1QUgmQg1Az6iLvdHdnKSQJCBEqbRz
         0Nvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720183214; x=1720788014;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7B3X1HRJq5YzkKC2Hubg20so80avGRngimSnJNAkkXU=;
        b=L/cLImBkzkQgNONQNwpp7VvL4XMmYhXaHMozbiuPJ3LTwHfWK/4LaV86g7ig67j4CF
         aLYpRvd/H3I8rF5C7pP3AOCUjH0vmIPr8IlGwkztphTRdc/Qnas07R9vLk/HUXM6whVo
         7I8a9gnFqBXSZLFhWgNnF0Q93jRM9gqtW9/B1oQmC+JR24TLAjxSXitH9fpuB0Hxemu2
         iLFuz1jocA9+2s8xgp4iReEgCDi120L9vM4BRtxrETtPLQv6rKG2Yf9kuPpRujzDW1eQ
         Fljo2HwOaatYGwGgEHky9CRjZkgXwAJkBbjS56/C7N3ERM9WWFn0tvy/8NY2fluHRxX/
         9bGQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3xpoNyDoMAQwqMiiwtMJ6sIP6LDTAR+mAzrRjpVh0PUQWxPJxWMDLS2R0xtrJQYBNuDWvHQsgoZl9PCouY6Ox90eKwf3lj+xQMQ==
X-Gm-Message-State: AOJu0YyPWorzwAZguwxeli1LefJjVVQ5DCdC3G8xD3Qijwq8v2MIfP+G
	V06dN8bGfPVWX6sMZSEXGsfmXBgxJKqQWhuCNftq7lm+fZNpqkcwKwqUilYrURA=
X-Google-Smtp-Source: AGHT+IFCemR+7bPg60avplVhzqJqo0NQegzU1N1nBVsF47D67mlHLzCuqqmaa0eis18ZgO2OLiFzBw==
X-Received: by 2002:a17:906:f8d4:b0:a77:ba4d:a4ea with SMTP id a640c23a62f3a-a77bda09b81mr331173266b.23.1720183213560;
        Fri, 05 Jul 2024 05:40:13 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a77d0908f51sm40930666b.125.2024.07.05.05.40.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 05:40:13 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 05 Jul 2024 14:40:09 +0200
Subject: [PATCH v2 1/2] arm64: dts: qcom: sm7225-fairphone-fp4: Add PMK8003
 thermals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240705-fp4-thermals-v2-1-a4870a8d084f@fairphone.com>
References: <20240705-fp4-thermals-v2-0-a4870a8d084f@fairphone.com>
In-Reply-To: <20240705-fp4-thermals-v2-0-a4870a8d084f@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.0

Configure the thermals for the XO_THERM thermistor connected to the
PMK8003 (which is called PMK8350 in software).

The ADC configuration for PMK8350_ADC7_AMUX_THM1_100K_PU has already
been added in the past.

The trip points can really only be considered as placeholders, more
configuration with cooling etc. can be added later.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index 4e67bb80a026..e263010c348c 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -136,6 +136,18 @@ trip1 {
 				};
 			};
 		};
+
+		xo-thermal {
+			thermal-sensors = <&pmk8350_adc_tm 0>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
 	};
 };
 
@@ -712,6 +724,17 @@ &pm7250b_vbus {
 	status = "okay";
 };
 
+&pmk8350_adc_tm {
+	status = "okay";
+
+	xo-therm@0 {
+		reg = <0>;
+		io-channels = <&pmk8350_vadc PMK8350_ADC7_AMUX_THM1_100K_PU>;
+		qcom,hw-settle-time-us = <200>;
+		qcom,ratiometric;
+	};
+};
+
 &pmk8350_rtc {
 	status = "okay";
 };

-- 
2.45.2


