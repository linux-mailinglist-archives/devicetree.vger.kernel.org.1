Return-Path: <devicetree+bounces-45420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A6362861D99
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 21:27:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 16C161F2218C
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 20:27:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D32012883B;
	Fri, 23 Feb 2024 20:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="rW94okdR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89C9D142648
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 20:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708720045; cv=none; b=jny0hw6x57H/1foixNgq4V7LDF39M3Bo1JEXoYxkJo9T9XgMShjIbKqdT/UQremqGc8sGHV9Mau031x3jFdvyoNVI2GyGoFrjz3MHAi4A6sS6rlqPP+mu7/MnqxII+WRWWmYcjmH7wuLsFhA235AAz+uJXXTHf1WC3MOi6vDpVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708720045; c=relaxed/simple;
	bh=3YpEGeuhL8ubJmEesiwCMngORbDqOsSbQu4Bi2PiD98=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PYzUYPv5SNBrXq0AmZWc09T1dAMU9eE711dohyszAY1VRdwjxORLW5gRXjuse0If3E73I4Vw4B+YjyBKaytrJ3r+KZCVf40pu1lhxdMEQ3y8DzBHDIy0cfkBkvIALWx2qKfkYOQBvuLIxZLsCedxdDzL0APE0qTi4r2mFY8B0GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=rW94okdR; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5129cdae3c6so1583823e87.1
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 12:27:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708720042; x=1709324842; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K2Et8H1DtwHnrSyv4ArO1u3yJYDVaQ44clIgnisl2H4=;
        b=rW94okdRQGsBErEYNste9kOAmY7aCUxzrW8Z2UK181ndRUllIa5wku4yth5BPjWJ2J
         1pVLn/04ygPt1Oghi6OusywmhBjnY9bFjr7lDgRxBbBVzP2WGAEwM2Py0EyUv01hI0Fo
         07mWNT2TMewdTS5XExOmMFGS5aWAGSw+D6BOsJmJ8nJDzlNZeclLJEbU+h5SOc+josD7
         v0T/TigHXJzAWFva35MCFb5Fq7IofxwOCAGc5U5FoIfCTbi5OwT/px9Ywhd9kCFnH4JT
         TDomTd1OCKtjoHG1ML/BNkHImfLYtNPcN26X1E2eFO61BZDNqagHjznoOSu1qOw/MOKX
         0JoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708720042; x=1709324842;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K2Et8H1DtwHnrSyv4ArO1u3yJYDVaQ44clIgnisl2H4=;
        b=XXjOszciU60PqYr70GLgVuIYuFvonVFFyPBWtM9jKo4dvW4UyCyR9whKgjyNmPFCUn
         NXAS7sTXHPZy09UJOpbm5yk46e1tR31J6Y2TocXvXFJnmepiT0zbn+Xeozi5kBMaikTs
         fW0GzQ31b6mLNMiyqS52IMsTPLeGlzcR+6ZnvpxQUxEsVUASiEick4eprPoLV1SCs48T
         yxFtwSEHYPokBIIuG+zxptkIANajOtuJTWSSsUthn0cFbA0wRFIlgYHRBWEJj2AXZ58p
         1FCubN+NyjAXpO7SymrdK6dKTcHpHnAt3DaaHWsavTfdXUR2IfqSCHevubcK06rW0InB
         3ceA==
X-Gm-Message-State: AOJu0YyXAapQ6d+wVJ14vseb1A5WWAI9z3rXdCB21oupY5hjp6/p2pZ0
	JWwxl9yg2kT4wa75uzMFA/x0IaG0wivU+tZgSfNYCMnW/lDj3X+MGcIw16zO1q8=
X-Google-Smtp-Source: AGHT+IEkDhFlL5nB07GkTiQuGx05uTfF0HxzH9d74rlmOmpM0jUr/IFa5TPMHf48Y4Z6h4KtKW8I1g==
X-Received: by 2002:a05:6512:3244:b0:512:df93:479c with SMTP id c4-20020a056512324400b00512df93479cmr492390lfr.36.1708720041614;
        Fri, 23 Feb 2024 12:27:21 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.99])
        by smtp.gmail.com with ESMTPSA id fw14-20020a170906c94e00b00a3f04112c0csm3705544ejb.221.2024.02.23.12.27.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Feb 2024 12:27:21 -0800 (PST)
Message-ID: <0dac99e5-4ee0-4d55-a344-ae7bd627149e@tuxon.dev>
Date: Fri, 23 Feb 2024 22:27:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] ARM: dts: microchip: few DT cleanups
Content-Language: en-US
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240218151353.3612621-1-claudiu.beznea@tuxon.dev>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240218151353.3612621-1-claudiu.beznea@tuxon.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 18.02.2024 17:13, Claudiu Beznea wrote:
> Hi,
> 
> Series adds minor cleanups for sam9x60 and sama7g5.
> 
> Thank you,
> Claudiu Beznea
> 
> Claudiu Beznea (2):
>   ARM: dts: microchip: sama7g5: align dmas to opening '<'
>   ARM: dts: microchip: sam9x60: align dmas to opening '<'

Applied to at91-dt, thanks!


