Return-Path: <devicetree+bounces-183377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89078AD046B
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 17:03:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 799237A6FA2
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 15:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BC29289371;
	Fri,  6 Jun 2025 15:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XEyjJYcC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFE818FDD2
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 15:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749222196; cv=none; b=dJw8gNztjRi5STU+IOq/s/EH4aCukCmwg+kxdr+HAPdhXYR7KTPzu8hwzAT0ZyoubuqT+ofw9ZXyMYsUmOXQmHbq1pRWWgYJBLBhHWcDflxPZ4R8T4CXovDXbz9H6nmijJgMuFUATWVP8duMOAAqGoJDK/YyUELewwnFpLNg2aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749222196; c=relaxed/simple;
	bh=7zSaIBi9uiibHWNuWKSeAbF5KYAWL6vX77slfEv5hbA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MKgooiRdW/twN3AdQ3FpGakWQ8RGUbnPX1p4Os6bKReBMnsA2kV7cfgeeOddqKJMvFwArXeQN5RBAP5u56aAozxjnKgYXQ9Mixl/XNdli9uyEncuX2lUWgi4IBnvLdtx12HrckNDL/Ob9OgBPV1eSlCXkjkOCkby1anI4OddmUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XEyjJYcC; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-604f5691bceso4450103a12.0
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 08:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749222192; x=1749826992; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RCcZVL4U6ihTDzJ3VSPWudzlRqrxb23wPEKhLKoBA2s=;
        b=XEyjJYcCTUYSK6t2VRjMkTZj4v/Fg387qtOZ1N0NIpeHij3ULMSdoqfDpS/OxhfY5X
         crpQrHELA/1N0LZNfPkutklv1QgDvl9qVKupzTTbqV3qppWeWlvMlgnpVGbUvsh/r0Z6
         9FxjgyyAvdgWIHZ8nZWUVP4HhS2aGiCYUJopyRuSbtW2AL/Sueat+vEkJMQJUj1pYGs7
         +KT9zkK9pbIYa2oRgC/fcoaX3ty1JClXJPbGCZ658+dFz0xl+1+3RRgZ5eCkfpVu6NW+
         0WgUcOqLL+sPdZppvBCyH0PQUQOmsMrhy6vQUXcALK+BLb7JpKRCuhFD//QaaRCBX2fY
         di1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749222192; x=1749826992;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RCcZVL4U6ihTDzJ3VSPWudzlRqrxb23wPEKhLKoBA2s=;
        b=UiC9WGPk98NmuwcK2aVxskTs7zA/pPP+I5FnRwrYHhm8ArCs5AFUZyYMyawSBE7VR0
         yMocP/1qfDwDfwQ5nweEJ3Sb3XqcPL32Gs6teW4izLEHwx/88feuikoFyY3D/pLRMtOT
         d6vBZx7P5TAyHQaZ3nZmS/Ph6L+IzJe5IS/PcsqIYOgM5iLUHEQLw0ft9CDgv9Bd5eXs
         itUQBI189xmtSa58ej/mfKPM6b5kRFJ/aCbJ79k9E5/U99OlQFXX8P1W4WyUOkOMVyVQ
         wMJjA94TGACw+Y+5Vu8X98u4c/IRbjVvsMJKr6CV+eNAUDAjlCGQmktVjWKlc2cUNbXQ
         X1WA==
X-Forwarded-Encrypted: i=1; AJvYcCVKPr+wZ0E31JXv22X8QuKKjoKreMfkEvLail0pa5bWGPGxSBE8saoV2GUlIQuFYjhk+R3puDIRsMri@vger.kernel.org
X-Gm-Message-State: AOJu0Yw43JGh4rxHTjDKbrYC+ZsQcYAXM3Yy9mmtcMRWihQLADlW9ay/
	3qoaf7qXOBBo2p6iZmFoLMuTDjLrxtg8zopLuuIbZBdD7cQWE6U8uML8I/JFL+xqRas=
X-Gm-Gg: ASbGnctR39MGMEzsunVB+zrlH5lqxeqbywSiYKh4LTIialEoJrJWTopigiFufws84yT
	480+PzPIR1LjHnkDppXwkBrniwNiJl9mY2a9iHVbwxoC43b10B69wGo81fv8orUqH6fQ++G5GJC
	VuL9wZvvgX7YHKaLUxx/mXnB5sm9GoK5UT9ipqOOgMomDf+GUQ6y9y2EolITzr5FUBalv+IpQIm
	HUjpkoLZxhOE80rLP9Rr8t3LWtFvpSbgCruC6Q0VgwZlUukLceDcUEs/Kx2Qx3g521gLRieLWzA
	q67roCSwFvJer5uj+zUAfkkRKL/Ky/IAmDvxQY8zJOof/3vlTur+wag6dyyBbtVde5BFwN+YruH
	Yv9LkPg2apkbULhxifzIeDRJFPXHpVOpPNiloJ0L01oBAXA==
X-Google-Smtp-Source: AGHT+IF9JL8hjME8iUOhCNN7DFMjh4zd0yx4XgWB3wO5GrjhD+ZZ+DAVbctjpCTTiSCGzDKTRCksCg==
X-Received: by 2002:a17:906:c113:b0:ad8:8364:d4ab with SMTP id a640c23a62f3a-ade1aaf4eb4mr352597966b.49.1749222192110;
        Fri, 06 Jun 2025 08:03:12 -0700 (PDT)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc38cf2sm127735066b.121.2025.06.06.08.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 08:03:11 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Jun 2025 16:02:57 +0100
Subject: [PATCH v2 01/17] dt-bindings: firmware: google,gs101-acpm-ipc:
 convert regulators to lowercase
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250606-s2mpg1x-regulators-v2-1-b03feffd2621@linaro.org>
References: <20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org>
In-Reply-To: <20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Using lowercase for the buck and ldo nodenames is preferred, as
evidenced e.g. in [1].

Convert the example here to lowercase before we add any bindings
describing the s2mpg1x regulators that will enforce the spelling.

Link: https://lore.kernel.org/all/20250223-mysterious-infrared-civet-e5bcbf@krzk-bin/ [1]
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
index 9785aac3b5f34955bbfe2718eec48581d050954f..62a3a7dac5bd250a7f216c72f3315cd9632d93e1 100644
--- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -64,7 +64,7 @@ examples:
             interrupts-extended = <&gpa0 6 IRQ_TYPE_LEVEL_LOW>;
 
             regulators {
-                LDO1 {
+                ldo1m {
                     regulator-name = "vdd_ldo1";
                     regulator-min-microvolt = <700000>;
                     regulator-max-microvolt = <1300000>;
@@ -73,7 +73,7 @@ examples:
 
                 // ...
 
-                BUCK1 {
+                buck8m {
                     regulator-name = "vdd_mif";
                     regulator-min-microvolt = <450000>;
                     regulator-max-microvolt = <1300000>;

-- 
2.50.0.rc0.604.gd4ff7b7c86-goog


