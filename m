Return-Path: <devicetree+bounces-170809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E62E6A9C61E
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 12:51:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D32A87B7B16
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 10:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB34E24888E;
	Fri, 25 Apr 2025 10:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="hvkx03Bj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6584242D64
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745577985; cv=none; b=blSxsHcvMw3HFFzsO8no65TwXB2jG4RkxZQmw7Zvfee6sqZvoacxuNDX7B44TQ3mHMj9imn/oeg1QXgkEfWzYNmSnKiXyntQ8xBpWVnlZJtFRMRxrKCMnQZY/cPiL9zSVoVOHpld71xkbpb5f5Alz3Ffs+5utv3cVvr8y7TueTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745577985; c=relaxed/simple;
	bh=wg75PCTTfribT+dtDpE+CuchrgWtQI6Hhj4cdsebLPE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kvF3xcQmwa1Ok+RaZGYFyQ6oEip1YjxzprIyd8Crj1g2lxE+wuCyjVqjnsSG8J8CUu2VEzjVxtj5miDx+cNo/WBNB+Nqf3XrxYJHd7rY0jLtYw1cfDh4AOHufyyId1jmi7JQ/nFBfQ8Sq/eVMIKmFUaU3FkNqwhThgGSL2oOijc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=hvkx03Bj; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-acacb8743a7so349823166b.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 03:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745577981; x=1746182781; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2YQvkmgUeO17WhatmtmKq2DT076cJgIIPjxnS7/XI3Q=;
        b=hvkx03Bjcp+GR/1QVW5kChsSmAhyZ6ws6d+wXx9Uq3zStGmQrrd490lGWtJIEnjTqe
         4W7cDcwtOdIjufJe1eMvc5qF+fuWqrT7hbdA8NysDTgqi4kGxHHY3/aa4ZJZcApUpWU5
         zuV5se8o21ozDq1ThON3QpD2isMd2powPFlZ6N0dRnYZk/Cd6ps6naGcjrrkFIdrJWnk
         NoRgg8NpnsxOK0jljxgUELGwRO3RFErjDssEiJXKAj9/P86Z8Qe0bfx1XRBZPhOwQbfJ
         SuIFSlj1WqyyFV2PjGs+flnLaFdQcdZtdQswLHRtkTvovKx6R/ZhBlIHYlmUq6omAL7z
         MR9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745577981; x=1746182781;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2YQvkmgUeO17WhatmtmKq2DT076cJgIIPjxnS7/XI3Q=;
        b=FgP9NnQOYjUYj7S8D2MlCCaxShs7rzHVE6LYe2AoXX14miFVe93mUtg6xi9sILKEap
         CzLDlfdBUx+8VqRhfcU3+suyGRHxdnpfL1WyuMId5HgTuKONdQeOoQsN5Aqy5Z5LujwH
         KEjzJx0B4jp2PTNo93JX8NSBhP9sNCbFlEDhcgMK3jGx3yA6cvAGNCSBzeL2CSuXwoy3
         UxmOMtsxw9ppaYzJN+ldaG4Wmbt6SRPg+u8VY286yN5EFsKWNdS5ivejlKSwDbTastqv
         luGoDNuD6sG8N4Z8Mk0EkevLhjYVzuGhZqj4kqkgehdwJ1nZiC5hm+lnCNZwdFEMWx05
         0VcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVysdDXRL9QCPKM/OJrSzUhyo8JwkGNbv0OLaIBrRMrhKwEvPEdLG7nz1L8JzjPB+jY/URlIGSJMoOD@vger.kernel.org
X-Gm-Message-State: AOJu0YzWneKaCyG0bkSUrxLMX95t+wpZxNzizB/ShGBs6nRuTC02WwgP
	ulzAX6msBbvZ1ZG54QcbOHtnEXR0Racstqw/2pv992SkulK7+1VEoi2b40pn4eg=
X-Gm-Gg: ASbGncsEa0An3GvtuqELOjpC7rMl8Vx14Y5Q8SVI/P6riE9ErXmXa21Ej37Y5oUBdlw
	GwVPhruNnwaHeHcx8nfUPovHqyS+sV7EKX7W3q5I9C80T3dAAGbtKAE+jiUZsdpvxuC0dVUX52h
	0lVJOWq0pz9OxvXivZu8g4ICXZXuI3oNhk7FwEsdcPzuONAEwcIkB9XnWNWUNWiyAIPbqPFj0La
	+lcySvXQgA8WJeYly7Gt4f+llZ9q4fTNXHY9OOgS3KteyC9mbgcG3hRuiFVQJL8yJrNNNfqive0
	8NWmzB0L8WqdtQzXEV1gbGBaquGI5oPcGG9cIkhiR5T8Lx8Y3yanqpYFpry4YKUlPPlFBOh79h/
	jT6tKBBCcPSxHmxHR3EQgY8SbwBKNhnK7KSKwXlJW+BeuMc0kS4qHAIv3
X-Google-Smtp-Source: AGHT+IFhT/3lbhxw1N/ErfoHK46Ys1jGbT7IoE15GimhHr4ref5PyGOaNXV88P9mZw1kjxSvsvjkyw==
X-Received: by 2002:a17:907:94d2:b0:ac1:ecb0:ca98 with SMTP id a640c23a62f3a-ace5a48320dmr460145566b.26.1745577981539;
        Fri, 25 Apr 2025 03:46:21 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e4e7b98sm118765066b.66.2025.04.25.03.46.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 03:46:21 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 25 Apr 2025 12:44:51 +0200
Subject: [PATCH 1/6] dt-bindings: usb: dwc3: Document usb-soc-be property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fp4-usb-audio-offload-v1-1-f90f571636e4@fairphone.com>
References: <20250425-fp4-usb-audio-offload-v1-0-f90f571636e4@fairphone.com>
In-Reply-To: <20250425-fp4-usb-audio-offload-v1-0-f90f571636e4@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>, 
 Srinivas Kandagatla <srini@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

The property usb-soc-be is used by the new SoC USB layer which is used
for USB audio offloading on Qualcomm SoCs.

Cc: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
index 6c0b8b6538246adf746fe7ccd6df936131c61444..07549dec0f74234465fa9b6ab21871762a2f5127 100644
--- a/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
+++ b/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
@@ -38,6 +38,10 @@ properties:
       - description: USB2/HS PHY
       - description: USB3/SS PHY
 
+  usb-soc-be:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Link to the USB SoC sound backend
+
   phys:
     minItems: 1
     maxItems: 19

-- 
2.49.0


