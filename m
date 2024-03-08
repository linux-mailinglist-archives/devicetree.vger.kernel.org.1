Return-Path: <devicetree+bounces-49376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8C787628B
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 11:59:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B05F61F23BC7
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 10:59:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3CF855E6C;
	Fri,  8 Mar 2024 10:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jiG4NjSa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5663355E5A
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 10:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709895532; cv=none; b=LA+gcHoOJzqmZPsUP2ofiyHWiRvH1V9m3CoUxCWOi2FxTg5cOS1JM+gj0b6AqMgMrHOQLzlAwCX8lkgznXweg87kJeF4J0xre/BOJNCfiLRggJ7qkyZIwrBFQYBc8L+II9+AqsN6uoQOIKht8RtPsBVZI7XTj5oRCck5cxl6JlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709895532; c=relaxed/simple;
	bh=j7G07rF5/qvRZWgaArKh9DuTk6kGf7x2mY/Ypg38FPQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YZQfK8gRhoC9vtpiUV8ghWCcA7NLWkWhPRBf6EC71XIpFS1X81MDYqT0NTsQyTjAbVM8WmJyc3bnvrLZ/VgPCvRrOGj+rqn5v7+JCp+lqdffNNKpCQCUuvvdqM6w7zX953ebC5YNELWfJhT1hE8JvAB0tIdeUd0XOguB6A2cqf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jiG4NjSa; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a3ddc13bbb3so546080766b.0
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 02:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1709895528; x=1710500328; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o9ZDQ9dYVt/GB3TB7EM7j0NoesZx4c/e+/0wwo1wOtI=;
        b=jiG4NjSaJME195fX4YTLQd2bh8DISg6w4cxeCoT73uQHBz83G1Y4aDJ/5WQgL+vepj
         pEs0QqSL9c0wlrHPC/JFDAhHsd0gfc3LNWfqV5BfO2PVXJybyz9To9AA8FrT1tAmDBZ7
         BHVgOIkM0zoq5GEW+PQHvUGnKAzxOWoSgQFjvMvqVyLAic9NaLoghHwFini7mXL6FZY/
         M+iJ+nPtNc74PRjQptqwunFU44BA6eUw80aOZLxXYhAPYLSWfTX1KZ7x5K4ovARLS4ui
         gNFykuro2pptHIuVVr/y5xD3MJ1fd5AdH457IUpYXYC1p5L5rpjixXMMXJ80op4sIU6G
         Wjsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709895528; x=1710500328;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o9ZDQ9dYVt/GB3TB7EM7j0NoesZx4c/e+/0wwo1wOtI=;
        b=VvgE4jIc1/6Il1n0wN+iBM3VwQWVmk8ahWUXdhig8wiC4sylWV6bP6eQ3G9WWoymdm
         uLve1n34CiWPk36xu4OoQyyNL/jlI6LL5Nk2ZfPHpENL//92c9T4XnRlbEpMrRO/zx6W
         ecvORpycSVf7CBvLm/ns3ywjHrIaFNPeEn2KxeRGl5Xwyc7z8DFrSR6VmCxFpME8mVpD
         q8fPRA2rsjdlBgL7K0AooGdbXxwiMGa/ZKO32FXNs8Hgv9YdD16jfX+cgTnkFLsh7TI1
         CsfD0fMEeh2U/jqBdp8jZ/0+siWWwOho1ZE94Nh8LT/EFnWclyeryOJNwJ3LXcjN/PLC
         qVsA==
X-Forwarded-Encrypted: i=1; AJvYcCUgInQj0OxJ2PYoM3MzeXZ3gspGKMD8P7DvqeBXzBU90O/+S9Me4h4Lwe7eYChnyhtMPhGaNRBunlPS+lEKj9QECgoi/gdqXrVvpw==
X-Gm-Message-State: AOJu0Yy3azovlt7C1HeGr6am2LUm4CbnInmBjLeQYeGqffePokgzSBfd
	JMXLCnKmwtuOhNaOEGCgb5Nc3rhyIqqbbeLg/tPo78+mJ1xneG1Uual2K/EP9rI=
X-Google-Smtp-Source: AGHT+IEuGPCmm1l6Pc17qKl4y/MCqtzZjxctHOZUnHumatu0wq8QD8SWmXsEqSyRxQ9F8cZs/y1oYw==
X-Received: by 2002:a17:907:1041:b0:a45:a2cc:eb93 with SMTP id oy1-20020a170907104100b00a45a2cceb93mr2537617ejb.4.1709895527485;
        Fri, 08 Mar 2024 02:58:47 -0800 (PST)
Received: from [192.168.1.70] ([84.102.31.43])
        by smtp.gmail.com with ESMTPSA id gy15-20020a170906f24f00b00a45f3cd8c5fsm241704ejb.116.2024.03.08.02.58.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Mar 2024 02:58:47 -0800 (PST)
Message-ID: <fc2d22a2-0db3-46ea-b283-1de53382d12a@baylibre.com>
Date: Fri, 8 Mar 2024 11:58:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/11] misc: tps6594-pfsm: Add TI TPS65224 PMIC PFSM
Content-Language: en-US
To: Bhargav Raviprakash <bhargav.r@ltts.com>, linux-kernel@vger.kernel.org
Cc: m.nirmaladevi@ltts.com, lee@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 lgirdwood@gmail.com, broonie@kernel.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, nm@ti.com,
 vigneshr@ti.com, kristo@kernel.org, eblanc@baylibre.com
References: <20240308103455.242705-1-bhargav.r@ltts.com>
 <20240308103455.242705-9-bhargav.r@ltts.com>
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <20240308103455.242705-9-bhargav.r@ltts.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/8/24 11:34, Bhargav Raviprakash wrote:
> Add support for TPS65224 PFSM in the TPS6594 PFSM driver as they share
> significant functionality.
>
> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>
> ---
>   drivers/misc/tps6594-pfsm.c | 48 +++++++++++++++++++++++++++----------
>   1 file changed, 35 insertions(+), 13 deletions(-)

Acked-by: Julien Panis <jpanis@baylibre.com>


