Return-Path: <devicetree+bounces-160687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 50021A70A31
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 20:22:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A25116F8AE
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 19:22:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B10D1F0E59;
	Tue, 25 Mar 2025 19:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ofg2URSg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C4D1E5B7C
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 19:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742930508; cv=none; b=VK9V8PU73sRtjq2cyzrGP+fdHmRd2lCQOZGKCafDfrVNkBP+G5shQAMF3xzMobzPV+NDmEgzhBkM1IFdk0NdZ3FzisOqZIaFLtG5ZNAv2tq/VoNaUf0eGO9lWbc1m7wZswi0dFCVXcgc0fvijWMZZLzg0fsE2oPCHGTLpaHRdw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742930508; c=relaxed/simple;
	bh=tTDdAbM6FEoC6Rnmp/8WdmqaJi5csQEBgAAwOs8qGxY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jIJmJOOks+BzzFsHU3hMcyBoby9nK9AtZ7KUmvO63XYej6zxDQfwHrKhqoo6oOm0dJMGZ9E7M7fxEw1yokT6QI6nkZluYB6DuBD6pzlw8bJVNksU0YPHyFPkvtZh5Rr0gy0c0O9beeX28Z3r4P8J3wp5l6SqqR2K75aaPlogsHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ofg2URSg; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43ce71582e9so42117425e9.1
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 12:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742930503; x=1743535303; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0xAjj1ZGQzbODWEBIkfTAWZWQleeUyTNk6b3kRAxKYM=;
        b=ofg2URSgjEEXN29tAytCupZuL9oSQ6Fo2sTWNzZzXxVb1rVWZYUMCQW8qTIRPC7u50
         5D4/gxc6RTw4G1xgu/inrK3t6E5jZJVgNpn6cEZFfg6NvGFbjtfUsSjsfqT6+Na5zBpi
         05HK/0G9HudlvL31UHYfIyF0p+Joxfgsn+3EwctN0uNcltXrVGtuFvPg31Rqzuv2JrTK
         jqlMLX4YH/49piUSka587fhZ+uF/CM7sSZrVuV0tYd1T9mcvaAzfvrJvInMfR5S6Qv90
         VXhnixcL1u5V9MSJ52FXVks8JGPJWjnXX/WNLM6Rf0kSKtqwy7/r/nerBvXBqaZGCeju
         AMjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742930503; x=1743535303;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0xAjj1ZGQzbODWEBIkfTAWZWQleeUyTNk6b3kRAxKYM=;
        b=ayJffvgIoh+ip786OTDKBcXQ7dXFoqU8F5W9Hyvt2hSYc5dJtP3HAo59QbY3mQgTwx
         n/Do9l0sVPamPEj1eYp8Oz7l1Rmvw5GoXdkckrGB53FFAx8aQYQvFaMmM7/c1Uxj1ogJ
         QjmjdHyyurgZJdzV97Hw3LIlEGEbE8u7tfVDjw/FAECBQMDX7wv8/U59Hw3n9Jo/g4mZ
         X0R8H0FOW6ii2HB8gVM0zsrzFGy6HfLuK/eFamH15xlFjFxcwLtYzK84acCXLGZ79eGz
         A/DgmvJuIH4hMNolm76ot1XKQeguS77LAcsOevYzPsUZkVO/JbYc+3PcQE2YU4DZJJLn
         9zLw==
X-Forwarded-Encrypted: i=1; AJvYcCXfIXOX/bd7ns+kJGA9d2RZxig0VEyocbeGVshIGjHIfXEnrmkiP+mYBCo7fXDM6ni688LHN4Vurjms@vger.kernel.org
X-Gm-Message-State: AOJu0YwHB3eEdjMoQHTNBxe78VaTaxKt1ff1JdAMJW+6zQLvWzeQbYk2
	hm/oajoSezdTTbUtqbozxSaBs0g/DY9nDFViFf0sFcdY0QA0dDqkwPYiId1nyeI=
X-Gm-Gg: ASbGncvF3b08D2X+804q/wxaVih2PYlKjyLl0bF/TRhP2H7gSmGgJubQUowTXJPFhuD
	WUpAG+UCjRRkvKmHpI5HzZPEZ23FhhRKe8Td+lfv//LQ0DorUe05Ao4sfSjpfmVS+VbkdJpfr7B
	YDVn52Pb8cSy5mmN75sGRrplL/DzyJfrz8o7UUifdZWsL20Z7KlP2Dci0iophiSxCfcFLegVxDf
	HD7We/VZayauB0Nvc+ACjKVIgMTCg9QlHDpPrHyzsAV9E0qIoXqVHhl1rquYfLGBj4GnL2NaWIX
	vB5zh02Zi2YZnn6U2SeNv0wuO0g7h1ftkTZRc7rDradDS4NUEKRkhAra
X-Google-Smtp-Source: AGHT+IGmYbu2karVwSKvKAwF5XS/np1cbnnSftiOniiKevwsN7ksXMbWmbShuyMDFyF/HI91Qcd+Vw==
X-Received: by 2002:a5d:6d81:0:b0:397:8ef9:a143 with SMTP id ffacd0b85a97d-3997f90c860mr13768026f8f.23.1742930502791;
        Tue, 25 Mar 2025 12:21:42 -0700 (PDT)
Received: from localhost ([2a00:23c8:b70a:ae01:9cf7:b69:fc50:980f])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3997f9e66c7sm14633284f8f.79.2025.03.25.12.21.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 12:21:42 -0700 (PDT)
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Tue, 25 Mar 2025 19:21:26 +0000
Subject: [PATCH v2 1/4] dt-bindings: display: panel: samsung,atna40yk20:
 document ATNA40YK20
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-1-e9bc7c9d30cc@linaro.org>
References: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-0-e9bc7c9d30cc@linaro.org>
In-Reply-To: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-0-e9bc7c9d30cc@linaro.org>
To: Douglas Anderson <dianders@chromium.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
 Rui Miguel Silva <rui.silva@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
 devicetree@vger.kernel.org, 
 Christopher Obbard <christopher.obbard@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1167;
 i=christopher.obbard@linaro.org; h=from:subject:message-id;
 bh=tTDdAbM6FEoC6Rnmp/8WdmqaJi5csQEBgAAwOs8qGxY=;
 b=owEBbQKS/ZANAwAKAWNNxPBocEb4AcsmYgBn4wJF7FGQSHT0VbmZT2yMBNAiYq7fD7bvHw/lr
 4Kq+iRYd/aJAjMEAAEKAB0WIQTxi9yLbCX5CqI9UXRjTcTwaHBG+AUCZ+MCRQAKCRBjTcTwaHBG
 +CBAD/9APoHHKoz5Ux3QZFEQYB/24B/r4/Cw8EeywzGzDKkBf0HuS2/jarVACiKA2KzyIRnnA0o
 OrHx39pDhVkO+0wBl0FtK0cWjwlNsEGsrcy5OiL3rZYsz/xnmzeWCu1UJGgbgQ0KJvK5eSqaC1y
 /U++rbQMn3dbQlj16/sWmFiCqrMo5C8qWb1uietBgKlm5hVIUqnTfdYLvxlBi329pynqa8K/AHO
 1Dci97G+SK6X/tXR4fru7iagN0AhcPUH3HI+og/zVqV7/GywsupiSAzy+8Usvv8qXxkE4qhTD31
 ini7tAYORal9ksQn0fhM3wTHa5nZH04AuznDcMTXLMUq5r5cR1UjJOPmj3aQG0AiRgmymtD1n07
 mdKNAXwq/o+vfXNRUvcX36tgjIhWZ2NHhkwnWURqM1hM4fKT9IdoP3FNbVFcqM4S6KSX8GrUFFu
 t1ttLx4Y7s0ko1iXSyEjYa6qv4d4Olb1+RvfdjJ6r2IzBpEtv1JdBxBiZ+HVtJW18S2F9SUZGjO
 fD2c2yfHSaytSFx1SygoVDQgwKJBoFwcWF5B9igCXjLqKX1B48tHjs8EmyvdlfCGx3VF2EtpG8x
 5xYnINf8wSFQHl4KP/DUdhBM8vHvqX2/2o1gOdavJc4IIzFU7+iFzj7CQg0+CzNifKMfHsfB1lT
 pZiCe73XMa7poUQ==
X-Developer-Key: i=christopher.obbard@linaro.org; a=openpgp;
 fpr=F18BDC8B6C25F90AA23D5174634DC4F0687046F8

The Samsung ATNA40YK20 panel is a 14" AMOLED eDP panel. It is
similar to the ATNA33XC20 except that it is larger and has a
different resolution.

Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
---
 Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml b/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml
index 684c2896d2387077cf2d91cc5a025e0838c0f536..31f0c0f038e494234d896691f3cf0b9b7cd8842d 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml
@@ -19,6 +19,8 @@ properties:
       - const: samsung,atna33xc20
       - items:
           - enum:
+              # Samsung 14" WQXGA+ (2880×1800 pixels) eDP AMOLED panel
+              - samsung,atna40yk20
               # Samsung 14.5" WQXGA+ (2880x1800 pixels) eDP AMOLED panel
               - samsung,atna45af01
               # Samsung 14.5" 3K (2944x1840 pixels) eDP AMOLED panel

-- 
2.49.0


