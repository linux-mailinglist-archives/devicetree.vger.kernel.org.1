Return-Path: <devicetree+bounces-80864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C8791A99A
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 16:47:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B9631C221D6
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 14:47:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC82619924A;
	Thu, 27 Jun 2024 14:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jz/ibrqx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA281991AF
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 14:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719499494; cv=none; b=ZsgO3j+YjZxBveHXKkNsP5fiPN4ltYCPvJXEOIM6mALzkaIhFPCupKj+ix1jgSQ0+aYJohu/VQQhET4axhlD5E/O3AbXgBD8HPXKqCoKJqv96PP8TduAf905lhNTXHNTRSLpWyGKMuNNzuChoR1ngJv4Sbr87QHXkbWkkFS9Bmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719499494; c=relaxed/simple;
	bh=lE5cuvuL9G95IfOe9RWKWZGLXmj/X5MR2oSFCb1vVEw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f9UNtADnOBtE9V30Sd7xMsoBXzYuV4oHH8r/NcGkODAICReXb6EG/kxtiY4ty0MBa6XTBf5SEknhHswPK/xNerZPt0dAHT1G632ZtkZABDetov2i8tHUlPdDY/8lvbqe3NPlAA6xo1VBwpd/XV5IKv9OCRcJGODRMoZ5WlKfzMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jz/ibrqx; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-424acfff613so24237545e9.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 07:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719499491; x=1720104291; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gRJmTF7L/9R7w6etZ1hOgP2bjz9f74jpdrGthQ0OD1c=;
        b=Jz/ibrqxmFJ46drwC05Y8eTjjCa4BZUV1co1OnxfXDr0Uzs104ty8R2f5fYSPlRzYX
         XAeiqZCUSPOUOqXJMFka/AivzV+akuF8TAlwrkSc4jGRoRUVtdVU/xAa3bJqvsPDA0fu
         i8/rd7s8AOiLX4uvSC6pIBy8CTUYVyPqoiwG5I2z19viHumV5D1wZKss3Gv8rXZ9Hsnp
         MatPsKMtAbanAjAH+PkP7GOhOdV57ZH4t/EWYHDWn9cZpA6zTYBzKwXKpXOjLoqgoZnz
         JL0OCKUdIZgOEQm+wViJNTwIw44YhcCVMwt8I+HN9PUeijHEgdcCLy4o0PgT+eO/qNr8
         6WRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719499491; x=1720104291;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gRJmTF7L/9R7w6etZ1hOgP2bjz9f74jpdrGthQ0OD1c=;
        b=LD2a+q1m1qpRAZRWY4QV8EuGgWkDSbFXz9FOtK2k2/9T0cUG3WgdIfHSJg6zcOHF0X
         gv40VU3PyqWcqY3h6vEaWsgdgOSQxeXfboUA6wUCKR+UyE08Il/uW2jfSTCG1t3w5p4/
         /WRLqXsbCR+Fn8UBVshX2fcM7I7F/1Rmk0Sn0xaroCQJmbdW7I/w7KxuW+W09L3YdCNk
         tJLhhLmGXNaY6cptvTKx4ixHCmC/JD9kE6P/xzFnmPEvpF/m2roBUQQqL6T7irfDRe7I
         VTlP6TqsQ0ReC/DNeSH3ovnBk1dzoFZDml4fNpk4Y4uYXmB1EFfGMPJaHr55THzPZ/s5
         ER1A==
X-Forwarded-Encrypted: i=1; AJvYcCXSd/HUnkPbz49MF2CcKQalPw11zN1ftsNYVNGx3lVriOsEF3C35aS8t42u2qhP8crgUPaAvPnsTLDB5oJ4+bcbJbi16Mp+f4Fv1A==
X-Gm-Message-State: AOJu0Yw77VYlxpRrZV3JrpWB1Thp+sOLq8zP8MksmrodZQxlW2GLCkcw
	p8pOZXvNLBq628/eZSTFL6L+l7Yolw0S9zAGMAHWQa+6/w4rK/tAKIR0JaI1D3k=
X-Google-Smtp-Source: AGHT+IGNUBrnTko7rPX48x8ABrouRQvgTCE+3KFWPLeGW85kH8CD41VU6V7kD+IEBwpxVGEhVujWHA==
X-Received: by 2002:a05:600c:2e04:b0:425:641c:5f40 with SMTP id 5b1f17b1804b1-425641c606amr19393175e9.39.1719499491245;
        Thu, 27 Jun 2024 07:44:51 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42564b7b7c1sm31254075e9.23.2024.06.27.07.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 07:44:47 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Date: Thu, 27 Jun 2024 15:44:40 +0100
Subject: [PATCH v2 3/6] ASoC: dt-bindings: wsa8840: Document port mapping
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240626-port-map-v2-3-6cc1c5608cdd@linaro.org>
References: <20240626-port-map-v2-0-6cc1c5608cdd@linaro.org>
In-Reply-To: <20240626-port-map-v2-0-6cc1c5608cdd@linaro.org>
To: Banajit Goswami <bgoswami@quicinc.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, alsa-devel@alsa-project.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1295;
 i=srinivas.kandagatla@linaro.org; h=from:subject:message-id;
 bh=lE5cuvuL9G95IfOe9RWKWZGLXmj/X5MR2oSFCb1vVEw=;
 b=owEBbQGS/pANAwAKAXqh/VnHNFU3AcsmYgBmfXrYwbTrjcD2u071XMsefeUX9UvlY3GzadeVQ
 LSyDLhB39qJATMEAAEKAB0WIQQi509axvzi9vce3Y16of1ZxzRVNwUCZn162AAKCRB6of1ZxzRV
 NwNDB/wKyhxatFXvVz/JsbO1otbEB2++w45VwdupIDhwMMbziatHubmsQuubODvbWYR3lIbDq8/
 QZrqhc8BxXjqNRUvJmr55IpLHDivtCipYSievqCmGYlQ1ue2Lj/shYo4UuSaJ9YXtti7c0aT520
 whvV1Er/oW8PXxOD7xI9Fn2qmtHN292sM8gdImW5z+sVHow21Aq1pg7YTPW7jkGWuzJUqo/hYrG
 ieFfyX7PJXMu5gnArHOImyPGjSka0jhDVTk006jh/ypG99OO4E6jCeedtr1o56Fr54GhgCYhQuc
 vOeA07iMxEZqqJDKXGx5oCySNpC/XyOzpseJQtC3wYxp+WJj
X-Developer-Key: i=srinivas.kandagatla@linaro.org; a=openpgp;
 fpr=ED6472765AB36EC43B3EF97AD77E3FC0562560D6

Document port mapping property for wsa884x. Port mapping is required
to be able map correct master ports.

All the device ports are not mapped in same order as master ports, so
there is a need for having static port mapping for WSA codecs.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-HDK
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,wsa8840.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa8840.yaml b/Documentation/devicetree/bindings/sound/qcom,wsa8840.yaml
index 22798d22d981..83e0360301e1 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wsa8840.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wsa8840.yaml
@@ -32,6 +32,14 @@ properties:
     description: Powerdown/Shutdown line to use (pin SD_N)
     maxItems: 1
 
+  qcom,port-mapping:
+    description: |
+      Specifies static port mapping between slave and master ports.
+      In the order of slave port index.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 6
+    maxItems: 6
+
   '#sound-dai-cells':
     const: 0
 

-- 
2.25.1


