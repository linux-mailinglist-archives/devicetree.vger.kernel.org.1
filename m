Return-Path: <devicetree+bounces-217542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B67E2B58204
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 18:28:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A26844E108D
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 16:28:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EF012882BB;
	Mon, 15 Sep 2025 16:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q3xE58ip"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3102836B4
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 16:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757953682; cv=none; b=GLyX9olqZhLBOJ1+YI4wjzNaWLyegs7j6hKFCIF3CheFt/Lg2c4+EVFtqUhFfkiJa1Y5HSKSElU2EuAu6skRUQVvNhLx1LrH9oJqujwXlX7xRbZbgt+G0oGuWiKJXCEn+yZOyJ5fPeH9y50kXXxBDYcBJcYQ7bvR/toLD5xmVOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757953682; c=relaxed/simple;
	bh=byM1gA6NVIvRuKX+ikW9/WDAziLBwNxEBiTHEmh/nMY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uWwvN2mulGRRBmMXLk+vZxnY4ZmDyHBq6uY6vVdFXF2PTPKgM6Wq/o61hY1TYpiibF+nkd5TOePeW6+u2nbJsk2EPzEhyD6oZ9r2nMNp7xZiFg5s5Ion9DmoVIHs14w372Rc7TrXdVlDH+U214SPJn/RjxD70DfDVvxMAJyQ3U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q3xE58ip; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3ebf23c0d27so372958f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 09:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757953677; x=1758558477; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=seV1ou3zNHbYzr8foh2H3pTmGgfBvTOop43lTeUOhsE=;
        b=Q3xE58ipTos/IEQRJV7dxxcfzkEXK7y8F5twR/h6sizkSdroW1OvfObKrVXR9MfEm5
         BkeoTNY/3lzh+frdlwpXQxNklRa8TvKQGT4CYzICoNoKwQ0zDCOu7xTRj2/eCtGYrZZN
         91xOK0Bi+WwG86u+XMt+wYHPn/HlERpP1ehTcmPTtbQShPOpxJA67IqdvUyHxwQ4UYeK
         VQc/2ZR9bgiWo1CBahcqzGICp+jwngYdbxtZBdHTRfRiylJrmYDFHDpB4VtbEfeTeaXi
         NOSjLO/t8qxts56KMRPWVhtyo1LMlZTQF6UcL5V/zRXVnPoPpfZNunQ5yLcwqHEDPjZ5
         cydQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757953677; x=1758558477;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=seV1ou3zNHbYzr8foh2H3pTmGgfBvTOop43lTeUOhsE=;
        b=vwQzHqzYeFENDrYaija0U2H5KvsKRoteN7ueUPE4NT5dsZOuiABb9JD8bY8J9VvT30
         7qcWvo4kLRrb7e9tfMwpKjoTE4BwYIXGG8RfE78hlS95ZfV4z+WN6Dfg2obMOTZbmDA4
         EzKTaGQhgLUPlukdBTjixCOrX048stU73GOT17AiWEPeAwnhDOrRjWIxdV1Q1t6OYcTq
         PZYsskbuco/kaeWvbvw4biMianM50a6VqkSxjl211Ag4CGfuJHNUDFqvIQdmDTY8cCNG
         OvtOt1HyKnLc1PrkBdNnnF1mvHDP3VK2FRLB6PddEBSt+LNDyyu9QGBbh66itKPgSkW3
         4trQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOFOOaqNGc2A3HEy7ij2iDl6tItAF0VWW6CbfxcYP4Ty0Ya3iVfPGvYU6lp+nMZgFuIlpFkspSx+Gx@vger.kernel.org
X-Gm-Message-State: AOJu0YwcPXFQca2ls+rIoAqcHC5w17IbOec6+eYE+cNY5thUgnlTQfFV
	yJB+oD9O/xQxEliGUflhS8zMwSrGyLRjT30hqA94hJj/Uyt4VkFuv3oBLY2JW+j0P9A=
X-Gm-Gg: ASbGncuqia71gI/rHgZ01KxpBLcskG45la/KHVPp24ku9DbQMEWktotYP5Y9OL7x8XV
	zAurKgTHf2VtMbHA4VzZlYTzDxsNYc3S0dRpQCzfUtjorBFtjHGEjwRum++54Ke3Kn/bsgLYVSH
	yKrIpqa2221YuynVrleD5jh7l3eovbSOPkyz66gjSTlSkowdVwk4E9CyyDlxLcpaP8nQtfnfPRr
	x6rCCPkxQPMd+974wHsLPahzrfsZCl7dhQnoo6IgmQCGMLoCiiYAKJuXnwpUAcnS/nTx3DfoRj4
	92k99P/bqWQHbOg8xcfO3+itZFUvUxj0UzsMifdrfn5ERrHrzVnWKlNKwUUXlJwQA3Zl4xYrPri
	pxF2aUNUxfYTNsNGrjyQqj6JI/nvq5jehZ1eH93E=
X-Google-Smtp-Source: AGHT+IHfqSjdbY1hyVmBlldv6pS0JxrU4vVEyDVh7UVEJQC2k7uVsawo4o6Z0mdIDJELMnXHIe67JQ==
X-Received: by 2002:a05:6000:2509:b0:3e3:6b81:b482 with SMTP id ffacd0b85a97d-3e7657995f7mr12205876f8f.28.1757953676692;
        Mon, 15 Sep 2025 09:27:56 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7259:a00:e60f:4b6c:1734:808b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e9a066366fsm7857989f8f.44.2025.09.15.09.27.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 09:27:56 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Mon, 15 Sep 2025 17:27:51 +0100
Subject: [PATCH v4 4/4] MAINTAINERS: add Qualcomm PM4125 audio codec to
 drivers list
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-pm4125_audio_codec_v1-v4-4-b247b64eec52@linaro.org>
References: <20250915-pm4125_audio_codec_v1-v4-0-b247b64eec52@linaro.org>
In-Reply-To: <20250915-pm4125_audio_codec_v1-v4-0-b247b64eec52@linaro.org>
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
index fa7f80bd7b2f8bd2099acb9f38070498e7b1cc7e..b799748af2cbb47d048c70c7b30c9ad191199954 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20720,6 +20720,8 @@ F:	include/dt-bindings/sound/qcom,wcd93*
 F:	sound/soc/codecs/lpass-*.*
 F:	sound/soc/codecs/msm8916-wcd-analog.c
 F:	sound/soc/codecs/msm8916-wcd-digital.c
+F:	sound/soc/codecs/pm4125-sdw.c
+F:	sound/soc/codecs/pm4125.*
 F:	sound/soc/codecs/wcd-clsh-v2.*
 F:	sound/soc/codecs/wcd-mbhc-v2.*
 F:	sound/soc/codecs/wcd93*.*

-- 
2.47.3


