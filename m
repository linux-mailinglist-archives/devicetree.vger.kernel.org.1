Return-Path: <devicetree+bounces-35787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9F583ECF4
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 12:43:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 56EBB1F22F7D
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 11:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEF3C1EB3C;
	Sat, 27 Jan 2024 11:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jng0JbHd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18099945A
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 11:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706355821; cv=none; b=SSbfu/APFdcQNEOEN/S+l8EyTtaj5W3h0pWDnBAPVUKv0djsxABp40Cu4ERZJ/ocuyzi4eOuWbvYOmIk/vjTCy+t9Ah8APBkWJgDVnWMUvcdXnIXQAt50PXf8D0juz/xiKHtupnSlvVZn7Ys8r3p5up/ScS0wCKwM/tTmG7B7kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706355821; c=relaxed/simple;
	bh=mZYrTuU0MVEx3E/DUAdEC+vkpR2pgJafw78jgNAFpEk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=RtSOWm7h8rieA7EdSUezmbtB9cuNfr0WDbh87/afHQvGQvwKTblReh/HVnoztSpw3aeN3KNEk6+myd8P3NEsIKCJY2ua48t5rZ2nqDSxie2nBIzChCgcqRxLj2ONfHaPd5lolmBJj08EazsflAIerdwXjPFR/ab6B4C5441aZ/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jng0JbHd; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40eccf4a91dso18327285e9.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 03:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706355818; x=1706960618; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DsIec22tvsMcG1DurVsfmi5h8c4w2nlgjjGjGDCCM3o=;
        b=Jng0JbHdo91g4aY0jQcBLHKrAF2uN3qTZR0xh9nBZ4PmXav/KECFCZkRmrqZnMgblj
         //EVozWJXFLyNM6YDI2teXcOUnrDDEt0Jqi73Kx3VHdQ3vAhN5fsaP0+gRPrtvCdT9F5
         YqrEwWWSOkMfgTjKSSeYPFHmwwWoeqOyTMSVrtNwoDnxCSS0eQKr5aHaX7wr5KXxfshc
         RRhTkH0Qp7WqkRNpe55HCcqhOJfqAdRcvJ3Am1nRciiJMZihaz5WR7DMEuwdQ6wL7eej
         4/WikyPfD5YJtW9tZfYQXPWtoHb2tYWReETQhRf2q6en5+OEVp1pdWE9V8kCmSY/OGEP
         F/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706355818; x=1706960618;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DsIec22tvsMcG1DurVsfmi5h8c4w2nlgjjGjGDCCM3o=;
        b=o3Dv3Wa7gm0mTR0MznPZRCXoOlwsIizrfc7Dn0WliXo6w7TsnIxzaeafszCAaOFSyW
         ifeokZs3+CaoMsjUn2OGY4jjcWSPmlZTsh3WCrT5TILYvJ1ZP6O7t6ppuiUSkGclJDug
         pxPPSylBHGff7ZxaN13L2ls8gAgooEnedWhcOSzJwlWT/S4IJHQs3XPQ+KNAbsTxF5yj
         iOBoyHpDUgbDoUqnk6fyLwUbvXVWREzuawP98IEYSHSFoOxvlVjtWnUQF2yrqwbHGLFY
         dJNH4q0/98kLD/B6HkpB1OJHCd646KDB0iT5iF7IXulzVaFyZutGjlTtnvyCLb36I3BA
         8F2A==
X-Gm-Message-State: AOJu0YyRULKh39JT+dJSPkvvw8cF2OR6Hz7IhM/l5+yIGDLRXjZ+BuIp
	wyKrFKe55IwTYMz7e8JhQns4a/mr2xSgyB7J7WKc2+767ZfUDTeXmDdtP0CzOXw=
X-Google-Smtp-Source: AGHT+IHPoRot8L8KDzZhhMtXfVsQySa+s4K6zt5s4a36tPlfd70mWhfRHj3mL9FLxp+oPk59a9I6hg==
X-Received: by 2002:adf:a392:0:b0:338:d6c5:e9e9 with SMTP id l18-20020adfa392000000b00338d6c5e9e9mr783631wrb.138.1706355818153;
        Sat, 27 Jan 2024 03:43:38 -0800 (PST)
Received: from [172.20.10.4] (82-132-215-85.dab.02.net. [82.132.215.85])
        by smtp.gmail.com with ESMTPSA id u10-20020a056000038a00b00336898daceasm1300839wrf.96.2024.01.27.03.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 03:43:37 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, michal.simek@amd.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
Cc: linux-kernel@vger.kernel.org-, praveent@amd.com
In-Reply-To: <20240108052617.32510-1-praveen.teja.kundanala@amd.com>
References: <20240108052617.32510-1-praveen.teja.kundanala@amd.com>
Subject: Re: (subset) [PATCH V3 0/3] Add ZynqMP efuse access support
Message-Id: <170635581622.41421.8980881999042944764.b4-ty@linaro.org>
Date: Sat, 27 Jan 2024 11:43:36 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Mon, 08 Jan 2024 10:56:14 +0530, Praveen Teja Kundanala wrote:
> Add following support
>  - ZynqMP efuse firmware API for efuse access
>  - Convert txt to yaml file
>  - Update driver to provide support to
>     read/write ZynqMP efuse memory
> 
> The first patch depends on
> https://lore.kernel.org/linux-arm-kernel/20231004094116.27128-2-jay.buddhabhatti@amd.com/
> please consider applying these patches accordingly.
> 
> [...]

Applied, thanks!

[2/3] dt-bindings: nvmem: Convert xlnx,zynqmp-nvmem.txt to yaml
      commit: a0cfd5e997824d0bd8c7620d40cdb324121a2fc7

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


