Return-Path: <devicetree+bounces-92333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A85494CC51
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 10:35:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A02AB239E7
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 08:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A07B1917DD;
	Fri,  9 Aug 2024 08:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="lh0OlfWM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA68218DF9E
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 08:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723192455; cv=none; b=fKLusPUOhjSJGg53wRGtEIwI5573ElKyLBqRE0gUNnN+hKEV/2D/dqDCkEVhr2y5tD+aH5nr1ecHZ6JlKG3F2+6wIGK68hYi5xfDtwTfKA5scDdoAUzVtkw4Fkn4sCTpCe+e+Q8MJTXWJNI1cO9wFhqNH0qvWiUtplqXVXcC5+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723192455; c=relaxed/simple;
	bh=6QJ2T7K5t8dnL1cUxpMGwsGVpEL0ZBUMr9mtcKTcoUQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g64kqY8xj8mDlGGiyUbD3PxZ44wRe1YusBhSduHRfDzP9Sf0RDaU9d5whF6bnoJPax8kKHRefKNhrVoA1yjfK81eO0fiIBeM5PDCw+sJIC/o9xAkLN15wQWjAUOBUhrJAc4QY7buGkF//IRw/6bqudCFHutpfXKYfZTxAhGC3LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=lh0OlfWM; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5b5b67d0024so2059987a12.0
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2024 01:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1723192452; x=1723797252; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bTOapbhsSh2iPDvdrkY7GqTcvxUdYMzOhi4gx0LwDTs=;
        b=lh0OlfWMaRTJ9W00ku7lw7gtX5ChYd9/mIU83hpxTFVIDOCm2MpgSMSdSlzN5iJOsO
         lJ5vNfQFbwIuk8o8AfDSThQEfXUOliiZlcv+UJaQ0REUjUeec3dVrQsgwnIHuZoVyq+8
         ZarleEE2DXPU1jkM/8A4wvhZ9e/+ICa1aLLRibaSXjqSmOBPKAMX1z60FXP8aPWyBG0A
         tZgKyZK3QE0LTVyvYBu8fz25xEQLQfzMNmC1DVNWTLxGOL1pj94rVG3X90Mxd9srQCMM
         4yGaPMVs7qXi0+LNJP9bisNszOHZMTQUuFuzgzuHLBCVd5P6vWWJ8waujJCVreNMYI4g
         9zuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723192452; x=1723797252;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bTOapbhsSh2iPDvdrkY7GqTcvxUdYMzOhi4gx0LwDTs=;
        b=MXpeBCDtPMWnjxqo0E4mfPLOAd7YD0QF5+7jrW6Pt+rtBFHg7AenpSk6Kbd9xyu9wV
         5EzUSHTsqJCr7D1NbQ9VX8Dl42nxUFaLH0K0kkcBpjl0mzoQEU52ecoo7O0lcc0yKknv
         w0i+RxzcXmdfn+7p8TrtKkYxKc06XbgwpnQixHCn+jzwDpHFXnEVxMZh3HAEGSDwyQlq
         VhkA7vtE38qZsHitih2mG3FgLm3JKDSlRl34tBPehMC30/D9Ei27rSiDY0ERSBkbkqI6
         WtCj6psolWxe5L3efy2LWc3fQQsons5Oi2lo1Vkr8vH1XacAHvmBGZ2XZCHj/Y0SDZVj
         I+8A==
X-Forwarded-Encrypted: i=1; AJvYcCV0lYmlK6wOEieRO9EtbxQcWzmkvuJgAF//fl815y5XP4mD6t+elTs0S9/ZSZXz0/bXBUL6El430KuyTXpCCw7G+6BbULWiZj2tgQ==
X-Gm-Message-State: AOJu0YxVj/6VHDZRLVin2TnXL4fQ9vI8dbyjdTilbm2r2at5imE0ea3m
	vERaDUi45X8wIMAmerrA2mNKpSfVwhCYBsNyMT1MPgKKyyXfoqajP+m+RnjElYM=
X-Google-Smtp-Source: AGHT+IFiDy9k54HEGxK1zO78LfIscSKahK5f+32thKpNVMqGdYYVC41qcymWbEmBTFDakPWayhpGMQ==
X-Received: by 2002:a05:6402:34d6:b0:5a2:9683:2bb6 with SMTP id 4fb4d7f45d1cf-5bd0a50df2dmr535009a12.1.1723192451945;
        Fri, 09 Aug 2024 01:34:11 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bbb2c41916sm1336288a12.41.2024.08.09.01.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2024 01:34:10 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 09 Aug 2024 10:33:57 +0200
Subject: [PATCH 1/3] ASoC: dt-bindings: qcom,sm8250: Add generic QCM6490
 sound card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240809-fp5-dp-sound-v1-1-d7ba2c24f6b9@fairphone.com>
References: <20240809-fp5-dp-sound-v1-0-d7ba2c24f6b9@fairphone.com>
In-Reply-To: <20240809-fp5-dp-sound-v1-0-d7ba2c24f6b9@fairphone.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.1

Document the bindings for the Qualcomm QCM6490 sound card.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index c9076dcd44c1..0a31be6d917f 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -31,6 +31,7 @@ properties:
           - qcom,apq8096-sndcard
           - qcom,msm8916-qdsp6-sndcard
           - qcom,qcm6490-idp-sndcard
+          - qcom,qcm6490-sndcard
           - qcom,qcs6490-rb3gen2-sndcard
           - qcom,qrb5165-rb5-sndcard
           - qcom,sc7180-qdsp6-sndcard

-- 
2.46.0


