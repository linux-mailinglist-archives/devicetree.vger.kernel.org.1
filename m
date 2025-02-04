Return-Path: <devicetree+bounces-142870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD00A26DB0
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 09:51:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A00D3A75DC
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 08:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C5E5207DE5;
	Tue,  4 Feb 2025 08:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="px5PMI1D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C38720766E
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 08:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738659060; cv=none; b=E3SxUL9yIUIorigwN/J+dLYJsc++sUMjbCEQSUeHCavCG3sHzHN846XwCsqiqefJq9XatkXWpge4yxZcfvy5ESJiWkF5RYhOL0E3xbKPRnqGvCnAWpPXFEI0uUR+fzzsnckPQUYBOMDkWToalkuXRdtG0TwB4XEC5c7tLI+vOiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738659060; c=relaxed/simple;
	bh=1Ycwyt/5fAWWZEZs5FhLsYPnTHEm+vCc2lxvvceXYOk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=YbsBIcoSIt+GsCiKwkayvPWKEcFudUQfj6su+pgDvTMounZsoLZJn0Je2GpeQA3W6Nqu4V1jPIZtYfbRYifH43XSGL/VX8WDY7DrxlQ9kB8sWWH5PyyJFv9p+5t+LByAdDZDIDsPVqwj0biLES8zlrnEOpH3/DBxxLAOKrUIiWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=px5PMI1D; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-385db79aafbso257543f8f.1
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 00:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738659056; x=1739263856; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jpjq4HH/L303d8hbOgy1GctH27ZSA0LF9W5MJwsB/1w=;
        b=px5PMI1D1bBb/KE/SH9gipn3mCjgEDIFxG268ZBW/1oNMfeJKhRHHbQS8A9LbCn+jD
         jDw5wd57uzraXDeriXJzv8X/pYd41A66TS878md36497UTYzzzPTjqBbqJN5SsGhdafC
         ndwiArqBuOAKyJc3skE1ffjc1iVg3PEpnmsbUp2BfsNOKOgiMU2tRsgGlXiEw5/UGPTZ
         9esqPdgoAr0tTz5ib8VfoGIpbD+r7ufkxvFBid5CyKh4ho32dAR48bt/Kz5UdlWmXHRo
         iMMropXEeuEug1BRn7qcryKJLIOCol9YXST6UHy31a9Mmang7F3lEuZ7tdfifdIgzQq7
         SH4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738659056; x=1739263856;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jpjq4HH/L303d8hbOgy1GctH27ZSA0LF9W5MJwsB/1w=;
        b=J55+rkFcWTIxMkJVb9EeLscFcY4zDQZrIFqprGsOdZNSrX4gFakPrbvlPvBWbfn1F0
         48guioK7kxI6I3ipr7F/F1YqnGtRTRIZDupXAfxUz9gLzgDWel1H01dKzuH0ng5mBkKv
         858Elfa8BojiVQSQwT6+KmCOzlw3eQWKb2BublIwYhripelfm6Ack2x5KMvuJb6XEgIJ
         vbBWmoZh/pBCcvSUsxUtrrP6CXaJlLIii02WckUY3Og9ue/j8V9Gs/Sa8K97jMXrPKqs
         u/wiWq9ri2hI4ksO2hAs+LC3XF9eGi0/mH8hh+hUgMqZ5efnEy2P9kxokBPti4pGhk4N
         RB6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXPwX9CI5DKnmmF6vtrKPcWR212iD6J+K3enA8nXDBpoKM6ID/OoeB198DL0SoeUDN477MdHcvm7WuS@vger.kernel.org
X-Gm-Message-State: AOJu0Yyr8dhpaAAndZgKb1hX6G9OzbcxsddspL6MHXv5U1ynmVn/WqII
	Mr30Q6NNNXFnzDdcgAfOMbdjdIVYho7zpwTxWxYVYGIfmKZyIvui22j6ESNbGqXP7qQ+2ZFj6Da
	5
X-Gm-Gg: ASbGncuy74NwqhOhgH8DkI4CLxF/wYM99bwI93F8dxcyFyrMdvHQZlzxuzNqGcrGZJL
	3qnX7P/7ZSvbC8Zh+J86buqxSmPmngHudWi2UVgDx9V96CewVklvHM8WFgZAEDD/3l6StHSBREd
	+XFtMmxU6CHCQJWb4qwZmgraq8EyejYmOBCcvuIdnXqXemxp6LfRVtbjDT7CYIBm1WohHy3mADG
	GM5N2pVzOze/jdDjNmt0KmNRED3AJOBrYAQROCMLRM7QNYnWfz3ZQgpI3zatwsxRNoUmfdyDYj7
	dbpA6nZFBZ7prlEYvkvkwFnv97on5ic=
X-Google-Smtp-Source: AGHT+IHdiae6H+/UVJL8cfd8QClyqaqjeHMTsfDKILCpxZ9f0zfpd+1iofPbuWssQnGq4TD+3TOuRA==
X-Received: by 2002:a05:6000:188e:b0:38a:615c:8266 with SMTP id ffacd0b85a97d-38c5a4ac5e1mr6208751f8f.1.1738659056201;
        Tue, 04 Feb 2025 00:50:56 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38daf27bbf5sm503066f8f.48.2025.02.04.00.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 00:50:55 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
In-Reply-To: <20250117-gs101-simplefb-v4-0-a5b90ca2f917@linaro.org>
References: <20250117-gs101-simplefb-v4-0-a5b90ca2f917@linaro.org>
Subject: Re: [PATCH v4 0/4] Google Pixel 6 (simple) framebuffer support
Message-Id: <173865905488.26600.14592491106010269073.b4-ty@linaro.org>
Date: Tue, 04 Feb 2025 09:50:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2


On Fri, 17 Jan 2025 17:09:53 +0000, André Draszik wrote:
> This series enables simple framebuffer support on Google Pixel 6 and
> Pixel 6 Pro.
> 
> Even if simple-framebuffer is deprecated and DRM should be used
> instead, having it available in DT is beneficial for several reasons at
> this point in time (the phone uses an OLED display):
> * energy consumption goes down significantly, as it changes from white
>   (as left by bootloader) to black (linux console), and we generally
>   don't run out of battery anymore when plugged into a USB port
> * less of a burn-in effect I assume
> * phone stays cooler due to reduced energy consumption by display
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: arm: google: add gs101-raven
      https://git.kernel.org/krzk/linux/c/2f88cffbfe61a9e257aa6d9cf03e1b9567cfc910
[2/4] arm64: dts: exynos: gs101-oriole: configure simple-framebuffer
      https://git.kernel.org/krzk/linux/c/befbb62c61a5f5ef547355f2f726a0926916a12c
[3/4] arm64: dts: exynos: gs101-oriole: move common Pixel6 & 6Pro parts into a .dtsi
      https://git.kernel.org/krzk/linux/c/58dbafb73173a944657c4a0d480d2cce50bff2bd
[4/4] arm64: dts: exynos: gs101-raven: add new board file
      https://git.kernel.org/krzk/linux/c/825c4bfd5c526b6fd18c8ad8503761143c90a142

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


