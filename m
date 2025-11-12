Return-Path: <devicetree+bounces-237754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D358CC53C34
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 18:45:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 62EEB4FA6D8
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:53:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66E05329368;
	Wed, 12 Nov 2025 16:53:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4924D342519
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 16:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762966387; cv=none; b=uQ1AB+o4849/uStUVM5/hDpbmyED/BXr2vvOaoauT/LOukTVjY4ZlCUmomzoa38dfl3ODGbudvv3o5GBB6ndxWeLXWdGAYwrWajy7Oq1gfbkh83WWW99RDNj1wzXb+gLdk/jM5omlzmFflUNMK/pt5IF9DyresKbO99tFHkrAHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762966387; c=relaxed/simple;
	bh=BwRQFFjStra3DsF4NaVbCbesa2D7H6XBGB1YtS1E5Wk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HCJr6TIT3/LaxortXrvA4yvoW/RPgtsO0lSyiqG5aWnPkXQvm+M1CjKWj0CIakHaWbBW1HVjEV88P8/wDjSCFBNM24x7YUysv5DeyR7pnqm2a5qrca8lAqBZPVAqHbOKIAnb/AYcw359ZxXZ/LQHZNOuW6R0qiflaoaDt1hjb5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-b99dc8f439cso533516a12.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:53:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762966383; x=1763571183;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fznzNSl69lKMgOov3QZ4fMUSrBwsRp9eCNzvWDgHwfg=;
        b=Vd8HcXgNaZhYoGg/+CO7eN1To/WEeC5eH5YLP8WX1xnSoh75hrwlL+0YOJN6CwQP+r
         SN5CyBLYrI78YRawq6Yv9xeByL5BAZ8TeHc6m8ZVrDfLHSbJI/aP/DpeZdOOOfAypFVl
         jMUO9ljRHFJAaKzGmyWLuwRAUVwOxgtAUzpqITEtcc3Tj4GiD9RJepPJm+dHy5BOzJTX
         ggekHDLio0rYd6olml6bJUxxONH7R5ZLIZUdfbmYnyrQkmWdMjYJpeavlkCP8X1T2Vgu
         b5DG5hU14DbDAM2Gg/gTQSb56nESUYAecJZYzajlKTXLlBdtzO6JkcdTv+V772HFICJ9
         RN4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUkF7o3X3sdH836GVX3sD3fyQPuOcd19GEKOHC6Rzj8OrpjwRj460+1iWjfdvWTQeA+dZxhCzxyhD8N@vger.kernel.org
X-Gm-Message-State: AOJu0YxW12urvbf9OyLFsRgclLsPiPrFPQ8Oo3/Ta1oc6OfSlgQkBl0T
	e8cB6QWF4xKGoNmx0x/e5BK5vwqYJ1afShFvaZ4tOX75jW3wf34ha2L0eqJGOmjQ
X-Gm-Gg: ASbGncs0pWbSWpWqLgh7W4joskt6VrsCfhk+VI2yLfI0/S3n8nZpuaJBvNS2zBiBF1r
	zQ5Dvupv7ECJ9pc2/sNUw5Y3DeYNLGBdt+Vc6kUy0MQpf2y0qRDJq52Mawg6y8Yn7lpChkiMfSh
	G9zWM8XtIssjoOUeaJ5TiyCBA5VcBoAkcXygTD/nw7jAzm/SVUFKAGmzS1ORK0bMR2slmBNk7UP
	5ArEYGZXpzg5bO9KdMYKKGIEjsuOPiPXmj02Et44OFuDombjwFQGJ7/MFjeKl7OXX4hQDPgIS5Z
	GVnFBSlVFmCEiBs/BP+i6pRd3P0x79k3MheohFSJPJsRRYaW7fBdck9dLKMYKZkKaHa1aAzEv2R
	kqhv2mRcBZqjYeDnBun9Inoy9EJZGrKBPNdRaLuYsZ5RviHb6QzPqRyvN+Hhbjl6Dp69E3MdRU3
	eTSry45dgfUsuNbzvHTvNM+Ev7t0pL1btZqcChE3ObXQ==
X-Google-Smtp-Source: AGHT+IEnwzjAvMs7WZQW6kjDdaeKff1zGu07wHpL0nqTMn+L9WCBITz0RZCHagkcJzIVIp1TCwRNKA==
X-Received: by 2002:a17:902:ea0b:b0:28e:a70f:e879 with SMTP id d9443c01a7336-2984ed2550dmr52734915ad.1.1762966382870;
        Wed, 12 Nov 2025 08:53:02 -0800 (PST)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com. [209.85.210.171])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dbd93b4sm36671625ad.2.2025.11.12.08.53.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 08:53:02 -0800 (PST)
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7b0246b27b2so1445762b3a.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:53:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWwdiJ/uqZ9x3CnFSjupRYnNP+E3tMZnefTP88hP/9UUC7Q8T8NDl+Du0/7L7XODaONospusA6uZ8qq@vger.kernel.org
X-Received: by 2002:a05:6102:c03:b0:5db:dad4:803 with SMTP id
 ada2fe7eead31-5de07ed2044mr1042935137.35.1762966080037; Wed, 12 Nov 2025
 08:48:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112143520.233870-1-yuntao.wang@linux.dev> <20251112143520.233870-8-yuntao.wang@linux.dev>
In-Reply-To: <20251112143520.233870-8-yuntao.wang@linux.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 12 Nov 2025 17:47:48 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUj1G74d9WoNJFNjeQ6tOENW8kZfr7YMwRvLUaQnuW6pA@mail.gmail.com>
X-Gm-Features: AWmQ_bl96eJ0z2R9z9MwX4iTUg9zDacFdfuBv9uJoul9zbfPX5vA8c0U1fmngLQ
Message-ID: <CAMuHMdUj1G74d9WoNJFNjeQ6tOENW8kZfr7YMwRvLUaQnuW6pA@mail.gmail.com>
Subject: Re: [PATCH 07/10] of/fdt: Fix the len check in early_init_dt_check_for_usable_mem_range()
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
> The len value is in bytes, while `dt_root_addr_cells + dt_root_size_cells`
> is in cells (4 bytes per cell).
>
> The modulo calculation between them is incorrect, the units must be
> converted first.

Thanks for your patch!

> Fixes: fb319e77a0e7 ("of: fdt: Add memory for devices by DT property "linux,usable-memory-range"")

That commit merely changed "<" to "%".

The code that added the bad expression was:
Fixes: 2af2b50acf9b9c38 ("of: fdt: Add generic support for handling
usable memory range property")
However, that code was copied from:
Fixes: 8f579b1c4e347b23 ("arm64: limit memory regions based on DT
property, usable-memory-range")

So I think you want to list these two Fixes-tags instead.

> Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>

For the actual change:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

