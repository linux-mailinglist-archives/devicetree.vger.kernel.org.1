Return-Path: <devicetree+bounces-237743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AF38AC537D7
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 17:46:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9ACBF35A4A1
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:30:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E63E933B6C7;
	Wed, 12 Nov 2025 16:30:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544022550AF
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 16:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762965024; cv=none; b=Sicrhlwk9g3uXLxg2tLPKmmeq4w/kVkqpU7a6VmtVhzOSuSuQO+eF+B0lAfpXfi+EMxojd/9z3nAIwIJ/vYQyT3QSUlE0yI8IQ//IyD7ET2/TG8phwithzQ7ucEGZMQzNX/fzPby68Gk0guHCWg/pZwPXAaHdI/goFkmMEGfCuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762965024; c=relaxed/simple;
	bh=srIh8TEWLd3BA27yuqff8wSQOYv+jCbG5j9PAzoS22I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fAkVT6MHMS4XHOzkYVFb+S4VmYTgtIK2RHn6TIR+1BVlR3kxK+iycIePMbyZUzArpd5im009u2aI/CbdmGdaHX9JmE4VWCLRVQxRoLpfm78eM0QnLZ95m4fFIXcJFDRQyxm9MXtRo72qp4+EQOccPAFZBg8P+fnp4iE6Ii5JkD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5db308cddf0so592381137.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:30:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762965022; x=1763569822;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yrPXEPI0kQxUXG/szYw6Okg12C7PAk0aW4ESJ1E5iPg=;
        b=ccy3mrv/m+WU+fbElEvAFpTOCJO8NCQp14NqrwVw0mD+Mm/HSB2C5h1l1ThXYQ1Oc3
         1gcfHgAozIAsOXy+c9X+fbHTXHyFbm2jO5099soURMnle0aqb/ar9/aq0KbkUnsS9UGA
         bghc9UnipIVLzgKks/FY8Y0d+NQo+rmH+QAaVZ+RBEZSAxzsuw5ljb7CIjnonAZalVBN
         TzcIt1rY1OAZ1I69ugJze51Xi2VGcm5t6DwmmVZadqP/4gVy9QGTXXeABiAE9iZnFmMu
         6LaGGZqMjZr3V4MBKl7JNYWvx8smMD7SoFTGPV7TicuTLU+Xe4SFIJqIuTAIdNF8vRlD
         Gyew==
X-Forwarded-Encrypted: i=1; AJvYcCXlAXlQzQSp8WZnYlNWIuyhQLYIABr6pLFwQ+N9RYslWyVja3sSUvjDNtkJYqgyT8Sk8Rctohp/Diwz@vger.kernel.org
X-Gm-Message-State: AOJu0YwLmJcCZpxAxQQ4bZQ1zq7Zu0tNCja/k7n3TyUFO6CwN8A4+tvf
	HEBn89vWxKfxQjt5IsW/6WD1rxAevOW6i+UroGPzDWb1HnJ7hXkW43YEYUDHBN4d
X-Gm-Gg: ASbGncvKhO4LDj7HcfdBsxsKuZXMXwLd491Tm1SjkBtm2Y3Wmfp7q1dcDBD0Rfmr/2i
	OnWsuBy/uF9qKHw3pqzxHfm8oFn4zuyA00Rj9TLsGpEi+m2FZ35dA8adQkITY4ki+mD/PWFW/qI
	81nSwnwx8AYZcBU7ORoO6jNnBaW03yGmEe3V4piYG+2aTZ0A/YlNjq7Yxy21POF1lQ4t38Uaa7J
	Q1IZr8sc73nHOfQqkTZ2IMqaF/r7e1rLdfWpAWU1ijFtkvJbS9DhylF8EoYu+B063rmP0dIyeC0
	03T97ofmqukvXXBbctA5PSquiQNcvkVATW9981vVQReSHNU42t7yM9UzoFpVNSIdqFa8hDPXaVc
	501leEF8XWmTzneQrSVklJ/RkGVSIynKMdrxqIkpM69XpBPgYhl4nIQTt1ro4uWwUxHzFk1vgfW
	6HceAEfHbph3O1k+nyqjJEv6SdAoh6pOzpUeNTbT6RLqxNKPdG
X-Google-Smtp-Source: AGHT+IEzE9NB1/Blcg45G3betbuxzRk3laOF2fvr8npc5anM+PscKl216uBkN06AQ6eDxvjSnYSnQA==
X-Received: by 2002:a05:6102:26ca:b0:5db:cfb2:e610 with SMTP id ada2fe7eead31-5de07ed2de1mr1207508137.41.1762965021492;
        Wed, 12 Nov 2025 08:30:21 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5dda200bbb3sm7927628137.11.2025.11.12.08.30.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 08:30:20 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-93515cb8c2bso618730241.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:30:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVpvX4OQLa5gvaUBAgD4LqBHhaGnnmDyKdzKy55UNn2qV3c6xWevMmQKEa93d9IiM2ZhSkeoLpoIPaI@vger.kernel.org
X-Received: by 2002:a05:6102:3a0a:b0:5db:cc92:26f9 with SMTP id
 ada2fe7eead31-5de07ece779mr1298708137.39.1762965020092; Wed, 12 Nov 2025
 08:30:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112143520.233870-1-yuntao.wang@linux.dev> <20251112143520.233870-5-yuntao.wang@linux.dev>
In-Reply-To: <20251112143520.233870-5-yuntao.wang@linux.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 12 Nov 2025 17:30:08 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWntw15nwUP_0aekE85t21YSCJ8pWxAQouCYMou4y601w@mail.gmail.com>
X-Gm-Features: AWmQ_bmTnfy_5vi2sT0b0EhSO9dz10I3Eyl9AX2VJtEthHq6yIgXFifhVJFCFZ0
Message-ID: <CAMuHMdWntw15nwUP_0aekE85t21YSCJ8pWxAQouCYMou4y601w@mail.gmail.com>
Subject: Re: [PATCH 04/10] of/reserved_mem: Use dt_root_addr_size_bytes()
 instead of open-coding it
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
> __reserved_mem_alloc_size() to improve code maintainability.
>
> Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

But please combine with the previous patch with the same subject.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

