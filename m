Return-Path: <devicetree+bounces-242822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9AAC8F946
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 18:02:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4C00134BB15
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 17:02:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BD4925CC74;
	Thu, 27 Nov 2025 17:02:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5CE2DAFBB
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 17:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764262928; cv=none; b=av0LeNPglYdq71PTfOduSohZXzLrsxkQnYa42fyhPHWfkazE7Nh2ykjCTD/F46UotW8Aw66UJ9Sk3maAq/CWWi4l3O7oR+a9MplGk9wkGgH2bp9ivCMLK7fhNAw7ObANYpyn4TWLqWjA+pdp9ksVO8Jie0OReEk4/MldCcTvMPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764262928; c=relaxed/simple;
	bh=HnW7Q7QVwG6FXsg9cOfQjIJ/kbLicLKBwlgZHTci/Fg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S8B3A7nLeQ9zfOMXQpuzD92RSW94AI0i8B4hNlQ/cTva1RWgUnvnSfASmw9Ibm/wijHkFn6NKAFNpZ46pdrj2JpumHMVt3fw80QKy53HP9UERqPVKqssJmoEUQb9zFUcWhxZZRzeRjxG91neMYLsf5y5Sdllhpqrr5FXqX3pfHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-55b24eedd37so706948e0c.0
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 09:02:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764262923; x=1764867723;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J+tNcnMAcw9M7rle1Cb/PdOj9DMI/j+2GuvwBiAD1H8=;
        b=GIOByC3kxtMeIzpxfhpHTL3BhzJUapcniB5bw28F82v8t5A38k1G0SAYBOfSqFonIM
         92nH0ZAdvyl1ET6aWNbnZLF6pg6lkgyQS/5x3cZ0WRoT3c0Vgtq4a/cGvCBcEJ9b6gUw
         63uzJw0elu6ZWDmwMhO7FxO88CcP+pUHynCADtL1EeoPPKo91DjSCjNrPrBWLmjYnELF
         ACOsBJmWOT3/vJ6FLnpfZYoO/fWGPEh6rnXC1i8daSyah+W2DnmFvhTa2xqVpribSVqB
         0vr2K9uhmKgQmglkT/Lr2flgYEhJpU/0//tm8yElNGXtaDrk2aapSzEO/IqHeHAQCtbt
         w2jA==
X-Forwarded-Encrypted: i=1; AJvYcCX9Y/61kWmXU+Z4fdIxlhSMsIuSINY21wvuAiXq9710WcCRSkK2I5HTredlJIowIBiSVVjuFuylKk68@vger.kernel.org
X-Gm-Message-State: AOJu0YwRZaj7RdKv+MwjuoJHkbT7aUV5bI3ixSQXElfTDbB6xfx196LO
	7+wQCr+6MzrhkfjPcPUY502Jgibpcm8r2qcfgNMDA+dtyFxZx1Na/hTfv4xLslvT
X-Gm-Gg: ASbGncuwGGum1fpWiJtUvxqy+1PjHK/3tBR0U4yPGTub9Hy6G+x2po7rTgGQDag0OSe
	HaoXKdUSNJXPbUmB1I5+aqEWPBql0jBzclQtwxRj9+RdYqLqcYEfLZ3Q8cbre/Z62AvzERll2VC
	PROnrFjEAPjMFFErPhbPIEtaKnG5r5WKirRGaY79T/BAfd+afsEyFk3MYTcGe+2Mao3vNSJOKGi
	PTS+eRvVKsZPNBe/s6ox4fbXTNaeOMYqxD0cna1sHXCGDnXXOXc/Q1JEqPibv8KoE1MiCQmn95J
	2mZ4aY1/n6UotIsuL8cMinQkLRWzt8n6Kcde9r8RohRYiPOIuESlXbC6r7ReTQRe6wny5ujrfX0
	okQxl1wQePWhgd4WyDDsBr1/d4C/pkrF0jIQLyK8FEDrcxVq3kFO3Lt52bH2MREUa0ul8+sFKq4
	KD/UjKzhwcezlyYx0HOpTg9JaW4fx9Ywgc4Ld1KLbk9v71INEc
X-Google-Smtp-Source: AGHT+IEQs4zaKVyvHr+55TGU2/fgfMHKOGmHIJDERkx8pPfbVDinUOSclPan/s5t0yGsZJxsHM8G9w==
X-Received: by 2002:a05:6122:4fa2:b0:559:79d8:27a5 with SMTP id 71dfb90a1353d-55b8d5cc1d7mr8799225e0c.0.1764262921721;
        Thu, 27 Nov 2025 09:02:01 -0800 (PST)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55cf4e1f4c2sm797407e0c.2.2025.11.27.09.02.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 09:02:00 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5e18598b9b1so730870137.0
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 09:02:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX+t10/C/p2NJ3/cFjMJbD42TnPT7/Lb1QlCvKiTy3yTA374ww8nE0kTIENkDqj5f4CQA6iDT6Sf07K@vger.kernel.org
X-Received: by 2002:a05:6102:5a8d:b0:5db:f5d1:5799 with SMTP id
 ada2fe7eead31-5e1de2d543fmr9392802137.33.1764262920106; Thu, 27 Nov 2025
 09:02:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125224533.294235-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251125224533.294235-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251125224533.294235-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Nov 2025 18:01:48 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVBg-1amO4CJenoz+1pFRY-EUDFWncVKj1iJZLHeYXgnw@mail.gmail.com>
X-Gm-Features: AWmQ_bl-sLAuEi0vqmBQ4eHdpjIgt9LqzoM-QwU9HvSo7PS2_tjhHaAZM07D9Bs
Message-ID: <CAMuHMdVBg-1amO4CJenoz+1pFRY-EUDFWncVKj1iJZLHeYXgnw@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: renesas: r9a09g056: Add RSPI nodes
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 25 Nov 2025 at 23:45, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add nodes for the RSPI IPs found in the Renesas RZ/V2N SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

