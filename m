Return-Path: <devicetree+bounces-29889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6015A825627
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 15:54:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 421791C20CF9
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 14:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C870D2E3F8;
	Fri,  5 Jan 2024 14:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="TQAZM/lL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E312E62C
	for <devicetree@vger.kernel.org>; Fri,  5 Jan 2024 14:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a2821884a09so134618866b.2
        for <devicetree@vger.kernel.org>; Fri, 05 Jan 2024 06:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1704466480; x=1705071280; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jvqHpSG2cKdnmJ9eXRXA0NxGczv5lsHJ2CQrOmhp7+4=;
        b=TQAZM/lL5eIxYThN3x0CoCFE4XF6qNwW0Q/68HhpoOc52k2zo3rtZFGB3vTs/o+QvS
         SqSNzPscDL21Qhf6o0ahbWuQBf35I/H14TmDb9Y3w6Q3KauuDAydhtHoinLFOwG0trH9
         TCqxW8jQB+UM600Yc0P2Vc3YJPfboL18suE915J/tip5H6DBR3xS36T6HVdaSUNdjptH
         takugx60vxz46lJILjrV3I93/GPjbXcDG8aZYFW7aK33Jc75q4DnDUJCvchfv0FVgIPF
         15IsQCbisTlZHUo6HPexoAcLIUKvEyy64+gAGcBSDfkzW9JavnTCO+0THgj7DIaMFWk/
         /w4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704466480; x=1705071280;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jvqHpSG2cKdnmJ9eXRXA0NxGczv5lsHJ2CQrOmhp7+4=;
        b=T9QJYtDp8sVa889Thli9dMdN+qhfUfgltB1ms7edZfoU4Lb7kM8cbgf9Yvj+Cjrz9E
         Uto1vFLdqwKxO2bNTtT6yaFWZmaoHhq2TNHP5hXLFwy2/Lys4OGVYz6pWmjS0nl47MJ8
         g0EnsfQClDwXr1VseJKzoq/ozt3zVvzAYEyyPfCyO7ABa0FODt5qil+3tgpxwkmvwy9J
         qnAGIx2W6os/bUQT4czPfYU2cFeGgEbfQU84BQkzKW6yWvwG5d15jFlMKzlCNkBAnotX
         W86Yj1XVpKBMOdcUt3ZvJPii8WzpsxuAmeBIWqEvmrBMr6fxJH3wUTQqmrPcJt0zpPR4
         kckA==
X-Gm-Message-State: AOJu0YxMvIt0h+OCkuoV4MY9bz6M+4Jv+FKJHvxjAeFpQ53NN0/7d52w
	dOo8qgRXxZu8gteD+XNquWbvOkZRa01K3w==
X-Google-Smtp-Source: AGHT+IH041yxCVJ0TTR5qGGoL88yZ4dSxuZjqIdFGUseiPOwfwTWfGvD6HHrkRkkcQWkCdH7O1VR5A==
X-Received: by 2002:a17:906:dfd0:b0:a29:3cad:1c5d with SMTP id jt16-20020a170906dfd000b00a293cad1c5dmr566975ejc.37.1704466480300;
        Fri, 05 Jan 2024 06:54:40 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a17-20020a1709065f9100b00a2471bb0d11sm963140eju.31.2024.01.05.06.54.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 06:54:40 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 05 Jan 2024 15:54:27 +0100
Subject: [PATCH 1/2] arm64: dts: qcom: sm7225-fairphone-fp4: Add PMK8003
 thermals
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240105-fp4-thermals-v1-1-f95875a536b7@fairphone.com>
References: <20240105-fp4-thermals-v1-0-f95875a536b7@fairphone.com>
In-Reply-To: <20240105-fp4-thermals-v1-0-f95875a536b7@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

Configure the thermals for the XO_THERM thermistor connected to the
PMK8003 (which is called PMK8350 in software).

The ADC configuration for PMK8350_ADC7_AMUX_THM1_100K_PU has already
been added in the past.

The trip points can really only be considered as placeholders, more
configuration with cooling etc. can be added later.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 25 +++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index ade619805519..b7ccfe4011bb 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -112,6 +112,20 @@ active-config0 {
 				};
 			};
 		};
+
+		xo-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
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
 
@@ -490,6 +504,17 @@ conn-therm@1 {
 	};
 };
 
+&pmk8350_adc_tm {
+	status = "okay";
+
+	xo-therm@0 {
+		reg = <0>;
+		io-channels = <&pmk8350_vadc PMK8350_ADC7_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+};
+
 &pmk8350_rtc {
 	status = "okay";
 };

-- 
2.43.0


