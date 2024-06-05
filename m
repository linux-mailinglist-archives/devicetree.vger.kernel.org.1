Return-Path: <devicetree+bounces-72675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA8E8FC80E
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 11:40:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 15D7C1C218F4
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 09:40:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B78F719007A;
	Wed,  5 Jun 2024 09:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s/jZCjkL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E99190071
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 09:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717580233; cv=none; b=mJdM8qwOGHv1daLOy3DsC3LmR/tDzs1yV49A+K/WxFXyFLTTOj2X9l0rYMFzWfHwTu4hxSpxsxjJ9c4S7g+M/gJAL7mYFUmnpPKbRmM20ehq3Bu+Fg1mzVbtC8cxsPIZam+gouwMAAWhKKV306BCR0anRS7SdD1gfKznIDngh34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717580233; c=relaxed/simple;
	bh=oi2WvBkcuibAfXOROdiAwxHovEGXU0w54vU+XEWreVY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=qwkQ8GnMv1C/uqLxs833Rxejj1I9SDg0uCfRW2i1kqpVwhvfsMhlfORvYIA2JovCBIeJlAywjoFNc06jSjG8isHdusXRb1IEGu6e1Vtrf7YnupKQ8u1GmRYVT4wkOraHL/PxJcxdzR82JC3RMimuYFLdr49sT/fCBNcEgPkGmW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s/jZCjkL; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42155e7084cso8049635e9.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 02:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717580230; x=1718185030; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LSZI+79Ozf+tLjEjjKM/vl02OsbKzTxtYkNCBqG2m2s=;
        b=s/jZCjkLvjppfLVmWxBbvPvDbbCeP7nj2Uv3zFcpRXEg3crW/ZUsi/OC3WEV6l0iNO
         8dNqn7SASjwiLEoBt5IQzymgz+YYvg+Y0j/d4Bn7buuB3/eUIAMuNc58t04ooRQTxybE
         UFhOzYIg5wpEmpQTB7goav+A0uSZaXzsfIt+/oifyacwIHAqy+fnJriwTl4zDm21e3go
         /hVe1k/kNtqkqkgnWAKbh/4fF5BiMTHWgp9RNJBNDAhgcwOaMt+JO9I4cFOvZvQiYMch
         qFr8SP4MdDKAUyh6RYk4pqLDE10ozi/XFfphpcRHedNN02pjEfazSpDPkaaIcJdU4SV8
         mHzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717580230; x=1718185030;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LSZI+79Ozf+tLjEjjKM/vl02OsbKzTxtYkNCBqG2m2s=;
        b=lkEGK1xPgWyHITnb92oUiwyX5vbNMxp8QpEqhLOAtDbRTOT/76gRm2KYmw+8xKbgxQ
         owENvyArZyzkiMtq5DrB+De+7SVDoPCInCkaFu7iVZKNX6L7tS0ujf/cNkacty/MqwZ3
         yeshurLa00gs6SJe8O8oQHU8B24t7e71Aw0QubUESSIQlyaNwoipGWoLpPHFsn84kLHD
         SCCfDYvCvckFoHL0qCoG/G9v/fB8f6zAwP7XZIB2Ep61EvHd+mYKBbbzGnQAv4FLNXtp
         wxKTVpew5Q6+e1jg62PAt2v8KAZbiP6rauypshy0BwAKQ3456PuGeCpaOhMsEjI/LZVl
         Ya/w==
X-Forwarded-Encrypted: i=1; AJvYcCWhV62/1vRn9ZwpomY2k4WGL3UxZgccTTbL99msnC8zT6kitkoLrzsQ/ZkDhsVgXN1gBZMuMvhhhIP+xkovJUP8nJDaMFCv4wlnNg==
X-Gm-Message-State: AOJu0YxcpmRQpYmamndnwF9mHFA2ILjux9F7yd1JK2vTb0yC0wj2GeQ8
	DeklOSAyKEjDLacixM2Z7rlABtjj5S40sAt4HPwbEJVqXhHUZMRowd8JZUtdsgM=
X-Google-Smtp-Source: AGHT+IGAjFy2U1Sr+dNT5Lezmn24SCXAPKGBu2lzxTmKU5abNAvO1losuUJ7PfnTYXCgDx0HUW4r9A==
X-Received: by 2002:a05:600c:46d3:b0:421:2adb:dd5d with SMTP id 5b1f17b1804b1-421562c7fa6mr15583975e9.8.1717580230396;
        Wed, 05 Jun 2024 02:37:10 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-421581016c6sm14510245e9.3.2024.06.05.02.37.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 02:37:10 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 05 Jun 2024 11:37:08 +0200
Subject: [PATCH] dt-bindings: iio: adc: amlogic,meson-saradc: add optional
 power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240605-topic-amlogic-upstream-bindings-fixes-power-domains-sardac-v1-1-40a8de6baa59@linaro.org>
X-B4-Tracking: v=1; b=H4sIAMMxYGYC/x2NSQrDMAxFrxK0rsA1daerlCzUWHEF9YCUDhBy9
 5quHg8e/69grMIG12EF5beY1NJlvxtgelBJjBK7g3f+4I4u4FKbTEj5WVPnq9miTBnvUqKUZDj
 Llw1b/bBirJmkGBpppAndfIne84lDOEM/aMr/uu/fxm37AUJHyVSMAAAA
To: Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1007;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=oi2WvBkcuibAfXOROdiAwxHovEGXU0w54vU+XEWreVY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmYDHFLxSezg6MSIqYHnt3c+yfTVn70mG8pfNZ2oUF
 kJzSJT6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmAxxQAKCRB33NvayMhJ0bRND/
 9VWdftl4+ZipFhnGlqNjNwYhnqAPXR3Z0dbtvuMA7h/YrhUWK7oCzAcQM/xI+XK/HfPi9D1TKdstU3
 KL2F2FexCIHybxIBX76TWWAdT7C/hN8/Y9zXPj80wZLln4S2POzcAjiRRQ89IjZB3C+8LVDApKR/uC
 fozYKf3ofRX8YJXg5yojKqoBcB2wH2JOysdHma+e6i1JlQs6GSa7SS6iBwyZhFena7sh+hqTu+N3NV
 ezXtvolX/8fA5N7H4u0q2se2jxPsxqo4jc5awmDyLlcO86DSh2q8rK5E+fqB6I+hN4Jta2oj5WQ6fO
 WrIU1IzJXu9q84bFBPfeOIRXOaRI4UT/D7oC3NysuOYVNKHFinu6hshbdTcyQMsrICWcodXvAia8zp
 rfrdHW+tgck335MYJ7X3uTJXztALrOhB48enyC/8pk/eTzV+VyIJ3vf4pMm1CUToJEihZET5y/qshi
 7OWOZHGeOQSt7HQusRVZTAkmHx7tktOa0IPSKZd6essrqWBLamjpSD6D7BN/RJegC040YlSBV4Hc4C
 2/lrsFupoKccNtpaMrOb8djrXYpMF62TNkmRA5cCP/uUg51FfU9tZVl0IzeLwi14VwKLBkwFJLHg0j
 i8AcF8M73dcI7L/LbXTxXYzGYrLXDueA0365BDHWLs3FGCdHKCVkuyqzZvow==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

On newer SoCs, the SAR ADC hardware can require a power-domain to operate,
add it as optional.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml
index 7e8328e9ce13..f748f3a60b35 100644
--- a/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml
@@ -66,6 +66,9 @@ properties:
   nvmem-cell-names:
     const: temperature_calib
 
+  power-domains:
+    maxItems: 1
+
 allOf:
   - if:
       properties:

---
base-commit: c3f38fa61af77b49866b006939479069cd451173
change-id: 20240605-topic-amlogic-upstream-bindings-fixes-power-domains-sardac-0f9d22e7e558

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


