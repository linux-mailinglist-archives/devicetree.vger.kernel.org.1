Return-Path: <devicetree+bounces-41891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C1A855C94
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 09:36:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25606293540
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 08:36:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E5E210A3F;
	Thu, 15 Feb 2024 08:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zbCC2qYp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1284917591
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 08:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707986166; cv=none; b=Dtvqxw/KclcGvVyN+MIxzaK3w0nDjzXl+mARfALFVTcac85tGncOoVBmN5+3ngZAnaDPpuel+AZ4jiDSwoKth7WywhZsCuTsb/e8UU8l7dBRykLQmn2CJgDwjCMCxOhj7mrkxtHoU84h582wTE4cWhSU/OkstJiADbnS4oj/pTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707986166; c=relaxed/simple;
	bh=dVl6YlSs3JgV3u7K585QimDIjB3ji6V21PoR57kjwq8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Iwasp/yjhzHCJBbsDy94de8RF9xNyeSuddXwATuyw40S97oNb9aJBMmOlW5vHQMgJ3lCwDzCPP9HelytnOY5WjZr51p0SNr9L5SSjAZwfywmyUBmewV9Hj1c5HSHB/ZB4BfwFsne/5Bi/jKfl6hsviKqBb+KduVFTtjy8zaoihU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zbCC2qYp; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3c03b92998eso524907b6e.3
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 00:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707986164; x=1708590964; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZX22jKQSQzfOIXrO+WssbUgNKrO4mtw6rLzytRgzYnM=;
        b=zbCC2qYp/cwPoToIOlcFAjPN0GEInTWc3EpgUfeEaloaSc2zbdDYslvvjrmfcI2LEB
         EwUXjAcBYAi4M0EGvH5vvyjN9xt4yxLsfvcv7Orn4CznfPmddBa4F8ezc49VYwlj1BcQ
         b0ejbZaGpLY/+fdiZS3u4oJOxValITXaWslydq0k6I3IJKmQiQ1wH4ePLjL+EIRN3fwh
         LN9RFbjrfGPUkiNV0Bu3nCVLv3iQjhQjQW9cFxF+nNtGb5HQQwrkpCIFtkAPO5FFq0fJ
         7cX5qRJobK+8IlSXkduaHr3MyaiAPipdNG4/86vKpPrcTjFpnkjtAVVrPyRq0mn8XDaq
         b5dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707986164; x=1708590964;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZX22jKQSQzfOIXrO+WssbUgNKrO4mtw6rLzytRgzYnM=;
        b=sKxgFaSMrbsLut3LvTfZqtiKGHsz3E/ywRzRoC2pwlRCyq3S1MKzPhqzKsCfvQclqB
         C15xd7J4DRHwcmw3lz7iBgTmtrwNmAtZFjdm25cl93V3hN+7aaHuLeAgWkyQVGXRAAPe
         tMo2wZMDUOo4p0x+827mkHkm3/Rfwe0V5GxZE9wxETgZPlfh2q9bcci67QPYAsnECs0n
         +gSXICZECT6AeHw+6vjBii9i195CkZL9nqMW+CApK6Jv5t+ff7jB+Z10UklNy5a+jlVZ
         AXTy0sHOstiAbl8zapl3wYwvY3CdSYNY5WwN2ez+uNbHeNowAj3Wg8Y16K8NFm2yL7Ej
         PzEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlhC6G8cGyaNjswne4J/ZJkj1s68knRt4tNYX5Ym2N9eyLCNwNt5m63SzapNbhJ71JIo7qVBK9ZVdIKDj+dBEOlAZRjk3mo19Tpg==
X-Gm-Message-State: AOJu0YwmgLpX9yfdK2IgvSVlS6sTxjfMMjgXdpWACRqtpl1ODiR32oSV
	khLj7T5vDtY2J2kgMqeMMlG2xePWcVybIBc70m9pvSZ5emb+gbSuA1+W3JcFiOU=
X-Google-Smtp-Source: AGHT+IH99T1XgqxZMbgpzj43RCDAoPlw+3GxxAJ8pFZi95dsm4JfC64veAR30dqOnsf17QHoPx2yCg==
X-Received: by 2002:a05:6870:e393:b0:214:ca3c:54fc with SMTP id x19-20020a056870e39300b00214ca3c54fcmr1026258oad.20.1707986164142;
        Thu, 15 Feb 2024 00:36:04 -0800 (PST)
Received: from localhost ([122.172.83.95])
        by smtp.gmail.com with ESMTPSA id m189-20020a633fc6000000b005bdbe9a597fsm783521pga.57.2024.02.15.00.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 00:36:03 -0800 (PST)
Date: Thu, 15 Feb 2024 14:06:01 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Markus Schneider-Pargmann <msp@baylibre.com>,
	Rob Herring <robh+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
	Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>, Andrew Davis <afd@ti.com>,
	Dhruva Gole <d-gole@ti.com>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: cpufreq: Add nvmem-cells for chip
 information
Message-ID: <20240215083601.33dye7nypov2cz54@vireshk-i7>
References: <20240206145721.2418893-1-msp@baylibre.com>
 <20240206145721.2418893-2-msp@baylibre.com>
 <20240215072653.lscrdrmsges3psmc@vireshk-i7>
 <46645341-1484-42d8-8540-580b586e2315@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <46645341-1484-42d8-8540-580b586e2315@linaro.org>

On 15-02-24, 09:25, Krzysztof Kozlowski wrote:
> On 15/02/2024 08:26, Viresh Kumar wrote:
> > On 06-02-24, 15:57, Markus Schneider-Pargmann wrote:
> >> Add nvmem-cells to describe chip information like chipvariant and
> >> chipspeed. If nvmem-cells are used, the syscon property is not necessary
> >> anymore.
> >>
> >> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> >> Acked-by: Andrew Davis <afd@ti.com>
> > 
> > Rob,
> > 
> > Can you please review / Ack this one ?
> 
> Done now, although it is not aligned with DTS in this patchset, so this
> does not look tested...

I will wait for them to be fixed then.

-- 
viresh

