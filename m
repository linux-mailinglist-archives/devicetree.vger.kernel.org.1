Return-Path: <devicetree+bounces-253332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DA453D0ADB3
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 16:21:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 18C22304D4B5
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 15:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A625335E526;
	Fri,  9 Jan 2026 15:18:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059D933C528
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 15:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767971921; cv=none; b=CFUwQHE5NSOztX2GGIVoP9O/d9cw2AztTWnqs90cDjXWFRqlIJoOFijG6DxaFfGWx0ya2YXswslOFvdpjcz74fs7OFJf71yUcChBO+RmgGd5zRmexruZTxl4bp/Zd1N8gn1gM+C/Iyy0lMqNSEKIwslYwqiTU+Vv5otL3EYOaNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767971921; c=relaxed/simple;
	bh=3+GVatq95mGfhRDIL1n8peJUE+WZ/+efS6KSkq5pqSw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PvaDpym7lj88QFDp2NMuu1ot1OjQcwFhY/VNkIELicUPyJ6YtLDeYliFKHo4qTNfqK6BFfnMU+kNKznfKVEZFg2GthO/Q5i7+KVilV3Ykstsg23wQcWAghl7CO8li5K5VABuTalyKacd5iKCoo6EaIddXyUV8tOhJd7HUvjto2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-55999cc2a87so1250968e0c.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 07:18:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767971919; x=1768576719;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3VEXlTg9IM4gHcSL1lBsklgg3f6DVIwXgyPnVvXxnYs=;
        b=Tr1WNq+LseiQC539bSl1pqkzeKhm2rH9snYw+GJh3Vj67hLPeLqPTXrbErVqZW6Hmv
         EXbezQonaBoqHl2/sK9h1pCuW6Uyj1Ve75BY6dfDLdmqNnBo5r0o/Rs5FiQ0WKw6kmPH
         8f/ypGKQ2fLaxro9JsOD0oRsDKfUmPufyyPPp0xpjrWf4qXmb6rEzDzq+NLG0s8f+29Z
         SkjKMH73dFbjOLrpOh+pjUy6edVVgcpNqLda0v9nbxY2xRKF/cfBEBFR6KBr3mFLopUI
         Ued8TVcEMXbppcUT8PVca9Yn/z8O55N6FIxjJVqXaBZZMHHh+UjW87VS3f18Oee4MAMS
         ah+w==
X-Forwarded-Encrypted: i=1; AJvYcCXlFSpEVRVomCPNp5qFhiPbKo+F3aqoo7dOyXV0ruhm6DiGaNJ/WVPWmPVOf+5e3sMVr3xxLQ6P6kcw@vger.kernel.org
X-Gm-Message-State: AOJu0YzWVlLHAtfVrSYKMwpkWWQHahOJuDWxkJQkeN19XQUVL/Sv3d35
	Ygu938+7fYkWrflBKy/PoL7ct0pnqKe3YAtbwpywIwTFlAi1g01kikO9ihU6re6e
X-Gm-Gg: AY/fxX6VknkfFpxOz+H0zap/SuyMVZzajsJqaO7B27HooiK9qGuFcQo3+MVnlk8RRKc
	c6xjg9dtWsvLSxskEzUoqTi8UbsDLKBmoVMUwO3+Z/xP/vAmYpUtRiG+QoeQrK0b9BmjPYPyZy4
	lWqdDvwdB6K0euR3X71W09bMQZUy508khMtKWug56tddO3eOlaABeaNrR7LfbVPch3g/FqjIYKD
	39NjEkAzMhNgU9vARsuvaQUz6btQW3r7a82+jrzP4QbvsTutpCMV4SQpfzVQWrKtvGtXGehGDfh
	IjSVFAbk0jPFfxwjpN41PKjkhFDsD0T4naMPPt6QmptH1qQVj/1E2JABNzsZIgXUCIlDPgpnr80
	D/Iz/3FE0P3itJuoTtMVi6c9uxZs38IPtTUTQqhPYIZOo7Skg06Apqlje/adpO7XYngD0XpLE7S
	nAiHmVE0paldTPh3fIfJ9pzCO9p614yzf1i9PuIg9DaxPhEv6SkXTR
X-Google-Smtp-Source: AGHT+IE5vRuuuHiC2yw9bTQxNHwe7n68JK6YeauMzC8mn1GjfOS4QI64D9VZ8j4A8RGj+LxHVQP6PQ==
X-Received: by 2002:a05:6122:221d:b0:563:4416:a0aa with SMTP id 71dfb90a1353d-56347ffba03mr3616037e0c.21.1767971918986;
        Fri, 09 Jan 2026 07:18:38 -0800 (PST)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com. [209.85.221.182])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944124c452asm9056018241.13.2026.01.09.07.18.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 07:18:38 -0800 (PST)
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-563641b24b9so360722e0c.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 07:18:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVoSdVstOQZN8UaNaQ2rbUuQ3rWHBJgICuuj5XAnl4m+gkLjgKjdq8unWJtSgmCu58NtTXAX55pTvgw@vger.kernel.org
X-Received: by 2002:a05:6122:221d:b0:563:4416:a0aa with SMTP id
 71dfb90a1353d-56347ffba03mr3615981e0c.21.1767971917718; Fri, 09 Jan 2026
 07:18:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251223152358.152533-3-krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20251223152358.152533-3-krzysztof.kozlowski@oss.qualcomm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Jan 2026 16:18:26 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX17mPy0__1Q=zDbfSTOJFO9jBCx7hFV=fSCRAi=o_sEw@mail.gmail.com>
X-Gm-Features: AZwV_QiaPop4qGDHo4cMfNY7dies9ybxnNdVPjRUz8BtpnuQV3yBnZnNV76_TJ0
Message-ID: <CAMuHMdX17mPy0__1Q=zDbfSTOJFO9jBCx7hFV=fSCRAi=o_sEw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: renesas: Use hyphen in node names
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Tue, 23 Dec 2025 at 16:24, Krzysztof Kozlowski
<krzysztof.kozlowski@oss.qualcomm.com> wrote:
> DTS coding style prefers hyphens instead of underscores in the node
> names.  Change should be safe, because node names are not considered an
> ABI.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Thanks for your patch!

>  arch/arm64/boot/dts/renesas/r8a77970-eagle.dts   | 4 ++--
>  arch/arm64/boot/dts/renesas/r8a77970-v3msk.dts   | 4 ++--
>  arch/arm64/boot/dts/renesas/r8a77980-v3hsk.dts   | 4 ++--
>  arch/arm64/boot/dts/renesas/salvator-common.dtsi | 4 ++--
>  arch/arm64/boot/dts/renesas/ulcb.dtsi            | 2 +-
>  5 files changed, 9 insertions(+), 9 deletions(-)

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Is there any specific reason you didn't fix the remaining ones?

$ git grep  -e  '[a-zA-Z0-9-]*_[a-zA-Z0-9-]*@' HEAD --
arch/arm64/boot/dts/renesas
arch/arm64/boot/dts/renesas/beacon-renesom-som.dtsi:
versaclock5: versaclock_som@6a {
arch/arm64/boot/dts/renesas/condor-common.dtsi:
cert_header_sa3@c0000 {
arch/arm64/boot/dts/renesas/condor-common.dtsi:
cert_header_sa6@180000 {
arch/arm64/boot/dts/renesas/draak.dtsi:
cert_header_sa6@180000 {
arch/arm64/boot/dts/renesas/ebisu.dtsi:
cert_header_sa6@180000 {
arch/arm64/boot/dts/renesas/hihope-rev4.dtsi:      cs2000: clk_multiplier@4f {

No worries, will queue in renesas-devel for v6.20, with those fixed, too.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

