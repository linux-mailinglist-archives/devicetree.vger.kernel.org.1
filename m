Return-Path: <devicetree+bounces-152429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CF7A4913D
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 06:58:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BEC0A3B720C
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 05:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A6841C3BE1;
	Fri, 28 Feb 2025 05:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ngn2jpDS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425261C3BE2
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 05:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740722332; cv=none; b=HtJ7I+3w5xdFgqsss6/9jXGJcBFxeE+ElAbSfVbI02RNkJJ86W8ng++DgXZULlZNQwpjj8PGt5EUNYPNPCgaKNUm6vin565VJ4HERqKft3zcUdi1yt0MvDv7of9zIZAg89ADEjZaVhxbiGgGq9KqrP1KizqmNlmWgX2R6Nn4Zf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740722332; c=relaxed/simple;
	bh=V8V/ZCN7frvfcECXuXfU8l3W4E8kK7o0sxD/Vdoy7Mw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tzd/MAvbPY5GWb3RLgSEANi/cvXl7hy6I42neaqRk/I82itl/O7arBBmOEFDveYODUYlbBqnMzanpHeRIX0s45tbjOvq5cqKMYTwcn86c9bJiNjAtPZ4HmDHPA5RwScDjZwgjag7tR7+KxjzUCNHT/SP8EyJaLFJiAjqt6EUUMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ngn2jpDS; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-548409cd2a8so1749736e87.3
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 21:58:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740722327; x=1741327127; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/ibJBHy5xFJcYeoiCP5vmhHIfF4PoPWSUEyYMwmPo78=;
        b=Ngn2jpDSKjUpoG/a+Y4YuxwKHMcfhAmUz3gTktc7mAS9Jql1RSHSEZZRvFjiuKxZ59
         iRLiWytn6fAjXONpK1ITsuJgrTq+w7VPz/XFTmCBQVmmfSfAVFELQ6OsQ0pmE5S7n64O
         o0EtuMw+2hnh5moUq31dkGy89dRzPEClK9vPQpVGB/bdHCNHtSGWwdUWYD7HBmGKEXVU
         +zHYif8AcKSnv/deTbmVtVZF7TX0jwUxnjG7KlNEj/W38koXE+n5hBywjViXhFaqeZYQ
         /uwK6ME4OXGn43QsSt1EFne3RTgr4QvWSLcgBiiqYVcXRLb0MnGaGTSqjKPlFHScy/jr
         xblA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740722327; x=1741327127;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ibJBHy5xFJcYeoiCP5vmhHIfF4PoPWSUEyYMwmPo78=;
        b=KiTc7mgm4Jn5PmGYVMD3PtrLXOvtMxUm3n1ZWhIYZBfYuO+7oP/HDA2LbaygubK/y/
         VdBTDJq1f/c5xDnH52d3VwQbqYH7inZdYAiGih4YdHrpNR+ZCBg7n7D3cQ4qhiIinhQW
         jxLDJ0BcS8rAg4hkIREPsY/kxGJgRC8koXixr5bZkJqeMmkDRd5n9bSkG3k0B9ryu1o2
         0QJbCkXYcChZHhOwd49YVLua8AV/WqPvBMUSLAmZ/20o7vFUnXUUbsmSttaKrPioMK4R
         Pc2kFieewixi7KeaSp105LU04pazkfiZf4lpANu6lRhl/+VE1pxtD15nP9aHM9LyJq/v
         kuVw==
X-Forwarded-Encrypted: i=1; AJvYcCWoIYpjt5Baz0osf+c1v9IsPmJmQ5txfKv63I1pxv6LZ1I27DptOodZFVJhd87E7ZRvLsM7wiUB/9KH@vger.kernel.org
X-Gm-Message-State: AOJu0YzFGgB1d2o6Ru26VRnMoGuMlFvTVSXXJLSA49rwL2MzOAA3/Xca
	NePu+EV8CduzHTFr5y5o9fYyqfpUJdIs2AoEetWpEUqF5dmpnz1qlVhE6AGYH3Yce1b81AasOzh
	8YoU=
X-Gm-Gg: ASbGncto2eEQWpNmwABlCeyqlF6JZ9g8xe50neglN2h5M208L204JYDLegMUbOyBQ+1
	wSytCJ60D+apNjOF9Oxf9+zcShgSlk+TCISawkyC3HQBuHAd8YwX5uoKx4LHrVXG+DOOoaxrieX
	Ak/yGAjRpeMjeUgqFqladMOYFuSBjoNGEUXUNBiOKWS9tVOFCmeHHCP1DkUvj/xt0GbEVzmbrqH
	5avnIneSA2fGH4zNK6jeLSBIj63E9gIumvo4BSaBNhvN2YhN5vAchS2FSZFDzwNBSRH0Iv8rzCX
	onzGY7dedy+KkhLhADhu2BggUmkMEMJBKchqx1SjWQnMvzOv//mUaQMvSGy2IJZxVdN+r/8N5mM
	uYnUjnw==
X-Google-Smtp-Source: AGHT+IEXLnFDwZvt1i2DDslT4P9hWVkKd38XTzY/galZKmHrDSqPgz/TCLothdRaE+i9h8hTW2yIaQ==
X-Received: by 2002:a05:6512:3b11:b0:545:2f48:d524 with SMTP id 2adb3069b0e04-5494c320d25mr623886e87.29.1740722327221;
        Thu, 27 Feb 2025 21:58:47 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5494f8ee8dfsm99203e87.222.2025.02.27.21.58.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 21:58:45 -0800 (PST)
Date: Fri, 28 Feb 2025 07:58:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, daniel.lezcano@linaro.org, rafael@kernel.org, amitk@kernel.org, 
	thara.gopinath@gmail.com, robh@kernel.org, krzk+dt@kernel.org, quic_srichara@quicinc.com
Subject: Re: [PATCH v9 3/6] thermal: qcom: tsens: update conditions to
 strictly evaluate for IP v2+
Message-ID: <equtmcryan2zb775ljo2zxro4hotimwoj3nrftmlbe2bhp3azg@cp2jco4xa2jk>
References: <20250228051521.138214-1-george.moussalem@outlook.com>
 <DS7PR19MB8883434CAA053648E22AA8AC9DCC2@DS7PR19MB8883.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS7PR19MB8883434CAA053648E22AA8AC9DCC2@DS7PR19MB8883.namprd19.prod.outlook.com>

On Fri, Feb 28, 2025 at 09:11:36AM +0400, George Moussalem wrote:
> TSENS v2.0+ leverage features not available to prior versions such as
> updated interrupts init routine, masked interrupts, and watchdog.
> Currently, the checks in place evaluate whether the IP version is greater
> than v1 which invalidates when updates to v1 or v1 minor versions are
> implemented. As such, update the conditional statements to strictly
> evaluate whether the version is greater than or equal to v2 (inclusive).
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  drivers/thermal/qcom/tsens.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

