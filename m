Return-Path: <devicetree+bounces-235994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E48C3F04B
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 09:47:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BD60188490F
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 08:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A80226529A;
	Fri,  7 Nov 2025 08:47:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F81F270ED2
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 08:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762505247; cv=none; b=sfoMYBGxG8Ne+Uzbl6wWyCJBSgp2BfMn3BBWvD3duNLYKlzaAL/XglCj7RHzvgjja3wMuOpFEIFne43q7/vpE2+KKUvJkb4AMjeL0X9/A/Z1C2J+fLeNBzGgNkX18lagJKXrovyr8WIOoiz0eKrQwoaGPUDKiiGIPU1sDHOA/30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762505247; c=relaxed/simple;
	bh=PvYF/sHPuMEq+8fWLIPGoI5jyBD3PEX35Mu+Vy6V+Yo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NvzCbMU2RAqvwEBWbzP4ue62nexHc3h2X6/EfrCBFGGzxhjGUtk0zOMHSN0nvIGsbcPyqVcg51aKqUkuOv99SGxPMEVerQpkbM87Wo7G1K8uYmN1aZmKgUvlD7hqz960vJuGKksRw5k6AEEP66K1VWpqkC8o2B8EK6JkOqW6IKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-559a46bc9d8so67392e0c.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:47:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762505245; x=1763110045;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fv84lgioVMsP5SXRt5RM+4CQx1zYwL7FI4sF4TISOrk=;
        b=NZnd/zlb7H7WYLUL4TgFzLf/WmnkoW3smQ6guVQwH66P2vifr68Z2hmWbShgOcRxqT
         n2IcphkzkTRQzdlS9STANMEWHQ0jvRbrgTPsrlQIHsI8YStRG85bYzoo+szJXKBLf9fy
         S4bMAlUtelfUH/tRp0y9VWjONQ32Gch2iPgTz2s05VzXNSor7yrSpFDnsfPxe8XeitCL
         Hdqg+EYhy0qqlZSk2/3ofChj8zm+GwTM3foaZsB6pni+7/SVOxCXbpf9/LLYOZqYC1aJ
         GnTqMzzn6Hj5OEqBng5cAbj/Vz2lKyhcua/QSgzx01zOaatiTBQrt828QXxCfhrvo4+B
         0bKg==
X-Forwarded-Encrypted: i=1; AJvYcCWfiyrIJ+2qW+oH3lpn2fxGBCPYehy/smdSN1Dz0i9g6AgK2CIpQ8rCP1eJjUPdmOTp10FpjVTA05LJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxhtJ1XdJbrAKqabhTLsDGMXMl7t5vJrbeHBheJhw5WnHdaG2Ow
	Y+Sh10YFR4luCZDtWlJjyn22O5T/KPCFEL1tXIKihsstNaddISrXL5Tk1PgRm4bLreg=
X-Gm-Gg: ASbGnctQ50/Y3x/LNzBWCGqChl5wCmUIhvm4xj6M34rM8iHtaPiuLRi0RKjtca7351F
	dloY9gqxys9ab6q1JrJMbRuGa6Ah4kg700ji5KymfeSndrrfmSusePgaBeG2Jz5GR9uZTNvEqqT
	Y710j94hH8W9jnOyvsIPy7HF27SOA/9KzVHnllSO2irhdhdZmfkiwlzq5cEBgNZ5idGNFa4SJqR
	jK/GXdrRGJd7phMIlNp5RTqPrBt/FFdbVfdurkuDGimjWfdC4FuwG7uc38btobGUqafA4vDpQIt
	wwXBQIYWs2f725kz13lHog2ykfqiDWCx63ij4RK5NvoDEAPL2P3rrDUtd5KXVnFJe29PHFeJvCR
	BrzNlzzlISiUH9TjCCE3ilz0rXG9aRHVCrBvBkq0WheGJ5rce67mMzLBPW3UvqRq4vTFF5lgdkQ
	Pc/KU7t5L1o1VUrDv8ryQHmxJWSbtYO1oHNMLIHA==
X-Google-Smtp-Source: AGHT+IHpBxcQog8R+K7dy0gfV3ZpXs9WzPEd7W/gC03HOsVgVcxnC/u5d0cz9zz9A6sgp+iiKb0STQ==
X-Received: by 2002:a05:6122:20ab:b0:557:82be:1a4f with SMTP id 71dfb90a1353d-559a3a0a24fmr719841e0c.1.1762505244847;
        Fri, 07 Nov 2025 00:47:24 -0800 (PST)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55995863b6dsm2689018e0c.22.2025.11.07.00.47.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 00:47:23 -0800 (PST)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5dd8988d098so162814137.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:47:23 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW0HLy5G+TSsgbYtircgZVc6Jw/U9RyJNg+96ZCbEj3qKgyWYhrp719l5Ewrmv6Ohw1l06Rug6pzvMD@vger.kernel.org
X-Received: by 2002:a05:6102:3747:b0:5d5:f6ae:38dc with SMTP id
 ada2fe7eead31-5ddb22b0cccmr751397137.39.1762505243558; Fri, 07 Nov 2025
 00:47:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251106211604.2766465-1-niklas.soderlund+renesas@ragnatech.se> <20251106211604.2766465-5-niklas.soderlund+renesas@ragnatech.se>
In-Reply-To: <20251106211604.2766465-5-niklas.soderlund+renesas@ragnatech.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 7 Nov 2025 09:47:12 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWPTXCWPeYn0jSyLLYrA8EGZyOO7K8SJ6uJP-szvzZT2Q@mail.gmail.com>
X-Gm-Features: AWmQ_bnEzOQ8SOygg45RRCWr96B-LQAx_Y_KqMAbz1TsbUr3CSh72EhCGj54kt0
Message-ID: <CAMuHMdWPTXCWPeYn0jSyLLYrA8EGZyOO7K8SJ6uJP-szvzZT2Q@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] clk: renesas: r8a779a0: Add 3dge module clock
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 6 Nov 2025 at 22:16, Niklas S=C3=B6derlund
<niklas.soderlund+renesas@ragnatech.se> wrote:
> Describe the 3DGE module clock needed to operate the PowerVR GPU.
>
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thx, will queue in renesas-clk for v6.19.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

