Return-Path: <devicetree+bounces-196270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A7774B04E74
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 05:00:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E1074A06B8
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 03:00:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 983A02D0C7A;
	Tue, 15 Jul 2025 02:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ROoDjuLn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BD925D1FC
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 02:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752548363; cv=none; b=It9R19O/872bWSTCvV/q1C0gSVOiczX5qo3/7/Cn6i8O8EHnOoIblyD0iDUMVH8swucO/hJBU4FPDIHOxGPrhTvsHInuwY0beMfSRqFBNb/zkBrY0VBZBJPKEuRiAmGYMo2GSlfDBGus+3cuB6Vvji9qFz+tbAPJPF2CiEwnOfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752548363; c=relaxed/simple;
	bh=FT+EPaJUCg5EV9ubB6H6SXSr22pcLbbvsyVsPlvk+nc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=USiDRhImv1dwKDeDHRJp8+c4kFeB0TpAZxSRRUbtEwi1eyun4XWcvHMdgatpmecVIcHZ6y+AsWOq2/z9vHbRyuOItnnlTdYRi0Fv8oYx1Lirk++YyFP7hPWjrOZ+jMoNFrXqCd7bglzveIz9fDtzX7OC4a5Ui6D5DS1Tj5+2FYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ROoDjuLn; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-234d3261631so39913365ad.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 19:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752548361; x=1753153161; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3ThaBBFxLaan5ycPDg8RZ9c/uzgLc+qAqUCDLCkQe+E=;
        b=ROoDjuLnLdm3VmTvgbGZFv1wj1tHtoTDMvjNaYvCyKJwpj2iiXucpmBlWgNTVuRB2n
         Memcj6IRM9p4Gs42fD0Hw7QEJbc8lPaJGp2LUh6SOQaKOD5vUbj13IWHZvOXMREUaTnR
         nx7SZfOwJjS/XVSeuxOBQ4EqApMFlvGjCBIxQkAOG3qWO+/XUOPvT76MTShzcp0qxKtt
         S7krRpk10vPBgWb8y3kk8p9FNZD0of5fQ+xInJpvFQvvrULKJg6Swj2WPsMuiGXWgxJk
         DyuX0cM4w6O3Y/D4LLr8jKLua5yp4RZF7SEs58crtds7tF2RhrL5JffLch+UiP51xOfN
         kddA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752548361; x=1753153161;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ThaBBFxLaan5ycPDg8RZ9c/uzgLc+qAqUCDLCkQe+E=;
        b=ZtNQKlnkeap0x8F1G2TrEnuOlpO1CMzCf8GoTtlhhXuWLo8ImslWbwTGbc/Lc8u7RK
         Z4iUVTVVPqLgjfCoTuPr9x5VEdsraEJCz0zwTWiydXSTzwHxzeukOpqqVjCXmsN4Oxox
         6VqO1zjm9l4gmBjIoT0HDz2CxEZENlxnpbWhbttlU28x7zrD6GXLVz8/HGWGZ0SKI2uh
         UE7lpUw5aNviJWcPXNfLjKGlYniwAGkbKBjbGuiwGszvoPJJ+kxG5fQi/gsP3RaaPNul
         d5Ah0QiR7QubI4kOcuyy/SaXirAm3ezu9iULCZ6bYpsgr1L1ppcsRoShVNgDyXvb+o+Z
         6aVA==
X-Forwarded-Encrypted: i=1; AJvYcCUQP54P05oiKN9zGiTipu2iOiFXHczfX+zxyXnghi15V6ZekRslhY62dtlsCSW6e4Dxf1DczLhHF5VM@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg6tL9B83MJrbNIXJdj9ZENhRXTWFC9BCUjd0zbdNZyJGTntoJ
	O4aOgJM9Qyzoqb3I7sjxlTOYHO31/3WSfMp8AfPTvgokslTQ2fJaR15qb3ayZN29Cio=
X-Gm-Gg: ASbGncsP9gTp1OQXM2KR9CvlszAV6fBMAg68XlcVduBQjfxa8EZa1tZL3WU4Otq/8rg
	bd8EtOFdLzvK4vLoaoWOkJ+XF4AgIUDRfCQJb2Fr9wJFSgQJuZXg6aAMs89HMJ/m5ajFIQVK7na
	7EYSfY3Po6h2rBM64PIZRkgD3E8qH/ykP0grg0KKXt6HL99lyag6w/6HsPm4TA5l8uDZMswgV8/
	g36zQLrwPASMzRgGCjS+46s0kyWUz3l873LdMntVKKrPxDeygrAKFp4Uep7w9OPw3g/vRUXcaso
	jjvCfTdYihNSFVdC+SyCKVS8XX+AXWfpTKecZx7BhvE4087hqCY1/qJoi1eTKipvt9vx/xt40HP
	/ONH5OZevfcCv77HXcqmD2as=
X-Google-Smtp-Source: AGHT+IEZK14JKJx9vQBh1CtChGZSB3DAOZGHhBBAyJvUIa0qYVZBJe8EfzMX4gC9v2p0KEXM1ActbA==
X-Received: by 2002:a17:903:230f:b0:235:e1d6:4e45 with SMTP id d9443c01a7336-23dede86060mr202149485ad.25.1752548361221;
        Mon, 14 Jul 2025 19:59:21 -0700 (PDT)
Received: from localhost ([122.172.81.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4332e61sm100432215ad.141.2025.07.14.19.59.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 19:59:20 -0700 (PDT)
Date: Tue, 15 Jul 2025 08:29:17 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Viresh Kumar <vireshk@kernel.org>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: Convert st,spear-spics-gpio to DT
 schema
Message-ID: <20250715025917.3yrffj422v4ggugq@vireshk-i7>
References: <20250714202753.3010240-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250714202753.3010240-1-robh@kernel.org>

On 14-07-25, 15:27, Rob Herring (Arm) wrote:
> Convert the ST SPEAr SPI CS GPIO binding to DT schema format. It's a
> straight forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

