Return-Path: <devicetree+bounces-169246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F594A96074
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 10:05:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E679B3A3573
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 08:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 811AD20FAA8;
	Tue, 22 Apr 2025 08:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oT3TQjyk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A951B1EEA4B
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 08:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745308981; cv=none; b=mzzx24S7AGr84y0Pb3VCwKrTwZinCJO/trsgpKS6H5m0gFUGmg9jqmY7Lj4UrbEIj4QWXCOIVpqDS//C1T1K2402j7CPIIL599YTuE+eAyPv61xbFAx85pgRTb9e5Rrfh9KMGnmwAgyVZBC4Grav8lRZGZkkJfoqHqxwV1wN+tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745308981; c=relaxed/simple;
	bh=EYyNE0jVDJ/u4xhfpMdq85OdbkUTw8P9w8wtSgmEz7Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=E9PyisDxzZWEAZsW3NXYGQvxdkjmGPUyJfASnwTBTc0RGYZmOSmdqLeEChFSE6b9NblR+kZW5bLeRs0abseZQ/CYqIND1aCAr2VsZRf1JaXsvl4F0K0AVtvGC4zUk2MsbbGIeee+3NDAF+3pEsZSwNGglHX+xCjHS+Ge1KWQYcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oT3TQjyk; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5ebf57360b6so616246a12.3
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 01:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745308978; x=1745913778; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A2SXaJr1crC6irGTaWOzi3O3ULAEyfrCbSvTACAoxuM=;
        b=oT3TQjykkqdLBk1jT75xuV23rjzZ/L7gv75loEXHL/UtmL+ikPv2EHQOUqJPM9bXMG
         JFB7IvyJdZ1N28yr0o72IqH9Zu0fwuOsoYfh7TbCZkLSE5l7tb0kLQg01XJh+ZMrjDcc
         856p4a7pxceQNIbovrNIHfZ39jxhu4U/JKrk4qloddaWTRqbqrL4eyxghCyIZu/PzgYw
         VZBMxp3Yy8Dq7pRMdkwL5gG3HcWi6xVddbl/YS2QcUKu+ZWWhM+wc9+nFKcE5hQ028V+
         gSqY9gkeP9X8IhvEbflu7mryla6UUVowdReDV1gPtD/6EZGe+KYKhI5y0l0yBjVRu8mP
         Ctxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745308978; x=1745913778;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A2SXaJr1crC6irGTaWOzi3O3ULAEyfrCbSvTACAoxuM=;
        b=LJTbfbeBwLa3WyakkWs3ffRvshp1ebM+xyq4UQbFtt2sdU4xbeAwBM7kUA5WlbuHIg
         YqEUzbjP/loHxULwpZG6uI0Zct3XgfcgJmSbhes10Kylru9hIJLsFwjPKcvQPB8A+GNR
         xuCHzDN81jSAy7cWQpanEVbctVGJ3RD4RZ7LJ78Mvgl5dC3ZdYVrvSlaLDn38H2Oj4SK
         DAPDWHksQvCEn0yi8GNOuBU6jUbSvndKY4lSR80LJt1EH7bjZcdGHA2saqLRnDKOIJ7o
         oLsVIKDmDeqXxrL/y2UdM3DKu+trZ1q9JGIU5xG0Y6YQHqDrOigpcedZCmE/N2CtpDeV
         EjRg==
X-Gm-Message-State: AOJu0YzryWCxdwclKsBvF3zgrWv4DI53xw24enDFIBBs2XFUdp6FcKV2
	lp37uY2dTQDKAENyMDBaSEmQN7TRz4vC7VCmpb15KZ5DGTWHhoaSY6V8Q2Jr2qI=
X-Gm-Gg: ASbGncuo4LU51MEfUUJ+YIAX/pBOSWnpheReizcjOAKfHplYMA63bu0FRLyLI/mZrss
	+HXuHPZ/PG6a/hb67F8143BCQVGTYFxmWleVCkUftY+FidUc+KtPnhsfvqKKRYtOCRRDmFUUlnz
	AGwMkNBwY75EDMlOF4sX5FVnLPIFcE4GPfTs26M6/FDfFBpG6KHv6WFTZqygGFaqgwZiW5qJJML
	GlouUvB0T5ljdDEhtsi/m/WOjaMuQxCIzrQOib0aW2lrg8n2ZOvWyx0MC2DEAKVTAaIed8cc7aA
	FLBw24hFfBJJNUjFQZ4APTyHUt7M1y2Fwq69s3hpBLHtzWjMJ2sEA5ea2S2IenkQMAxRtw==
X-Google-Smtp-Source: AGHT+IEO95pVgcbTTuL6m1nZThpMsZDecLSZl0E0qY4XHaTmqD45YQmuajiyCZeoAAauzastwGCgcw==
X-Received: by 2002:a05:6402:4312:b0:5ee:497:5221 with SMTP id 4fb4d7f45d1cf-5f628628bdamr4155171a12.11.1745308977929;
        Tue, 22 Apr 2025 01:02:57 -0700 (PDT)
Received: from [192.168.70.232] ([88.154.3.194])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f625593409sm5532352a12.37.2025.04.22.01.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 01:02:57 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: robh@kernel.org, alim.akhtar@samsung.com, krzk+dt@kernel.org, 
 conor+dt@kernel.org, Faraz Ata <faraz.ata@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dev.tailor@samsung.com, rosa.pila@samsung.com
In-Reply-To: <20250417113511.759268-1-faraz.ata@samsung.com>
References: <CGME20250417112513epcas5p2a44d0a4cfca2cccf97f1599af0e6b494@epcas5p2.samsung.com>
 <20250417113511.759268-1-faraz.ata@samsung.com>
Subject: Re: [PATCH v3] arm64: dts: exynos: Add DT node for all UART ports
Message-Id: <174530897488.9276.17366412245478167269.b4-ty@linaro.org>
Date: Tue, 22 Apr 2025 10:02:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 17 Apr 2025 17:05:11 +0530, Faraz Ata wrote:
> Universal Serial Interface (USI) supports three serial protocol
> like uart, i2c and spi. ExynosAutov920 has 18 instances of USI.
> Add all the USI DT node and subsequent uart nodes for all the instances.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos: Add DT node for all UART ports
      https://git.kernel.org/krzk/linux/c/1a6ee48d8757dbd1c243fa518ff31f33665d4fa0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


