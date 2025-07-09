Return-Path: <devicetree+bounces-194552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B1DAFE797
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 13:23:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA227162147
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 11:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89DAB2D59F6;
	Wed,  9 Jul 2025 11:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="nsSYil+T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563482C3272
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 11:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752060163; cv=none; b=Llpzs+3xgRevQtzol7lJLbJUwkcdHw9o5BzL9C4cB4It7VWZM4AJhd/hxidIWjRkP3K0xWE1proawjF1x6Y/VZ+hdVuJoGZx8G5UDCurBrkGCSbrTqTpwbYhPqOwQWHOKNRCQp6btmDlhICdKmE0SsFJAkjgq/BvzHmerA+/MCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752060163; c=relaxed/simple;
	bh=KV/da6xIzbVHrhG2xY2P4IEV9DKl1AvKU/5Rm5fhtk4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ayLpgZbxiLbAcVCBuHZii08regYW8wcfmASwg6YY4c8Q1gAXkBabe7zC3U0EpVPaSE8TpeeybU3eVHQ1TIX7DU2vx6tOA7eG+iSZBZkXAytSxdDTojzFd7oYrfGUuzqzNjIEatm9JfH3TMz/bm1Ri/SlDJkT/y1ow1x5tRr7DTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=nsSYil+T; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-60867565fb5so9096202a12.3
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 04:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752060160; x=1752664960; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fK4ANoIWktsPShrmwGNUmQluv7mHl27MCE1eB8EJFoY=;
        b=nsSYil+T1Qd+O8Yt+BgQPYU4/pXrNW87XRBiUvhOP7R1BgXf1MekOxNCzLVQ39T2PV
         /3lo/EksnjEd1xrQT+N0T1WzuH/f6MTp4oP2pcapKRqJc2YpE4HZ01deUgJi5VvnWKSN
         mX27EK1cF+NsUlwoLL5+cn2KWPquNA4xhVF1ufNBXeIEkjP1f6INasEUVSpv8YHrlnLg
         rYDB+Y7a/zELato6+MJwQsd3DjIo+oiY7KidqSjp6SmIgAnJqL+PWOeKVF2ZkPEXe6Hg
         +i+GNTJkBt6kC6jKvd+asnO/wx1gYoL4l1KoD/3IgNRwTef0S+/InMUCaO96A/IltwGx
         LO+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752060160; x=1752664960;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fK4ANoIWktsPShrmwGNUmQluv7mHl27MCE1eB8EJFoY=;
        b=Op4FRE9eWJ4xnnKiaEsRA5jdzAOduKiAYPpuIiw/Zs1xO8680Ba9C2tIVhMBAhnDhx
         mg11ga+eLxL/Q+F/MSE6HutVuFFs3bbqmDvh+v71z81hRIn9WUWvDo4A8CHBR12ZOoaZ
         5jYGRad4ycSB+jttG0SyH1Ft315dc/pqsaYEZNVHQMhusfqcI8IaBJs/6I08lv9TI7jL
         n/ry8OUZhVyT22GLKrHjq+Ms9Qn5iikOftfou4dw2+1I1tG6/T+IAPWKfzkRdz0FrkTy
         Tq8zCRQP9fICYtff+EhOxGAW3BwxBsbWyRTnjT0uypz7NYRQWVx9n7t4Tpwros9Ac2rK
         iMBg==
X-Forwarded-Encrypted: i=1; AJvYcCXZ6sYC8Lvei7Um8ntcEPSOZ/5fdcnQsZLLvl+U8lyJuXmKNCaVMn40IdsHd1flF9I7TuemUSQcCE+1@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz/RtK6LE95RQbdJytkE86PvoX8FzAKbysAUk5oxkR3kgH34Eh
	M1DsMV0HmHajBALEyeqaMMJYwNHbFc6SPrgnShjkMfnLLmMIWX0gH8x3hWqg3m8zLvE=
X-Gm-Gg: ASbGncsgv8RIw5YJ14/YEEilxEX1E78YJW8DWrhy/c0e6oRSKDt25IygSS9F3zK7akz
	+aq2OzH9lGV9hTYcztAd5a0+IZcYhp9AgVLHExHhz5/LldXOWiE0410mdnUhUuhMzLday+FK43/
	L2xvysTFWuSXCRX9o9SUbWLv7358Ae8+DIhPqUIr+ULKdvrPVnFuG6aWaXD+X4/oyIzE5g2ew+k
	iMlBXLHbthlCJvgqIEvPRFcIOx+EfyYWNwIBqlN55vj/HvevdWS8SLsHMJL6GZ1TxbSRECpUUWH
	GOUB9hIkt7mjTApCU3n+Tt4yrfcH/kvI2MsvjEDKK1SJKkYUoOf+Z4yAiby9gC52U5q7MO6qNPg
	xKxhVQochCbzwmvTxDsqSvPQmaxs8PitUZNcE2K2ZuQY=
X-Google-Smtp-Source: AGHT+IHZxwLmYMHgjDd4zGI1+9Hd3ISiMtfdbCFiwSyXc9F1royVFxYLXpMSuKapmOzkESC7IF979g==
X-Received: by 2002:a17:907:6d0a:b0:ae3:6994:5511 with SMTP id a640c23a62f3a-ae6cf5d76e9mr268843566b.16.1752060159608;
        Wed, 09 Jul 2025 04:22:39 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66d93basm1079861066b.4.2025.07.09.04.22.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 04:22:39 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 13:22:28 +0200
Subject: [PATCH v2 3/4] pinctrl: qcom: spmi: Add PMIV0104
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250709-sm7635-pmiv0104-v2-3-ebf18895edd6@fairphone.com>
References: <20250709-sm7635-pmiv0104-v2-0-ebf18895edd6@fairphone.com>
In-Reply-To: <20250709-sm7635-pmiv0104-v2-0-ebf18895edd6@fairphone.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752060155; l=1096;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=KV/da6xIzbVHrhG2xY2P4IEV9DKl1AvKU/5Rm5fhtk4=;
 b=xXytyaef40ZyvPrSPOwWzJfwNcIkMrPdQjGb0A6tTQU0ejQ5IAIsJ0UY+yU49mxJVPhVCpSQq
 rA33o/OJcXeBDA04u4TVHfK+ujFJ9Ntn6/I3J6W7oVdYHSKos4UDQQb
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

PMIV0104 is a PMIC, featuring 10 GPIOs. Describe it.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/pinctrl/qcom/pinctrl-spmi-gpio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c b/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c
index bc082bfb52ef480941e1804f1142496e1db6413a..40de5554c771d0c034a458fb4d5e8876473b391c 100644
--- a/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c
+++ b/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c
@@ -1244,6 +1244,7 @@ static const struct of_device_id pmic_gpio_of_match[] = {
 	{ .compatible = "qcom,pmi8994-gpio", .data = (void *) 10 },
 	{ .compatible = "qcom,pmi8998-gpio", .data = (void *) 14 },
 	{ .compatible = "qcom,pmih0108-gpio", .data = (void *) 18 },
+	{ .compatible = "qcom,pmiv0104-gpio", .data = (void *) 10 },
 	{ .compatible = "qcom,pmk8350-gpio", .data = (void *) 4 },
 	{ .compatible = "qcom,pmk8550-gpio", .data = (void *) 6 },
 	{ .compatible = "qcom,pmm8155au-gpio", .data = (void *) 10 },

-- 
2.50.0


