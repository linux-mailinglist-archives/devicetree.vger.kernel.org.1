Return-Path: <devicetree+bounces-78152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD51911493
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 23:26:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D2131C21CF2
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 21:26:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 518AE13777F;
	Thu, 20 Jun 2024 21:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E+2i/0qw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E4048626C
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 21:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718918747; cv=none; b=SAdgaMFs7ne2WqTFPAi9RKRyB3TRaE3iD0ZHhXROusCgrfoG0LXgUKcQ12FQwMODRns2niluavBGXGWWVD10Pkl7LpbstU/bBCjCUpQ1LzyOt2yEn01qTNF6utjVGFU0IBdPIgCOQ8I6Kq+74zYpn5SM8ThWWFqaes/ip7Dzr2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718918747; c=relaxed/simple;
	bh=OxeQKVTXyQS/Xgpay+YF5X74W4mt9PgTnQB8cBVznqE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B2Kh7iI4JvT3FZN3dZd0CH3h3jqUFbvPf0L+VMAHooQH6xx8b+NlfbhAk4Z/J/Ol1oP+BmDuq4ziQgP/xFKxxpdfHhwIudAmw/2BdvtoZzvIvUrqM/E7ftKP5iI8oywVZV3VFHEUz3FlP7L/1SdZBaeouPvZvmNBgxk4cgiDFX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E+2i/0qw; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52bc035a7ccso1492478e87.2
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 14:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718918744; x=1719523544; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8YnLuthclIELme3uHvt8bLySS7kvqN+pPrqFOsjhanM=;
        b=E+2i/0qwWlI8TuYwefjpwZw6q/PkT98Flkj1NyiIUmxnc0CXv5cFBjHjjznX5m6iar
         6Pk0EYlWHHCw+rnWntVx2PRF/5l8zLror6XtwuwTJGSttPQeHE8gCX4xt38mD/2Yb16i
         1E+m48QDZNzkYgMazI3tSphoBG1M+41ZigwOlAnpLkn1bwFQgPiHWlSaWLjgBLhM0dKu
         XkQHygxjWLiOb44kIuWuM5ND7XcCL/JkuYxBI6DX4HDE5gnhyKnFjSuNfvo9e/XuJqpy
         PP39wlFPlFDrpILtu9o5/Cy/4tySytmxiy+ktkDPbANlxjnkFrJBoODzvCcIAvNDheW/
         UTsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718918744; x=1719523544;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8YnLuthclIELme3uHvt8bLySS7kvqN+pPrqFOsjhanM=;
        b=UfiF9qddQnJniyZGPrHKb1haDHgKehfcdiXlHfMJD52zk4+zVrGSZQRf62ybaaV10A
         5bMLhJYuTsVM07OygfWEAtjYzEgWg0zfNohl5F87hfodR3sHoW1W6yp78gUWwcq9Z3Qv
         1csto2abQaLvj4otq2bRrXltvXXlN8j/rPqQUPlzPw8Rml0jlzSYFWlWNP+GWKhyEHyr
         qqRp9xh3Ho3Arw70lFG3xS4YLKBMmMFumcDSyyLycKK7Cr0Xn1lU+dAHUqTNdyfTUK5m
         oFRVgCt69RXDEbUH5GSBhivtv0usOiBqNrYNdznh5/9aj5NMXwgKzY0g6ZG4u6vQmTAh
         e8jg==
X-Forwarded-Encrypted: i=1; AJvYcCVu7DrPvEGBsktpYBr9TCYdC251RPagTY0/UjYtSacsL03JyW2+BpzxPiPko8CotIGvvV0Iefw0jtI7ai1Zj/D1EtLo3Wgr+t6+8w==
X-Gm-Message-State: AOJu0YwzFMP0EG8UuJFZCuVFb9jnTtp0u/asMlZbgbXUTuFqOFZ2biqO
	Z1xpn2vM2Gey2VAI3vdw69fryM/jwpqyA0sy8zubMwfSjorQsBym+moUfm7oBrQ=
X-Google-Smtp-Source: AGHT+IGuplv7CeSz9VzLQNcyU85+4p3xt8hAwVg59l+yNKY9rhLoFCTX0VD2nUc76EsF6sF3XzoEkQ==
X-Received: by 2002:ac2:505a:0:b0:52c:c156:15c5 with SMTP id 2adb3069b0e04-52ccaa65800mr4341702e87.41.1718918743618;
        Thu, 20 Jun 2024 14:25:43 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cd63bcecfsm2049e87.64.2024.06.20.14.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 14:25:43 -0700 (PDT)
Date: Fri, 21 Jun 2024 00:25:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH 7/7] ARM: dts: qcom: msm8226: Convert APCS usages to mbox
 interface
Message-ID: <pfltjzuqsyetcjcseoaopkhvljfduwmldyx2rtcrhpwbkhkstc@dqw63ajpq37n>
References: <20240619-msm8226-cpufreq-v1-0-85143f5291d1@lucaweiss.eu>
 <20240619-msm8226-cpufreq-v1-7-85143f5291d1@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240619-msm8226-cpufreq-v1-7-85143f5291d1@lucaweiss.eu>

On Wed, Jun 19, 2024 at 11:02:51PM GMT, Luca Weiss wrote:
> Since we now have the apcs set up as a mailbox provider, let's use the
> interface for all drivers where possible.
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8226.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

