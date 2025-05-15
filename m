Return-Path: <devicetree+bounces-177553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E89BAB809E
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 10:30:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E31C21BC0067
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F8EF2882CC;
	Thu, 15 May 2025 08:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qOACREMM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA502882D1
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747297541; cv=none; b=O5pv+d4WRVkros2jcQbYAJuMvupHkrnTgIGMYFBoegMReaxoJ0RgFsJiBxyLw4kFalPPe4hm2/f/XQTqo8WYnz4Yxw693Pc9PXKd9iqTcT6/OK1BAxKK6k13o1SDP7k8t+R0LV6RE6nsjAd/wNAz26SYoJlq43ZlbrOoNAIsOBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747297541; c=relaxed/simple;
	bh=Nx5jA7joJaHbpCJjfgtjQeT80k36GKxDHRooJk/kFCA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OvLDvPyfduVt5UQ9zJ0EveJYNtuBkJpl53pQ5Ff5/ps6pWzE83vqvwMt8ADgFlbD21czS8C/OuplAOKqjHOgfbO5Fh6XUACkQZ/R2IMyK60hkFBe+XbfgQOWv459QGMZDEh+U9QQf/IVGjR4LyPA6ZCc9ja+4bywkUq1S/U4XUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qOACREMM; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3a0ba0b6b76so515741f8f.1
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 01:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747297538; x=1747902338; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KsT+Sdgc+srvU/zsdzeRuZ9jSEXeUmhw8phNeOl/X7M=;
        b=qOACREMMqNccDP7tcQwjPJsNL1i9jO4Gak2vJkAxvufj/BJkus+xJ0wtm6GeLb7M+4
         8mB97ci3nmL8fc3ELUiEktZhUuOx4I3Mt/Sa7RooCDEzc/1rzmNyNR6vHXzwy/IUxrWP
         Dtg741tsw/5d3hTFbcT2b3PlpHG5hvB3HHCiLLqBjHy0Z7cUCkxHVkdmcgqmpLUQVFnA
         S9e5ZXb8GUxgLRoQywKiHgawBrNw5jnskVgokuYkGrRFjzf1ftcIfvG/g65WL7jWoY0Y
         vILANlyeldMIvNykLuEZAE10UWOIftoFZX8UUqJz6Agf4M5yQeP4OvC41YDO/NwzsmCi
         HZOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747297538; x=1747902338;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KsT+Sdgc+srvU/zsdzeRuZ9jSEXeUmhw8phNeOl/X7M=;
        b=d1EHKhAltQbOdEAJ5NSMuFn/R27mtYFDQJlTrxEk/o6U8zakzI4fY588bqaFZhOa9a
         90F/7dJpq7YMOdJjQM1QlYiEFhzi0EgSEiH9ZwkBv5LV2xRwLMhugfi4HOAS+9zz4vUz
         Y/w5/+7fouFjKxRXoFj1xqb1uzhOyq/mSUBdHK46PzXy9v58hVDkMllAruuu9s3cBmey
         gweL8vkmfZlYe8Otb/slrea3RXvlJJaqs40VnQ1sAm7ZMn0ieIcOi4YB6zbkef+J0TSq
         qL9hwkNev+tfUitO7HW49cLeErnDCHhXS6Lx/RqqN0kQ9VVKyfBaveo6bxluA4G5doG7
         nrvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnQdC1URyFH4dYcw1JCsPLgMG9w1iIqRSrozDU3eUEbrySta/1xrJAUdve0k6UsttisbKqeYjYrP4H@vger.kernel.org
X-Gm-Message-State: AOJu0Yzdhw6TC7RgWcVU4kdWF5Oy01Dz/qF85VWsLx2icim0VtDxAymn
	aDJDpSfCguTCI4/wyMgLONAW3866l+stWM6mvZw+bI3Q2jPOc8IJE+2i1fKh0xs=
X-Gm-Gg: ASbGncvz44oPsKBAqUsAgPsM/v+65HCWswr2wsAZEWImeob6+y/hx5OEkNwsLGpsWFv
	Z69Y97RhPpWiYMJwgXKxrli6Cmy+MoWXUA31fjx3wUfzPiwlalsjntAWxV4kyl0WeBOO1lLPybr
	Ece9PiYCw2XubuP1eHDc22DscfeUWKQjNjstoHhkpbWwklUDuQkiaj/djauc8w/UaExE54RklcI
	ge8EJ09MU290/umSq6IuwV3MvknP80c7QIaM3M54cY0VnCxO8JKvdVKs/pjs8UikomKNSJQdb+m
	YjQdNXLT48G7bnr+mAy88RrPi86689ZaNAMfmqFaGvyoFqWqTLmYjpTUPg/4m157F03E5VSkULN
	YFYa9ahLq5gfZfw==
X-Google-Smtp-Source: AGHT+IGDaTo8YPwK9HQTdOuAbuWUdVrlxxJDVndzECFMiRaZAip7OLiyP3sIju4DxLUnjDDhc8accA==
X-Received: by 2002:a5d:588a:0:b0:3a1:fc1c:f1cb with SMTP id ffacd0b85a97d-3a3537a0a64mr1403793f8f.39.1747297537817;
        Thu, 15 May 2025 01:25:37 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f337db0dsm59095325e9.13.2025.05.15.01.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 01:25:37 -0700 (PDT)
Date: Thu, 15 May 2025 10:25:35 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Tang <dt.tangr@gmail.com>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: Convert lsi,zevio-timer to DT schema
Message-ID: <aCWk_7cMy6Mkg6vq@mai.linaro.org>
References: <20250506022257.2588136-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022257.2588136-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:22:56PM -0500, Rob Herring wrote:
> Convert the TI NSPIRE Timer binding to DT schema format. It's a
> straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

