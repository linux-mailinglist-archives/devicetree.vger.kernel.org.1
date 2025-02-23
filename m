Return-Path: <devicetree+bounces-150002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE77A40F07
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 13:46:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4834D3AD072
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 12:45:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3076C205E06;
	Sun, 23 Feb 2025 12:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bjkXXRUY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614B5202C21
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 12:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740314762; cv=none; b=B/6Y29/bhml65P9MZIb5pNq7oSjkw1wV3rXVlA/+lUK9ANFk8HnasYILBVoH8To/BPvZy4dE4qR7DzahdGKDDqZirYeRXYy2ERqJEGqcXt55D626tBQl1jCTSEkdXCnZ9b5hLpsyu590QxnBQ1Vt5Np7+XVFsPVPpjXwg6yRQNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740314762; c=relaxed/simple;
	bh=nIBKRUzzjXYm6l1jxa2y3dJvsdqoRKYeUA//1G94xVA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=H7nQKHi1O5m/bS4rWT4NE0NAl5BBtTdR/3CCsGNCXa6naxdFDchYtLA00i0KmXvz/9oOkKza38cSwUXA6BZUQG4gRNw1Oa4pLLjU5EGZ/Lh0zlY4yZ0jkUlf+vlansF7NovHxmJl2gv8shIvwatLJgXJek9xMfCdgy+sDAGf9bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bjkXXRUY; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5ded7cb613eso737269a12.2
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 04:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740314758; x=1740919558; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BxGLmwDwexFMvF+5G+z3vtNFg+fHiCX2FbyV66dEnmY=;
        b=bjkXXRUYF0BrSWWKQ9Nd2+DK1fvW7dpxbW84tpoQ6Euf1TCldHx+dbeKi8sDlAYzL/
         G99jD6vEwl61zG0033/WL8m3KjPEiftXxvdU64/SJIPYgf4TTgVmNWW4PAWZjMr5i1Tw
         3Vl23ls6R8b8vHJf7znCWhat0+B/ytq/rtmSmjwZexiWYkzDwdw1Tq4igYFEmpQjI3BK
         HyBKaFNRqMWxJeNCDaV7Y/BcKKp7WLkls5pb+ctdslHFGUK6w0L4ofWa9c4nOBxZiR6o
         vk/BDZLB6hsUMokhv4ctSI2hfLKDoNCw8cnNQB5NVxCX26zcSVfxXokjYI5wqiVHrvwB
         LDBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740314758; x=1740919558;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BxGLmwDwexFMvF+5G+z3vtNFg+fHiCX2FbyV66dEnmY=;
        b=XEGHvYrj9vKf43L7gszXafWv3qpjVBmITLAMZhFy3F99tstvY350VqFKEHatYAVKvy
         rDoCs8c/c5K9aPOFSA2pBKDcJFJRtnjaxVjalgTgBypSWZm7s+nSRFb31i+5dXB06eyp
         AlFewNGm2PETF4YdepVaK2G3XVUIWvz9jddaw00JGX6XLM3YOhtZG7T96nbTwh39326M
         YtR7nKdKQhvKVUwO0srdh/e9/ghIdYebzFrVc7HsgQJN0ui5EFYZ+KMLye2Gfr4M6EWr
         Cfjhve2dntX1KTN3CFci3EEj7AfvHpJRf+VG0Gkyy5m3Sq2tlTXi2NWT0TV5jTxX8F/k
         +QVA==
X-Forwarded-Encrypted: i=1; AJvYcCXA+M190kWO4XLbJ/NN5e4MQMpS2G/+06WBOChtjPUvSgLz14nOX7UNoSykEegizN9Rs3BFpRg/S0Gp@vger.kernel.org
X-Gm-Message-State: AOJu0YyXS7r7sIKQKloWDl4SSnA05M5s5eTzeZ7wqoxDqLDLGtlAkPA8
	0zSil2WjKt2H4cCVsGKi/BWeyd8BbP6hN6GqMBCMMfDNhGun3jCbMGz+UMTdcAe68Cq+DtV7/1t
	ypV0=
X-Gm-Gg: ASbGncvYbFeF65xyMQwK1Dmzuwe5AC2dJj9unuxcRGQwj6PMzgRWMAVAmvFjfugZ/Ey
	z/m+u41ztCS3klkQU/KUjusJvODELJijHVGbeY7lTdJ18bBvXXjkV5O71bGEMi5z3t09rbDVjeO
	6IudS04IMTqNW9CIafa0aOcvq8xJpiKBmdimh4ZMq3aBKCZNVa/qNyVuGaDWrP34uNsiVHWYMNk
	cxreL4DNQXtLuVDxHVHdhY5GYzS6SntB+3XlJz32jfZPxyXYsktCYj0gL04j0eTv5Mtn7cy6AlL
	YgR2LQl38WJ6ndb2nPlA8aEPwLLDNG+CT+fnrAJ9h+nslwrIPRKDzOdvewzhBS7PTfmRq/hYuD5
	+
X-Google-Smtp-Source: AGHT+IFKCmAEZUKM6icp+w8U5a2oBjpzNrfLBOKKdYNrGEY1U63jOVDcOQc/BfZTE5gPTEiU2BqapQ==
X-Received: by 2002:a17:907:c2a:b0:abb:444b:8472 with SMTP id a640c23a62f3a-abc09bed469mr355018266b.8.1740314758257;
        Sun, 23 Feb 2025 04:45:58 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb8209a2cbsm1555460566b.133.2025.02.23.04.45.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 04:45:57 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: krzk@kernel.org, alim.akhtar@samsung.com, 
 Sowon Na <sowon.na@samsung.com>
Cc: krzk+dt@kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org
In-Reply-To: <20250219073731.853120-1-sowon.na@samsung.com>
References: <CGME20250219073733epcas2p1537d9cecdfad313077aa4cc4bff8a6f0@epcas2p1.samsung.com>
 <20250219073731.853120-1-sowon.na@samsung.com>
Subject: Re: [PATCH v5 1/1] arm64: dts: exynosautov920: add ufs phy for
 ExynosAutov920 SoC
Message-Id: <174031475590.40795.1242033938168164812.b4-ty@linaro.org>
Date: Sun, 23 Feb 2025 13:45:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 19 Feb 2025 16:37:28 +0900, Sowon Na wrote:
> Add UFS Phy for ExynosAutov920
> 
> Like ExynosAutov9, this also uses fixed-rate clock nodes until clock driver
> has been supported. The clock nodes are initialized on bootloader stage
> thus we don't need to control them so far.
> 
> Changes from v4:
> - Place entry in correct order instead of appending to the end.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynosautov920: add ufs phy for ExynosAutov920 SoC
      https://git.kernel.org/krzk/linux/c/5893f538e331609fbea244ed14732291edd6ab22

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


