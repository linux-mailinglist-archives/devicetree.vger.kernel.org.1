Return-Path: <devicetree+bounces-27250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A128819C00
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 11:04:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F52F1C257E6
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 10:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 409F420DFD;
	Wed, 20 Dec 2023 10:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="RqkyeQwP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8435220B19
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 10:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a269a271b5bso8229966b.1
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 02:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1703066582; x=1703671382; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+M37Gk5jRNqMp47nD911+Z3j4AfQxogLsJ1XWILEGD8=;
        b=RqkyeQwPh27q2oqsixI2DAO6PZnZ2BGTf7tumPWo6O7ApJEi5uMq5NwefQj18CBejo
         mEPFx9wGupEHTM8XQi2OvRFYVZj8lntAXKoO00LKo6qiaWOkMx036LmVcTd7MeX8AuM5
         NRFiCb0ZkYlBfTLkzBTHCl2wUYnPwMbodOJ9y9oVlMujgMTsuCcJjs9CK98+ITYKOaQd
         D/CpfKuvZvcvVUIEPkxJA3FQveFlowYELAU4hhyyZyS1tp8XQWw65BzcZ8YKYteAjbbi
         vSFLu0azaPTYQXTjpxxxG+mCl2TpiAkkRJoS98EjIqv+mX7KnTzbGijVbZquALlV8RGs
         1K/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703066582; x=1703671382;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+M37Gk5jRNqMp47nD911+Z3j4AfQxogLsJ1XWILEGD8=;
        b=YOf0ofhEb2PZSmqBjH6NUEwe73cn5hTOIWn0EVZYSXwnG9Jzzfx0g1cvuWIGBo6JQU
         6wQe/ATSWkOSLrjyNPyHSLCkguGYF3Y/Qoudg0gNPkpCaWg+rZi5W2RpnBZOC4v6yE05
         MiqGYfHQGPaVt5hyOyVWxqKVj8nBt5itNKizb5ldTIDWhd5UK78NgDHTcn5kVmgMElDb
         JB1Redvopj/e7z7FeDaiPKmCViMPPImTIVmGTq+FcBqwFl1gVNsN6l3FmVM8GMkNQnWy
         rj5aimlouvVfQFxzZWFaXqYWIBA+5v6Ba+BsGo1jX31Fxow+cOfNEUJzcIVgcgSq/oy0
         nw0Q==
X-Gm-Message-State: AOJu0YxDADSkwog2AIaYGvOIDm3r4SKGCYLsiyQGsqWb/sAMHCn39XpI
	r1TH02t5y2fLpF+Vw4jUry0+Jg==
X-Google-Smtp-Source: AGHT+IE6RnGzfSqJ5qNfXoeA16Ix+LCcCFVb+QjU1QmFDJEfWbrcT83a9lPwifkatWlBG94o9fFFzQ==
X-Received: by 2002:a17:906:225b:b0:a23:53a0:af21 with SMTP id 27-20020a170906225b00b00a2353a0af21mr2751760ejr.113.1703066581853;
        Wed, 20 Dec 2023 02:03:01 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id f18-20020a170906561200b00a2356a7eafasm3718681ejq.199.2023.12.20.02.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 02:03:01 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 20 Dec 2023 11:02:57 +0100
Subject: [PATCH 2/3] usb: typec: ucsi: Add qcm6490-pmic-glink as needing
 PDOS quirk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231220-fp5-pmic-glink-v1-2-2a1f8e3c661c@fairphone.com>
References: <20231220-fp5-pmic-glink-v1-0-2a1f8e3c661c@fairphone.com>
In-Reply-To: <20231220-fp5-pmic-glink-v1-0-2a1f8e3c661c@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

The QCM6490 Linux Android firmware needs this workaround as well. Add it
to the list.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/usb/typec/ucsi/ucsi_glink.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/typec/ucsi/ucsi_glink.c b/drivers/usb/typec/ucsi/ucsi_glink.c
index 53a7ede8556d..0bd3f6dee678 100644
--- a/drivers/usb/typec/ucsi/ucsi_glink.c
+++ b/drivers/usb/typec/ucsi/ucsi_glink.c
@@ -298,6 +298,7 @@ static void pmic_glink_ucsi_destroy(void *data)
 }
 
 static const struct of_device_id pmic_glink_ucsi_of_quirks[] = {
+	{ .compatible = "qcom,qcm6490-pmic-glink", .data = (void *)UCSI_NO_PARTNER_PDOS, },
 	{ .compatible = "qcom,sc8180x-pmic-glink", .data = (void *)UCSI_NO_PARTNER_PDOS, },
 	{ .compatible = "qcom,sc8280xp-pmic-glink", .data = (void *)UCSI_NO_PARTNER_PDOS, },
 	{ .compatible = "qcom,sm8350-pmic-glink", .data = (void *)UCSI_NO_PARTNER_PDOS, },

-- 
2.43.0


