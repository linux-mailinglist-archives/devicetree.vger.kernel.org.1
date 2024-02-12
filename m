Return-Path: <devicetree+bounces-40844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8FA85180B
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 16:33:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 196FE281FB3
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 15:33:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9B013CF78;
	Mon, 12 Feb 2024 15:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EIfXYpzq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284E53C699
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 15:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707751968; cv=none; b=bFH656PgXk4VkG3f2/ZVH4ZjW10QFW3Aef5qUvl1cgd4cMsK3P0YhFKJkDkLjmTawn1/g8eABiz3w/pBVxfjBNcUgjKf5QNhwR/51TTpFCbnZZcnEIESd6NhWq5ovOSPpoDV3EvN/8cG/FodEuZw/XKnkKnPwqdHHDV9oAGxIQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707751968; c=relaxed/simple;
	bh=bkIEBakJHgzcITFpIpV/EovxuKe348rKh+SCyNQmYHg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=OoLg71ixLjeq8B8bXIfs4Z1Afyuwvm8bJI8Pw43mNfd63eB796e2biVyjSAPMW7p+/zxcwJML8NJOk5F2jWhqH3ewsMdrmFVFvwuoD1yyIoK0SpQMAUtjZROSSVkqMrZTGY+o3iIMaztPq95zd3cvvq7tNRvWUgrnTsZeWiCSFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EIfXYpzq; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5101cd91017so3559891e87.2
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 07:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707751964; x=1708356764; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mLSV6GjpLboPb6N+6P/meSbXl15EO0I8zNkKPhFyDy4=;
        b=EIfXYpzqmyRazoMq/7ZVQW82UExYibnw8FDc0B+MgEs0/EowxeD4AEYirwtYaJMjQq
         B85MZa8PgZfsSufBCg01mlYnFygVHEt5AJEa3zptvBdvI64CweD1jlvmji2timj1eder
         TCR7J3KKEKF5aeIbaV18dwhEEL0HsVWqbwwomma4y4qFG/coAQpeFewOYpuVpmeTp6CY
         eAO1f6uJNDYvRXn0Ka6wHx/BNEnB/NDSdpcXcbqFcdHZj9HJCBMShxf3HuA8rOVSKebO
         HFtwFtMhe+MnAZyuhjFHgTsWQt5kHVnwk0oNOOtXyD0TJsr7a5XfgumKwZA2CrYbJdXm
         xRww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707751964; x=1708356764;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mLSV6GjpLboPb6N+6P/meSbXl15EO0I8zNkKPhFyDy4=;
        b=gJGACNOh8Z4LLgcWKTW36jgyjhuX/Yr66yyaTiUlvwHQZvMLZ0KAhFNGOkwsBOBzzZ
         UQ1GSHXqLwf7IQjBU0J2Cst7rPBw72F47ESKrSlWQkhjBKw8Sj78MVGxt1WyeEd7cpST
         j3zp7JOTF3ZQYh+QOmlDQHG9NzV1J0Zf8fBi78oewGaoV8QM0UM9Tj8n54RggqMvUPqa
         UgtKCISE//tCidmw8H443DqD+va8zoPn99Z7bK2nu88NE5aHpWEeXtihp0xBkTNDPHRd
         Mhkq604wWiwOa+wtjFEZFnm70ZBwCaFSPZfSSci1A115LFqgAuydPeKEyqPonfAG/QQZ
         f40w==
X-Gm-Message-State: AOJu0Yx1Z1N1HS+M6esrgbZiZ3ITtgdiLXcMpRXQE7py6lxpBPZgcWjV
	UfGApHQYLiibzLwnBjgCbH/JvVb48ObqgB5cd0yWPF9gMAKlUt69YVjsfaFJILRoObl7Mr+aE/N
	r
X-Google-Smtp-Source: AGHT+IFkktTI7b8C/0MZmf1ZoZaTMWPEwtj/4mwT3DX5ltYcu8ivv0j2DVv+6Kjcd9DXtG857xoIHQ==
X-Received: by 2002:a05:6512:3b6:b0:511:4e64:fe09 with SMTP id v22-20020a05651203b600b005114e64fe09mr4117367lfp.43.1707751964099;
        Mon, 12 Feb 2024 07:32:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXul3/DI8HHdRFW6INdE1VLow1IRySwSgACJ5O7Uqxk5j1nww3ybk1876pVa0LwgPTV8xoo0ZagV6dkrF0CWcVGZtnMICL17556kAyLZDBMzVPJYEt2c35OYF7bDki4NmVwEgWqrImmPP1DIqRMfVBHuVCZuaVAYgaAyiO2drHXW8TkKkMMOW4eF7rW5WpcfM506+gTwAsl+jCJSr7fH/BXrQvmdiUBc10ZL05LSsoxvgXI8o0toAFIZaWjbgA5JA925WygLiZrIHsGEs4SemQ+r4IVcprXPl1DjD4V/EtNSnC2OvDOFoW2vvcvew2T64kihmEw52tLgwqC6cTB3CB6NItbBr/ZHDP5tExN15JKkw+WxcuLeZ7m
Received: from [127.0.1.1] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id a1-20020a05600c348100b00410a843b57dsm5819675wmq.43.2024.02.12.07.32.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 07:32:43 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Jonathan Corbet <corbet@lwn.net>, 
 Christoph Winklhofer <cj.winklhofer@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-doc@vger.kernel.org
In-Reply-To: <20240209-w1-uart-v6-2-3e753c149196@gmail.com>
References: <20240209-w1-uart-v6-0-3e753c149196@gmail.com>
 <20240209-w1-uart-v6-2-3e753c149196@gmail.com>
Subject: Re: (subset) [PATCH v6 2/3] dt-bindings: w1: UART 1-Wire bus
Message-Id: <170775196240.98164.13229670157028243681.b4-ty@linaro.org>
Date: Mon, 12 Feb 2024 16:32:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Fri, 09 Feb 2024 07:22:38 +0100, Christoph Winklhofer wrote:
> Add device tree binding for UART 1-Wire bus.
> 
> 

Applied, thanks!

[2/3] dt-bindings: w1: UART 1-Wire bus
      https://git.kernel.org/krzk/linux-w1/c/56552c1a412fd7cce65d95786ed5f05fe157a714

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


