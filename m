Return-Path: <devicetree+bounces-146570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 742E8A35752
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 07:42:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B0613AD459
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 06:42:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DBDC202F93;
	Fri, 14 Feb 2025 06:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qiH7S8I6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5891802AB
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 06:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739515340; cv=none; b=r21nPYg6Z2HeJCZBBkdssMVcrDO7Z+AlqRUaSBdhBFK9viFi+jMRAeJnxsu2ISGTQiP8gjL33YoPD+yECeWcPGNW658yJBmBtEFF7hAaoLfpYqIklT0wKtSQ+uG/+rhupsi88wqhTt/dL0BZyovxr5C8lq8hKRdnRA7Yf+3QtKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739515340; c=relaxed/simple;
	bh=dCkSTtk9kSKMKBvRlNtSthP4noQOAV/PykwVDLKRw68=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SOPTWJrVNGQBFOv7AdOdsHvywcrdZjeyQ8vjyv+KYCpIvbBosxjbkSERrB8z7rUy59Rqqu2haphyqPCpM1E8EgReUacXAG3b/wZRlNyvj4ZWWiKXexZZPG1aFL2zOeOGbWA35BSxJbc6Q5N0xoxqZcRd21b/tRnjX0iZlygHcBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qiH7S8I6; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ab7f2b3d563so316567166b.1
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 22:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739515337; x=1740120137; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6hfDJLR9yNuRN5GPzA8PeCgTr8s7BG7gSfHQ0NUvCN8=;
        b=qiH7S8I6Y+x1E3lEeswwE+qx4M7Md9a3wLsYjho0J2txMvCYjx5EcBYK2lQnMnvJrf
         r2fe0b+EY+v/6xOFvOjCrcohws0tI0iTW51VxH1EUcciowXJN79ZfSvY44gBgRflrX/P
         Fqlw5Ngz/ysFVbZrCsHSrA5QXey+xU2jbAmu+5FaBvOKADHURwE+iLAmA/lDirgG4byj
         X+/JDSjB33WfydcRGC3wyBgG/Gxt/xbiZrqmusFzKptz7qV+QTc95cW2TpXW8JqdQDzm
         BOjNXCNess8zlv5wNk1k8hB5bqgAXkG5g2ZNHrr5qrmORCq/UtM4Z/+YG87Rwasht7tA
         WhdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739515337; x=1740120137;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6hfDJLR9yNuRN5GPzA8PeCgTr8s7BG7gSfHQ0NUvCN8=;
        b=rTTf/RN80Oo2NmI7cMmVRQEbggO4+XvXT6lZjioiy7ehe7dxIZhRg13UrL9kN+XXmf
         uDDoRsZewmnQGx+JJlllLeP5/GZZW2PRs05hwjRYEdsZSJKH78R8C31Wq2kch/7GkFsC
         juwG+lv2yD9dOU0HB+sf9nRTEejDvWLPTnZYMWopp7DySW3H387T+ebO1IcYOlBEWjbU
         Gsc7xMDQLRbJivmSHN+kODbkDDRFVEPEjD3osXr6iU8lA4v5uR8GWbjCMtlH5+0jaATG
         0A6eng2fKbO9M8BYD3WTRFb5VL6SNJi/KjppP/YaMaz+0NxivkGc37z2jVBMoK16ggsD
         0xTw==
X-Forwarded-Encrypted: i=1; AJvYcCWedhqkTkGfk4BgiCClcxBGe2Bd5+76jL1GoylVFzxGBOKH8IKaBw+LBS54DfnxsaosWRsNQUxSlSd1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/K+77UZNuPJ6UytB3HJIVJkvtd31s5b9Hc+yLPNXazpWLz2pB
	kNDCjV/0cuy7T3EyTcoRn++NasVxrvSxkRhB41vDps4bKwVXPIJw0zTfqriwLn4=
X-Gm-Gg: ASbGncu9n+3TQeRpgOioHIVf52WvyUHxZlfmMzB9T4E7HOcM9zFC+na9fIUzTypvR2R
	zM9Q2q/zMGaNnoiKr2fFSkj69ZMU9t0f+J6scFfQSXFX0WTS5V2C/QnGVVkROAQ6+qColkfXSDq
	+zb3NCtMq4FsCjtYPYwrhN6Z/EF2AaGAQEqvrQcnSzE6PN0ys/WTGxpdtEtSxqc4EdUeL/H7CE5
	SkIiAWLVOmoDldbssbEDgAb9JyLy4jj/0/fpAkshkezjVGU2LVdVSvgM3k1Zzn3tLitrkdZwNny
	FkRGVXp36RoJn0/Uure1ObBt
X-Google-Smtp-Source: AGHT+IEKcusDJ5ysfHl3uoOwCsLd2p8Ws/FHvKfkzEK57YdhmOYKIadpK1QRFMVRV3ZXNrzmUuWp+Q==
X-Received: by 2002:a17:907:d15:b0:aa6:9503:aa73 with SMTP id a640c23a62f3a-aba501bc5admr629562966b.51.1739515336656;
        Thu, 13 Feb 2025 22:42:16 -0800 (PST)
Received: from [192.168.0.14] ([79.115.63.124])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba532832d1sm275659666b.81.2025.02.13.22.42.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2025 22:42:16 -0800 (PST)
Message-ID: <55028ae3-ffab-41e8-b1ec-fb2098b65d7c@linaro.org>
Date: Fri, 14 Feb 2025 06:42:14 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/3] dt-bindings: serial: samsung: add Exynos990
 compatible
To: Denzeel Oliva <wachiturroxd150@gmail.com>
Cc: alim.akhtar@samsung.com, conor+dt@kernel.org, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-serial@vger.kernel.org,
 robh@kernel.org, semen.protsenko@linaro.org
References: <20250212234034.284-1-wachiturroxd150@gmail.com>
 <20250212234034.284-3-wachiturroxd150@gmail.com>
 <fc341dbf-3add-4728-9ec5-7291ad3bcbe9@linaro.org>
 <Z67Rm0HoEqGsiL/F@droid-r8s>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <Z67Rm0HoEqGsiL/F@droid-r8s>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 2/14/25 5:16 AM, Denzeel Oliva wrote:
> On Thu, Feb 13, 2025 at 07:20:22AM +0000, Tudor Ambarus wrote:
>> doesn't the 32 bit register restriction apply to uart as it applies to
>> SPI? If so, you shall probably fallback to gs101.
> 
> Of course not, downstream of the UART serial driver there is nothing
> specified about 32-bit access restriction, nothing explicitly
> in the driver. [0]
> 
> https://github.com/pascua28/android_kernel_samsung_s20fe/blob/3be539e9cd22b89ba3cc8282945a0c46ff27341d/drivers/tty/serial/samsung.c#L1543

that's very strange. uart and spi are part of the same USI IP, on the
same bus. I don't think you can have the same IP requiring 32 bit
accesses for SPI but allow 8-bit accesses for uart.

Maybe SPI can work with 8bit accesses? How did you test SPI and uart?

