Return-Path: <devicetree+bounces-117849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B699B817B
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 18:47:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6621FB2100A
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 17:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F14871C4617;
	Thu, 31 Oct 2024 17:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xHNGl4f5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0CD21C4612
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 17:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730396820; cv=none; b=f/mAGt25+e59Dr6HGwlHkAyDeWAhjT9I9r/e9iUW0wQO2p2GnXXoCiFnB/kkgOQvWq7guhPSM++FD+kgC22GizCokkWuGjbQrMloNCfvuPukIqy3jNzC7o33cAckx5PX4E2rsFnLbaEKX5ViJKpUcJflrFLYNrscCfntlrl0Ukc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730396820; c=relaxed/simple;
	bh=kNW5YJKFKEbItLM4uYNbuJvwCmMv78DkIkndczxT8eo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MGR5ikQ+rG4BJJqAWeENMzi2uRnRxv2bU1wzteFkXW6ZsWQuVScJdktMPmfVtzgu4lGCHm+fvSgi4AMgxotZTdAaAAvgLSWFATDH+g5ZMH65xPYhb3ZKZVBKs8myEKGwIDKsGJoOaYd2/X7ShXWOCeF31BWAHKhb9pg+Nm3iPao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xHNGl4f5; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539e8607c2aso1332464e87.3
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 10:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730396817; x=1731001617; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JYVW0G4jKWF/vesRuHI0K2kAx4zvmynSz5/bDZbMrwU=;
        b=xHNGl4f5gNxbRKa4r4CmcTfPVMl8E0+Jt961pxEv4hCkDfGksLCU7UXD+t+DmW03rz
         VYTGL5urU2+yzCy+c6+hA1uTQnMPi+Y5KB+wjKCzncUtcZcXHOt6u5YntZjVyQSpqAlT
         SKiDQYMHy6+01zd4LY82Neky/u7hQbcgZABbYwG/+7jDjI2kJEsfUvvIYsp/akV7JtQ1
         KwGY93C6KrEsdSyZ07n1NxZAPuj0/LjhZ+xeII0lc47BcrqEY/K+ML/J33gfCxLmja6C
         FEbHWJWH+7oO+J5K2BySWtEsVlmhqHx1gBY+mPvDdARS9iUxogsYWTE/HiReciyriUfo
         8yCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730396817; x=1731001617;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JYVW0G4jKWF/vesRuHI0K2kAx4zvmynSz5/bDZbMrwU=;
        b=tqdV0GqPWz95xrhngXc2RGNRnR8TkCw6VCPLBcMyoRidcLxu1NMs4ZBVxmoaMNV5Zp
         Ct7adVQeZaHkfQVb2ug0bVlRudxmw2+7rRg6qgMpr78WanrMag8RIDSDycC1+c63yF/o
         MH1PvPvz2FTn/kDSZLPMSU/EJ9zj4CFOiYYlbp3CIQr97/pkA9xHq0V69wxUDRrHbVA/
         gGyFdPEzaWJZJMjwfMZbktZo9XIMNFb+dgTNgxPsCPGJRg/+HRe4ReDhjzw9PS3ahri3
         uB1lzmiAq5QbBumq1qEMMcF8AyMAmmYIzH4JYpGJtUPJt6VjUM8/t3YL8C0Jd6myox2j
         3LXg==
X-Forwarded-Encrypted: i=1; AJvYcCUtJV2xKfE2a1zyTCr5ohYs4bLmjWuPIAx7YmHw38U2EaOUpkXGZyjSSY5SNeKK5HKoBXan67tk9f+Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yygf1ecWsi3HpgHWMTJ69uZH12hXvt2st9UsG6EsTu/PL4Ifc+N
	RQLvh/x/P6eCyyxuGrCXosTp2JrJWeTo4+R3cYjr+58i2xcPOpKzJrOjCCGv06U=
X-Google-Smtp-Source: AGHT+IGyTeyeKwDRjDrsk0Wsj/rqtfm7DMEl1ilUZ4Hdph3NUKV99MLV9W0IhpqFsz6uKU4pSSuJcg==
X-Received: by 2002:a05:6512:33d1:b0:539:f705:dbb3 with SMTP id 2adb3069b0e04-53b348cf8f2mr10764252e87.23.1730396816837;
        Thu, 31 Oct 2024 10:46:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bdccb0asm272005e87.226.2024.10.31.10.46.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 10:46:55 -0700 (PDT)
Date: Thu, 31 Oct 2024 19:46:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Lee Jones <lee@kernel.org>, Amit Kucheria <amitk@kernel.org>, 
	Thara Gopinath <thara.gopinath@gmail.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, iommu@lists.linux.dev
Subject: Re: [PATCH v2 02/15] pinctrl: qcom-pmic-gpio: add support for PM8937
Message-ID: <qavxo7hx6zl77vzyfv7tht6gsayijredceaelh5qbb7rqjk7z6@6hghlu3bxg4u>
References: <20241031-msm8917-v2-0-8a075faa89b1@mainlining.org>
 <20241031-msm8917-v2-2-8a075faa89b1@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241031-msm8917-v2-2-8a075faa89b1@mainlining.org>

On Thu, Oct 31, 2024 at 02:19:43AM +0100, Barnabás Czémán wrote:
> PM8937 has 8 GPIO-s with holes on GPIO3, GPIO4 and GPIO6.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  drivers/pinctrl/qcom/pinctrl-spmi-gpio.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

