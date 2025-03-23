Return-Path: <devicetree+bounces-159957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EF3A6D1D9
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:41:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 062EF3AA074
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:41:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD33D1C84D2;
	Sun, 23 Mar 2025 22:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FjTp/XUQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216621DF971
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769588; cv=none; b=hLf9lEcDuYIsMK4UYs/ERXzhk9FTCGmwDqDkYi/BNThOjK43VYzuH+EpP3qqR1v6ivvLbVxHEFsPKVcztUFkU8SF/yPvRgfG8BUCPVQTJJcZ+H8FICCqWqMLCat/sn1uvEKdI1FGjpto/6nu4T/7wVLaSrbmex9z9QrNg5cL8uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769588; c=relaxed/simple;
	bh=/OXCrEd9LUPrpcKww+A0Kr+dM/K8OFFL8Z6qLEQS07c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=V6lg45jXPTmZ6inW3jfEg1iRR3akfldyfMVrTd/QnjtMsMFT13tTuy1zlsCGnPn3IlKmfuaa5AKqWD8HD5mkQzRIBIP/uBeRD5fgc17MuPuUb9rFGNLjMVLGvgCccP63jtdfgpHftqMEfcltVh7fBfbSEMIvfAVYM+NAyOaYVsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FjTp/XUQ; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ac41514a734so155208166b.2
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769578; x=1743374378; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MtwK6mOFDS+3HmyCw+zVaAjjy/x9ridjjJuIuDjP5y8=;
        b=FjTp/XUQBGfShXnTuX3CmHx6Ok4Dut8B0ibb0vSOCJNDotKOrZEqOLCTWulKfPQHMZ
         7hBe0vWxxKL+b3W85RBg4Y+aZAtHRK0VhQwukCv4lkIItO3e0FKC8hBNFTenmRTCJtKh
         iBPJ3q/PZv6i03YZku2cZpHUAp4bAY5M6UN2+2Rd/g0fbCWyLlDvXTELsHb5XNLPUNvy
         FrmYUCCX+qHaMXCut1EkE+K9pybz1E7KWJn6DDXDU3CrJkNtx1mob/HsKgZnYPOFTxEh
         jL8sXe1qYedjrbNwNBuWGJS+jXVyoKGwKq1b7bQk/W0FSLClmyE2lxT8bskJ1zyweLrW
         j9Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769578; x=1743374378;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MtwK6mOFDS+3HmyCw+zVaAjjy/x9ridjjJuIuDjP5y8=;
        b=lgv5fPcOkx07AW3gkwNfLfulTcxcGg2O736Cmxx2DIJu3z/lihPHmBXdlBqieE7EL/
         CUJddHGCNIfNlM8eWmSCtCVXDPrMmDK7c6XR9fgkoRvZaohfqSsexcu9DBO+UmaAQiX/
         KgYzjVCwdgyyAYMl4X4wDSN0Ix+uCzkFnU9F7orxqmZecqERyw2IPAJa9NN/r5+e0NbM
         masPP3SwShcscoKDPsPJUKbNmm2RE+I9HXeYkKwVnUAvqG2a6NqmvLufq6MFf0aNB7aG
         EonU+zYdIAEKdu157rj+Qm2xjMtT+kja0mFVLvVBCtgV42GZtzJOmsjufBma2wFZLLsQ
         aBxA==
X-Forwarded-Encrypted: i=1; AJvYcCVaMNWIHBQ6JpKFz+J2CeylY7KcGYm3IBqnv6qa9JCz0UBxJIlOjT72/VNHUGR5+Nq1TcOavEUdOeDe@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3/jXLa2/sg7vdV5mwec0AR2xev92BO4+GTzDoEgu1sgayXBjp
	S2phxOyP+v940r88O50rwG6GiSYCp7UfHtV618HTHz/zTm6pyKkVMw9v0PozHsU=
X-Gm-Gg: ASbGnctNq1uZXH5tXctrJD+KT+OwTRtGDKHmieiXxkx0Dp37QWeGlsYsumMsaBfspZk
	LnWe4iICgPOMKjQyAmNztud9eNfg/TKVumWfBeCxMtSAsL00AVRlRoksLmZocpxpyX1XLbHNdI5
	z/C18j0SFIeNJQKW3zix3p3CXA7s2lZQ/nAfnDFUmkvTCSmnglWsVSJbmXXLz/2nBXUq5l7Yiwc
	r0JTBYzdtS7i+QHiqhemM8+x3hXhBhqTkwPWJE0AEE9E2t8EGWXvEtqnHWeKg4KE1JE32S2eZtb
	T3W/lUOmNkAhas3vRg8Fovgc0wnzQaNYxlxurXwdhqXpEaov9nKsTQnCp82fc+FRrijmlPtKhii
	UQbRnM4+9u6UgAjoEu1I6e/EpnvkK
X-Google-Smtp-Source: AGHT+IGSiAkDAFqSZ3rMyd/nphhDlOTX1hDDy7CmBLGPyAROlgJin8tD1xxjQmFA6VfwByP2ficCYA==
X-Received: by 2002:a17:906:f5a3:b0:ac2:bb97:e56f with SMTP id a640c23a62f3a-ac3f2559a5emr850721866b.53.1742769577873;
        Sun, 23 Mar 2025 15:39:37 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:37 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:40 +0000
Subject: [PATCH 24/34] mfd: sec: convert to using MFD_CELL macros
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-24-d08943702707@linaro.org>
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

Use MFD_CELL macro helpers instead of open coding. This makes the code
a bit shorter and more obvious.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-common.c | 57 ++++++++++++++++++------------------------------
 1 file changed, 21 insertions(+), 36 deletions(-)

diff --git a/drivers/mfd/sec-common.c b/drivers/mfd/sec-common.c
index 5ebc77d7edacbc1b7a3debb9069bb489109d57d7..77298e92642021679ea1eb95d338907fec098aea 100644
--- a/drivers/mfd/sec-common.c
+++ b/drivers/mfd/sec-common.c
@@ -23,16 +23,13 @@
 #include "sec-core.h"
 
 static const struct mfd_cell s5m8767_devs[] = {
-	{ .name = "s5m8767-pmic", },
-	{ .name = "s5m-rtc", },
-	{
-		.name = "s5m8767-clk",
-		.of_compatible = "samsung,s5m8767-clk",
-	},
+	MFD_CELL_NAME("s5m8767-pmic"),
+	MFD_CELL_NAME("s5m-rtc"),
+	MFD_CELL_OF("s5m8767-clk", NULL, NULL, 0, 0, "samsung,s5m8767-clk"),
 };
 
 static const struct mfd_cell s2dos05_devs[] = {
-	{ .name = "s2dos05-regulator", },
+	MFD_CELL_NAME("s2dos05-regulator"),
 };
 
 static const struct mfd_cell s2mpg10_devs[] = {
@@ -44,53 +41,41 @@ static const struct mfd_cell s2mpg10_devs[] = {
 };
 
 static const struct mfd_cell s2mps11_devs[] = {
-	{ .name = "s2mps11-regulator", },
-	{ .name = "s2mps14-rtc", },
-	{
-		.name = "s2mps11-clk",
-		.of_compatible = "samsung,s2mps11-clk",
-	},
+	MFD_CELL_NAME("s2mps11-regulator"),
+	MFD_CELL_NAME("s2mps14-rtc"),
+	MFD_CELL_OF("s2mps11-clk", NULL, NULL, 0, 0, "samsung,s2mps11-clk"),
 };
 
 static const struct mfd_cell s2mps13_devs[] = {
-	{ .name = "s2mps13-regulator", },
-	{ .name = "s2mps13-rtc", },
-	{
-		.name = "s2mps13-clk",
-		.of_compatible = "samsung,s2mps13-clk",
-	},
+	MFD_CELL_NAME("s2mps13-regulator"),
+	MFD_CELL_NAME("s2mps13-rtc"),
+	MFD_CELL_OF("s2mps13-clk", NULL, NULL, 0, 0, "samsung,s2mps13-clk"),
 };
 
 static const struct mfd_cell s2mps14_devs[] = {
-	{ .name = "s2mps14-regulator", },
-	{ .name = "s2mps14-rtc", },
-	{
-		.name = "s2mps14-clk",
-		.of_compatible = "samsung,s2mps14-clk",
-	},
+	MFD_CELL_NAME("s2mps14-regulator"),
+	MFD_CELL_NAME("s2mps14-rtc"),
+	MFD_CELL_OF("s2mps14-clk", NULL, NULL, 0, 0, "samsung,s2mps14-clk"),
 };
 
 static const struct mfd_cell s2mps15_devs[] = {
-	{ .name = "s2mps15-regulator", },
-	{ .name = "s2mps15-rtc", },
-	{
-		.name = "s2mps13-clk",
-		.of_compatible = "samsung,s2mps13-clk",
-	},
+	MFD_CELL_NAME("s2mps15-regulator"),
+	MFD_CELL_NAME("s2mps15-rtc"),
+	MFD_CELL_OF("s2mps13-clk", NULL, NULL, 0, 0, "samsung,s2mps13-clk"),
 };
 
 static const struct mfd_cell s2mpa01_devs[] = {
-	{ .name = "s2mpa01-pmic", },
-	{ .name = "s2mps14-rtc", },
+	MFD_CELL_NAME("s2mpa01-pmic"),
+	MFD_CELL_NAME("s2mps14-rtc"),
 };
 
 static const struct mfd_cell s2mpu02_devs[] = {
-	{ .name = "s2mpu02-regulator", },
+	MFD_CELL_NAME("s2mpu02-regulator"),
 };
 
 static const struct mfd_cell s2mpu05_devs[] = {
-	{ .name = "s2mpu05-regulator", },
-	{ .name = "s2mps15-rtc", },
+	MFD_CELL_NAME("s2mpu05-regulator"),
+	MFD_CELL_NAME("s2mps15-rtc"),
 };
 
 static void sec_pmic_dump_rev(struct sec_pmic_dev *sec_pmic)

-- 
2.49.0.395.g12beb8f557-goog


