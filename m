Return-Path: <devicetree+bounces-179677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CECF9AC125C
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 19:41:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30E203B49E2
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 17:41:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF99428C2C4;
	Thu, 22 May 2025 17:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RrAwFJTM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AF818E050
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 17:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747935662; cv=none; b=bieoQ1hVhklw4Bu9YHW7QQ52EjzhZiaXCj3jH7+Pc0B5sWVfWXZAmL536UqBxvFHmzJSz/7oGc/k5Tx/PDG5Iu8rzjD8pVhBDwq3WzMeTpXSTbGaQAgVn4Q9pMeZxvoxwydfbsg0NaNuWgld8p/bg84K25MslRzsiScOtY/9Jhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747935662; c=relaxed/simple;
	bh=aSSdjHrrQmluhjdKxBq1rycaxTM3YZu9EjkuFLbPokc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=vF1vBEysBTp4N8DaP0xfsFuMQsrku828xUf9cO8KVRnpT5ivu4EN6cX3DNgmSdFnUJMW0Qw3268eUOiMKEcAnkIyx7S0FtOo5RL/U1cn+ha/jDvIXeTyyQ5sm/hCftNpBqUU/BOk2kbRg9S4UKlGEp3D0qX/ZPWHbszqy7NUUPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RrAwFJTM; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43d2d952eb1so67168185e9.1
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 10:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747935658; x=1748540458; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rug7xCiRe21CglTuJ62KRbiGHO52dyiYXtq9MKbjX2U=;
        b=RrAwFJTMQLocOma6E9sQmzbbIAxNgpCghY4qbNMVZz9kuabuOKd/c90NApiTYIArgx
         +kr01kzZMFtydwrFVsn9gdp037xDLrJ++0CA+rX10bHRpPPkcf+sBH+fRQr+axOSWOra
         S4BP/ydc94WSRqVXtjPtFlWY7f11EN1y2Ot3Ifehl0vD+qkj+3jwXj7j8BxqEPhfgi6S
         gM14EDdgb8pvwYEYsNciqtcIwvKuRpL2KWuxYP7JgQ3pOKTFCsuHtxY/NuxJKtlaYy+C
         /s89KhRxFu2HvtAperhHs38z/AuJ4qp/KgzgJ8V78102pCSCmMOBnu6NL6mc+skprQfV
         kxQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747935658; x=1748540458;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rug7xCiRe21CglTuJ62KRbiGHO52dyiYXtq9MKbjX2U=;
        b=WCei8zpjEmND38Yyib+6siWexZNawoozWKvQl8WwisjsgcjhpOHqebRFXLq1ly4+Wv
         zHe9+K/NqNju9j48eR9NqU5kq8zyQjd8+xFgdedfDkhwx2GvtgaPXX9nNHGCn/XXqyk1
         utUgEYRIlX9sBaT/h/l9sjzf512LFNf1PaBCGPC9oCY4Kl2osvelAW+2pPtUTPTMKWkL
         1dfu+eXPZof0ZCN7Dww/5/Ta6JGD15ZLxyHCRdSnksEOV2s8sC/t0J+OhRFoTc9Y7E42
         mlEvxBYg7SqSR8pj/LOujaaTPhm7UOLJbQH7MlZ4zrw+K7WcvLKPe+G8TjdZK4TkBYDY
         H4Aw==
X-Forwarded-Encrypted: i=1; AJvYcCWN8dQc2eU0u6wI78fPPjTGh3pe4pJ5q6OlU2yfvokCeGTtmaBmGNblFRrEdkNYcmGMxJ1BntuyBgQ+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8X8Lvw9xxfjmwA7oYqXBCZtSimDu+p+/GNIDH7gseypvMJcTR
	Rml+LMmMoOiDlDt4cM45UIWtfqJJ7ymPaonXqff97fzzPhm6NKSb85hiv+7Ev9D6UKU=
X-Gm-Gg: ASbGncs8CehWNmUtiazuF49+yEvFQeNbVwqf/CUTps8Gal5CWfMv0j+pJROsXJzBxiF
	YubVPy/1ZdORQuJL6uxzwd5joHiArtxw17BkABfrC2qbIzuelyqHZqx12ThMzlc8AhXmzXvfJJd
	CY2QDlt0ochgDXDn1agqYh0iup/uAhG4rGTq0Dv5a8HgxaSG9m8fuR/ydg/r/r+5VA5/CocD7oC
	aRXvaA6q4RoW5DA8guqSRy4xEvlxt/5EHno7Pn34kdE87MyO7d778lD/d8CykahgzlB5nEX48PO
	vzddnE5Zf7Le9Upcu1YlPbx31msewLhLWf30OPn9/Lyxl66z22ux9BnXrEY=
X-Google-Smtp-Source: AGHT+IEQ6/iKMVU24aJMoLqOXxLbhZL7C0KXFrDMArF8ok4GGZf8FXJBiXkIhzqyqj4QCOms+GXpzA==
X-Received: by 2002:a05:600c:5305:b0:43c:fceb:91a with SMTP id 5b1f17b1804b1-442fd62733amr247120525e9.11.1747935658292;
        Thu, 22 May 2025 10:40:58 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7213:c700:6c33:c245:91e5:a9f4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f7bae847sm109563195e9.36.2025.05.22.10.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 10:40:57 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Thu, 22 May 2025 18:40:54 +0100
Subject: [PATCH v3 04/12] ASoC: codecs: lpass-rx-macro: add sm6115
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-rb2_audio_v3-v3-4-9eeb08cab9dc@linaro.org>
References: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
In-Reply-To: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, Mark Brown <broonie@kernel.org>, 
 linux-sound@vger.kernel.org
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Srinivas Kandagatla <srini@kernel.org>
X-Mailer: b4 0.14.2

Add rxmacro compatible for sm6115.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 sound/soc/codecs/lpass-rx-macro.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/sound/soc/codecs/lpass-rx-macro.c b/sound/soc/codecs/lpass-rx-macro.c
index 45a6b83808b277344f17d35a70cd1e3bb89cbaea..3ce7ad758df9fb0b7845a1dfef46cdf0ecf3b8c8 100644
--- a/sound/soc/codecs/lpass-rx-macro.c
+++ b/sound/soc/codecs/lpass-rx-macro.c
@@ -3946,7 +3946,9 @@ static const struct of_device_id rx_macro_dt_match[] = {
 	{
 		.compatible = "qcom,sc7280-lpass-rx-macro",
 		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
-
+	}, {
+		.compatible = "qcom,sm6115-lpass-rx-macro",
+		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
 	}, {
 		.compatible = "qcom,sm8250-lpass-rx-macro",
 		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,

-- 
2.47.2


