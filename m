Return-Path: <devicetree+bounces-81926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED1191DF36
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 14:28:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29B812825FE
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 12:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 992A914A0A0;
	Mon,  1 Jul 2024 12:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HKcZlSko"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F8A14C587
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 12:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719836886; cv=none; b=QfYiXGUnETQI+Z1CSga5OeFYKHIay7Fz405nExndcXH+yIF1lsNjajaaSGf1wfG5e2eXOjtYuWkB7i19CTvk+OHb3cszZob8CxqRZbEquqHxkXRaZS0eBV2kZKyNUOlHaNqTfvWp0Up3Q9wnSKli5/WspF47ln+st7nHzv9j1Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719836886; c=relaxed/simple;
	bh=NyOtAI1NXSX+QQw7SggCrEBU9gGkZ4JyZB3lSqJOASE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ieABAJvm9qX8gXhsAaN2VrmakzUaSgEMlBf1QR06nsodWN1ikNNcjtra0oEosmlczUgwBxhhbWakyt8ZCC9KvSFim/rzwF8YubuDTyxYiQNjy5VAdApqveTT7t6iDjOuRV+iPTDpt+/mT/fI3GZYKlRqDcglF4+Ee7Y54fdJ9LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HKcZlSko; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4256aee6d4fso18576095e9.3
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 05:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719836883; x=1720441683; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Zb0c/5vcct3kAz5q/BqOH6khG+ryrEiFFFxWSt2tbM=;
        b=HKcZlSkoddB2t5vZfjIYMVtfBqlyDAxRInXFK7GoA50HrjP51Yej1x7lBVJqY+QfP0
         JaeMdFXAgj0m69+o33wBYabNpRb5rZcuMVEzudMVi0oe1iszYhFEMTFLcxwWQOezhdvY
         JsaSeGKo8GxOLZthSfCt7nieLNHRCz82ud49uIoa70yxHOkM//QNCL+hISy/b3BM/WA3
         vVj04RYl2YrXf5e4pktzM/t1A3807fpfnXPMEYYLIK4Zq8kjxjP9v9FscjI0IZvLXHHX
         XXZMpxebJFsT3xlJVHnBOxHsdwbuWXsaCMOBF/bzLRg1Vn732BrlyRwUpPXGvAGsWvjT
         pnYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719836883; x=1720441683;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Zb0c/5vcct3kAz5q/BqOH6khG+ryrEiFFFxWSt2tbM=;
        b=ZU8Im52lWHHqtAe9bhSEd3R4JsZ5TknYo2Vzkx6T41g9w5l45CeaqjM2inB7xytS6k
         /Cd+dsF1SjsO8zPOUZYFOXA7bsia+SXNWkGCFN8feCs6I/IiHXshotR/RGW9Y0i1Rhfa
         PFzkPPd/TVJo7/D43h+MUEwzQXq5fKht4AD88iLT/UnsmTH0cTxMFpDUvJwzTUynasn3
         djLFIYn1qsIE9pgtFmAASAb/bs7pyXQGqvu7T40OEsbakBbmwKp1lYvJYIkbep5a5wjS
         YW2UdtVEVxqmyvXlbLAP3qfzQJO6EHuZu/8AAXGcY7CvGaA8i/tFQzBr2dtCYFLz2KnE
         +Ebw==
X-Forwarded-Encrypted: i=1; AJvYcCVPMHRAi5uDNme3zUaQFISq60RW1Puc7atu86zsYvTNmoa4xrsZZx6EjErPaWDEdtbBvFWUC2GOriCfYJ6Ubm3AuVMJI1bBTQ8J5A==
X-Gm-Message-State: AOJu0Yxvq+kNbvdw0t7Y5hy9TIC6OfEyoil3Q48liZSjdARu2GdkUkEc
	tH6IJMAAiCMgv0OF53g9unZir9ln0+PS9oRCYyrL1o5mWSihRtcm009UD0OGo+w=
X-Google-Smtp-Source: AGHT+IEdTCfn893UC3b63gCFt6tkkIf+CAZq69gxd3al2qXzVPDeqS/JFBRxwT9KoaZ+Djh/ROzaGQ==
X-Received: by 2002:a5d:53ca:0:b0:367:3fdd:632f with SMTP id ffacd0b85a97d-36775729a6fmr3144050f8f.67.1719836883441;
        Mon, 01 Jul 2024 05:28:03 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0cd5fcsm9860697f8f.11.2024.07.01.05.28.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 05:28:02 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 alim.akhtar@samsung.com, s.nawrocki@samsung.com, cw00.choi@samsung.com, 
 mturquette@baylibre.com, sboyd@kernel.org, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, tudor.ambarus@linaro.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
In-Reply-To: <20240628223506.1237523-5-peter.griffin@linaro.org>
References: <20240628223506.1237523-1-peter.griffin@linaro.org>
 <20240628223506.1237523-5-peter.griffin@linaro.org>
Subject: Re: (subset) [PATCH v2 3/3] clk: samsung: gs101: mark
 gout_hsi2_ufs_embd_i_clk_unipro as critical
Message-Id: <171983688170.414803.12761957664942092731.b4-ty@linaro.org>
Date: Mon, 01 Jul 2024 14:28:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.0


On Fri, 28 Jun 2024 23:35:06 +0100, Peter Griffin wrote:
> The system hangs on poweroff when this UFS clock is turned off, meaning
> the system never powers down. For the moment mark the clock as critical.
> 
> 

Applied, thanks!

[3/3] clk: samsung: gs101: mark gout_hsi2_ufs_embd_i_clk_unipro as critical
      https://git.kernel.org/krzk/linux/c/e61f400d6cf3d598ac3ff88a47b34823f9e1f2d5

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


