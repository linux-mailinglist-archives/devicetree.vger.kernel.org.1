Return-Path: <devicetree+bounces-135320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE66A0084F
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 12:12:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB70D163889
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 11:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED24A1F9EC1;
	Fri,  3 Jan 2025 11:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="4f1qIQud"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE341F9EAF
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 11:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735902727; cv=none; b=aagXdrT+RKpnPkLSTyivqVhU9tEeI0dotTyEpGgYO36Mux9r7vkhjZ73m4C/bn5g37PLiMooii4eSRmlESDA+en5l2WKv/mD+o8Ax5J6StsMdRrmE1Pm3yKReGFW097YKc3aMHTvnZSnHokVjLAM41yg2jXMAwIVf0LQ6AwNknE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735902727; c=relaxed/simple;
	bh=V7LLzS772JzWekboxc7ic58WU1/YMCue2Pnz74JgmzI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bo+HZzklLD0FTtItOM29LVTMU1QYFbFZ1hPUZb3TPx+/Tursxfg3sa+/+vzFx78cAMaqQ0F9h2IZjphiWlSUIHeyGHF5FS3e01LworTPPLm9BulclHWvIyQOKjRPox8zToG4A6bVcX2X2/SC5epsSzbbNXHa1razAbvojaJD1RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=4f1qIQud; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aa696d3901bso1434192166b.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 03:12:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1735902722; x=1736507522; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WZ0KxM+G6NVYDY4yC/WE/MAo3QAuIiwCharn2GxEX8E=;
        b=4f1qIQudf5SpQOkHhLxSF5i7ihOqy9Ood4AOE8BeeCrDcqUTOQ2J3pt1x/3xrNNvKK
         nIrMShFvtyZVoQ+K+XozR5tKu2cHsF6JGBgGtCcHmMRafp3tQte2PB17SY8BxfszUz64
         9EbC2AIluJN6YyPSSe1UyuEN3ORvouDn7n2bk9dnBESJKfmmlADzurnrNOXqwCJ0qKIB
         okRQ1Upmga0l/skQBErm/BBzcBcM406+wCeCi8dUg4/GrIjCcPMzt9C0d4gVTwWP+ONk
         Jufmsnjv/I7xvOwQgfKZ9nlwb8qTb76fmcSB7FehV4N9XVM+mbr5R68v304FjxCp1YGa
         fN1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735902722; x=1736507522;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WZ0KxM+G6NVYDY4yC/WE/MAo3QAuIiwCharn2GxEX8E=;
        b=rklcofPbsNulaWdIyrbJTx+3jwbYgIxt1FcQe4WxDst++qapAIRdql3L5nfJTsc5Pv
         oUR7FbzOg9kxbPqk3YL9t/CIsei5ytXnqw4dNuLqglTvf4WP9O42bWop1WgydJUmWOfN
         T7Ax0VakVbqegcEffX6nJv7XXty2qH2z3GIC38dQER5nuxIVdkr1LBzdsU0JLE0BY+A8
         zj/ZZIrVsKZROLn8iRLFtJHuCvjPoSK6SdP7rGTOk/cPELWbcehPS54Lg8VayASrJ5Hs
         A1A7+W3EpgpruORZKHgTwq5Gub3BcEU3QC/lzsBwpuomDR/w+4Kl+O1aQHNAoqUcXVgD
         UCZA==
X-Forwarded-Encrypted: i=1; AJvYcCXq9ZKYTbK9Do0hYKdUOQ8xnhMkc0qXRq6ZQ3QncGQ7hUYHWnEagr58/gz6nJ4VF4l1mU2ulydQ/hyC@vger.kernel.org
X-Gm-Message-State: AOJu0YwMb3o3rg4Vs4lLYKSA5LT/saSetO33egcJgVJYFRET/JyHUT2U
	+7gs2sVf1LcxEMJo2iODDW3eZ+t0Luz8R7PiqwnuSG3mp/3RRf3KBwOLZsr3ZC4hAfFhxbtGVPs
	T
X-Gm-Gg: ASbGnctSebCuHiMmvpiRL3IAMChCS4rlIDcd4jwQmUAGezCb6X6EreABfRe2XlZHl7L
	9/K8uXqcDezZiH4d9kK23Tspmxa7Jc2NVzN1zMsOXmznmcBSfCI+1rHt8N1k0jzyPbmkNb6Rp2f
	sKsjfE1CVqDOoU5yhZRTg+08inU+Rw5Yl/O6qN1dcHiuTHZj5Cu7OyC+uYXZQ77S5I28R8y62WJ
	5XRIvPpiUYQI/uFGoD4O+rdxgPmgj1dUq/oTJH8TzAYKg0Cca2M3swJuYMNKMqsuzf8+2x0FgaL
	3VCraKxkVC09dIeruNe32EmprQ==
X-Google-Smtp-Source: AGHT+IF94pkNvH7h3XHPLp4HlTKDGRzARv5cgxdc0QFDVdciNsmjQcTgfzogxJGqFhNBU1VxR2h4OA==
X-Received: by 2002:a17:907:6e89:b0:aa6:538e:a311 with SMTP id a640c23a62f3a-aac2b28eee7mr5003930466b.18.1735902722233;
        Fri, 03 Jan 2025 03:12:02 -0800 (PST)
Received: from [192.168.178.188] (31-151-138-250.dynamic.upc.nl. [31.151.138.250])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f066130sm1894101366b.183.2025.01.03.03.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 03:12:01 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 03 Jan 2025 12:11:58 +0100
Subject: [PATCH 2/5] dt-bindings: vendor-prefixes: Add Puya Semiconductor
 (Shanghai) Co., Ltd.
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250103-fp5-cam-eeprom-v1-2-88dee1b36f8e@fairphone.com>
References: <20250103-fp5-cam-eeprom-v1-0-88dee1b36f8e@fairphone.com>
In-Reply-To: <20250103-fp5-cam-eeprom-v1-0-88dee1b36f8e@fairphone.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Add the vendor prefix for a manufacturer of EEPROM chips among others.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index da01616802c76830a520594a69bd6a2e0231df0d..7e743a9f638dc9623f73a31cdc4b6cc899cb3320 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1204,6 +1204,8 @@ patternProperties:
     description: PulsedLight, Inc
   "^purism,.*":
     description: Purism, SPC
+  "^puya,.*":
+    description: Puya Semiconductor (Shanghai) Co., Ltd.
   "^qca,.*":
     description: Qualcomm Atheros, Inc.
   "^qcom,.*":

-- 
2.47.1


