Return-Path: <devicetree+bounces-229736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F4FBFB407
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 11:58:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9053B4231C8
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 09:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40AD83191DA;
	Wed, 22 Oct 2025 09:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YEKHGYFB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933563161A0
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761127038; cv=none; b=AO8QQmB8ygpynQtPp6YeQRD5SF04+103/yUp4GI2D8OwvuDSHbIfBWBd6R7p/FFsF31C97dmiUb57dXH04A7k9ngAwwr/+DA+MGJH7MhZnF8XyF9HQJv4K+/y+BtUvEB0KJE6r2tf5Zq+BZ9VYEwF1zBiGQn2fLWfmjqGbQ+itc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761127038; c=relaxed/simple;
	bh=wN9Q3uT/APNg6OkulWgr96HuAy+oNncZUYHY5IfGeYQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sAKTymeOBcCdlflLRwwdkemz5vvVhMWKoeM9AXWOHwSdt71qeEHbEoFXH7Mck6Uh9XK1OcyATyHM8p7eb1EoPMa3rHrv0wUdRU9sqmN0GC9jvdFX6bbCHea2RBzGxAUhk9jp/31+MSKPo1up9yoTqW4seqKr1sDraERKBEFuuUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YEKHGYFB; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-27c369f898fso94932575ad.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 02:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761127036; x=1761731836; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cl7N2ui7kr+b4udEzc4TVTWZwNlnYctrVJRWmXvgl34=;
        b=YEKHGYFB4D2FBzkWcctYg37H0ThVNUQzqnzVbB2gv1Vz8FZFwuAWGRA3KxpwAa+W9c
         uk7NwvhKh4Ur8H5pyflp6ZChBrVkdv60FwycAhExY6awzYScWIWi7ImC013ltNZuEL30
         ao64LcjgBtYwRMiPjvnQEpIKHO4BRzzZsdoS2crf4evh5v3xbWgWwA1oTLfaC/mJZTCQ
         XEqga4mFXT9PqBVy/cdrUDrAwtX2T1yQo8n1AY1bLE8zXIqgZhBwxI7qLerp2Wrh/o8B
         mNz+63/i1sD40D1CmENP0JhznIwE1JaaYAw3XbVQxvbktMDQmWSe7uxJx3OuuoTyUE3k
         1CNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761127036; x=1761731836;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cl7N2ui7kr+b4udEzc4TVTWZwNlnYctrVJRWmXvgl34=;
        b=JXdNkvkr1olwOCaAnrOPgM6Lw/HOaSL8/Wl9fOopUKRFCQwNzE+yr3xSbpX1o+Gy80
         6Hg3IYwXfpsrV8qIPkEfI72LnHEXETfYvNEL57zAaTT0EuEerA6/rMNbuHIOrQLS8VVx
         H1ILaT3uPNAMUWVy8NySciYYjHiA7sXCdd0n9XKJVZvc2RC+qTjTOzEB7PDh0+iuZUcI
         B4tS4irRid9nLZ+Uw1ZYoJl+IMFu9ricS1d9GgkZwzvGAdZoGMV0RbPOeh3jH39a3l5j
         Vt8dfKBC7WtuuIGz8Ig29mMPD9BwoBgLBy1exI8aS1fjpuQKfjf90l4vE8ezFASKuCa6
         JnbA==
X-Forwarded-Encrypted: i=1; AJvYcCVHeRW5EShOqgPxeDLbrVDzMhPrfelMflhCceasx22tB1JJM0C37ZgCFKYWNaxBEHNWvQEkvhIPDEF9@vger.kernel.org
X-Gm-Message-State: AOJu0YzruyhjXXmA2yoz7soTo+g8iDBz3sLP/gzs0q9U1lyFj6A7TVKu
	w2VOYqsrma5WSVQmdNe0tZ0v5N3J3AiwjVjjaRCs1Z8getiehInKK+yj
X-Gm-Gg: ASbGncs2PE8fTQDCqzbilP0PzVnXF0sxk4F7htduXFAiTxakW7b/PxxWOv7KisS3BiF
	QY2zuwtGZcjWCVAT5crx5qu0Kfw7Dg+pFXp7FNg+FScUq3UeMpoRrQn63jlYUVI2NCdmQaIzmVu
	lE4LrolZqljoi/veJG+Se97FNEcUuU8e/c42uae/8qRUfDWY824d1yzr728J7a5s6yQKQwwE/d4
	+QidSlY/WvK5uTA64RdxCQVIKT8QMyGB/jczEN00OdA7H+nMdByXLlZBOnHvq2TsbP2bnxqLHIG
	e2AK3DYE+2xhwWKebdqoHbtYOmU4yFrmW9Zy2jYKIDXO/v5uiVbUfT5jRR1RiyS215mW/qZ/aDE
	aAjncDZir2SsH/KMe8FfhYAZGtk4/QHSCfT0yOCv4L2zUb1fER1puU0yrnfkKZC4w056flYp3Uy
	ciRNKwGqbRIiXt
X-Google-Smtp-Source: AGHT+IF3WUZDt7YSsNEXLOZBjU3UIvaUcQfsKtl1wqO3MCT2yR7YZwvkOYLt1SYpR/F97Ojif30FHg==
X-Received: by 2002:a17:902:e790:b0:292:c97c:3569 with SMTP id d9443c01a7336-292c97c35e5mr90150135ad.48.1761127035784;
        Wed, 22 Oct 2025 02:57:15 -0700 (PDT)
Received: from [172.17.49.162] ([103.218.174.2])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-292471d5c0bsm133341425ad.69.2025.10.22.02.57.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 02:57:15 -0700 (PDT)
Message-ID: <75b39774-4542-44f1-9360-524f644a409b@gmail.com>
Date: Wed, 22 Oct 2025 15:27:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: Add support for QCS615 talos evk
 board
To: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251014120223.1914790-1-tessolveupstream@gmail.com>
 <20251014120223.1914790-3-tessolveupstream@gmail.com>
 <89f812bc-68ec-4a88-ac58-1f6797496151@kernel.org>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <89f812bc-68ec-4a88-ac58-1f6797496151@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 17/10/25 18:51, Krzysztof Kozlowski wrote:
> On 14/10/2025 14:02, Sudarshan Shetty wrote:
>> Introduce the device tree support for the QCS615-based talos-evk
>> platform, which follows the SMARC (Smart Mobility ARChitecture)
>> standard. The platform is composed of two main hardware
>> components: the talos-evk-som and the talos-evk carrier board.
>>
>> The talos-evk-som is a compact System on Module that integrates the
>> QCS615 SoC, PMIC, and essential GPIO connectivity. It follows the
>> SMARC standard, which defines a modular form factor allowing the SoM
>> to be paired with different carrier boards for varied applications.
> 
> You already sent next patch so this is simply incomplete. Please squash
> other work here.

Understood!
Will squash other work here in v4 patch.
> 
> Best regards,
> Krzysztof


