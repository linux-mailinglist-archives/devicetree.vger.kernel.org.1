Return-Path: <devicetree+bounces-107003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 517F798CB22
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 04:20:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81DB71C21C61
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 02:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BCCFD517;
	Wed,  2 Oct 2024 02:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rLbPbRTx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842B523BB
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 02:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727835624; cv=none; b=ck7TVL6I5BLjckwDdHAhFI2OVZiWOlqexrDgVBBBOqq1J78jweEwTumYKM95H3eBeoHNN8WGr6VAXB/NrUk4u15dpYdAnvM0BNavTB9jZ8fD/XXvENgvjQLt1/NuQdti5JFcIjhG0ggZFgnn2WPsiSKADcjg+PORLjLKCD9TH+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727835624; c=relaxed/simple;
	bh=/4OzswiX65Sc0g0+jbX5ZOydAN10emdJ5kCChBhnLgc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ugHWgalneBEya4855TRHCNfI/RsbcFddhlpad4FL4E70i6jxgFeaHHR/GIAzjxV8VLpVof5AxKdB7FCo/BTz3+NwTKOCmonDCVxMoS41HsgVg386baEVf6GiDCUm79g3teEUdo4oDce4yICf6dSE6kK3U+f0ytp6hubyU4q93+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rLbPbRTx; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a93c1cc74fdso943760966b.3
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 19:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727835621; x=1728440421; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qULz6qGLbMOUjMR5vVv1AH2Pj+Ui9tcw2zEInfPNef0=;
        b=rLbPbRTxx37wbOMeRUHGDX6dEO/DDycPUkt0sPoHCcebHttXf/GwSvDHvpjfLzR/fQ
         N0WTlo1WtZJO4QAUFlEVSk42M+RIjBbSDnMMrXXgtjJYJufZpklb7Z3I/Hf3kaJhjSO1
         sKN1GtnQJSrYZrU8Uf9O/AKH4tmispkBSQgOKrzqw5e3duHRrPX7oPpsS2uyxbK3keNk
         oy6LDKQk18P6Y08o6vcH1T02izJh269a5FykOGAoeWTt817kUq186G3RA7dcly2vwGKW
         0kQj6p75o252UUNuey31y3jW++6tv3R8RX2IqFTLAUtccyaPDU7Y2zL3Sv5jDIxNBjB8
         eY5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727835621; x=1728440421;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qULz6qGLbMOUjMR5vVv1AH2Pj+Ui9tcw2zEInfPNef0=;
        b=v+7gnThyUEc+fA9ttY+ZfLDYafHQk3VF0jvkg/BmKgebrEHwMy6C7gwj0fKdf0Lq0c
         WYW4ugDy65Ac0nCMYn98s3HPni+eZWncx9Y1la27geT41Ve7ZjA5UiAWbTlcHtGghzcT
         UeC9/VbaOfMpmUTVYC+U1UD+wD0lszCcuX9Kfs/NCrvJi5CYVd5+3HNxWrF+Ni0lAcDt
         ogShdZsjB9ABq3pqK8yixoIR9H1JrZcgym6GsMmT/YtuPkHC4h6l8uYpWJxIs60NYM+Y
         ht4MOgZe1qrFrA0mMawhjPoU9UrYRzqg/66QlEf1X4uruvSneDp8fMQX3Li/J0z7iiFs
         IzDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPBdAKtsZeIy8iF1zTmIfGfRGiMhO9ealbCTL57Vu9E1OOpovYzOqOF1P53e8SYcrD5CJgcucH6OLQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxUvwXhxew5n1fAbVSf6HXZJk8g5hnMNtcFr7IgeKqZdZErOPk0
	x+BBzHsbpvnovas10lC6S+OiQo6TrSGEWzfsZcBSUPXlj4zcdBgkKgzDS0XPjwo=
X-Google-Smtp-Source: AGHT+IGE1xKkXbjGlYr68N6L4QY5x/jSLWNeq4c/fQ8oGKGTVtK4Gvl9c5GnBJX1hBRWwC0HCq1myA==
X-Received: by 2002:a17:907:25cb:b0:a8d:2e3a:5303 with SMTP id a640c23a62f3a-a98f8295ed5mr139129766b.39.1727835620710;
        Tue, 01 Oct 2024 19:20:20 -0700 (PDT)
Received: from localhost.localdomain ([2.125.184.148])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c2945f2esm787518866b.117.2024.10.01.19.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 19:20:19 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	bgoswami@quicinc.com,
	lgirdwood@gmail.com,
	broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	elder@linaro.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	linux-kernel@vger.kernel.org,
	a39.skl@gmail.com,
	alexey.klimov@linaro.org
Subject: [PATCH v2 1/7] ASoC: dt-bindings: qcom,sm8250: add qrb4210-rb2-sndcard
Date: Wed,  2 Oct 2024 03:20:09 +0100
Message-ID: <20241002022015.867031-2-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241002022015.867031-1-alexey.klimov@linaro.org>
References: <20241002022015.867031-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add adsp-backed soundcard compatible for QRB4210 RB2 platform,
which as of now looks fully compatible with SM8250.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 1d3acdc0c733..2e2e01493a5f 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -30,6 +30,7 @@ properties:
           - qcom,apq8096-sndcard
           - qcom,qcm6490-idp-sndcard
           - qcom,qcs6490-rb3gen2-sndcard
+          - qcom,qrb4210-rb2-sndcard
           - qcom,qrb5165-rb5-sndcard
           - qcom,sc7180-qdsp6-sndcard
           - qcom,sc8280xp-sndcard
-- 
2.45.2


