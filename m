Return-Path: <devicetree+bounces-190371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 902D2AEB8F0
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:29:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E32E21C414F1
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 13:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 494D92D9EFD;
	Fri, 27 Jun 2025 13:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dD/jjKPz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CAA52DA762
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751030976; cv=none; b=eibEFgHKiKYSmj0j2otWwBRewcrZgtCZekp6QcATnNMYFd2ZdV6vYfUsj3CIWTMva9ZNrgQDkN7JBM5qIbgPaqrSXboW10pAVaIxtM20YtUWHUbz6XViDxK3C+kn59HTvJcfpJuvCW9tkSHAUyGyLOOH71dAuqj6dxj2ItdoszU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751030976; c=relaxed/simple;
	bh=I6faurzbIoxv3qYMgbdH4NSLMkzOIqpRf6fwnaEn4tU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hgQ9WCfBOGlvj0j7weOCZ1BgQavKhyt8UIaVwMMQzuw2clNauVlrzH7p451GYNedPefY0uumqq/LrNVngkwam5RRMchxAqHjPBHkMJJuakvoqrped7nuFWlM9FJzd1+SFRsco57VxrjyqM2W1IJWx+AJYkuX1vsCqo24swQt+Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dD/jjKPz; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-60c5b8ee2d9so4639927a12.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 06:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751030972; x=1751635772; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=totF/N0o3eF/DAQAGujOwbAUfvbVdfGY/Qpe6oziQJ0=;
        b=dD/jjKPzNV4V/F9SglPG59Q8nNBKFpHusM304vQFUftlJT8zhQFmGJBjHYYRNBrxkN
         b3nw+4du4Ph2AB1gRC2QXffwdEtqob6e7iaQeDu3yNJ5GQWmLgappSgU0nEACy62vgLr
         r6vUR04IeVbgBqddAL6o1qDFl3sIMAOipLd4s8XhdarsUBDnmv182L8lCdC9nuwOs03y
         yX2uvRBPy8v9wLgeEpJvSe4hWOMkCw00ni5UA01GCDu0pfJNGGMg5u/3GhKTmomG9HV9
         arPNZNHlR04+VhUs/6RC2ubOau+UWo49rUwBHIhzXX1o5Uo/xmJLvDzF7KL+/5HYDe8K
         ZUHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751030972; x=1751635772;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=totF/N0o3eF/DAQAGujOwbAUfvbVdfGY/Qpe6oziQJ0=;
        b=S38HYZhYs6hcpKoNymC55jj1uPGH6sE9E1v8nmBop8x2JaYcNN9PVOW773qpTWXlB1
         BPAmUujTUHZQuzPv/PqzP8wGa2+zJOzrdljQ+8qYr86NeAMe9Upgy01wMNSi50dciSFU
         V5lZD6dvPxtwRL6O7KjD0QzYRL+IBayA2dcBr1cI6psUib/4gRL96cL45x34JoPcXAh1
         bGQG8Eu/l5sGGwlkqEPvZTL3J9WXr4brihzhw+8kDAwRsZKyyuATVpqdrvdScbwHvd4E
         UAd+072HJ6T0B/I5Lpivdriwku/vQEX9qlSisSQBzU4TrzBfhg/aqtxi76Q/tt/gPeO2
         UWRw==
X-Forwarded-Encrypted: i=1; AJvYcCUz04mJ8i8OY7m8tVNXskh3FzJ024fVWdQfkQ3/6Vq2+gF0vwACimWLu1QpoXYLgCV6iIGR8927w6NL@vger.kernel.org
X-Gm-Message-State: AOJu0YwoTlPHRuBsypVSgqpjNXsa2C5FakT6MoIJTTHxmqO2x4e8PTQH
	2qT+2buB3KXRmeDA2jPpS8mSS5CKG9ATll82Zn/T12Q0i2G+6bnTHHRsh5nl5NXa65k3ofEtg2R
	/sRr8Wl9tSg==
X-Gm-Gg: ASbGncvWGeSMQBASxDPUpXhp8XIXRDJIkgAYkPAODVm2lsFJqMGBXzIi1GpX9LE5JLD
	ScO7RyaVmJ+zbB0mik0Qu+J2tNkxLvK6cpZsDjG9Uwsf0mGVbJCf1vxrFHXUesIAm4/pi4pIY0T
	Ek3YxBBKKKwu243mYLYxE6HmrXXC0keNHwedYDu52bCOn2qUy3vQimE3wTV2EC4ddCm6cdkwefr
	1YZYsb/5Y/jyBc7rDJX50N6gYCz6eUD+V2zEzQEC4iWnK59eWjSCS8uXY54p75k2U0NZBqDEEnt
	NUpnIbTPgwOYinPAV9ggr447vjqDJxj43jVzh/I2lkmuN5ON2cbxZ8xxZgm6ep+MR6iBRfwMoxV
	Evq4rJSaS1uAUIO6F7paD8wWWp/f2crqLiOvoWGhIy7iKBA==
X-Google-Smtp-Source: AGHT+IFqqEN1CabLkuRpa4qT0ns50eEJVky5F6nDsnGYV38k/xhyp5qqKgZNhwr44qSRdsoEwoz0Ew==
X-Received: by 2002:a05:6402:3124:b0:60c:68bc:7fca with SMTP id 4fb4d7f45d1cf-60c88e72e9bmr2087602a12.27.1751030972308;
        Fri, 27 Jun 2025 06:29:32 -0700 (PDT)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c82908297sm1462702a12.26.2025.06.27.06.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 06:29:31 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 27 Jun 2025 14:29:30 +0100
Subject: [PATCH 1/3] arm64: defconfig: enable Samsung PMIC over ACPM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250627-gs101-reboot3-v1-1-c3ae49657b1f@linaro.org>
References: <20250627-gs101-reboot3-v1-0-c3ae49657b1f@linaro.org>
In-Reply-To: <20250627-gs101-reboot3-v1-0-c3ae49657b1f@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Enable the Samsung s2mpg1x driver as this is used by the gs101-oriole
and gs101-raven (Google Pixel 6 and Pixel 6 Pro) boards.

It communicates over ACPM instead of I2C, hence the additional
defconfig item.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index a86cab889eac60256b28619b2cd2703765b081ee..557b592821d5d1fe8a5fab0619967e4f98894bc1 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -775,6 +775,7 @@ CONFIG_MFD_MT6397=y
 CONFIG_MFD_SPMI_PMIC=y
 CONFIG_MFD_RK8XX_I2C=y
 CONFIG_MFD_RK8XX_SPI=y
+CONFIG_MFD_SEC_ACPM=m
 CONFIG_MFD_SEC_I2C=y
 CONFIG_MFD_SL28CPLD=y
 CONFIG_RZ_MTU3=y

-- 
2.50.0.727.gbf7dc18ff4-goog


