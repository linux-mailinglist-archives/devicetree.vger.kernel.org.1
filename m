Return-Path: <devicetree+bounces-127252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D0F9E4FF7
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 09:40:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83EF2188097A
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 08:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66CCF1D47BD;
	Thu,  5 Dec 2024 08:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XLvQM6vG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7BA1D358F
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 08:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733388032; cv=none; b=XUYzgFEv2ipNzvdtAzo/pTAFadj43xSiu2QxRFKXd49HNeFULa7UD1+kOG0uO5izywB6MhVeDwgdxyFbGCtalRXHTmkCPMKEv0fp+858u6immXHjkMza0IKn75KDLFZ8HsKjL1SHw0fPfVtIblD5vNR/2dIrF6x0y0QoILFPFc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733388032; c=relaxed/simple;
	bh=xjXR+zk+M/gbXTMjCLEiAICwQMABoaPIj5xLhMiEpGM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KdMkXF4gnOyI1Ix2csPHFpKnvEvqFAuzJWi8U2qbqcNfyFw5dYdOto9juhKS9lOPDsPjAMZW7KgXNABBOH0z2kuldp9/FZVsz+Dfx/fFgiisBsTS3auU6Ci/+qAk5OFOftoEodi664tw4fvtBh9xjKME1bpec8FuHlqEwnX864o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XLvQM6vG; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-385d987398cso87035f8f.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 00:40:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733388027; x=1733992827; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DH+J2UQA3VOyjrU/P16pyU+YqVrTV2zl0tHrALJVR1E=;
        b=XLvQM6vGdICz/PvnTSce5Qqrors0BfOzfkuVAwKLamHvQ6+JWBS4ICkJpob+HeU327
         VQ9BcAA7gg9dhqkima6HTs+A3HrCbRu2ul4gJdW7u3kqMbwTJq3IDsl9NnkJWKGdKpIy
         ZgTHPTfyq0oRPn/Jo4puZ6P28Z0S3gLmzJWejK5k8g+ROP75oqn6n9je1cq9PgeBoKW7
         5CQ6NSWLheJdMTDV8mTXejJ67sbEfX0CqERc+6AaczTfpjfLW9XyN2rfYkWiHcGL3XP2
         9WKEoB36/4QqhcjHb7Sp6icO1H86lE1/1vzdzQo6j888k8lOPZfIOf1U3MmFClH4B7ar
         jxQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733388027; x=1733992827;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DH+J2UQA3VOyjrU/P16pyU+YqVrTV2zl0tHrALJVR1E=;
        b=Y7PLVw6Olg89TCb5tajWU9GiPp2VU4Zxe0PxRJUc9aF6/4FfBz+CtRS35pOLsO55Qx
         DONZ+54egwPjR0Z53FaxcmiwOh3FmQc9EI2cVqGkNLUzXrlSwOnH0sd7IhTtOT0NhVxE
         LhOuKqNZqfohRtrFAqHQP+nKoUroVrOByagPFU2Ewnqz7OyyBwmIjKRQE9pUwiHUR6xV
         UY1Vn9TCtlD0/OW2IO8W9Yd5afHpiX58jvDZQND+V5r33pCRCg8zcI8k2lMbB7cDe9St
         K6MBs0B5fC7oMLdjF/QdicZDLxMh6eGw/glGjOkdiUBy5YsPerOGjdzshWf8Gvq1yczu
         xnSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDyaUoXn1TwkpVnYOMe4YvhEM9fWi1fCT+su5woJg09G4RosJ20aIPTrkDU8uNhCE8np9hE0yqI09m@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu5NhA812K31MqHzyv8A/ABLS+4JLSNHHYfFBXl31OF7nZ3ycM
	HcqZ8GarJFS9q6Oj3GDuMQkUb4q6JEmcldnW0nnl+fqA8IwE8/v7rASbO3nLiXw=
X-Gm-Gg: ASbGncsAaYghYa6FGIMzqEcl3ZMl62/F6R9kQfxi7D0J4LjtYfXeu1ODObIfTWAfscs
	bKQ+FsoNEN4DHCG9k2DKIvm0yCaSjv6+iynalHPRJ3ata8T1kXh5BCGryg/vC5Algy+HJkBczPJ
	bypZp1fDeny/WA7gC+eRH955Cjqjlzp6xHf+GBSqMbnqua4+V7ZwttKnoldZvLMJl8YlHSc2dQn
	fcxF0yVcTczB1HLIL7UNjah3KWGqSFh68lglizhliQ4CpYHPEhaAFQ88ULTrXu4
X-Google-Smtp-Source: AGHT+IH5z3TSEXxivD/BkQB0gvwva92E/y7Ua/n01z4CyjTb5eBwOSqHS1jSJiEwgXjn4T4axoxYhw==
X-Received: by 2002:a05:600c:3594:b0:434:a1e4:d32d with SMTP id 5b1f17b1804b1-434d08eef18mr32429525e9.0.1733388027475;
        Thu, 05 Dec 2024 00:40:27 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434da0dab9esm15935965e9.22.2024.12.05.00.40.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 00:40:26 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Dzmitry Sankouski <dsankouski@gmail.com>
Subject: [PATCH 1/2] ASoC: codecs: wcd9335: Add define for number of DAIs
Date: Thu,  5 Dec 2024 09:40:20 +0100
Message-ID: <20241205084021.35610-1-krzysztof.kozlowski@linaro.org>
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
---
 sound/soc/codecs/wcd9335.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/codecs/wcd9335.c b/sound/soc/codecs/wcd9335.c
index a2521e16c099..d2604da619f6 100644
--- a/sound/soc/codecs/wcd9335.c
+++ b/sound/soc/codecs/wcd9335.c
@@ -159,6 +159,8 @@
 	{"AMIC MUX" #id, "ADC5", "ADC5"},		\
 	{"AMIC MUX" #id, "ADC6", "ADC6"}
 
+#define NUM_CODEC_DAIS          (AIF4_PB + 1)
+
 enum {
 	WCD9335_RX0 = 0,
 	WCD9335_RX1,
-- 
2.43.0


