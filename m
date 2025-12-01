Return-Path: <devicetree+bounces-243223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 13952C9590E
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 03:08:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B4C3A34236E
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 02:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A4D176FB1;
	Mon,  1 Dec 2025 02:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b="hIll+sFh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F401B126BF7
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 02:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764554879; cv=none; b=NElLcU0KMZvzd+BvIcLzGKZOlukQcCxN77uzRJB7nvSb4oZmHf05HpEiayaeCoL3nh2+9e0iwo5Rw16PAkRO6MDafC8JFpt+LdLdyqHySFN3nkxrrGh04mt6QaKBQgheRl/fS+j5/X1osVWkoQKM+oxB64d7FGWkDlxKjlPhjJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764554879; c=relaxed/simple;
	bh=Brd1m0I502flbbrPfstky28/MGkvAvnbspaAxGS6FXs=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=GCOvaTLx+e23xDz91WWtic0JJuFaLd9KsEzMPIzUDYovmomzEUF52eOdxaGfVlQTqAFs93TbL+C2bg9DzAU2gcX/1KPRfB1qG9mqev7JUNe6vvbdEZjx0dE2XxGiMjVvSCibeqZpuz4rRbOmmXylLAAObKCrHB/RLC3aj48FhVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca; spf=pass smtp.mailfrom=marek.ca; dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b=hIll+sFh; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marek.ca
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-880499b2bc7so38839846d6.3
        for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 18:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek.ca; s=google; t=1764554877; x=1765159677; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6X7FczmyNbajVkfCjjfiVo5L7sC0KZ02KzTNegv4hWk=;
        b=hIll+sFhOv6DirBFuTXPeoAurVxF0nunO/mHO+UZSL3mWfvGYxpQOcvV+nfFoZcZCh
         67D9OccZbh/DUmdDJvmBDF++5qVNTmphm7p42cX38QQ20Wt1GoaWnIvvje8Ngi9i5/jm
         2720Z4bcFnF9Nn88/FLKrywzG4FsqZMahNbPvX7KpdCC1CorEq5Rku2ibgZiwHCVwIkj
         r5xzKgoQRVnWabQod39b5JOcFBooBj4Q2xj2EN5CDCuiGilsJCBBo37AryZkQdX1IRqv
         Pxt1BrjCQAylQypJsAhe0TO56Go/uRwx4Yr2J0Pq5deZBBgaiENcE1LtEZS01v+eYDes
         M6sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764554877; x=1765159677;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6X7FczmyNbajVkfCjjfiVo5L7sC0KZ02KzTNegv4hWk=;
        b=QWurTc64KDOIItZXu8RLDZcDJ1Squb3DJvU7ZoeZzj3UOZ7DU7B9TiSTXhbpS+yyBY
         z7fe18cL6UzbHqfwma8XoienGJAuigX9IT+eIIfaNONdgSImPssw+nlfSGRJe5ab7OA2
         B5FKtzzlu5MKK0q+u+3RB4PyYhB6j3FPAWeXZl7OyR9pumqKQl+gZZ4cF2C7/EQPTYul
         EUG+7qFes/PStezfWksUF8A9NdxboZPLhIjcr+6MIUqP6QiFXYd99GSx416yT856gtvX
         dE0/x41wZ1SAK0qnLYCqEi4RO648A3+/mCtgCJ0kFGhDubC6AGqOadOfFMq6zgEK48A+
         ENdg==
X-Forwarded-Encrypted: i=1; AJvYcCVRnJhor4fYBZX7Z8m9bFlVgbZ6Z6s8xYZCypi0xM9LH+rUYN2YETXgot1cH5cnpnwBcYsfS7HiYmE1@vger.kernel.org
X-Gm-Message-State: AOJu0YyxoiQiht2NLSm6YPVZLdjHr5CvWHhRv3lJWc5Y7/WZTzJi95Gt
	5hDbxeY9exS0aDynLsNb+Ow6hmOIzwCDNA0uXgmhJL47Aa1neeHV4b1x2zM2A883gpA=
X-Gm-Gg: ASbGncs3S1Zzich589idH5tkBnVvN8C/8AlZo9qFJUny1zGcCBCJPK4I0+ElnzzBhre
	pfcoZIi1XKAFIpVz6DBD0FT+c4sGIiNuEyLWdpiPae2A4HjpbWOacE83x8q0dM9mByBXcZ/vy+Z
	QTRb7lgRLyz0Y53yEq52DsWZD0BEDtDwnTm75aBwQqdGZHwyA5YTgU5IQSw1Wa9fAN6aXwv+345
	SrI/V4SFQ4Y2oax4/7cguIZnUrFjBZmJKkrEgK/70ENe/23g/H9DJ0+Zmv46jmZDzezUZzGUqEe
	z7k47m+v3n8UZ9qXbG0a6j8VIbAOJGGsFf23BMWcrqUJEFgbHBLK78BG4nP5k6uuq1IwIrRoexw
	tNKB6H4xaaccwQaIZ5coF+NydZTBvOo+Xz+IIX+keMNq0h0OhGjLdbwCMXKQZK4rb9r+3Iqnx6V
	q15Kwulz+kzCSQu7GKdJFeWYkhOk1OwalEoAjquK4zrzID7KUYkLO/MseItw==
X-Google-Smtp-Source: AGHT+IGCg/pbS5JiPjM9WKZ9zNImn5eqcsCySAHuKjfPaPXvoXsOlLO0gykRKp6rucTDz/5r2Kefeg==
X-Received: by 2002:a05:6214:5090:b0:880:56f6:92ae with SMTP id 6a1803df08f44-8863b04bd3bmr367681906d6.57.1764554876871;
        Sun, 30 Nov 2025 18:07:56 -0800 (PST)
Received: from [192.168.0.189] (modemcable125.110-19-135.mc.videotron.ca. [135.19.110.125])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88652b6d7b0sm73513216d6.41.2025.11.30.18.07.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Nov 2025 18:07:56 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: qcom: x1e: bus is 40-bits (fix 64GB models)
To: Steev Klimaszewski <threeway@gmail.com>
Cc: abel.vesa@linaro.org, andersson@kernel.org,
 christopher.obbard@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_rjendra@quicinc.com, robh@kernel.org, sibi.sankar@oss.qualcomm.com,
 stephan.gerhold@linaro.org
References: <35615ad4-5b86-577f-4695-c6cd85206334@marek.ca>
 <20251201001353.9852-1-threeway@gmail.com>
From: Jonathan Marek <jonathan@marek.ca>
Message-ID: <4e3c1c5d-fee9-d4d8-8b06-d33210c5819e@marek.ca>
Date: Sun, 30 Nov 2025 21:06:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20251201001353.9852-1-threeway@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I was curious about this so I tried booting EL1
- 32GB CRD boots fine
- 64GB T14S boots with CONFIG_ARM64_VA_BITS_39 (except display driver 
didn't probe, because it depends on adsp firmware, lol). without 
CONFIG_ARM64_VA_BITS_39 it resets

Anyway making things worse for "64GB+EL1+broken firmware" shouldn't 
block this patch, because "64GB+EL1+broken firmware" needs workarounds 
anyway and this change is needed to use 64GB without issues otherwise.

On 11/30/25 7:13 PM, Steev Klimaszewski wrote:
> Hi All,
> 
> On my Thinkpad T14S OLED with 64GB, with this patch applied, I am unable to boot
> the laptop anymore.  It doesn't matter whether I have mem=30GB, nor if I set
> CONFIG_ARM64_VA_BITS_39, or not limiting the ram - shortly after loading the
> device tree, the laptop just resets.
> 
> I have tried over 20 boots with it applied, as well as trying both booting a
> working kernel, and then rebooting as well as cold boots.
> 
> 
> -- steev
> 
.

