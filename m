Return-Path: <devicetree+bounces-102095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B52A3975722
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 17:30:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D94661C229AD
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 15:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 682041ABEC8;
	Wed, 11 Sep 2024 15:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JXIxAWSX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A008819C552
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 15:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726068599; cv=none; b=p+rcXNht/36qiaIr/ivouyvn+K+Vgu8+qL4xEA43/wXg2BlqsAB0LfGouslE2SpdS+l5Dm2E1BL8eu+Ju0uoTirKaukLWKJb0MF3e5lDW5SyArMY5T2CcUFWAH5jFmrOjqmfOitPTE3hnzGFZnOtGc87MnuQLzbtVLocbG+dq7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726068599; c=relaxed/simple;
	bh=FvRMeg8VsdpoP/BLOmFCJS+wsAKQAz6onvwzeSLjZWA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=ItcKdxF6Vz4BtNcIupK7dK855dZfus9uA6h7+20vEjFGvgMCfzCvm+CUm4ModFVSjzytn1eEWZmMlCyRs/GchC1IhtF4fEvDMsFuQ4N2mwGRaYFEmjwnfkjxl5Zz+jpaV5d6jKchNlDVsyYEVg8Bzwd2hDciftmdHD5QZIwBB6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JXIxAWSX; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-371ba7e46easo2171f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 08:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726068596; x=1726673396; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xfRS3UxW22sduJXP9jrSw+q2lbc7nwzux6vD9kVr8wk=;
        b=JXIxAWSXMqlroUanwmhg2yxplvntMt7z1OLdxLaeXkgxNT4a5yo8sqcGhcVbkE+um1
         e3DqkWNjZ6WZCOqhm1XFnkbDfN1CX4dDW463Gl7gOOqC+2p8INti2mGXLIAircp3DrAW
         FyGZK3fdmeGxmgYOZphLEEdTPLmbaPXPzQDUZEvPcLqw4rXyGSPDbotoPNtlu2sN5P+a
         CjdEFHK1vVQGFDn2JC3pusoeSU99DYnFNb/jyGUuMWU+zWwcI4pbqjMVng/U548VHAfr
         6eZG2L0kIdLs4QEybi1y80NRwH29m5w12RJfihTKoOdtFDhsf7JxatsjWYUScYNC7SdD
         xKvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726068596; x=1726673396;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xfRS3UxW22sduJXP9jrSw+q2lbc7nwzux6vD9kVr8wk=;
        b=Bv1zTlLfeUyZO0RK129e0qf/2rhPtxXjpet0gMat5EgKdqTOHoRzd/6o2+Ury7ICJW
         Y0RaeFRb+7slph8wShpy4HI8j1+hXjEJsvnpHDM3OqTlwB89iH7JZ+U2t+cATmhPA4Wq
         mOobp1VJBuCphDy3Aqg0ILMMOo1y7ZQHDITppLnBTZtK1ii5acw08uAZAyJcib8n1XKS
         KEGkHrgJ8gJQ1Gi4RlB2mraBWLQB8Z5HiJU/1/YXkFkz0TOuLhf1+p7uXwvJl2szEqrY
         cQTCiS0LPM/FJvnepGFNokOukjUJOQ2vTGzrmI6atgACQvGdiCnFSeOQBF/8OCbokeaD
         RTeQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5HZtYPzJtDrSPWQ77DemF4L4G2J8rhIoz8nNHRFoK6CMlaniHbv93rIAWKU7vHcO/uxBz+DuNAMad@vger.kernel.org
X-Gm-Message-State: AOJu0YzinfXbgk29+ciiWI5RQDngU4zxDnmeG0Q6GpObJe17gCg8oieH
	FmaOvtEEpBrFOZmeT1wnCD4mvMj5Khy9IVMHUtMMpOg3G6PU7F2BVgxYNwFH9Ko=
X-Google-Smtp-Source: AGHT+IGXQ2hzMBDnhXevYTh9vr/JVyyGsAeL3MCHgdYs+l65YBoC0mUZXvxW5mC5O341xNev+eDcRw==
X-Received: by 2002:adf:e502:0:b0:371:6fba:d555 with SMTP id ffacd0b85a97d-378b07a4f81mr2082539f8f.18.1726068595751;
        Wed, 11 Sep 2024 08:29:55 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3789564a2a5sm11848151f8f.17.2024.09.11.08.29.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 08:29:55 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 11 Sep 2024 17:29:53 +0200
Subject: [PATCH] dt-bindings: iio: adc: amlogic,meson-saradc: also allow
 meson8-saradc to have amlogic,hhi-sysctrl property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240911-topic-amlogic-arm32-upstream-bindings-fixes-amlogic-hhi-sysctrl-v1-1-b8c3180b2fba@linaro.org>
X-B4-Tracking: v=1; b=H4sIAHC34WYC/z2NywrCMBAAf6Xk7EKTCKK/Ih5isk0Wmge7UZTSf
 zd68DQMDMymBJlQ1GXaFOOThGoZog+T8smViEBhuDKzOc5nraHXRh5cXmv8krM18GjSGV2GO5V
 AJQos9EL5VykRyFt85xW0OQW7YAiLdWpcGuMvHpPrbd8/O/WHdpEAAAA=
To: Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1198;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=FvRMeg8VsdpoP/BLOmFCJS+wsAKQAz6onvwzeSLjZWA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBm4bdy5dYmWprgV8yKo6RDGvHopOezlwCqDA94NBK2
 7ucG7laJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZuG3cgAKCRB33NvayMhJ0QD+D/
 oCZXtvlJpopNSOeaiN/HNflqJvhcMgF3z8za55rHrwG9nv1L7XnvbAMuTqf0bW/Lu11vb+8pyBUcCt
 bJJSYXryAYkgdua17hP6A1M6ar+AGrvexY+RPt2PGT3F1uSv9qx/EVNmYucyGgWSA5IKyDbAknFpYr
 akFCW/Wm5OuW7oG9C68eu4aP2VHVUne3s0aUJCnUmbv/W6WtFoVcUO5Ap5CdUozjMruqLba5TXfy/s
 iZ5UvqwQbFCekJoIIm1GtWWYmZWhWDoF3P+A37Tw9Sd0mbloJqSAaQQYJol+HNN2r3pkhHLtcAbmB7
 r1aubh9DJ0+iVhtZrpDpd7eEjT8/pbD8mhfkqlbhPVoH1UL7jsoo2/IwzpgF4Zfuagu0CKv1FWHzCM
 +I7nOx1YypK4nzm0H/FlUYQr1xpmxC/IL2xkx48NwkEjweKxMHS50g9k1OLl6gKzJ2PsXtJ0o7hCnE
 jtF+WkUS6R5VLeX565posHg8OsNmhcbOkI8AFHaWQbU0OTjPkjoNWUECDiCE5puBbr65ZYsDuJSP4q
 J2z84HPCT1AD9Ds/teQoQm//ojtuklX3+bJ+pRUlfv5zC0F6Qzb13GwemLdznziyemgt4JagF2bgKu
 oGmGfAvxvu7Uhc6Ylm1nYpc2XTQAeQVSj8oullyWuY7i+9gWOZpe0folEAJg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The SARADC on the Amlogic Meson8 SoC also requires the amlogic,hhi-sysctrl,
property, document it by adding the amlogic,meson8-saradc compatible in the
adequate allOf:if:compatible:contains:enums along meson8b and meson8m2.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml
index f748f3a60b35..b0962a4583ac 100644
--- a/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml
@@ -98,6 +98,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - amlogic,meson8-saradc
               - amlogic,meson8b-saradc
               - amlogic,meson8m2-saradc
     then:

---
base-commit: 47ac09b91befbb6a235ab620c32af719f8208399
change-id: 20240911-topic-amlogic-arm32-upstream-bindings-fixes-amlogic-hhi-sysctrl-127d3feddf3a

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


