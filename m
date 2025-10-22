Return-Path: <devicetree+bounces-229576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DA5BF9E4D
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 05:59:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B510C4E9473
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 03:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B9622D73B5;
	Wed, 22 Oct 2025 03:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dFRM3Pg0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B3F233128
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 03:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761105537; cv=none; b=F3AGtdjiGauDhzWRNuVJ6jDiaSQs13a6Dxor801hBUchxQ36dLG4uMjmYwIF8n9U3AgFtQ3UAygQHYbMhyuv3NV8H50DH+jxBi4XJLYW2qffpqn4NkuDzWrJfmVfAdw776xOT9QuvQsCddYuCKEWicsDA+u9xksHyCr+n9v7gq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761105537; c=relaxed/simple;
	bh=eD3Ij+lZtQ4DnXw+Tr7kovgD0K44T1dMGiw6LsDx7yw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QnKStzLjNUUw5YjqVH1Kt2JD6kQTVWwbWrbWrvcWcSBe6hs/uoALphI5EqQ/gzuG89nUgwMfm8ENEd2KTHVIWAxhlXRObCY3474b5r93TEKwDQsdd2W3O832E8M+vNQkqrNc+NMnt0NU558PkZ2agSjoisgmmi8SHcasCvn6fjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dFRM3Pg0; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-426f1574a14so4294539f8f.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 20:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761105534; x=1761710334; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o57tAm9bEj69a+6wod50M/v+YTegpl9/ax57TD+w3u0=;
        b=dFRM3Pg0f2OFxMUtUgawSWaBCgTFe1/4ZI/QAe3QXChhMl4VFst0EfQt/udHx0JzUJ
         H25/8moVI2BLRyT8JKcK08/89aAjAM2zEy77JGWOU7RIOqFi9hyUBEqEqPuVePc/3aHd
         FD1uNNvSgmIjJEe01WBsIFK6bTiflR9lCPj2gW1OagZK/IXd/x89ACAP7gH8ewiQi5iv
         7ndKUoUDpuZSfeSWS0NeqI7AtCbZkDM6YNpSFsKMfT2Z6di0fHc/T91jo635XL7q81/6
         BmqW/25xVk2lUZWRN1UsxGtPtZlQYuPUrvIaRHj0bSWQiSmd8fpF6WAnJFldFupmqeVo
         rkMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761105534; x=1761710334;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o57tAm9bEj69a+6wod50M/v+YTegpl9/ax57TD+w3u0=;
        b=bM1mlneWNFc0rj+gZ65wfVC2KLCrk7wOe9z876YLplq200nYT6TLnrLc3l5teG9wwy
         VeQ9KnhxonXoxgfWKpSMLT9o9bPq7HISXdVnPOJkaTh3QBaPIZbVQOwDvfPiat9ax076
         5j+zvHmpPuOCCXKu9vQeJ5Bn07y0TrhmdwjKQDtpeLH65tIsdzl0KSJPxFSux1x9dTl8
         R6b3itAAyySzc3RIKbV7rQ3hwKEqXooOZslWEzZPTDrKoLPuqsvGWIHAdiEgUDxCuK4Y
         gitrVqIJDVwB692BNogdN6eUY7a0SZNnIe/BT/EFc/3/Wa921fxVkCji+T5JjgzxmFVz
         Xnbg==
X-Forwarded-Encrypted: i=1; AJvYcCWnSdCa5YndxP1g+ayEodNWEMR102qJkG7roxNAnlS46TvKZE4gSxCPEFb6KK+3vQteA2iVDMDWM8kH@vger.kernel.org
X-Gm-Message-State: AOJu0YwgfjUhccIaU5OuS66d/nNIf0n066Jp8j59vZmsf/r4t9frHD7d
	JY7K74DzE6r3wI8ejGfQ5r8K33f+hIZvnkpr1YqvoEqj79cckVZZxvOdRgruFvkAuD0=
X-Gm-Gg: ASbGnctISO2S2td0CEp8sG+gBQrRTLa2xh977A7vw4247N6n6RBz7WLyS2adAzlZum0
	M7RRXvVS7SRZZaIAGfyQDtq0TpxC5xBqtKs4em9FvW+b3jf5bO9PV1tTAtartRyPDc77qlnH40Z
	iVn0ZDpJAvrPOGznn7UTpVVmH3ZrRNuJje65SObWfrDHbZ9tNHNeBNRW54Jt/GT4H7RQMZuVV+y
	0RQjKI3ObuRsI9w/OA7gwm/VDhyd8d5PHnG3VaWyYYDCer7CPlzASoy6xRAer07odjcLSWr5XY3
	E3+Xjdh2s6bf9xCey9dulqSZGUs99kGcRmLdyDonugSlfY1dH6Ik6rn1U3w3HPNDGFJt3gqAzz5
	bknClRGwDFE7d0ALPp4AxQa42cTpUW2EsFR39bedtlRBFA26j7obErsB4ktmsOxQu4CY5xvZdv1
	okEfdm4+phjwSm+bh8
X-Google-Smtp-Source: AGHT+IGn8Otegez7YT97/Q+RL+NH5eMmlBzrdp9SHgbeYCrM+gFyib3bAAvmS/oihsg0BsFmBaDKFw==
X-Received: by 2002:a05:6000:22c6:b0:3f0:2ab8:710f with SMTP id ffacd0b85a97d-42704d83514mr10579228f8f.8.1761105533675;
        Tue, 21 Oct 2025 20:58:53 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7259:a00:11f4:2b3f:7c5a:5c10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f009a6c5sm23637639f8f.28.2025.10.21.20.58.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 20:58:52 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Wed, 22 Oct 2025 04:58:49 +0100
Subject: [PATCH v2 1/2] ASoC: dt-bindings: qcom,sm8250: add QRB2210
 soundcard
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251022-qrb2210-qcm2290-sndcard-v2-1-32e9e269a825@linaro.org>
References: <20251022-qrb2210-qcm2290-sndcard-v2-0-32e9e269a825@linaro.org>
In-Reply-To: <20251022-qrb2210-qcm2290-sndcard-v2-0-32e9e269a825@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.2

Add soundcard compatible for QRB2210 (QCM2290) SoCs, where the older
non-audioreach audio architecture is implemented.

Cc: Srinivas Kandagatla <srini@kernel.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 868acc077046596120ea7f427e802282ed03c853..15f38622b98b904c4107f4800cd1a4159191fda9 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -39,6 +39,7 @@ properties:
           - qcom,qcs8275-sndcard
           - qcom,qcs9075-sndcard
           - qcom,qcs9100-sndcard
+          - qcom,qrb2210-sndcard
           - qcom,qrb4210-rb2-sndcard
           - qcom,qrb5165-rb5-sndcard
           - qcom,sc7180-qdsp6-sndcard

-- 
2.47.3


