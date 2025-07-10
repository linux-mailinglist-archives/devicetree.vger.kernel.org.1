Return-Path: <devicetree+bounces-194804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E7161AFF986
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 08:17:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D39C2188F763
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 06:16:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72A9B288C8D;
	Thu, 10 Jul 2025 06:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zkU2IP7u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794AB2877FF
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 06:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752128010; cv=none; b=DUlX9VDAblIi1BH3iTmvWIbCf9TI1xsWzMfkYUIgrpyOjrvHyYlQWA8eqwaPCAQL4p5oJi/CdGuNXqi7N7YBXUWJ2UeCMkscqtyjQ+khnoJAIwHucP0MXVW1ko4GrmZN0jscItPNOT2yaV9SBHPwm4JIZtDL2SYnn5fBFPPJFBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752128010; c=relaxed/simple;
	bh=8z/J1LwddlPoVhpvDuP4Jjqir3C1G5kWxc1+n6Juhwc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=S6+NcuwxcrztDx2hSfeWbCgQjtGDR8gmObjJbxO9VhAKBkqfvJOp0s1j2hugsInCyJ4acy8ec/yZGImxd8IyhJMKblelFJhqDQBJUBuNgyg3Q18pTtokw13Suay2FLaJkiMJwljnge8WQ8GBHOyJgMP1ylh0n0Yk42HfzC1ltTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zkU2IP7u; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-451e2f0d9c2so5266085e9.1
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 23:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752128007; x=1752732807; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8z/J1LwddlPoVhpvDuP4Jjqir3C1G5kWxc1+n6Juhwc=;
        b=zkU2IP7ujYqTyGGOEW3gmH5SnilvbRve8qYvn3zZuWyRFLoCp5r16oqHfTezj9RUKv
         eaBQHBxucWJ691nq6t1XjB618YgEzZgsb3R3GgBmoI0VpHQwL8JY3coW3F5Td43x0NDs
         LkZplLhz4oDR9SyW0DSMmEN8ShddZ+cSR1E49p8tT2p3oPpEloCx+AUYxR3wFmDKNqhJ
         9VmSzjIppD2gIZ1LHomX+CyTD1Ug7kntwFqN+DP1J4W5nghXPcx8a5wNPryWoBbfJ/oo
         TQGdLOtz3y0TtkF9eT7Tm9V2dQjol6TF02lOrzH5NYVT737tEDq/bNIs/v/KSJc4fZk9
         /QVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752128007; x=1752732807;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8z/J1LwddlPoVhpvDuP4Jjqir3C1G5kWxc1+n6Juhwc=;
        b=Lpz0eu74q8Ps7Zt8bCgQ3O86tMBr3MHDTrG3TPuM/Z3v/UlSVohFYfdsmR1xxv+Off
         VAWvUQ4tyT7oTTGLnX6JdJRfmODUCTkatc2bLvKrNZw54KFd5DXt5036o0ky8Cw2o6dM
         DlG2ph2R4xqiougeaFm/yD7GsLPDQzo2DE3eBmEOEK5z58DOUiGGZ1tyiVtWkOW5hs2K
         yGzQE9gTrMjpT/LQsu5aFj/FsvUlxMFYZswtCsOnNBaNiavc17ybqmJTTAPsonGA+zKy
         qk6MKrGYB3h9Y8rLVp6VdbbFBo8I3m23OWW+XO7ahPK6mRVLtsddx1aTeWN4FsMhOMYz
         6+kw==
X-Forwarded-Encrypted: i=1; AJvYcCWYn4HhCkY4K6LxK2IPOmzkPbBnPDmTQfKZoiuj+iR9txLZW/iUJuafR4lnHoN36orooFcYQMddB9ni@vger.kernel.org
X-Gm-Message-State: AOJu0YyUqwNTc0WaoFaqbb/D3d3xzv09LdBnpDAXjgXhZZpZTKA1nErx
	ZUw+7cNzN+YUnFMKhZ86xJ8YAhIlJHjktg75dqoIUqE6afXmtpUrzGJQMQ6SLLKcSzQ=
X-Gm-Gg: ASbGncvIZQqdwtp0mpGTJT+2r6XPFHFSa8ZOHbojp9MYZ5U2cK+PxTiyJrplsJuUxLj
	Q4b2T7O5BOoKXaTYFqeg3U5bhp+VNx8HOfXPuOXhMYgwue1Id7xuOV3hSmShPvEf57e/FfK4RCF
	j/Ym+o2KGdQGccsia4wf35HO+dXHXlABMnFigTX6ZCDpuYPb6NGdvV2MvTiznuWdtrmIhMFJNLq
	tRRF3ENX1hWc2cBG9A80nGeuSSC/C6Is9mEToewQbwU1IpCZZJ80wm8UMyuOz3ISMLIimHXZpuE
	RQEzUnW0gAoKzQfv3z1O5c85bdwY82FL2+BtZUrTiR5RAVHQICVGfzqoP1J3ly/s5Q==
X-Google-Smtp-Source: AGHT+IHg4xHnynLCiIdYwfhLH1O40xn1jbcOOUbuZ4D3/9/bt4jhqFWxA6m1cGXDr1jP9UbGzQIkuQ==
X-Received: by 2002:a05:600d:7:b0:43c:f509:2bbf with SMTP id 5b1f17b1804b1-454db8d8cd6mr16068235e9.15.1752128006691;
        Wed, 09 Jul 2025 23:13:26 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454dd466154sm8854885e9.12.2025.07.09.23.13.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 23:13:26 -0700 (PDT)
Message-ID: <176473e3012018e7c6e584314fc68679ad44197c.camel@linaro.org>
Subject: Re: [PATCH v4 24/32] clk: s2mps11: add support for S2MPG10 PMIC
 clock
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, Rob
 Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sylwester
 Nawrocki	 <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Alim Akhtar	 <alim.akhtar@samsung.com>, Michael Turquette
 <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>, Russell King
 <linux@armlinux.org.uk>, Catalin Marinas	 <catalin.marinas@arm.com>, Will
 Deacon <will@kernel.org>, Alexandre Belloni	 <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus	
 <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rtc@vger.kernel.org, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>
Date: Thu, 10 Jul 2025 07:13:24 +0100
In-Reply-To: <20250409-s2mpg10-v4-24-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
	 <20250409-s2mpg10-v4-24-d66d5f39b6bf@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+build1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-04-09 at 21:37 +0100, Andr=C3=A9 Draszik wrote:
> Add support for Samsung's S2MPG10 PMIC clock, which is similar to the
> existing PMIC clocks supported by this driver.
>=20
> S2MPG10 has three clock outputs @ 32kHz: AP, peri1 and peri2.
>=20
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

Friendly ping - can this patch be merged please?

Cheers,
Andre'

