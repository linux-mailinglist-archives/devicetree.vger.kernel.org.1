Return-Path: <devicetree+bounces-204433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C30B25819
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 02:15:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 551E5623CBC
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 00:15:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE20413DB9F;
	Thu, 14 Aug 2025 00:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xM+SuKEC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C633D544
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 00:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755130510; cv=none; b=tvjwc5GCijJ92p2D0KFwH+gQYLI2olvXJxDEQWNQFjI6Mm46mkV9vitnZYs14KOS8L2DvEEhLrkEDTvPjphsYfett+Bn8fne2xid1lABOWJTzY/mHcB1bKI+wi4T/pXphJBxFWPgeAKGKzf5G7jZ8xMmJquC3YQM8chOQvds+W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755130510; c=relaxed/simple;
	bh=8ePI/6PJhtyF7LbcZnUAOksK1ilWu/10/PFT3euQFOk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L9Ckjv6jMD+KY03y6r/e8aeC9otTNtHqBR898z1qgc3mP16MAVnS7xaBTf8snXMsWqKz22rWmR8YKGhbJg6agR3LR43SnRHnCmgfX62I0mQM/0PO54/2d+1QNu1vTJXBYcNLDg3LU8WKnAsrBGRQgaZ8YNBYqdrqQomNkDNUV8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xM+SuKEC; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45a1b05a59fso2663095e9.1
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 17:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755130506; x=1755735306; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U6UxVKvq2fCGJ3yq55OqNS+Mb+WIhaHcEFYrRTU8vuo=;
        b=xM+SuKECAUlddOSOg1oxenE54FWdPbRj9L64yX0zLxqrFmQSzt19h1O8gHaCHdQEUb
         CBIIA+tv/8+oicr7RTQHej/qoVGFny3XWBuEEQpd7mNlp0PXDkFPVJugrW31UONNQSG/
         GPIOEalpXBWUGrHaSsKCaSPmLNv/+Z/cRGhyYyAK4ypvIWSbo2HX9ptINJHg5jwKdPte
         rV/7enECdLz0uDsjQVkhHh8sIkJuurTBK4lNbnEwb9un0dvAxEZ5BIb8ZagEscu10ArT
         8tGRDW4Rd1T0niIMsOADsiPOfHKWyS/gd7vXMcQnLNQV+wBsciHRRu6XNpzKsrt5ZEwF
         CzIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755130506; x=1755735306;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U6UxVKvq2fCGJ3yq55OqNS+Mb+WIhaHcEFYrRTU8vuo=;
        b=RoxqKV/iCCf/KbXm/ZTVxwoI7EiJVfn/5ZXZQTWt12bWfRzssAdwD3XRakaKbfyqZr
         ogY7s0h0wjeBz6+cY1EePR9ThZ4z5tP8k8q5CLn7y7Q0T98R6l5btAeNxLMyOn4glr/F
         jmbEpqL9qDZrWcBCRufkbFejYeV15aziaHYFjbNDNd5zkjLLwa1priMuoFFZF8F3QnE/
         s5CUzf0dMlVK4V0G1dkk7+R34IpAAKMoxrREr0gakFU0OT0D9hJv4Zk7UWP32MjukZiM
         HyGRX/dtzLTawRsJ92BUDDbQU30/E9rcaAmH8hB47/L8oOwVioVwzNFHf7zIE2O4n8Rj
         5Rlw==
X-Forwarded-Encrypted: i=1; AJvYcCWN/taFRKiuP4WvJ7SU8ht4K2LeckPAm2F5EfUda1TnJ+o84h7gWVxaxdPYcD9JPXy0G0dZNwmHS5es@vger.kernel.org
X-Gm-Message-State: AOJu0YzfG6QglgjbuECdUEfeupdBCuyzrbvwI+O8wQAArQpdzZOW2cyI
	V4y7+Gv+Ssnd8OHFCTFjaRCrzPWwJBG6F7jBZJb9uq6P23WrNEvEMLn1zYueOHtEub8=
X-Gm-Gg: ASbGnct83KDSxNpZqxSoccXCUaztML4iE7tXoE5jFWZCr86ttQmeQ9r3IuNsvJCNawp
	1F9C81yWTYVg1O2Z+bGs04fnNczjbigJivjDwMgONgjrcg6LUK1aP6JA7A3zYVxIx/5EhIi9DPD
	4iEJ/QH322ApNcBiqdVtpDL1YrLcSgEiqdyus6ABlj1rsV2HrvcB3YzX8FMGDvNKEmXoihI1RV8
	ZZdAuTh39o9UNVg2U87x3ygRMbhgaeMahGJ2xKuTy/nfeIsk1gZntfYGRgs2WFpx0adV74n4nm9
	TujT5nDj0nTnLed+CZkCJV7JKLt3EipYZpxmXvnm2NDa6i224uOHI6FnFHa3S9KFO0k8iWkj67i
	talB0m4OB9kOnTMOGBWBVQXtc0I3Q
X-Google-Smtp-Source: AGHT+IGqtVXj99eU88bSXdfAnC/1JtxDDSo2fqotoTnpGOovuJhcvJB6U+7t8TNsncfurTkkQhDPvw==
X-Received: by 2002:a05:600c:8b4b:b0:456:1006:5418 with SMTP id 5b1f17b1804b1-45a1b61eaf8mr5434535e9.13.1755130506083;
        Wed, 13 Aug 2025 17:15:06 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7259:a00:7f3a:5ab2:26aa:831f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1a540e1esm18449065e9.28.2025.08.13.17.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 17:15:05 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Thu, 14 Aug 2025 01:14:49 +0100
Subject: [PATCH v3 3/3] MAINTAINERS: add Qualcomm PM4125 audio codec to
 drivers list
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-pm4125_audio_codec_v1-v3-3-31a6ea0b368b@linaro.org>
References: <20250814-pm4125_audio_codec_v1-v3-0-31a6ea0b368b@linaro.org>
In-Reply-To: <20250814-pm4125_audio_codec_v1-v3-0-31a6ea0b368b@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, linux-arm-msm@vger.kernel.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, 
 christophe.jaillet@wanadoo.fr, Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.2

Since new audio codec driver is added the get_maintainers script
should catch the new files.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 0e1bb91b76598edbd67c8a174d2d41f6c531fa85..feef290ae7fb09488cd4946fc9bc2d4203f7c2df 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20465,6 +20465,8 @@ F:	include/dt-bindings/sound/qcom,wcd93*
 F:	sound/soc/codecs/lpass-*.*
 F:	sound/soc/codecs/msm8916-wcd-analog.c
 F:	sound/soc/codecs/msm8916-wcd-digital.c
+F:	sound/soc/codecs/pm4125-sdw.c
+F:	sound/soc/codecs/pm4125.*
 F:	sound/soc/codecs/wcd-clsh-v2.*
 F:	sound/soc/codecs/wcd-mbhc-v2.*
 F:	sound/soc/codecs/wcd93*.*

-- 
2.47.2


