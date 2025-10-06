Return-Path: <devicetree+bounces-223867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9D8BBE7EB
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 17:33:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AFEEE4EBFDD
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 15:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FD7E2D6E71;
	Mon,  6 Oct 2025 15:33:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B673270EC1
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 15:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759764818; cv=none; b=laCyEzsA8l2q06PLpGY9cL75Blksudbf2ebyA/OTc33LodLFppuvYItIUukfnWPkZg/+0zMevOoOjKN6l/f84yy0pW6DpfGz0c5AmUO2F1epdwBQHBAAp/ulKRNfqs96FQvrMXKJ/h0O7BFFFX6LcJTCCDGfz+tvVZY8KSmv/cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759764818; c=relaxed/simple;
	bh=dSnfb3yL4QKj2jW1vkztCLpaRi4oy5M2m+qzcux2G/c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sJJOhPg39hBpBanHDyaV46/iVWtUj7d2+P6TY6RLS1pmuKOtL5UTaU08Bfa1sM99pYH4kSrDNKAkAsXNQSEZhv8N1a3KUKvkjoneGDzv8p2B9Ia3r0C/OtDzFRZ2CSpOrJXe5yjYXwE99Jv/A82sKoWk8OA9dJBA7nxx3lswzhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-54a8514f300so1703983e0c.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:33:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759764815; x=1760369615;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+jg3+SSfQDF+38T7p3MLG0Dd2g8S6PQVTqm3cXu4YzM=;
        b=VKd3F9LPNClf4aKA9/QFlNzvqCAM6f+aCaXuc4PLwOqVSFJyJk32BKLYWUunGWmDLD
         BicAH0iRxlyiVry6WvU5LO6WUhawIE1UKBNtYdWmqD4wJiAgHTHG0bnoxUOs+vaJognq
         TDuZ7Ra6Xfxjk9TvwEiaUVVjNY0/YOyabc4Q6h3+6PHbb1P+9QfgVg3FviVZ4Q/ZUbSp
         w/rn9tBKs5aeGK6aYEs/plEwIiYaQEl6jnJvEyeS97ANzxPI/48E6Wml4q3C6vUu6dBF
         OneIap0OzbzjvKeAOGcvmI7qGoMX2MgbJNsEdDxFujEhE3UYdkKAuJ/HraTcVSKkCKyJ
         koXg==
X-Forwarded-Encrypted: i=1; AJvYcCUAjSygWNmrVY69F6QdPl+5Mg27/cJGgXGiHXNH1G7qWD0CnzrVFKKiRFXA7pje7Xva70Nrs48fFN8x@vger.kernel.org
X-Gm-Message-State: AOJu0Yz51Mn8o05hsKSRU3c1FLK4tmgVvFDGF9IGvmX16+Mql9FjWRO2
	vP3R5bR8jkg0YYq2/JJ8+fCv2cKz5nF7JuRtbgR1d/0o7bP8J+ab2TwitjLABkHG
X-Gm-Gg: ASbGnct6hQ6FQeaGSWZR8ltpsfUyOQ/D2RiEmPiK5RVjTegyxwFGZZnyasNkM3hY0QS
	bnALCz+J5btDw8MSxCT7ZJYbTjTbr/cff9Rs0jRM/cjUR/IMbyiUuI+XgMsFI3dm3YAq3GtFS8i
	0d4KUUGLUlg/jRD+AY+sOedqD2OEEtHt6VAfsJQ8XUxrI1lRDvfndhcRUUojikLgE+YTvAWhpUX
	gwMZ4tHPyJTOsTLw5tt26QnfBERh9bRDYrE0evKX+QF+Qpnqch6c5vGM+TrrD/HhE9kPMEOtsr3
	Q9tmvNzw0/QFuBFVcX72KL0kKuJFUbJpeXYU54d30tN5OpJZzseVtMj+I0hlwax4TqHRh5ecDYr
	82FoOI1snwYWzhIqAQuhLOYeE51Axb34OMva2htqKDN9Qc5vEI8r1nDfm0hPp0tuaMM3RQ2gZgB
	JCvkQ8jfHVoOsdkFk8VzFmAV1Xqlbpow==
X-Google-Smtp-Source: AGHT+IFFI7yGWXg75AhZCNNBZfKvGuDOKVUsFbXPH9eahKdAeOPwY4HeepyfMSI2tsw57M7z4GzvDQ==
X-Received: by 2002:a05:6122:1d44:b0:542:d782:2522 with SMTP id 71dfb90a1353d-5524ea76019mr5188251e0c.14.1759764815106;
        Mon, 06 Oct 2025 08:33:35 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5523cf98b43sm3051014e0c.26.2025.10.06.08.33.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 08:33:33 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5d28f9b4c8cso6230484137.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:33:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX1uPip4gbRAf0XNAT2+Ez2Yr12848FnHqSoLPcCnZh42KP2E9punZmozlwItJ0nW22fsqocKtE9BlH@vger.kernel.org
X-Received: by 2002:a05:6102:162a:b0:527:8b63:790c with SMTP id
 ada2fe7eead31-5d41d03254dmr5118602137.7.1759764813699; Mon, 06 Oct 2025
 08:33:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006082520.10570-11-wsa+renesas@sang-engineering.com> <20251006082520.10570-12-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251006082520.10570-12-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Oct 2025 17:33:21 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUJJ+Vef+kHZcm2+OadnZz=ukY_CMeOTmoO9nCM817YAw@mail.gmail.com>
X-Gm-Features: AS18NWAbNGa1AsJZ-Y-KAMjjloR3fHODpxDxJEyA6s4bxkWy6COg3JbaqbmNuNA
Message-ID: <CAMuHMdUJJ+Vef+kHZcm2+OadnZz=ukY_CMeOTmoO9nCM817YAw@mail.gmail.com>
Subject: Re: [PATCH 1/9] arm64: dts: renesas: r8a779a0: add SWDT node
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Oct 2025 at 10:29, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

