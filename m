Return-Path: <devicetree+bounces-128524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB049E8EFF
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 10:45:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16963285CF9
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 09:45:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C5172163B5;
	Mon,  9 Dec 2024 09:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JvwHl3ez"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC14215F5C
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 09:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733737497; cv=none; b=PGnRv610qeu8QkR/rOyesBUgp2LTg6u+AHKFfuEiNHm077GLaNz7Znl3QJ+CReeGJKjl98ugNjpt//bR3Ejo1WxMgpGmaVipb9PHVAsLq/ld6ba/g/gfWgcJhwuX29/IabawKM3s2DLg35RSCWehpiVu1Y5wvhthLylfaK/oaL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733737497; c=relaxed/simple;
	bh=fjb9i990GoQpb8o7S4Y3ba1ibdKhHVEzq60SLMZRjGs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=S8Y79RnMjJ/5SLIEwDU29er2yaXkScnJb3AIa23J2l5UZ+h4l2GeS2VebE7aq2tHiY3RdFEpd8/HKU1+wTqmFkOqAar+xx3a17TvOW7qb3fMMN1JGV1t3apk9qHbEKgwm8xH0p5o28AD/UEiZVetnpRUaFwe1ZnZNZSSIqjVhxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JvwHl3ez; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-434a1582c86so3517595e9.2
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 01:44:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733737493; x=1734342293; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=l1sUV7roJsGmgZfOhLBngscTUOda+ttUP/edvvhP//E=;
        b=JvwHl3ezHSEJaYCiyOrpmTuh9tSGsuLKg+QoRQEGtLp7pSd1qQtfKuP/pyu5GV7QIs
         fHIJ7NYZRwth/XPfGa6W6/O/diVe25HcsyvupgkBS0oupeIbQuotxlNBN50xAZb6xTkM
         c6h8syR8eUxmlzF9qt4Y+qu65Bw6UGKbN2WMAxQGRlJ6293fcbg465HZtxnFOYBxlQfG
         fJSIVoVGqZ9ySCXDnrnJefDGM7pPWtsyWon+eel7Ck/2lMKQN+z2JqDs41/10w7qLnpQ
         koJ6njV+VcC9osEbTvuspWlP6fDyYvmnfpi0zGSVv1rSR88EPVSMc5rHlBMFqc3tZeCC
         gfHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733737493; x=1734342293;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l1sUV7roJsGmgZfOhLBngscTUOda+ttUP/edvvhP//E=;
        b=b0D1eiKMNqOg+mMBws+CbDXOxUkVKL6qqZIj3E6/OAXiAJF1LvWOZ/pC3/zcOyztUl
         6lYucaDqaDjhq22Ljj8tAHWB61IsjgANIJXzwqYtmRej3isLRXOE63qViwsxFDHb2Ijd
         AiH2CuJPZgxV1od890tzbGbHsYt6ZDEK0d04pB4j3c67RgNoCrFSaChwLjtH/XEilPv8
         0+b1hHGZ1kLpNoAHJfRjc/IB7Agf/yTsgvZF9czUFSxjJi07fi327FkfKtlIF+trb1zx
         iCZkUaSDjV9k9Dz9jXtXmHKzGkMA5mkyGYiH57vl/ziD2NM8CBMQy95615L/x5iBy/HV
         emHg==
X-Forwarded-Encrypted: i=1; AJvYcCULG0/azvtKpLfivHKq9VL6cDuOZdjB5FdzYAwILhpOxB73I0VVUmnX62usnsQkrwUzu9CotemRURGC@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj3UsAOlF0Z9F7XFMesWVgoYaWGWbIOUhIy2alrBlfH3NBd8oU
	2J8tGXNNEAO0Sorz3WT6e383yv7oUaOHIjIRHg8GAUrbWHb3JruJUucmPNSbtao=
X-Gm-Gg: ASbGncs6gDn7RPY3IQy6XpV7Rv/tKWJTQquhO1m1nn2eEV/sOG/9Qe3CL8IO5bC7ZDl
	iYLBZJlkq07ukxArU2GuQg+sZOUmfDMgMkUsBHvqEZ5OqsI3CGvvzknirUVqr/eGSlNwUleMVPQ
	37OjNgNKaNnUVTlakvrjdHl3fyDa7egRducldNbbqOJnRnYxwWpuj/rvwC9C7gJlbNoiZ6to+7I
	nP/jqQhYyxM3Urt5OBviMkOAPTCnm3DI+pCFEqKllNMnh9rvWWadc1L1guN50uj
X-Google-Smtp-Source: AGHT+IFfnWuaEEFQ2SCpKa35Hxvbxx4TbEd7vRGr3JaRGDSa3d6Pbtwvg8lyAMELgezOfxR6fP5yTw==
X-Received: by 2002:a05:600c:1c0e:b0:42c:aeee:80a with SMTP id 5b1f17b1804b1-434dded5411mr38198335e9.7.1733737492784;
        Mon, 09 Dec 2024 01:44:52 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434e962028bsm80503345e9.38.2024.12.09.01.44.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 01:44:52 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Dzmitry Sankouski <dsankouski@gmail.com>
Subject: [PATCH v2 1/2] ASoC: codecs: wcd9335: Add define for number of DAIs
Date: Mon,  9 Dec 2024 10:44:41 +0100
Message-ID: <20241209094442.38900-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Number of DAIs in the codec is not really a binding, because it could
grow, e.g. when we implement missing features.  Add the define to the
driver, which will replace the one in the binding header.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Dzmitry Sankouski <dsankouski@gmail.com>

Changes in v2:
1. Fix 'error: "NUM_CODEC_DAIS" redefined' error (Mark).
---
 sound/soc/codecs/wcd9335.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/codecs/wcd9335.c b/sound/soc/codecs/wcd9335.c
index a2521e16c099..7cef43bb2a88 100644
--- a/sound/soc/codecs/wcd9335.c
+++ b/sound/soc/codecs/wcd9335.c
@@ -159,6 +159,8 @@
 	{"AMIC MUX" #id, "ADC5", "ADC5"},		\
 	{"AMIC MUX" #id, "ADC6", "ADC6"}
 
+#define NUM_CODEC_DAIS          7
+
 enum {
 	WCD9335_RX0 = 0,
 	WCD9335_RX1,
-- 
2.43.0


