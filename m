Return-Path: <devicetree+bounces-223995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 68122BC0002
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 04:04:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 14C8834C8DF
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 02:04:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E84D212575;
	Tue,  7 Oct 2025 02:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dTrVQHHi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79AF9208994
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 02:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759802623; cv=none; b=hoyeEaH0J4KMuzgKngaq2nr9KZXim6O704HosHEywRr+ajTTyxqPwTn1wsLPmjo4SVHXye3BKiQPGvQzoNmMrokKijaHXAnSMS0XYFxjhwws1gWmoRf5OWOC8duhZlaNQ2oJYsFKLFc94cF1OlHBhf7rcHjh9LRKtLZMjy5C/C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759802623; c=relaxed/simple;
	bh=VXDNFmwIX3pmm1RNqu8UxbDnHVOaIoAOH+SdXHl9U1Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rseXurHpgh7zyo4dtVA8BTaswm1uNSkdUg8yiSoJMZQXuv/MBRs/nKiw2NW/oPmROTKKByvN7cThUIMG4aIe31GIvPdpvSjwLHM/Fo2ep5TudeNwulitce6D41xI2nFp4niDV+AKD99F3r1vOkjTnVkZ3s3lQqKIlWAblwnhqGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dTrVQHHi; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-57933d3e498so7788036e87.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 19:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759802620; x=1760407420; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UvT/TglfcrWJfggrZckfEyOiFactKbMJClmt0smjuQk=;
        b=dTrVQHHiskmU1+WanWHVh0yrdEMpONRRJqppy9QgL+HHJ2c7GbPffxHtKcpVyir89u
         jUVgH07ehuiCGxHsp4prwU+Qpdrp8SRiJHcXYSSfJ4N4YgeOsbKvQV/0q8oTRpM8Qsdn
         9IAKEvFLWVZFcBbcd3YQ7QqZ5/xGzBryVbdBo+AUAkZ61TYDt1nbBT0Y+pdvlORCWfX/
         hkFShCUSvasyWZW3aFR/jYV1kw2p5DbRLT9wl/ZfiCbvlMj404mVWPSOG2hFlDoDy3vg
         Je6IL6wEv11fzvBph9ia1QM3WduLo1XibdeYXSd9ZbXklRFu1JfPflqHnjFnEQSi0qQ3
         r1og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759802620; x=1760407420;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UvT/TglfcrWJfggrZckfEyOiFactKbMJClmt0smjuQk=;
        b=cjeGJGquw3AMsw2Nliij7ZXYZrUWXRUpSH3nVRgu3uy84vIkFyq8neP+zHAFuZ+To4
         NyEq1Jzm40ENk/6RfeSNDOS4SIak3WU5Yi703lN2Pu7orlPG/tpqxQdHW1270aolM+HM
         eCvSc4Blw5bctO5jG89leD5Z/k2ltRdYoqbdNq1moRsz7c750TJSs3kIWauC+vVgtIYr
         B6wtCRpQqRMYjZ7fR0nlK16KNzLOA/s/LcPcGs2eQ58whC2Ua+b8QrwaY6V2PjEcuC37
         osX2NfGOip0shXJCXv1FLQpEzKjLuwNr6kwNib98jwzoHAskKrGvo2NKHU1HvSe0tk9p
         XdOw==
X-Forwarded-Encrypted: i=1; AJvYcCVSnjtunWnaF1qaqxY3xmqDCPjg3fiFu0VOOwkrIGizI5RWVHtwQk9F2EUSw4PKCZUL17pVmrPWsu5Q@vger.kernel.org
X-Gm-Message-State: AOJu0YzMfjwxivFMeyfsYGusjII1D9J4wlyuz22FzfSP5mbURBoQJxck
	Iy+XQlQ9lNw9A1eLzQtcV9MGWZw8erSu7ucR5TS+rh7hlHNAHnMMOYugUzFUfuwuciE=
X-Gm-Gg: ASbGncuj9cY1qQif8gKMNrsDDP0qzH5l7bJrFDnJE8Hmc2glKQiRKQEGkmU9CdIwc0R
	xyTZz/OX/YzD2vSDfk+qaBPVqkOwId8ZPVjSgM44cvLGDuynvD0qv9KsKGDVxU4z0GrCS72/OLl
	RLdUoKHfJCiNhkGT/uhl/nSN5MmZuP7WBDAaqXQjBOnLJ/MK+YvxWALO7jwC8eU7ibGlk01shU8
	PlSKQqdEczU/Il1S5QBWmfSVTGZbEw1nl6OG4KwlLZ4zGwtSuCp4/ZYq3t6HDSw1or6j4pt/tBB
	VeyAuqJwu1aNpkD7o+muHups8nuDuVr++H76U97JqVA1PKK6lfaJIHLkN56lYDG35uBUasH0TAY
	0OUA/8cYvEExeAPKpN4v5mQcC+K2Kbc/t6mzOSB/wQgdjudTCdywOoWhRAi4kMCUju0Q=
X-Google-Smtp-Source: AGHT+IE6kE+08lGifMlbSFxL63V0GVp/y1UlrRZI3ChDCaIR4Mc4TOIHRtBHsz2zClThQzzpsuDRMQ==
X-Received: by 2002:a05:651c:1992:b0:372:9992:1b0 with SMTP id 38308e7fff4ca-374c3823058mr35559001fa.31.1759802619600;
        Mon, 06 Oct 2025 19:03:39 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7259:a00:22ae:baa0:7d1a:8c1f])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-375f3b81e45sm5150391fa.46.2025.10.06.19.03.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 19:03:38 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Tue, 07 Oct 2025 03:03:29 +0100
Subject: [PATCH v2 1/4] dt-bindings: pinctrl: qcom,sm6115-lpass-lpi: add
 QCM2290 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251007-rb1_hdmi_audio-v2-1-821b6a705e4c@linaro.org>
References: <20251007-rb1_hdmi_audio-v2-0-821b6a705e4c@linaro.org>
In-Reply-To: <20251007-rb1_hdmi_audio-v2-0-821b6a705e4c@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-sound@vger.kernel.org, Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.2

Add a compatible for the LPASS LPI pin controller on QCM2290. It seems
to be compatible with sm6115 LPASS pinctrl.

Cc: Konrad Dybcio <konradybcio@kernel.org>
Cc: Srinivas Kandagatla <srini@kernel.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 .../bindings/pinctrl/qcom,sm6115-lpass-lpi-pinctrl.yaml           | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm6115-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm6115-lpass-lpi-pinctrl.yaml
index f4cf2ce86fcd425b7522918442de25c836bf24f0..ec1cd684753ad22050ae349a2e7acbb2545a9070 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm6115-lpass-lpi-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm6115-lpass-lpi-pinctrl.yaml
@@ -16,7 +16,13 @@ description:
 
 properties:
   compatible:
-    const: qcom,sm6115-lpass-lpi-pinctrl
+    oneOf:
+      - enum:
+          - qcom,sm6115-lpass-lpi-pinctrl
+      - items:
+          - enum:
+              - qcom,qcm2290-lpass-lpi-pinctrl
+          - const: qcom,sm6115-lpass-lpi-pinctrl
 
   reg:
     items:

-- 
2.47.3


