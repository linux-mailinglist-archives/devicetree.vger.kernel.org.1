Return-Path: <devicetree+bounces-63706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9804C8B6015
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 19:30:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C603F1C22065
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 17:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24F7C1272BB;
	Mon, 29 Apr 2024 17:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NLXNKRaE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC4C126F1F
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 17:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714411809; cv=none; b=YnqVUqtk/fIvI97kw0oLXtaNsfEHbBU8S2HIhfAHin79pcTDisncrMq5D72SqHdCK6f6YoKxD2Tsv+icCnBOrSGp5YPxYTVN0fCmCuvq6b/hKIL5Kqf6ynvcLrPSH9p9JLsa4p7R+lqSYiHKSc6yqAMsvCD+cVRVt/VAa5GlbLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714411809; c=relaxed/simple;
	bh=8EHP99e7hsXMLGC4Iayh0RZ2xfvUSAj3zXoCNKf6PWE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=fScXRUUFz7Ca5JSmuhH0gp730dGBGqWyF3Yw6C6UFh0v2rnjqKkXvnNM5GGjCUCSYNkWXrj23hEYc0XSdZfuEjVETzBTnHCfjfEfF72eZXgNPUV0sCp2tYCHsnBjwiHKh725BWWgx2ZBFQZ2XEPb2EbZ7ExFKiAyUK51Vrdo5ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NLXNKRaE; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a58e787130fso369169866b.0
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 10:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714411806; x=1715016606; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bOJClRFltjtPH5SUzDMPzw+EqdHrKO6L7RF0pIQ+iT8=;
        b=NLXNKRaEbADt1NQWC/qPDBnRwOqiMXQsv3Xei0t9zJTsnF8Hmy11TaTjgplfRHPRr5
         BFD3JQkw70Hyo3cZvl9CfQekdOHGM9EVmLhvKtmo4sHuxjf9d3V9Hpae2cLvRDIAZNYH
         imWtij4krSk76JQHVDBo8sZxffdjpUe8vAZET3yXtYcAVTSMPaztvrZSrC3DCRSvC0sO
         Ez4Z7AVo5tmhd3U6gavlkYhcfHQ14FaZOkSmQw9Js2vY7hyKaz7DskZ0jDZ2HNYyGbzg
         k9MS6JWyh2sH8Y6TxGhfGdzqFEBvi3H/rBkI3Bv1/419qYTnxfcOD1tm4io6vRkUAptV
         ISaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714411806; x=1715016606;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bOJClRFltjtPH5SUzDMPzw+EqdHrKO6L7RF0pIQ+iT8=;
        b=GlSjq5dsvzdyQ3Fe01hi2LNdC1lhT21+qSc0o/TzyUxbL69Oz921n5uJucFXeAuEan
         SIQpOwm4dJIjZn36g9tvZuswzMTmLowgLl4KFNtH/QGPmG/5/K7FGWZAzblGHb3UY7v7
         qV1q/c701q46ZdMlUrDQwIRZI+J0pGhUW59mNmP6LplmeKRt3wIjSFQKFUhBpbC5Extg
         KcXzIwCtX41OHXw2FjazbjMGuG24kh6GXjbnx+nBJ5U+JvGEUHYs7rNz9Iz0bzIvk3By
         2r9SArfo5grx7KTLltNOdT0s3K+CYSuVPal/p7twMgivTF0PHbTqsAY8Uf6zve3xSD3p
         WsxA==
X-Forwarded-Encrypted: i=1; AJvYcCUB0GetzuXZqwrUTUzu4f2LeF8PgjQ5PRuFv5LGclvC7TTJATt9qbeIvIl6JV6u8NViVa8EsMhkvttya0Xs/DjbdJqUpS2kuKY+XQ==
X-Gm-Message-State: AOJu0YyL8at6768tUb81gnd09Qo0c/TppMBQDSvA6gRFx0tiRJPjAhwM
	zv6iSkBDcW96slx3oTsbZ69Jc06Y8Q6EeKIYESHoXIdDcMEMRX7Zf600RF4xpCOQBqstjJjH4bG
	mnws=
X-Google-Smtp-Source: AGHT+IGvLXAzPiDmB+QWdQvxuqGMBFem9tfjCLoQpPn3fdeA8/2TNd6VA2pHq0l426lZdX/DEEPZhw==
X-Received: by 2002:a17:906:4112:b0:a58:9899:89ab with SMTP id j18-20020a170906411200b00a58989989abmr298215ejk.22.1714411805842;
        Mon, 29 Apr 2024 10:30:05 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id x10-20020a170906298a00b00a58ed644d6dsm2770173eje.127.2024.04.29.10.30.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 10:30:05 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240429-hsi0-gs101-v3-3-f233be0a2455@linaro.org>
References: <20240429-hsi0-gs101-v3-0-f233be0a2455@linaro.org>
 <20240429-hsi0-gs101-v3-3-f233be0a2455@linaro.org>
Subject: Re: (subset) [PATCH v3 3/3] clk: samsung: gs101: add support for
 cmu_hsi2
Message-Id: <171441180364.306855.10761459860309658442.b4-ty@linaro.org>
Date: Mon, 29 Apr 2024 19:30:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0


On Mon, 29 Apr 2024 14:02:19 +0100, André Draszik wrote:
> CMU_HSI2 is the clock management unit used for the hsi2 block.
> HSI stands for High Speed Interface and as such it generates
> clocks for PCIe, UFS and MMC card.
> 
> This patch adds support for the muxes, dividers, and gates in
> cmu_hsi2.
> 
> [...]

Applied, thanks!

[3/3] clk: samsung: gs101: add support for cmu_hsi2
      https://git.kernel.org/krzk/linux/c/093c290084a494844f1650e70755b8912292ee14

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


