Return-Path: <devicetree+bounces-134669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAFC9FE343
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 08:31:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0DD93A191F
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 07:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D1FE19F436;
	Mon, 30 Dec 2024 07:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M2h87LU8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB32F15B99E
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 07:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735543875; cv=none; b=sb2piu1rK/9XVKexlBWJWUEP0g7ptqdaBVUN6YmB0/1HvIL3Dmix8bFvrDNMW/lG+aDoAlpg1tD3a80HB3hXwMiRv9nr+uq3rWPQWKU0xZFVJvZlcGxiKx6qbfbILU2C0RoY6fmJJzvXoTz+4dUWMckt4xKzSXHM7WqfoPL+kXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735543875; c=relaxed/simple;
	bh=op1v6RqtKHEMd3jNo6wk+1t2w4Xy0XLVP+LzvrcYx0E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Fjt/uwb5dezZd/Ukfp+XP39p4JsIscTdb6cmzR4IJwQeTEH0cOcX28SngfCuAN2DvMhBaI1UnGTmqfRfso3sJLPjFSZF0PXCowCgxrQ7uNkjf+XB2GaHRKb6xHoIJWSbDU7MMIvejgmoU/GU7TQvEtbhsbP8v7g0X8Uonya0SHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M2h87LU8; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-385d851e7c3so507804f8f.3
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 23:31:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735543871; x=1736148671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0cxUukmW/HtO3A5IzMy4WhojBdo49UTX8VOBptMlYK0=;
        b=M2h87LU8KsWWuOlIEIFsvR/xgLdPL3LRt/SsJkCuoIPpc2SaLLo+aUFltSDg81M+/w
         RjqI+anVE0yhmp3zqYXRZjI3OEdYvRP4THzV+f5i+Y6IFuy5Z/r1wwAE3Ds3i3M5hA84
         NR2hxnIA1hO2YAK7bdyBXoqIUm1z5rtuaEOJ124guTMlimE2CHEgGSePTq20bXwIZNP6
         EGaxbAKUqjR61GyOgVT3OkIXfefI5FYSUwykSsodvR1qDgl6NiVpm4KsO2sxaJpghNHK
         IciVQrugQ1p1R021ptUPKNmmyITJI6FYtFYb3LzMT6RzWgNaZqHF1gjSdQ1RFbL3PWz+
         3ZiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735543871; x=1736148671;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0cxUukmW/HtO3A5IzMy4WhojBdo49UTX8VOBptMlYK0=;
        b=Dmj9tgT8ncLB+uEp4SACWFxXsOdybhQs5CezmHBqLhIjHQCDfBYlRjborPkMbjRusV
         y/hUGpbVDQAy2yS69I7fEAQDP6pDQmHULim787IovA6VGu6fnWdOdMWEEI4ujoSt3l9z
         R/uOXjCMu1JpzGXkLhsHzQYNtvn0t6YCFCxACFR8Jq3FsGHIwpuwmDOvwiGPTp5bVPfM
         ETRnSQNqpt0BndRk7qnNnoBkrkLlb4UxWtzhtVB+4VrBSCMcpBYHSEMZ7b5fb0TM7TpC
         LWPjArn7TpBSkKTzBDcaPb1n0LJEF8apoenrnlnJixRA+GKwfovXcK4qU3aAKsVz+OV8
         bZNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWT8q0jd//S4GhIKGHVrPuVJPdn3zmiR0LmpYVuhsyAmAu/ydHG3t80pN599DveligCZsbkuKNchhG9@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5HRI5R584xipUgkp2XO7kOdxlFEeJlP9gRxzZNP/aHNF6S1OJ
	YMaIY3Esoz/lDQAv4Rnkkkl2Qw8OEaFJDsHfRqckZ+F4udPeQb3slrOXOuXu8S4=
X-Gm-Gg: ASbGnctKljTE1fdhE0Y69qT2AvopJkrPLxTz9QAWZKzD4f4b+qpyb5NciPEKDKrPUWn
	exGTXa2MprKR875DJJOOpKi+3UK1u6FWhxJL457zBT+Mq6qOq4gzEmcH22hsQWS4a43fAwelya6
	DAWZtFQJn0iL7zz1O1ILYhtEokeXY+oGUlR4DbTpMMLnZaGjKU5oReB1gxi3tv6GcMTREPiiw0h
	56mYaBq/s2ueaGy1WterquW44etngbnqBOnp74PCdu0dJmUMO84mcP2iE4jYzvA+gF8KDzO
X-Google-Smtp-Source: AGHT+IEIbHfQQXjbtACZcOl/EYF1eksRr4G8aqfzGRbLMEkVZhWKVQt3Ase4890cxIGZ0+c7ItcJyw==
X-Received: by 2002:a05:6000:4022:b0:385:e374:bd4 with SMTP id ffacd0b85a97d-38a221e1f74mr10283672f8f.3.1735543871026;
        Sun, 29 Dec 2024 23:31:11 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c84705esm29439462f8f.44.2024.12.29.23.31.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 23:31:10 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20241221152803.1663820-1-ivo.ivanov.ivanov1@gmail.com>
References: <20241221152803.1663820-1-ivo.ivanov.ivanov1@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: exynos8895: Add camera hsi2c nodes
Message-Id: <173554386976.7938.13644139958887004032.b4-ty@linaro.org>
Date: Mon, 30 Dec 2024 08:31:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 21 Dec 2024 17:28:03 +0200, Ivaylo Ivanov wrote:
> Add nodes for hsi2c1-4 (CAM0-3), which allows using them.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos8895: Add camera hsi2c nodes
      https://git.kernel.org/krzk/linux/c/f424523b1b516b3f0984feeb1d8218e904d17a97

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


