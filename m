Return-Path: <devicetree+bounces-35187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD9083C858
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 17:43:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0D491C2303E
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 16:43:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EBDD132C18;
	Thu, 25 Jan 2024 16:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kwi/yQ9/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9655131E42
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 16:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706200977; cv=none; b=IiWF3St+1mbx90uXsy7ZPzcZ+EfS4Dalpa82AnLQJrkXKV3IU5rSi47VX/Y3P85rHwZFo0xjUFAriqZaMbNx0GIH5gOg6z0o7fhMClPVhQGnw1ZZ5wbhjiKKx1QoiiGHBGqhPfOC8k7doc63xQ0eR+mAXNo9JfWUGLY6nysglu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706200977; c=relaxed/simple;
	bh=8FlUAYV0p0Hs9/yKUI+wz2YaT+GWCAARd/3llgD8Z0o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C6A0xbHh/OUuTY2omlXcw4hVtiK+inc2um8iYYtHPIHWfih4CKQAjmVBR3SiudFyjFQyd3jKeLNanOHaFS7Tn2M4H7GfVRH6X1qoE5GaL9SASufC9eUG+uNNJMn6og3TXzs3kFejm9GP1NuljIBbs6onrztSMz1GbrWwlO7yaP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kwi/yQ9/; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-290ec261a61so1222862a91.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 08:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706200975; x=1706805775; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HW8KVIWPvb9RNP/RwAD0mzXVj1bYagG9oDeU8ueoS0E=;
        b=kwi/yQ9/L8SgSnHwxDc+YmQNQPdODnFpmx1/xmp3QxHkClICh1xcwwwhN1i3y1UvWd
         8uP882kGXUEboR3us8+EUU7ElUmrwp4U1qiUfLAglLqQlFoMEyxYkIsuoRN7EJb19aat
         cnZPv+gZVzStQHlJMBAAOrdZebTKcSf1yBd1RptJMrtlr2vwH28nDNF/ISzSDxCLKPrI
         hXji+etH1vgraTKAP9It026sOldV760ytphOxbezhsssW+9p5sTtEmnUsRuXk+XpMgl7
         9ZJzfkU3ZgEfdPisFDLYVjLZy4AFS0oBa0gghIKXNtGkARajpIX3BzbY23pDXCQiM1cm
         +3Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706200975; x=1706805775;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HW8KVIWPvb9RNP/RwAD0mzXVj1bYagG9oDeU8ueoS0E=;
        b=GeoI1swwdzBl4rTPEv8eYL+jI1f8NvPakFm/kc9Ptzfhq6qOMvWlMsxFBChnIVibH/
         SLICXo7t3xW/JnbEDuJZYdCFTfRSp4yp8HmMdEP5za9k7QE0rlqlN2v72YeAXNm9go3J
         5nn9zxOMf5r/11rNxIb/l/MJHO+yaXEhfWlnTdgJbmpzHuZFYbh72WjBe7egnrcgvfw4
         7uuZ8ZzP9Jy5zbcU/bjQoruFxZwU4EA/S7AeDpuvjmWDl3zkv4ZlMsdGnGdTqjdzRWfo
         liaZA1pUz9EGqo0Vp57jOeKVmUGHjGJHEBYDxbVHOQFdpsmFs4BCZzdEI1SUeDX5Dz9U
         n1fg==
X-Gm-Message-State: AOJu0Yy215OsEmoR4nEa/98o+OrfcMMu5jid7cHCW9bVk4+DWRlTNGk6
	hbsVwM4TPXd2d02+bSjOB6rCnY04Y/8wnDsaowaveguizrsfur5Px1SRmmyiHfY=
X-Google-Smtp-Source: AGHT+IGv+bm0MrgPVzsYpMj5FuNOOYvH6ACHIPweMQLlA7IaqFyVTMiqNs34Q8k7JE+cNROnK1gOmg==
X-Received: by 2002:a17:90a:de96:b0:290:44c7:96e8 with SMTP id n22-20020a17090ade9600b0029044c796e8mr1052303pjv.93.1706200975096;
        Thu, 25 Jan 2024 08:42:55 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id u15-20020a17090ac88f00b0028c89122f8asm1769170pjt.6.2024.01.25.08.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 08:42:54 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 25 Jan 2024 17:42:42 +0100
Subject: [PATCH 2/3] arm64: dts: qcom: sm8650-mtp: add Audio sound card
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240125-topic-sm8650-upstream-audio-dt-v1-2-c24d23ae5763@linaro.org>
References: <20240125-topic-sm8650-upstream-audio-dt-v1-0-c24d23ae5763@linaro.org>
In-Reply-To: <20240125-topic-sm8650-upstream-audio-dt-v1-0-c24d23ae5763@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1119;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=8FlUAYV0p0Hs9/yKUI+wz2YaT+GWCAARd/3llgD8Z0o=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlso+FxBZdlhNgMVaTGjGaEisz1j+jr9VFtXIyARuh
 8OBDTE2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZbKPhQAKCRB33NvayMhJ0fnkD/
 9/Jm1GOPyM73Qp9AzGkEha2x1ZU9pmvKPvwz+B0cU2UQkQI5MH7O0XxMA/mlHCzsbFWcY9Zg7GqK0P
 Tw7nOzbg6Vo+S5JmWj9g+YoJiwX5Uxvi5OsH4q8L5sF1WGOlAiNVUIWu/UP2uVA1OV6oL8EVfyGWSB
 OBEkJ25ICDg1WxzHZw7kDk3Q1S9zOnSS+CiizOnHDqsa5SWzToR/Bh5K1aRAsXaxHZJfO2fVHOty1I
 s/DopaeH4BwXW3hQSn4B/C8ONzylaoyAGXTwlK99Ks8xztErSq21NFZenz7zPnIYJQzpvJIsxK7raK
 gltBjG0cmVMx6krGd8weNSxT2NWYHAXQvAXqIl0VTCZZZpUhk59LSVUa2BTlq8OmSxvaf6i1+agfzx
 vpnuiMu10q2nwTxAf0eIJVwli1RpgFow17xtwOefAfVM4rSlnbpjeWmFzCPjA3oE9/JEUJKsOE/sIZ
 M7VleI00zWIm9d0eoYf6hNJBCVvnGvsbEQs9T7aVSyUGmMfRlQHTGDzEtqTDD3NEOD1zVI2A3Pyn3d
 5Yta+5nciyX7Z0DzpOFBJ5HplZTNIWaooeEqU3kwEQ9nN4FJ00nwEnQP7CQLDW0xX2HaAH8FnKhHEL
 1uVVuxuMEg2UrMmjl+YkUXK2u8oJJoPS6JzEcL3+Gx/wyAVqkxT2u8dmgAVQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add the sound card of SM8650-MTP board with the routing for Speakers.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
index be133a3d5cbe..d2ec0cfecba9 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
@@ -66,6 +66,29 @@ pmic_glink_ss_in: endpoint {
 		};
 	};
 
+	sound {
+		compatible = "qcom,sm8650-sndcard", "qcom,sm8450-sndcard";
+		model = "SM8650-MTP";
+		audio-routing = "SpkrLeft IN", "WSA_SPK1 OUT",
+				"SpkrRight IN", "WSA_SPK2 OUT";
+
+		wsa-dai-link {
+			link-name = "WSA Playback";
+
+			cpu {
+				sound-dai = <&q6apmbedai WSA_CODEC_DMA_RX_0>;
+			};
+
+			codec {
+				sound-dai = <&left_spkr>, <&right_spkr>, <&swr0 0>, <&lpass_wsamacro 0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+	};
+
 	vph_pwr: vph-pwr-regulator {
 		compatible = "regulator-fixed";
 

-- 
2.34.1


