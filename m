Return-Path: <devicetree+bounces-202403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF5CB1D586
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 12:11:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ACCD518832AE
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 10:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66943230D2B;
	Thu,  7 Aug 2025 10:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gvmgJ6zf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A245822541F
	for <devicetree@vger.kernel.org>; Thu,  7 Aug 2025 10:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754561497; cv=none; b=r3NymSrrzCbociSBMZcxOAg95dQS0qK8wKxoMJJbyO7uh3NAlXl0HX8jYCCJVwwS8dOTb30w8MCUzrgtftbzPs1PWfRhxYKZreg4eb38ew8WuGLw8SFA4ClO3xblAS634njyAS3keInhjH87n0tMv7OY6Yj1ehecuMVefVL3JAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754561497; c=relaxed/simple;
	bh=O6Y8cVOuHgA/hdqV1bgBIn4O/CUwlnYyFlCzNIDIYM8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ToX8/kjN3764OXzP9jR3qSgiAv/6OYYg50A+xZgm4nDko3cXX4AGmcf2nvARYjjllXHEN3wH3QL3HrgBmSXmFQRBHLI2n0dwN/KGA4WmOAyNGjMMIOqZG/PZsfAFEghFmQC0c1CyKNDIq69rHAeCVhG3C6JikKiBOlhnIFS6LJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gvmgJ6zf; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4563cfac2d2so6606185e9.3
        for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 03:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754561494; x=1755166294; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UCEOeQAX58eFRpMAP8AQskjLHPoD1JzG7voJikyFC+Y=;
        b=gvmgJ6zfWuydL4/n/O1WHIY/Pk2l40OgMcfVxiEJEC3vX3ObpnQ6Tw5HZdpB2Bqbxa
         A3rxPcTOIUq6GBQMCjw7VdOlikB5h6tXxPMAV7LPL7UDcPPip4r0FxjsMAZ0D0U+VQ8Q
         B4k4po9JxcIfgvM01w+dYCZCO57I8WxlgmCaFdRdC48lmHwh831qn7RhORvTB1lyHsoe
         e2BPA9PLYjen6Z/ZYUIfi0lHxfzvBVW5N2nvNrMitbVe08SFrFQWdg5U2fM45HNqS4Cs
         HylUpQvW6iyMZ3dYwxXGrYyUu9xPrlrnDLvB1LPQNI8JL/4jl1wouSILsnrQn9mJYf8H
         15og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754561494; x=1755166294;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UCEOeQAX58eFRpMAP8AQskjLHPoD1JzG7voJikyFC+Y=;
        b=Qw7Zk3gPnOvYxE+3dx2eBuysByFapGzf8ihTQPGD3Rrhh9xFD839yOb1cC2tZBQEEz
         pmKlKWW4TTK1BUOMqluYXqR5pH/dA9w1lro/fbT6j3DfUOz/t0KQhs04qulZlvAPMEAQ
         Iej3frQPtkws779GzQ6RHklDOPZMMGhU6OSzaiONvmQk8177R8UhPTAETNL8R8rhPa5G
         0O4iwRfxGkda4G0If2fRb3zNDOOy4+9b4SdcA8Mz/m70mkVC8Fl/rEeWwddmyqYnA57N
         IQF3zZ3lX+qinkn/xMvhazPhQ2tEe8S4abpgW4Wv1iO2xfgcNAmMk9cHzVEMlxS48Ecz
         7JBA==
X-Forwarded-Encrypted: i=1; AJvYcCXTbm3xQY4FtusP8/WuDwG4eQA1B7oPGhES5gEtmEB1bWtEu9k5aoF/mSimAA5TsbPQ4ibMI74fDfi1@vger.kernel.org
X-Gm-Message-State: AOJu0YxDIefdm2gPhwU5NXjUKWu/DLQOz1Jh7bqxcHcZzEaWueIXQv5U
	yXxWNSHDmgdjMfVvbalTlBFFYqlLjgSb/vMUAGHQZn/IphV5bCX7wd+4gQoeF69UXnA=
X-Gm-Gg: ASbGnctYk2W+d0i4uo/qnsqkuLS6TviqcmYrwlsQxoAl3Q/Q99V/XaOWhP9fYlAYp/k
	FypnF43A137w9mGXZQkPw2K1zaKWT3PWFsrIWQowJEOvsyUX/iK3cz/t3y67tFmX8KDjt+Udc/S
	aRI4WQ+JQ/5VtjD6P4AWHGgZVbl5IeFurtlqrQ1oxyNGBiecbl6/rYlqAJxw8UWLlVum4BaJ09Y
	MnZLvJCQLO5s3AuFjrC3Sxny1Du6Nt8jyLNjpWMDfqvJzlhV4DO+q0EE2FuVirSo/H950NX2oNl
	vLihOQdsosQFFK3ICOhwoG7uY1287hD2nh/2im0RJKf0vNi5b0yMEJTd8j8ARKwTvOs8bjU0gJS
	qVS/256eyeYerQt1IGMjMgUTph78dsntYPRc2eKe4+cQcbaX3Xe1/Npm73x+WlXA=
X-Google-Smtp-Source: AGHT+IHhek7qLMtG/D0lLB216ukv1XprlpVNWNYygMd7NFMy48jfNMcwOJb/6mt3RoRrKwpkALkG4w==
X-Received: by 2002:a05:600c:4f4e:b0:459:e06b:afbd with SMTP id 5b1f17b1804b1-459e74b6367mr50737565e9.29.1754561493918;
        Thu, 07 Aug 2025 03:11:33 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b8e9464f46sm12001442f8f.19.2025.08.07.03.11.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Aug 2025 03:11:33 -0700 (PDT)
Message-ID: <40d543e4-e53d-4289-9b87-5ca8c0139bbb@linaro.org>
Date: Thu, 7 Aug 2025 11:11:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/7] media: venus: core: Add qcm2290 DT compatible and
 resource data
To: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 quic_dikshita@quicinc.com, quic_vgarodia@quicinc.com,
 konradybcio@kernel.org, krzk+dt@kernel.org, mchehab@kernel.org,
 conor+dt@kernel.org, andersson@kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
 <20250805064430.782201-6-jorge.ramirez@oss.qualcomm.com>
 <4chbcvub4scnv4jxjaagbswl74tz4ygovn3vhktfodakysbgy3@kukktkwd2zsr>
 <aJHgh8mon9auOHzi@trex> <ce9cf017-5447-457c-9579-700782f9f0c2@linaro.org>
 <aJRMUzF0GN2LFIZd@trex>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <aJRMUzF0GN2LFIZd@trex>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/08/2025 07:48, Jorge Ramirez wrote:
>> There's not alot of value to the user in that configuration.
> I dont know the user base but when I originally did the code (v7) I was
> thinking about security conscious users (signed firmwares) who might not
> be able to switch to the new fw release so easily (unnaccessible key
> management and updates).

Since the driver for the LITE hasn't been upstreamed the # of users must 
be ... zero

---
bod

