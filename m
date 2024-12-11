Return-Path: <devicetree+bounces-129626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 883219EC5F9
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:50:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ADF4318869B7
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 07:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A74FE1CD21C;
	Wed, 11 Dec 2024 07:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GkF7aFKk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C736A1CEE8E
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 07:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733903407; cv=none; b=J8HlfUg9teH/Og5XCZ/5+8Q7qxCbWQ2rwmKkKkvz6uI/RexECEPwqXdk4S9Ve2zls4fnO5mh0nfa49hSJtCmAhJDTQX0qbCmrQz+flu2yyHlZZncydFq3D49RagojZaowi1lFQVvoYDpuX/NrdBM6E45xMM9TQpNH1Fqdxmf/xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733903407; c=relaxed/simple;
	bh=byCXBbBMkzxnWu1JfDLHLINiG67d/FWoOMVk8Wzbj/E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=X+3tBxdEMK7Rd5pqmdXn0OJnbPK30uTBxmP2uWcxmTRPT1giN66dpiqE8Ia9icb8jAlOe/zKPAp49rwXbwe1oNzmnEeKu/SerU7lmatl5imm/jWBOIlEVnCkDBcSA0SnC7ab3QGbqMZot0PuJdpZvMubWojvtA3xOLTNJFG/lQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GkF7aFKk; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43616bf3358so1533115e9.3
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 23:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733903404; x=1734508204; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NR5y5SI21qqr719CHt05ra6RVhCy3LYtwxpSH0rstSA=;
        b=GkF7aFKkdO5PjXqskM6RTWdDMytEhzWlRZ1cY7fdOg1j2e/6oWK87FJZCAQksCoVhz
         Yo47J7d9sr9HoUV/h5jfgekgy3sSn6eBJQtnmebqivIntV9McC1ulLyEKTETwUMAOt4E
         Y6dje6V1rvmdr+uHZT4u1JL2lh+4zc/YJEN16+clgvNsB2oxUCYMmTuwYgE7xeppCFWU
         n1JUA8P779Fa03pnH8yxRqjUrrQe/ijF/nr6OBpyA+nknYwDfcGxkKPAe41FKll3eMWj
         wGY5mppFqG+jDmnOW1fMTvwAlDINV/mSkh1hRQ4TPL6Y7bMClARdoFvNt9MoZmnAKe+u
         oSeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733903404; x=1734508204;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NR5y5SI21qqr719CHt05ra6RVhCy3LYtwxpSH0rstSA=;
        b=nGGCS/qDrIWNcuZWkBKDyCYbF0UaD4J5nhHvoNMtzo1NDQYO00cET/FQZ0mVwEX9P/
         Ouem17rkliaNJbCit1RjrZJ8xyHeF1L9Fwf5Bcp+c2aPAAF6u4Gn5TA1pVQoSOhn+D6/
         YPmHsOftAGqeHHQ5HPB7M8p2vsRF/wL68mzZfZMjChcv6PlraGqDjGIWiSG+ER/Qd+v1
         YcgOtxTMI4ia9xS9sOi3fvZKdaRdK3iZZ3hGFzQs4qz+vatcvX5knO2GF/l001LuLkKq
         ov2Z+PETb/Z2NUhEX3MPXwd1kYCoH37rOicn8ATTLA2DLPuyCTdNG15nK4YoLgOrXwfp
         vL0w==
X-Forwarded-Encrypted: i=1; AJvYcCU7KlMedMjPSUTARTvnbCybsJzzxJWzy6CH9uIrc3MlMTccrDWW0IGuwYe6XQa/AJhARce0LcdlwsYZ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywro5VmJLVPoYuZeLYxJmX9Q6sOc9lkotwmCVIfnNRXzfg3tw7/
	3Fpb3b3HkjUD6o7j1hrXc225b5qkyNy3AW2YiaDjADLxUGXEkkLWRmOeQ/KgLNA=
X-Gm-Gg: ASbGncuaW5cb3NvoB14R5P2sOPErlR/5dARyLLxDCZSZXoq/usTVziwm1vi3bLVpeUn
	lXzczivhvGu/2CQ2mA1Faim4bMxa796KKp61YEnD515feG/k3IvCxQsZ47S/TZAJH0DkKIfv16a
	ZsNKEo1/s8fPPFlBQzF/V06HhBIhk2RF9dR0iN2wk4Agi6eerATQ6N+R2wLr6uqlRf1Hea65RXy
	TbIuQToL18COaX4KErxfqgdS4ix9bDLaMM5o5pi+7t/FXRtZciS8Ur6PPu7ORrYXgUgUw==
X-Google-Smtp-Source: AGHT+IHzOkWDq3KGGPDZsVQbPi+YFqSrAVZOEWrnqAZJZ2wtM0+/RjpL+t5H9Or+bcHPIqDSNw5ORQ==
X-Received: by 2002:a05:600c:1d20:b0:430:52ec:1e2a with SMTP id 5b1f17b1804b1-4361c441982mr4065105e9.7.1733903404111;
        Tue, 10 Dec 2024 23:50:04 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4361b6d6ea0sm22222385e9.16.2024.12.10.23.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 23:50:03 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Taewan Kim <trunixs.kim@samsung.com>
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org
In-Reply-To: <20241206025139.2148833-1-trunixs.kim@samsung.com>
References: <CGME20241206025156epcas2p3e1ce9ff35589d821735a7c038b9ac9da@epcas2p3.samsung.com>
 <20241206025139.2148833-1-trunixs.kim@samsung.com>
Subject: Re: [PATCH v4 0/1] support watchdog for exynosautov920
Message-Id: <173390340180.16989.11837691973342827218.b4-ty@linaro.org>
Date: Wed, 11 Dec 2024 08:50:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 06 Dec 2024 11:51:37 +0900, Taewan Kim wrote:
> Add support for the ExynosAutoV920 SoC. Basically this is almost
> similar to ExynosAuto V9 or Exynos850 such as two watchdog instance for
> each cluster but some CPU configuration are quite different.
> Therefore device tree, compatibles and drvdata should be added.
> 
> In v3, the first and second patches were approved by watchdog maintainer and added as next-git.
> - Link: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/log/?qt=grep&q=bt.cho
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynosautov920: add watchdog DT node
      https://git.kernel.org/krzk/linux/c/41979b81b22a35322817733b15407167164be58e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


