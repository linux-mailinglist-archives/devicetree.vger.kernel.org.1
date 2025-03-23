Return-Path: <devicetree+bounces-159965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 612F0A6D204
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:42:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D5EBB16F714
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:42:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 009611F180F;
	Sun, 23 Mar 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zeR+DCHD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F571EF0AE
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769592; cv=none; b=e+OG0Cq48hhWn93dVNiToXZUAB5xm5gKchTGMKq2b5PXCC+YbWvgE9AsrUoPLDwTAHnbF4UeJdqqoDZoIZ023BrUZwtg2eXEitvjN++O4HEl/Z2EbjUxkDRp9Lj7Kp6C8FyS/Rj+7hBYJcrhm9K1Q4SpCNbEFLWzZXDCAfwq5lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769592; c=relaxed/simple;
	bh=PIE3UA5RRPW78dm5St1dv8icSuMZdl9l2kQ0j44xOOk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Cx2gNz0uN2rZBj0xSYh70n7AP2g0PCcY8+mxu8V1RM3sHE3F92yu3IepMIxlPK94n7xfL217Xa8cTo6t2sPrqB3qXYsDb7HIKIIG+kPdCa20tYVFqjYWrkQy8e2hhFLelMcrmJuRT5jO6by/R162znZT7O4yLhIpM1815uFK4P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zeR+DCHD; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ac2963dc379so636678966b.2
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769584; x=1743374384; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jhTacnWIaHzojbgZVRhkXLoj0m8Qn0dJu2GgWCUO9Oo=;
        b=zeR+DCHDsDBIMpShQebkdtUXd40HXIHIzeIvW7Kd+RwPGGXp5/ug1FhtqNmdp0LjpT
         89inYhfOkztgyaHcOSyUKjD62uXumVJsbYEuhsodv65UAAcZWAaQWGQOn7O2EmSiTIly
         vYA1ccF21zyR1GxD68OogxS8Vw06JkrR5s5JVYQYxLftw0dwbbSuBFq5eWzOijVSfRoF
         8qT78qjhKymxXXtNqphz5NjHp0+5HjuPiZSz7jqp7obOiMYeyMDVZCsz5xXEmAnpj7AN
         82OwFGTRWWles4Sc2f3lL9q6w688lwkqMRA49Rg1+meWzd7qZ8CumTyXWx7ittyOKLnC
         SFiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769584; x=1743374384;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jhTacnWIaHzojbgZVRhkXLoj0m8Qn0dJu2GgWCUO9Oo=;
        b=UNQAVAkRU1DcBOhpJWfcYjfdncjl1sD1ExE47hBHKAQtII5rjGupjiS6krmt8JO0gf
         lnLPKq5cgKMWGl/8fISpDldTZS6lFk3iRsm3OqNFlMssbcIVOKpeW30cDyWQ30SxB96P
         9sssg5/O6uA2EouHodaeU2Cl2qZBaphfUVIKFLIQWIKVJWWtIe5XGKz8l9XJ5UkzgYnl
         cVUzTEk/nJ1TmTGiwyEU8JFJ2CY74C92JFGDBEPzxIHB06lBLb0NkMigrggeXWbfhAqW
         2LstqHUKZZqdOhVcI59/dtjMt5ddAv5pzOdnSEK+XT600evESHptCp+5KnDSMh2jhd2B
         u6Xw==
X-Forwarded-Encrypted: i=1; AJvYcCXBor2ldf1ghWEL67oC+7PkPgCGedD10z9lteHy8y3yP85kicimuhDL0Ff+QxZidfv8CcMZJoneVl24@vger.kernel.org
X-Gm-Message-State: AOJu0Yw09vb2m0czZvIdvfDstjXbcZV6+iKah5uS8ePwwxMjS5JI4Vfy
	kndQ4GhTWAnCh8kq4eU3TaWNf5FuTIri1vRdFytvtQisuvN9DKno5TWiEmnMZb4=
X-Gm-Gg: ASbGncvB5vQo3BS6QfphT5ENyV2eZ3Uvl66fIvwFjZox222FRLWSQO5xacBCrbT+EoI
	iKa4/uBqA+c79gDD5khkOZ0kg+A98f5UBpGl9PNpbrg+X3B32VWWZKiyCStlrBv/R5DfQ0/L2Gk
	pOqU2i+co+Js2Ay07uxWX5AzmI7LXPUZnJ16rzlv9KTYilABHNo19+1v6jX6Re8iPBUfJJG1SXx
	73+AA+X0IDzHRDf7+j8+wX7FvBue5xx834lT+soe8u42LDOS0IMGyKUsEf8/P3I84NuoSb9R+wl
	sYPJuYhAYvqsebNv1TDHjmfa3XDEZ2HaWeyjLOifmzMaIKiuSyOt0HU1Dmvphz3IG/6OJiPv7Vl
	8wk9Uri5ROsTi/M8FgC6hFEVXqyK9
X-Google-Smtp-Source: AGHT+IGBmk43Q/5KSqStfiKdhkMzhnRppuC/FFtUW+Zjtoma50FlDv2NtShPafcq2wFC3LRoUhXzZg==
X-Received: by 2002:a17:907:d2dc:b0:ac3:a7bb:1c2f with SMTP id a640c23a62f3a-ac3f241b95emr1147181566b.7.1742769583868;
        Sun, 23 Mar 2025 15:39:43 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:43 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:50 +0000
Subject: [PATCH 34/34] MAINTAINERS: add myself as reviewer for Samsung S2M
 MFD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-34-d08943702707@linaro.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
In-Reply-To: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

I'm working on a Samsung device which includes this MFD and would like
to be Cc'ed to further contributions and help on reviewing them. Add me
as reviewer.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d686e02dc7ccd61e35173df997d2f894ee5ab515..10945909f5b317a894b6afbeb6bbccd1a691de9d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21341,6 +21341,7 @@ F:	drivers/platform/x86/samsung-laptop.c
 
 SAMSUNG MULTIFUNCTION PMIC DEVICE DRIVERS
 M:	Krzysztof Kozlowski <krzk@kernel.org>
+R:	André Draszik <andre.draszik@linaro.org>
 L:	linux-kernel@vger.kernel.org
 L:	linux-samsung-soc@vger.kernel.org
 S:	Maintained

-- 
2.49.0.395.g12beb8f557-goog


