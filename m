Return-Path: <devicetree+bounces-128774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2B49E96CF
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 14:29:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E4B81188C9A2
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 493AC1ACEC0;
	Mon,  9 Dec 2024 13:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="twHfKoGU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012311ACEBF
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 13:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733750579; cv=none; b=p2gleLvytmQZt5oxVWwBX6C5Fy/5MTmcV/IdKtt0kTYCATwWOHWX9/+3QBxmy85lOT1DCOfAl1F72gEDzZliHDkUbteZ7eo92VUEFVtcPw6FvDSAeXziFm4sRYRNiLa5FM7etl5YW4ZKovSHOk/dFds/FuW7JPWjf4yZM/rsxrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733750579; c=relaxed/simple;
	bh=obN/Fup3lM6BqgjXjChpYGnxmki/Om14WHmxJncGUEk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KODjnKk4apw93zfpvnrjlUU+uDjZi4oLeSXamwKW5iylCpSybE74qCBx8H1zjjazeHOauoxPDzMpNJgBapfy9zuPCByTazmnSEe5/JKS8/h1jUjJ6PC45DNfP5IDXMeYCoS23t0oSgJwsJNCLJ79ThDqefVxew3AFcml6AMm8PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=twHfKoGU; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-4674c597f2eso10719781cf.3
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 05:22:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733750576; x=1734355376; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=obN/Fup3lM6BqgjXjChpYGnxmki/Om14WHmxJncGUEk=;
        b=twHfKoGUVyVYNYJaZnO3UZMXGddtmX7o0j/LmGDMrCzVxzs5sbawoou1XV/zRw8VWm
         LpXRqWjI9UzvDC5lCQFAS+Jb+rkigl/jQjnmRa0PYZCMK4IM0BTsrNTBZzSbPaats9ns
         m+LLvEfZFGknYFVEeZ1S1DO0SIAEfZ9Cor8n2hGbLKmUEWhntK6XPmgco/fCK4nG6Mph
         SFE5QQNbMmfpVbYoDX9ZmOS50s44omEeHSnkFri3+7V5dz2l85rmxi/MElt7bj5iAl4f
         xOf7juhiJkaH78Akkxk1WHgf9sciudZWlgIBFQ02oV6C6b0gsKNhA2yZ3OlorH/Tkxe/
         GTnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733750576; x=1734355376;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=obN/Fup3lM6BqgjXjChpYGnxmki/Om14WHmxJncGUEk=;
        b=Z+keUC/U+bce7QmotqbGDnI4mSYn7iQhutTVBcXxBzT+BDX0uPjqFwNf9LuQzpNGbC
         viuy9Xjyvk1dmXNGTW6QU0553LhmFDtA8n+iY/DE24sGhv4lVPEbB8bS5SWIdSj+k9Jz
         07kGkd3u34xawfvwkUnV5SbkQCXnLGbzuwngCJqvGugPo+lAMt/oe2JkockfpMb9avq6
         rHaSIRy9CEnRjXav9zp/WdiIbjQEiPKjAxBB/mXZGBxjff9z1hgIrVloYzwxvonWJdOy
         1bu7P+qr9yZ79a9ASffncn5y7lQDxZuVByolBgapjagcvL5Hu42QtuFvZyEin7pfMul4
         GMmg==
X-Forwarded-Encrypted: i=1; AJvYcCUxdvjPgHR6wtCJnGBMhN6MEzH+xEsL/dZl+0AD4/AHX5dKqyr7v+cFsR177awS96ZaYxygclmtkn0G@vger.kernel.org
X-Gm-Message-State: AOJu0YzZh5vHblg4vxyBw0hD+UaHFgRuPsyhcCwcHfN14EfRrC/m1kgo
	7NH8am7fgIxvBX5z1jwD9Q8fv+3LwlsJpjAWADmCIxP5yrus/h0VNTrJMtE0QVo=
X-Gm-Gg: ASbGnctsdiKchqoW7bg9ShPps1x4Nv//KH4Zh4c2nYgx8sdvokIMuvyPW8arS3F0prd
	ydaEXnyB52Ne8NGApGvH5oC7oFxQhRA1q90JIhTI2iVekxd/4AgZ5qcGLKtAlyKuOY8lIqW04ZC
	LO++42CKqOADJI1OeB1kPKpdfpqXS23Y1k++KhOMbGXGUWpF0PiLNtfqNKE1i8sB5/D0kcVUd6W
	CpSTp3H63l3HkneQPrhE5GUvFWv+jmmP2KLNuUYqZUXW+5OJiGlKIF/covxQoDfIzI27fURwWC9
	dgZk2aiEZTyXZUdeZQ==
X-Google-Smtp-Source: AGHT+IG+xAs73bYxu73v5slaTcLQjjeYSAx80IDn1MEZt7aBZNho+qYdCjkxNdOS01ULUhUnXJl6kg==
X-Received: by 2002:ac8:5fc6:0:b0:467:6505:e3c with SMTP id d75a77b69052e-4676505132dmr63004611cf.24.1733750575932;
        Mon, 09 Dec 2024 05:22:55 -0800 (PST)
Received: from [192.168.40.12] (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4672978dc20sm51086641cf.71.2024.12.09.05.22.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2024 05:22:55 -0800 (PST)
Message-ID: <b7706ac1-340e-4520-97d3-f8a65de78beb@baylibre.com>
Date: Mon, 9 Dec 2024 08:22:53 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] pwm: Add Nuvoton MA35D1 PWM controller support
To: Chi-Wen Weng <cwweng.linux@gmail.com>, ukleinek@kernel.org,
 robh@kernel.org, krzysztof.kozlowski@linaro.org, conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, ychuang3@nuvoton.com, schung@nuvoton.com,
 cwweng@nuvoton.com
References: <20241206085501.2623772-1-cwweng.linux@gmail.com>
 <20241206085501.2623772-3-cwweng.linux@gmail.com>
Content-Language: en-US
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <20241206085501.2623772-3-cwweng.linux@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2024-12-06 03:55, Chi-Wen Weng wrote:
> This commit adds a generic PWM framework driver for Nuvoton MA35D1 PWM controller.
>
> Signed-off-by: Chi-Wen Weng <cwweng.linux@gmail.com>
Reviewed-by: Trevor Gamblin <tgamblin@baylibre.com>

