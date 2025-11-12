Return-Path: <devicetree+bounces-237759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B2EC5390B
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 18:03:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9A8F93427D2
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 17:01:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87E442D73B0;
	Wed, 12 Nov 2025 17:01:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86A228697
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762966876; cv=none; b=LYdLqkzneqkAVJMtWQqD3z/EB1MwnwFPWAIyTDMsM5xqaHyBBKKzVvTTjMRh3+8CV2+b+k3xI/DYhLEox8c4rllAgTf6NAAUvT8AJNt2CqHTlI65aw5WsjyZ7DzOSr6P3hBLdow0FzSmpqVNaXAJwfJ0i/dGZAjQcekNShPH9XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762966876; c=relaxed/simple;
	bh=vKzJGeF4YKf07MSl7Wfxofmo26UplM6I0vKinTzU5Bk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e/ApniP4LIvdPVyDEIY4uHNpefxiwVLxZA5GTb1wzGKLw/XN4CY1VmE/22UcAln2qD9xbERLUJl13b0QtspEideZtZKs3wTwdKKAsEzzm5BTTMlA+RH/bA/Mt5VjPE+/BLt2bE67zfAM7aOJLNJSU+pvDiwz3g37ROoT8bg7XJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-559748bcf99so832739e0c.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:01:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762966872; x=1763571672;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vKJeMRLbErvhNOYva0m4lCJv2yv5ZqWMM8uB7IOw7Lc=;
        b=muS/+FiMGs5q7jcx05XTrSlDOvKJuDeQ29H4u7hyv1Gvg3Lju0cPcZ8h7cnIJOfxRw
         x9NbrgGYv7ggCfG/6lpSdMgm7c33KdEAA2mey1SOsdEMXoPVO2p2PTurks3cQ7PCpfdd
         3Ji9oBdbzMffNwpJCOo1462Ju8Xap9L4FKHeKLXQVz3bmI9wO7K+5GT/tUVpUDSz1fts
         Fiz9XLYsasFSeJSXTCiJKp+3jBCvWxcIbFkPWFkb+Y1C/s9sdQQdWpCRlH8oZk6zTqy0
         1g4b16qzvPkoVDPJr4l/YqHjKL6edVnmLC7EWBNFtdj2yNyx8Bsu5ybUZnN1XpPRoz5b
         45NQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIKAuQiwNS48oplcZ34+Gpu46kM3CyeqA5bd2wGNUcFjbyZHkZLAzdNKWMCi5PXKNnAWTcBU2HYrwS@vger.kernel.org
X-Gm-Message-State: AOJu0YyU+1wdaTkosRAXmXqZ7pb9XFbpKmSmind7waftVWptjC49VKt3
	MNlGC96XBsl2krQF6+Uuhoy7eERK7Mie5FOpKKvblB3CFM7bASvFRJwn9gJH0KVQ
X-Gm-Gg: ASbGncvps9Je0Vsxwu4dggzqAMr88El11inMh63RGYSisCC0UGFvZEeF/EeI+ACRqHX
	M2BADtoKc0yjzywsvzYK5iAOiTIWSpMyZSEOvw2CFHg4ff7D3wSYsrFR2mxRM2W2k5BWrqNHUGG
	kddcNBVoRSCf3gOkXTicWmcq9i0g/0jX7m+gX9SjVl384Vogk3t/LJSc73mgqkkp9KKJFoi+YGh
	a1mfqFQ8+ybCVpwfIdysRPY2+ivs2iTeo9E4XMCGzO58+VRAVZMAG5RkJfQHSZ2xiZVNYBGxjvX
	dn/3byXxJP6jHngzI+qnJTgoEk2WQ6bqi3EuGejbE7gxHE/kPI4thLeJ5uQEl7rCgTv/sQFNsSz
	CLBz7uMNDXB7EN8gtxKrRlGZFd95d7Fzvm6S5yKsj+CYHvmGz3iDJTdSFnvF0CVbgpyUdUKpIDR
	Thy8kxygCMC1bhGNDL0xkh1JRqQp3MWOtRqf4+jQ==
X-Google-Smtp-Source: AGHT+IEIGW4o38QkD0NXtR0/tpqINHML7+ZjDagy4bFc+WkmrkdotlmH8eCZxL3Dx0d+8QKIsiSuyg==
X-Received: by 2002:a05:6122:791:b0:559:3d59:1fdc with SMTP id 71dfb90a1353d-559e7d9dfbemr1718363e0c.14.1762966869437;
        Wed, 12 Nov 2025 09:01:09 -0800 (PST)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-559957fb32csm9861512e0c.13.2025.11.12.09.01.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 09:01:09 -0800 (PST)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5dbd3dbbde3so803451137.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:01:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUMjwY1EGvpRw59TDl8e7KlJv4OfAiaBjuCc5xWxQgEis4i5Jy4fVWDe1rMw/2buA0wybPFCTIvyNPT@vger.kernel.org
X-Received: by 2002:a05:6102:d8a:b0:5db:f352:afbe with SMTP id
 ada2fe7eead31-5de07ce4801mr1128306137.6.1762966481708; Wed, 12 Nov 2025
 08:54:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112143520.233870-1-yuntao.wang@linux.dev> <20251112143520.233870-10-yuntao.wang@linux.dev>
In-Reply-To: <20251112143520.233870-10-yuntao.wang@linux.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 12 Nov 2025 17:54:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVpKC94_JPqp0foeeC9Uz8X6st8NLDryGkBqvCc=-CAdQ@mail.gmail.com>
X-Gm-Features: AWmQ_bl6HMrZVPynAla471JOudFytqZegXGmKBpcCj7HBFaIV3VakgXx4WEQtHs
Message-ID: <CAMuHMdVpKC94_JPqp0foeeC9Uz8X6st8NLDryGkBqvCc=-CAdQ@mail.gmail.com>
Subject: Re: [PATCH 09/10] of/fdt: Fix incorrect use of dt_root_addr_cells in early_init_dt_check_kho()
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>, 
	Baoquan He <bhe@redhat.com>, Zhen Lei <thunder.leizhen@huawei.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Changyuan Lyu <changyuanl@google.com>, 
	Alexander Graf <graf@amazon.com>, "Mike Rapoport (Microsoft)" <rppt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Yuntao,

On Wed, 12 Nov 2025 at 15:38, Yuntao Wang <yuntao.wang@linux.dev> wrote:
> When reading the fdt_size value, the argument passed to dt_mem_next_cell()
> is dt_root_addr_cells, but it should be dt_root_size_cells.
>
> The same issue occurs when reading the scratch_size value.
>
> Fix these issues.
>
> Fixes: 274cdcb1c004 ("arm64: add KHO support")
> Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>

Thanks for your patch!

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -894,14 +894,14 @@ static void __init early_init_dt_check_kho(void)
>                 return;
>
>         fdt_start = dt_mem_next_cell(dt_root_addr_cells, &p);
> -       fdt_size = dt_mem_next_cell(dt_root_addr_cells, &p);
> +       fdt_size = dt_mem_next_cell(dt_root_size_cells, &p);

I think it would be worthwhile to have separate dt_mem_next_addr_cell()
and dt_mem_next_size_cell() helpers.  That would us bring a few steps
closer to the following goal stated in <linux/of_fdt.h>:

    /* TBD: Temporary export of fdt globals - remove when code fully merged */
    extern int __initdata dt_root_addr_cells;
    extern int __initdata dt_root_size_cells;

>
>         p = of_get_flat_dt_prop(node, "linux,kho-scratch", &l);
>         if (l != dt_root_addr_size_bytes())
>                 return;
>
>         scratch_start = dt_mem_next_cell(dt_root_addr_cells, &p);
> -       scratch_size = dt_mem_next_cell(dt_root_addr_cells, &p);
> +       scratch_size = dt_mem_next_cell(dt_root_size_cells, &p);
>
>         kho_populate(fdt_start, fdt_size, scratch_start, scratch_size);
>  }

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

