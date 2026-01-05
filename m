Return-Path: <devicetree+bounces-251381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B8ACF293D
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:03:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D4A0303C993
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E354232ABCA;
	Mon,  5 Jan 2026 09:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e21mUnks"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B94EA32AACD
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603704; cv=none; b=I67PkCoQ90DoVQbChr9gOzUI08RtHOOVtdKVlFp4RYZKNBRPbiwA9Cs5V3FzDK58HHSx0+UkgvjsN1zpA8tNxJhg+aHlnFQHWLKpFN56wJu9vrpiXLQ7hHOrUSYScotThdQj8CUmqXk0f7A+erY3W7SMbS2bCRs+JdagxTM8VMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603704; c=relaxed/simple;
	bh=/tB8dmlRTUO4vkh5GgVdehbK8ogjmNaFBOWomDp+6hA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EJUSTq6P7Do9qv4aFVWQcrE6U+oSAWkDkjOOjOlY5poJyWsHi2MqDTwFYCKw6JGfNyoFjvIRSOU8BBmeBOSvHLxKadf8FrwSRmZoTmIuYPuPuwVcZGW1tE+VK3C+bs73gQ4tntmvUtjO5LZkf0DixQfsS/zsXpIGWwTircsflNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e21mUnks; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b832c65124cso1063693466b.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767603701; x=1768208501; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QcAewfHh0ra+es5CHo0kMIivfjkLmLaLZDMh7cCTg/g=;
        b=e21mUnksZ9bgxEeUdJ5ADO4yy3TILqCmcTjhJu1Sp6PMscJiqBgAzyzffbr51wJeAr
         nKRD07cQAqhcC/w0GYq5wtujsQu9/IedBPocEWtNqiWR5mWKBRk2iNjJXrUL/U9lK+gf
         XzRlDsDI6O921e+xbYBceiS/2I0XUDfaaG1Qa+hIjZJRz4VrqUk5SJZuMqQdHOMOmPWh
         8NMLIV0Wsi87Fvl1xoJe7LRw/A1TT8T2T/QihEp4s4kTlT0ZqE5x4Illvs0wiLb9wkkq
         F3MUUJLb/BglYwvgkOUxQco7qa4jhymZ4npCtwqt4ULwbcBSCbr5WVgr+XkxtRpAb3Sl
         LfGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767603701; x=1768208501;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QcAewfHh0ra+es5CHo0kMIivfjkLmLaLZDMh7cCTg/g=;
        b=pBm5uqkYlW9RHUduI/I365Qmb5Ka9YaxqbxLAc7BsvVN7Gb1tNWEgPE7hFyy2Ih4XR
         ZVC0hX+dqk9stkd6K9o8/gRpugNAgAm9Apq1rEz1mab+vjGH4pZyi0f6SkCsqRqQ6DMl
         WUkexKOogLHV5MVyPHQpdVktY3Y56tuqpuIpwv439qcT7aKOKeREC9kVfYRuYgrgQyB2
         jXAwpeNoVvzTBUksh5FuiVj946zuVqtDMYhW6zce0nw6H0VBaFqWRD+nOUdc/28hp9Pb
         fnSxccY/zDMz1wpXlenq0LvaAu6yVo1jGbhJNvVbY4/evuCoNVmxy90T5hI4zLbpJtJ4
         VC6A==
X-Forwarded-Encrypted: i=1; AJvYcCWxUV58EHsntKszdHPjyDSwBkD7Diwmc/1QA5XqIF3EeedYuiQLjyM7Qe7cgHQqgZHeICUKYwvXuU/S@vger.kernel.org
X-Gm-Message-State: AOJu0YyEd4z2QB9Lt3y2Ass2O0e2lUyrdMkxgYfB0CE8KxeXi4XkXQoJ
	X39bKvJN2ycmBwYFVpmRwP7gbkRiCvV+SYgbkWwN6OF4eKYm6WpwJdJSgCN38fSGUpXygMY0Hsq
	RQYcQvcQ=
X-Gm-Gg: AY/fxX7Q+ufieEfKWizNcNO3pGwp21urwTRzdmTVQAmKmRVT8m1U2hmUvrVvH5cpUhH
	igqgUtPFYIQCdEmylWOR6wvzUJ47mij+HiaPWnVZ5HplxFDeUY2vaXX9y4w9jVEcx8q5+AHzZWL
	xQ0EHMrwR83VOvyt0F99D76bjsHlqt3M00wpyGxgk+KAVwJnemWRtHL6jYbxIvdURBH2MW1y0gy
	lfikikzUfzhBT4tB4cpWCoAJWhX0G9xOetHYFOO+U4Qt5f1uh9mOVzDFr7tzyawjiXutKTce49b
	DGakYVl35UqUuf5Huylhh4Z/Vme4KPS950c1OEQAs1lkvFCB9ALMxneydzI8okYS1dw/eiwOsC3
	eyzxM5A/1tDdm34foTaM7aqcubJkUmhpBC+NmaCgcE2g5F2xUdfvn5MUoBet+Jp/O1xcoVC/ATZ
	/RjD02VGzm4rkI7guw2l8KFpJRJA+GBy0UKPKPodP84Awi7+H1tM/kSmfJtoU5MMRb1QIW8kqnC
	oimbA==
X-Google-Smtp-Source: AGHT+IF/CJPT01K+lN7oSi7PevRwGsCCriwWOuhAB/HKhWPK5/pKnCMo9T9pQaKGATPI5BY11XjZrg==
X-Received: by 2002:a17:907:2d28:b0:b6d:9576:3890 with SMTP id a640c23a62f3a-b8037193c4amr4758339566b.45.1767603700764;
        Mon, 05 Jan 2026 01:01:40 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0ecb9sm5384010466b.56.2026.01.05.01.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:01:40 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 05 Jan 2026 09:01:37 +0000
Subject: [PATCH v6 01/20] dt-bindings: firmware: google,gs101-acpm-ipc:
 convert regulators to lowercase
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260105-s2mpg1x-regulators-v6-1-80f4b6d1bf9d@linaro.org>
References: <20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org>
In-Reply-To: <20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>, Linus Walleij <linusw@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Using lowercase for the buck and ldo nodenames is preferred, as
evidenced e.g. in [1].

Convert the example here to lowercase before we add any bindings
describing the s2mpg1x regulators that will enforce the spelling.

Link: https://lore.kernel.org/all/20250223-mysterious-infrared-civet-e5bcbf@krzk-bin/ [1]
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
index d3bca6088d128485618bb2b538ed8596b4ba14f0..4a1e3e3c0505aad6669cadf9b7b58aa4c7f284cb 100644
--- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -75,7 +75,7 @@ examples:
             interrupts-extended = <&gpa0 6 IRQ_TYPE_LEVEL_LOW>;
 
             regulators {
-                LDO1 {
+                ldo1m {
                     regulator-name = "vdd_ldo1";
                     regulator-min-microvolt = <700000>;
                     regulator-max-microvolt = <1300000>;
@@ -84,7 +84,7 @@ examples:
 
                 // ...
 
-                BUCK1 {
+                buck8m {
                     regulator-name = "vdd_mif";
                     regulator-min-microvolt = <450000>;
                     regulator-max-microvolt = <1300000>;

-- 
2.52.0.351.gbe84eed79e-goog


