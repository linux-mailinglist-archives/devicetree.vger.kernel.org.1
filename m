Return-Path: <devicetree+bounces-237747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 96678C5391A
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 18:04:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD08D5646AA
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57BBF33F39C;
	Wed, 12 Nov 2025 16:33:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C8F328636
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 16:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762965190; cv=none; b=i3qH7N/RLaF3Tjh800DiIdGyUBf8b8qQ8OP6/eo7l5pIe5JaeuKxEHmpent0kuHBggD9lQQubNnySl5KlLimSNV2Bkyuat7V1z6xPe6owQh5tQNSF4E8cK5zzE29OF5wKaQv8XYEN293Nc116/l5Axf96LF8EAxOmX2X/ez70VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762965190; c=relaxed/simple;
	bh=bEZZWG5YEp0Z9/LGaJ5W6d6eHDiLO+fgQxM/0wcY1HI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a2ItjkUwf4ctfZxdYRcCcu+zItml8WPINOtA8/lhnCWfRZw0PByycTGltidgj5934Zs8IhYIhuku4Ar4JzjvoA9PD4Qn9qr0BDonjp84n8KHyU6nhaIadeeOgV+GFDwZtDzgcxMhH5b/Fbc3j0qAr/iQfRUjfEatTqHHReIxVew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-559d8717d80so552355e0c.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:33:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762965187; x=1763569987;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rRHI+te/6G1RkJD50z3m+CcLgrjv+TKsyW3UHSOWUNY=;
        b=qmGexiWQZNOobm1zkjrSVir3MZX8Tci3VxJev60LFm2wUsW0URK87KN4LyUr4DuY+C
         yMD8aETW3Av6BSoNYDCcbWLcyy0Gjxx4I4rPiq4g2mqjjFwmM/WrHYmxDzMO4RTx88i/
         M4MK/bF/3L12la7cVLTR3rkL01f1MToTMeRoOKx0ceV4+5a5pTY5hW9jmwf9aH0qdshW
         6NLqdAa/6lwQ9GDnz176skpwfXkO8yz9Gh6CqDRpGPD2/qp3pEPnXCBhBk4YiGIonvXp
         q64KoCa1vmkj4AbLvT3xut5FjAELdnvxLzgXnYFsQTtRmwqXinj+Yco1YUC018Ven+nx
         5T7g==
X-Forwarded-Encrypted: i=1; AJvYcCVXOVZUt51OiVQJ6Ov2DC7rG9zrRUUFc4vHusWpCI8mWbH6szqH6F5uMiOHz4TF/VZdw/YQUMBEVkwY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7MlN2zGhynzxiY0q/hifJMXkvBK7upzMeeBwCbE3Ft6qN/GVh
	10wB9K7KcSDyISBMuQ3tXujAl2aC4EuvZc8sPPyXckA0DFOgzUB44dkJAY9GWkJo
X-Gm-Gg: ASbGncsAajUKW8L8KoKRFU9apvoHvILmX4mpbM0hL2m9qwt3/4A14/M8txfFajV48AG
	EhBRaSga5TVeagIZz1ioGuguyqfjCzljw+9bNl3qTg/mcRSRzZtoGBqAQbg3cLdt+TKJHScEczB
	oZLRXQLX3sIe0O6z//k6iTP+KR63kgVMxFvtOyjmf+Xu+uytoEPf1Drwg0UTCixp8D97SaxXdrF
	OfDWRGFZHkR5VVFfKgSyo27av/MduRE5qKdza/HzznZG2JzN5Gz45CkxtZ3tA0/c39H1MG9h4kZ
	HO1NC3W1wINEImJSIslLG9si8bBQXbFeiD+vkgF7maVwn/Wcepv3o/WO179yFvK8fLUMKzC8UQ7
	OqGEf9z2eN7t453V3/kxKb/mvqW+S96Hlnsz97xoGETb3Rltxd8qSQSqtT5DLbNnngEmnN62tzk
	i8DbT+cnciQia/WzD+MrO7M7kCR4Lbz6s/F2Up8w==
X-Google-Smtp-Source: AGHT+IFqhMjc8nrAb+DebztKCOeBEL4qshb56z+jTpsBE7YMn2TjPsXAb7IE9KcYZ/DowpqqvIk6Tw==
X-Received: by 2002:a05:6122:4f97:b0:559:14e2:9fc7 with SMTP id 71dfb90a1353d-55b0ceaf357mr48631e0c.0.1762965187231;
        Wed, 12 Nov 2025 08:33:07 -0800 (PST)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com. [209.85.222.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5599569b0cesm10591431e0c.8.2025.11.12.08.33.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 08:33:06 -0800 (PST)
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-93725308c15so506783241.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:33:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXgwULphcXTFYUyeoVTQn51Cd94zno2cYuBWRip9cTMlO9/gd6YfWIpu4c/FoCxQQJt7VH+RY8oTjWb@vger.kernel.org
X-Received: by 2002:a05:6102:5092:b0:5b8:e08f:eb38 with SMTP id
 ada2fe7eead31-5ddf3edcd87mr2857986137.14.1762965186439; Wed, 12 Nov 2025
 08:33:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112143520.233870-1-yuntao.wang@linux.dev> <20251112143520.233870-6-yuntao.wang@linux.dev>
In-Reply-To: <20251112143520.233870-6-yuntao.wang@linux.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 12 Nov 2025 17:32:55 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVvOUNux444-O0Jsj7PuauvsxL32mdnWW+fnOWHfz1Vvw@mail.gmail.com>
X-Gm-Features: AWmQ_bl4Ty5-EElauj30wVB0g9kwj1zSnJTklAJxqlZS-opXwm6p34dFTzoL_vo
Message-ID: <CAMuHMdVvOUNux444-O0Jsj7PuauvsxL32mdnWW+fnOWHfz1Vvw@mail.gmail.com>
Subject: Re: [PATCH 05/10] of/fdt: Use dt_root_addr_size_bytes() instead of
 open-coding it
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, AKASHI Takahiro <takahiro.akashi@linaro.org>, 
	James Morse <james.morse@arm.com>, Chen Zhou <chenzhou10@huawei.com>, Baoquan He <bhe@redhat.com>, 
	Zhen Lei <thunder.leizhen@huawei.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Changyuan Lyu <changyuanl@google.com>, Alexander Graf <graf@amazon.com>, 
	"Mike Rapoport (Microsoft)" <rppt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 12 Nov 2025 at 15:37, Yuntao Wang <yuntao.wang@linux.dev> wrote:
> Use dt_root_addr_size_bytes() instead of open-coding it in
> of_fdt_limit_memory() to improve code maintainability.
>
> Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

