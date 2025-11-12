Return-Path: <devicetree+bounces-237756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1C5C53BF8
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 18:42:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 47BD64F8B49
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 642E934251E;
	Wed, 12 Nov 2025 16:56:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2753329384
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 16:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762966597; cv=none; b=lysUWKDiFbriY9EBFrWk3udkBz0JSLp7NToJdcVOf1F1Qz0mwgxqZDPQlLn0E9Tm5LadhA6eEgvq1/uUiFraGP1NfZf0WHkUrWcosWG/kiG0sd6vcJE/BzKPweBHY7mTDPEUQmUW9iOQfeRFdHC5v1cbg0fbez4OD/hzRTD/lXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762966597; c=relaxed/simple;
	bh=T3lNvQ0y2bm+Oi2zi67RnQocL22TWx1eaOJ5o7iDPFA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CaDuQkLMQmWbkEV8R55b0q1zT8XrImNjbzQ5N6YlKBH9JM7I23IbOnlnP+Pb4YjPwSA7E/gniCDdY683GZcclWozKvI7PMBhgAbKRgOQFCaywtN2A1jPJ0ySCDeBlgDwm8tE+mCY2a4TOsyN/PiqrieFcRuSJsD7bCm9sv1yWz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5dd88eef2f3so410005137.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:56:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762966594; x=1763571394;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UhutrMq7B1n6leDwSPcGHxIdFInhi5IFryLgJwU5jxA=;
        b=AkCRNu6lLTV3G0PhW0mIE7ZNha6HFfGlmifvMMXVxsX35IL/mhC78X//0AVVKNtkGV
         JyzfsFLEZktEhLD6VbfTd66RNugYek2WJ7GXYLL+qTyE+l6Ux0EtT4W0YdiPFJuxKIR7
         1ryYMhRCpwDoGhYkZnCDjm5aP2vbzfFMa/Uvo66nV82c8S9c49OgojonNKzMlS7zBbpD
         1aeWLDX0tENdtg1z4H5dGl70/5JKJhSPzqiLwlL6wmQcVUE65cSCk1zKAYwiYTixFhr/
         GbwEWXQPVYKAYi7kBMms26LYIU9sqUamFpUAyimoKeEkYNhqTYCRveQlAS+4umQVrbGN
         i+6A==
X-Forwarded-Encrypted: i=1; AJvYcCUZGsNrYV05WxmVVMG+OWaSACvOCazP8zfAnhYQBcGV2Uqzslh9CUX/8m1Bct4DMecTBPNQJwV3QHqI@vger.kernel.org
X-Gm-Message-State: AOJu0YyO0lkD6ItN14j33zg3/Tv5RXiQqqWvTUb3wchL1IhuxExLmcSa
	ZiqWbALmDoFBvl2V/P8MNgjoiJMs+GXttSouG5SJQJFrGl+i5oha/K07OYdRiRY4
X-Gm-Gg: ASbGncvbumCaiglC0Sq+9sLRnP/dfUTs1VRm+Z9fdohuenZv3aoiumLhwLud5untuyZ
	0+abdxcN38PxB2EkZHBhGJ/oiOR9QENlUgb/c72JaFQCvwDrd+hWKm/LRPUMxCjr6AJpDy4Rju6
	kwQNYkZrlcmrIxwFaYSMixmbSXFBN2Os1acwdHBIhcUi7KEH25WLbNgIkrwzg8X32eWrQpOKiRP
	bjylOV9FMJwepuQg1qJcUJMbU4gksPZLnwsd6HYuSfah5YE9ybvSYYz3VVk2q4gVbY2mIc3rhBV
	Bp+wjvdtHV5NjN5pg4m5Q2Vs6VDO0SlQOft1SXIB8Yyk54Or3916T5bEA8M0w7ZMlM8hilfKHmj
	5sOy3/WzG8WbeOcxPFX3vqPwpk5T3a0CLRcDMmV+7MbUeZpaZIg5SCQqWB/qHZesl5zMAm0BIF6
	U3HMMXpciyOOICmWt0hO/Rj8grahdREqObvNS+GQ==
X-Google-Smtp-Source: AGHT+IE3Uo0OwjYJIPmF+KTVySLgiS0sYS3YNOWJostopSb4geFVqJ1o+C/4cYlePLm0u95HIerErA==
X-Received: by 2002:a05:6102:2593:20b0:5db:3111:9330 with SMTP id ada2fe7eead31-5de07e2bb11mr997819137.27.1762966594240;
        Wed, 12 Nov 2025 08:56:34 -0800 (PST)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93708969a64sm8030490241.9.2025.11.12.08.56.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 08:56:33 -0800 (PST)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-937262a397eso352644241.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:56:33 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXEs4YUOLEezwYapNFy7rKWSaMgjRl4zqhR3Ug4RscLnKhQuBnoB0cKYV2UWmFqWKgxm5p8YD8tm56N@vger.kernel.org
X-Received: by 2002:a05:6102:950:b0:5db:fb4c:3a89 with SMTP id
 ada2fe7eead31-5de07d873a3mr1213694137.19.1762966593135; Wed, 12 Nov 2025
 08:56:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112143520.233870-1-yuntao.wang@linux.dev> <20251112143520.233870-11-yuntao.wang@linux.dev>
In-Reply-To: <20251112143520.233870-11-yuntao.wang@linux.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 12 Nov 2025 17:56:22 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX4yfPGY-HhP=f+2wg9kUxTw4_L16uVof8TT8GikM5X+Q@mail.gmail.com>
X-Gm-Features: AWmQ_bnTmdC0UtH4pcRnMOG6DoWT1MWDKeFhGtY0fjv71oOtf1MXcy_DKHcnSwg
Message-ID: <CAMuHMdX4yfPGY-HhP=f+2wg9kUxTw4_L16uVof8TT8GikM5X+Q@mail.gmail.com>
Subject: Re: [PATCH 10/10] of/address: Remove the incorrect and misleading comment
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>, 
	Baoquan He <bhe@redhat.com>, Zhen Lei <thunder.leizhen@huawei.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Changyuan Lyu <changyuanl@google.com>, 
	Alexander Graf <graf@amazon.com>, "Mike Rapoport (Microsoft)" <rppt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 12 Nov 2025 at 15:38, Yuntao Wang <yuntao.wang@linux.dev> wrote:
> The of_bus_default_match() function appears to have been copied from
> of_bus_default_flags_match() with some modifications.
>
> However, the comment was left unchanged and still describes the behavior
> of of_bus_default_flags_match(), it is incorrect and misleading, remove it.
>
> Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>

Fixes: 6e5773d52f4a2d9c ("of/address: Fix WARN when attempting
translating non-translatable addresses")
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

