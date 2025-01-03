Return-Path: <devicetree+bounces-135318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C4613A00849
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 12:12:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D776E164210
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 11:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BC2FBE4F;
	Fri,  3 Jan 2025 11:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="3nNmUaqa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A221F8F10
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 11:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735902725; cv=none; b=gcnIX3+LhJv1NBpVjg94UWfnIETGG+6F/mUYLlic+i89mW2pJUJzL504Z2uKueaHdGdR32UFKNreKCjmrSiRw3f6wHhbDexoNLMK64aXFPsBes4syeP2dlkpjMjNJ6EPEoCsImCJpkg5C9KLkwFFOPTYmKuu6n4nBGsQSwcOdNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735902725; c=relaxed/simple;
	bh=3Kao8cuA27nNtqtZ7ArvGjMkQrWXYdTWNUrhnNqarb0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=foPiVjAe2v8sNkn6GgKyXFj8Bpcg83QNg9jlhHhHNqi3V6qjeEzWq0uEewf23HLDmUn0W1V67dFsydIAmJFUISeFA0R13DWJzX468ceQWTdt9gZLD+V3GDvzQdl2tr4Hap8DCzEfCYdSHYPVzfYy3Z3oPe/8Usr7Jf39989JrcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=3nNmUaqa; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aa6c0d1833eso2509980366b.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 03:12:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1735902720; x=1736507520; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MlPl5jV33f2/R0ateITHqdG4xJP9TuWZHuBX474wyNM=;
        b=3nNmUaqa7oLBOY0uGgbd8yGnWsWqZt8L0lt4yT42jMg5VDKxsSRfpTIIHNdtaT0mMe
         g0BIRfnUXcaP4dUiQ7n+l4P8Y2hlnScKBm/FPxpFkzlMStwgxitezYFicQ6xas2XpQNn
         X22O6HMYDJldY6erH88eMyeKvwORqC0P7/U5hJylO/9IN7/ygXAbEb45yBr1/eFVANSb
         vb9dv63nlYOV4clepG+Y7vSeyEuxHVUTfqHpnJnAml1LXdYdf0UtaCyCNBQdyR0w6tYh
         bmImYNLXwGR5tsM14FrVMIA0OJAql+UI2CSEa1jOSq1PPR9AZFEqqk+aQOZ9ATJyOqBc
         nWWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735902720; x=1736507520;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MlPl5jV33f2/R0ateITHqdG4xJP9TuWZHuBX474wyNM=;
        b=ksxhn4cMCIjKic9dWkas7CJEMh5RYHL5Zvuw7/TX5eNzydCNDSiwiNFB14UlyPWaLk
         aQLfkZtd9XId4uxphARvzRi/Cm95Q2LQ6LzHoyLyQrz3nb4fRwpgJvDfljpzf4BcfaXB
         IAO8W76ONJLu28+nv1gfTtx1K/btuhdokr/X11TWsQYWTYI8Q7v46pE1ttTJ1tB8+30U
         Lyw3ts2RshzIyOwR+lWxdeMtuWrWuQmf1CUp7oTvRS5Dh2IrqqLSUpX5EFmiMstXyrQ2
         xfi7NT7u40UPKZtaHGFROJKN0DIqfIpdAjn2Ygn+9UnJyL3RqhaTj56ufquS22TYoveN
         pgpw==
X-Forwarded-Encrypted: i=1; AJvYcCVUsXjQVV5YOSA5Ta9VRqbPuBjDmgZJGx+KDZYigItgByMf2go813bEpJSPS9yd5eJ83fTnB85Kn7d0@vger.kernel.org
X-Gm-Message-State: AOJu0YygFlgKRBWMfE5P2Z5IvlX3tb1sgdhEeWgGWa+iKdEM11ZXJ1bB
	9RFby/Ek14Si+lsVHnC5+VYj6u5xEHrOXj0YC4Bc1n3F7CfyAlTEmizVUR9sp/67edr7qxIHLk4
	s
X-Gm-Gg: ASbGnctyVRKiP/hS8XsqhO7pUcYxAciQz5MK6/8ElnFnytFBPK+rnMGrstXnwy3sxod
	YfFq52uQtB3n1YFaJnDijogKQmY6UwePsuWNWZ2lg4yY+uKhQjpRuu4H1h94P0UO7YgECo7fIwe
	QLqvD3FlIpB757Zwl36aoZPKxjqf6knBZR9rpxYBzp2eEvfl1IHK3BKRnSUkHtO+T7CNcOfK8qh
	J7SQO4N41ao76p4eBqkkHTjsAG0llKRCTMGeudT95MAU10uPlNdQAWQLRH2c+Yn3v+baLMrwP0r
	tkN86iDsiDmc92/NvyNnc19Ajw==
X-Google-Smtp-Source: AGHT+IHX9Gt1bpVbl5dPmi5oxB7HnAT6IzsM3NBq24bJtVCEfLNeIiPaDzcNkqDPYVwl8Jq7uV93+A==
X-Received: by 2002:a17:907:9804:b0:aaf:123a:f303 with SMTP id a640c23a62f3a-aaf123af418mr2914122566b.55.1735902720107;
        Fri, 03 Jan 2025 03:12:00 -0800 (PST)
Received: from [192.168.178.188] (31-151-138-250.dynamic.upc.nl. [31.151.138.250])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f066130sm1894101366b.183.2025.01.03.03.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 03:11:59 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/5] Add EEPROMs found in the camera sensors on Fairphone 5
Date: Fri, 03 Jan 2025 12:11:56 +0100
Message-Id: <20250103-fp5-cam-eeprom-v1-0-88dee1b36f8e@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPzFd2cC/x3MQQqAIBBA0avErBuwTMiuEi1Ex5qFJgoRiHdPW
 r7F/xUKZaYC21Ah08OF79gxjQPYy8STkF03zGJWYhISfVJoTUCilO+AWiuS1lm3LhJ6lDJ5fv/
 hfrT2Ab1uLK5gAAAA
X-Change-ID: 20250103-fp5-cam-eeprom-995e3cdcd843
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

While out-of-tree already two of the three camera sensors are working on
this smartphone, getting those upstream-ready will still take a while.

Until then already enable the EEPROMs found on those camera sensors
which doesn't have a dependency to the sensor drivers and gets those out
of the way.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (5):
      dt-bindings: eeprom: at24: Add compatible for Giantec GT24P128F
      dt-bindings: vendor-prefixes: Add Puya Semiconductor (Shanghai) Co., Ltd.
      dt-bindings: eeprom: at24: Add compatible for Puya P24C256C
      arm64: dts: qcom: qcm6490-fairphone-fp5: Prefix regulator-fixed label
      arm64: dts: qcom: qcm6490-fairphone-fp5: Enable camera EEPROMs

 Documentation/devicetree/bindings/eeprom/at24.yaml |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 101 +++++++++++++++------
 3 files changed, 78 insertions(+), 30 deletions(-)
---
base-commit: 9ad93a473f97ce94bd3229e5dbbc4f1b2d48127b
change-id: 20250103-fp5-cam-eeprom-995e3cdcd843

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


