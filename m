Return-Path: <devicetree+bounces-43430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B8B85A5A2
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 15:17:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91DD3285852
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 14:17:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 811C8374EA;
	Mon, 19 Feb 2024 14:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MTv2Tzzd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7425C374F1
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 14:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708352215; cv=none; b=XAbOgKiq1LBucEBLbSlc3NvyGUTb4ax6TzqMNDKQclHm17ZgwOBkOzOzQ3arzzHFSyKv7ncOP73+unPP9qa5GxROCEqNilzxduSNEtjwJCBNNF/jFvOeR04PARmEXS6h8mWIk3YJ3HcXlGt2deshiBr1fOvujgIeSoYG7KvkHtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708352215; c=relaxed/simple;
	bh=8NtoIAADVPgZfZLTu67UGU+6DVV3ajBVgGPX09bdDig=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JFQ24xJP9vYkotrFxTu1jxnxrBT5SsgvDwyYXHkNzlfzX04mUbmdCVvJ4w2zjVKPsMZDFONQZiDezubbF5RTASr5k0qEjR51+1+RIASeetymlPO/nYpjDPwOCSquxAR0Kuo5o6pY8Jd/27ClV0Iu3GSJjVymHiGefmHC0hle2MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MTv2Tzzd; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dcbcea9c261so3401907276.3
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 06:16:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708352212; x=1708957012; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8NtoIAADVPgZfZLTu67UGU+6DVV3ajBVgGPX09bdDig=;
        b=MTv2Tzzd2/VA7oqnWwbz7W2mSvD1P0Xm2hX6E33qmD4jsA4JVl9TLcvElzZDnxGpJ1
         KMbzO+SyjetWDcFovc2LMOG3bO4KqygaXRmpuyX4MCbNNEjSEGEbr67tsOiDctvnKBSs
         cka6Q8vAoh48DbRQFiOzYzyxX9PTQzGlQcuTSZw22/64TPzm6CVIAqfIDLnR63acoQVT
         NYjpVUw3nFq3mcgbwpH8Uwp6LQy1YJS2edqC3SApJuEtqu8kusqH8VbGyui1o0AIhBkt
         rw+WfqKQ0R7sHoqxyziSmMf4hhKmLVlui4cpqCgzk4JzMnvbKZ0aODGjI7ZHithOYPz9
         RP2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708352212; x=1708957012;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8NtoIAADVPgZfZLTu67UGU+6DVV3ajBVgGPX09bdDig=;
        b=g0Br7EQuBw+VfMphb3QWSXH43xxYcjrmR61KgOnT4jxv5gzZ8KaZP5qYw5+vUQXKs3
         ycNRwjnuFrQomeDuFZt/D62swIDrikNICy2ag4liJ2VXfNdPjko0r3pOQR223UJVfHo2
         3Cu2eWb3gBrXxr/78Axuh2r8I03R3o5eD2BNhpZeF4Q97kxB55qtRkyACNj9RM8iK2cR
         KC+cX5yr/pEvhxBaOlo/huyhLZzFvI3YHOweYvfF4kvaDsRLvq4iVw+nH1Jnm1GMkXun
         CIMU5QfJiBVRVIwbXeeZ9SjK2qx+blo6TXdj8xYagSuTHZN0PDMC9CMEpDs7SFE8v+F7
         uISQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJH9wGdHPAomLFHDW5IwAeme5t5mEFlGEYTy2sWBQTGm1wrFEtZ6ZpSobi09IoTPL6zd7/n+sNx4UOEuyzhU3Hpp5ObVlbMOew/g==
X-Gm-Message-State: AOJu0Yy2jnjETNlaoQhoIL7Ptlwpk7PC4rL+Lz+XrqPTXiD/wF4dkEPL
	bfz3JxomCkAbHJ/hOMJCz/byrMxmm0GseITc88u+Sk2mZVzN/LqBFVd+AyhB3VL1AxB3uyVwB/v
	Z3WbHFXjaDpuaVWZ+JO6ByJ/BxuqtIF1WlZOglQ==
X-Google-Smtp-Source: AGHT+IH8zoIF6nwlmjqS5YKC62u1494qWLmxwhbcebn26N7GSaVYv8uV1vUneZZY53AiRhaVHNae5A7n3HAWkkeHKYM=
X-Received: by 2002:a25:d64a:0:b0:dc6:af04:2e05 with SMTP id
 n71-20020a25d64a000000b00dc6af042e05mr8299772ybg.7.1708352212135; Mon, 19 Feb
 2024 06:16:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240215-mbly-i2c-v1-0-19a336e91dca@bootlin.com> <20240215-mbly-i2c-v1-6-19a336e91dca@bootlin.com>
In-Reply-To: <20240215-mbly-i2c-v1-6-19a336e91dca@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 19 Feb 2024 15:16:41 +0100
Message-ID: <CACRpkdaUJ6tM51o5tDSMURFS3u8J=dfMN+p4j04QNXdGUPzCXg@mail.gmail.com>
Subject: Re: [PATCH 06/13] i2c: nomadik: use bitops helpers
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-arm-kernel@lists.infradead.org, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, 
	Gregory Clement <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 15, 2024 at 5:52=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> Constant register bit fields are declared using hardcoded hex values;
> replace them by calls to BIT() and GENMASK(). Replace custom GEN_MASK()
> macro by the generic FIELD_PREP(). Replace manual bit manipulations by
> the generic FIELD_GET() macro.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

I'm a fan of this style.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

