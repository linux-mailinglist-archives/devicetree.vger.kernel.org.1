Return-Path: <devicetree+bounces-152706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34784A49E18
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 16:56:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F19307A5C68
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 15:55:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7399271269;
	Fri, 28 Feb 2025 15:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="BVw8fyRw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2274E26E17F
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 15:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740758166; cv=none; b=fgNo3vO8gBFJv2gBBnWtEx4tmRLgR1tLyauxDscH4sWz7hSoBOc96cmNo2JEwfHIRR1GivwQaYlr+/saBQK1m0T1IPWFlpsEXhVffXAZBJvtCPKEBRKQX9yNNATprakGgoarWzVqWdt09Zyco9/FDM8VtMe6wi49l2rwcqbUKUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740758166; c=relaxed/simple;
	bh=OJHp7VZvRwWS1K/7eV214nwFzt7cYL2SY5OmYa4hj/k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M92UyxGcecOwD5cY+mq/RDP3IVWyXYM4gczuwf0Q3bT4xT3FREnM6l52GNV9SmWXmCor3D2BX3SDZN5y5NragCZxM57dO7iBFZXc3Qjz31nD14QXVEwsgtvVCdrbHJ/og6o8cRgKDXdVjYPuTDkPSjbAbxsOF6VXwuq8kZ4YJgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=BVw8fyRw; arc=none smtp.client-ip=209.85.167.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3f1c94936c5so1365030b6e.1
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 07:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740758163; x=1741362963; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jSu8j+FYHI2OUVoF0suPQbNQe842QD9Q4xMlM7FXCrw=;
        b=BVw8fyRwu+r3c34756uI30aUJo0lj1GgcZrnhgPrWTdi5hyLjmZ1ZwHEgx5fiYj22T
         ZbjDlUO530z/AdZOeRLTA4F4b67J/Lv1jZ5v1I1LPe6gqCPAbsLBPoNXVY+Jn6Y/Wfkw
         PgHDIISh9Xx0KIP4Ete94ig3LLq/Zr57x/okc/4bvZSpVYMVmxIYBlD99qi/C1a0DS4q
         7JJR8WgSw7ZAVzlr34H0NNW7GJDMI6cmAfQ4TlW5X6rfEYPiiUKTMPtTDsEB4Ewrpgvb
         zjXzV28mJRo3jFuJQaHPDGzwmjZxivocicaEZ35aKkegxVAyViRfat2l4TzrQzOnkKHp
         9lMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740758163; x=1741362963;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jSu8j+FYHI2OUVoF0suPQbNQe842QD9Q4xMlM7FXCrw=;
        b=O1WfqyC4tPTqhsik9bzKyW2adt33fQytzNzvx6AkOeazf7wx4cMLf7vyEQmGO2zGWz
         Rb/aNIfJwvWISmgOTf9/AI3X1Kdfp2ni1IwUPVMR/Es5D0guLPWDwYT8rpXD4nDxWHyT
         K0lHflpz6SOnvlyzZwDHV7c3FiHzF9tJ1PbeFdSmcJMP+MhOxjG0TqTthZUE2eHgpd+M
         RcBesn7+iqlZshGCoRLh7l9xj1LIqnHSyPnk8JkVB6q/sLUrUdiwAXlv8wgN5Y/kOAXu
         m/IB1AjH4Ch9YIRNfVGP589TIAqtvDCE9Iyq7H08VsazTokMQXj7joVsQqtLWz1VL4vZ
         a6DQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2hi7EKWEqqWfu/O1zvbFZNEEmMjGvV38HkmIPY4YeXTIm9zQvdFfwpb/JocoAUwdiSQ/xYqtGBcB6@vger.kernel.org
X-Gm-Message-State: AOJu0YyYzXUEV2yut2oU6rJXO9jiHkJ4x0aVblhQu/L59O5O83SYU/zf
	QVtCjpT2QexzV8qsrBBlugKbxYxW1qTBGE8kd3s4I/sFphYujfk6676MbiZplj4=
X-Gm-Gg: ASbGncsnLtwoO6sQgykqXzwzT3QFo8zOaaL29c+0n1xO3cs5AldTcuhuPNillvgU0S1
	lDbRc2lbeXJFhvY8P4s/INiXvp/Cb7hsMYguP2v4SGEI/CFNKJbtz8h/xfLJ+YXIeePlU9toSMD
	R/VZ8yqhUe/efh5kWluw7poCC4Ft7EON44uQJ0S34OkOsTwoScbPgUPZRit45NUlhDPhrrTKOtp
	gnzZLLbN6T1yZCblGj8TQvmyJEki0SAHpKOD+dnhM4f0q+SUGjtQCXQ0hjM475YbqGVZC7tu72I
	NFverxmXeJHipKvhuYgi8xQo+BXo1X7W0RJj9gnHfC7/+/9WUjM26uo8hw8IEaA=
X-Google-Smtp-Source: AGHT+IEz+QWsZh9g7sxv9lpVwgpRYlPz2JWY5g4GsIrrNkXKATdXv7zz/1J+LshZPEHdJvIMw4mGhQ==
X-Received: by 2002:a05:6808:3a07:b0:3f3:b8c5:5008 with SMTP id 5614622812f47-3f54edc725amr5092826b6e.12.1740758163061;
        Fri, 28 Feb 2025 07:56:03 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f5507bfa32sm680421b6e.41.2025.02.28.07.56.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 07:56:01 -0800 (PST)
Message-ID: <ddb448f0-1cfc-497b-ac1f-9f3d9e9fcc3a@baylibre.com>
Date: Fri, 28 Feb 2025 09:55:59 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v3 12/17] iio: adc: ad7768-1: Add GPIO controller
 support
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergiu Cuciurean <sergiu.cuciurean@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, marcelo.schmitt@analog.com, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonath4nns@gmail.com, marcelo.schmitt1@gmail.com
References: <cover.1739368121.git.Jonathan.Santos@analog.com>
 <62cb9786b02adde118db9349617cb796585ceb02.1739368121.git.Jonathan.Santos@analog.com>
 <CACRpkdaSY7WH191makzPcZqLd-vBsC_f6yagWzBa65MrC+pjKA@mail.gmail.com>
 <7c5e2364-038b-48a8-ad67-3cf0f2fd2be3@baylibre.com>
 <CACRpkdbw3BkpzPQp2PdV8M61V2XXaLcmuOpGTsxSoiQTH7wZXw@mail.gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CACRpkdbw3BkpzPQp2PdV8M61V2XXaLcmuOpGTsxSoiQTH7wZXw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2/28/25 2:52 AM, Linus Walleij wrote:
> On Thu, Feb 20, 2025 at 11:27 PM David Lechner <dlechner@baylibre.com> wrote:
>> On 2/19/25 2:34 PM, Linus Walleij wrote:
> 
>>> Is it not possible to use the gpio regmap library in this driver
>>> like we do in drivers/iio/addac/stx104.c?
>>>
>>> It cuts down the code size of simple GPIO chips on random
>>> chips quite a lot.
>>
>> I think the answer is "no" since we need to hold a conditional lock
>> while accessing registers. Namely: iio_device_claim_direct_mode()/
>> iio_device_release_direct_mode().
> 
> Sorry for potentially dumb question, but if this is required to access
> the registers, why is it not done in the regmap abstraction itself?
> It's kind of that stuff regmap is supposed to hide.
> 
> Yours,
> Linus Walleij

In some cases, we need to do multiple regmap operations while
holding the lock. Moving it to the regmap abstraction would only
allow the lock to be held for each individual regmap_x() call.
That would leave us vulnerable to race conditions.

regmap_multi_reg_write() couldn't be used for this currently
either because regmap_lock does not allow for a conditional
lock.


