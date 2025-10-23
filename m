Return-Path: <devicetree+bounces-230263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB96C00FE3
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:09:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 99E0250833C
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 12:07:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A85F2FD66F;
	Thu, 23 Oct 2025 12:06:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A5A30DD19
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761221216; cv=none; b=FlqQI5k0bo2SiVE7LqnwN1HqjAwHL1xmwgabR594fBHNdRYr+r5PAao1OdScBYg9VWXNAh06OXVnNqi2Ec1Hxsn6p9BfxawuUM/0oQuF8+m8cZKeYr2oh9QakqvVJiAUDA6lPcS0QouiOCBmuZmYeaVE4jobqm0zqiPZfley37c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761221216; c=relaxed/simple;
	bh=h+vkc32ZzB6Y3nbGVdKMOxil1Yt8+ajmhfuNJw4BOD4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U2bne6mDAvS42Q+/8nI4xgzcE9RZhUZWMQw1ttPIXhJExb3QovEq3220AxBmMn+LdtfD680drjPlgJ9CNadyhAw1BRVCzv88qk34iku/qID+gHR0KvyI+BFVWJbnsFljd3HdcZZAfD7qFsWnBifgcgCiLniTK0uwfQ2W6mmh+C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-932c42aaf14so535932241.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:06:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761221213; x=1761826013;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p3PrloVXYulHwAuaRFIv3VsJXdyEGVj/DTV7jXOJzSM=;
        b=GhNBHfCL6W75Bop/D5ixabQ+fWgtpsNUSaUGB1Q9GgUzALa0idnH8vPZnc0r6rspmz
         g7jGplApba1r2oVLujdAhAZUDDSKaiuUIjNXAUMyq1iTn5SVygztfueIJt1A8hDD4Sxf
         hXAQuy72ee83aNKuvVC0E1pv0DyXCTyiDp4CJ1r2zpRKBl0RWRtuo6CpgiifWc7DUoOK
         r0vEhg53kZoCt/1obZpIXAbKvXbAooW1QskSQJRMenzG2mUrUj3+BOhcUbB43zLkFRS1
         s4KA7WLZHdtY7St/b+O606OTIo/l6FqEB50RivAbQA9aakxjuFYp1qAFNa/Y+UPtAIs5
         rNOg==
X-Forwarded-Encrypted: i=1; AJvYcCX1h2lrfT/f9B0+QceJCjubWhpE49lngCPLqZC/kiArHrS3AFmFe/tXxUvX0iTG/GIKRmPLvwx+VIsp@vger.kernel.org
X-Gm-Message-State: AOJu0YwMyuxZJTKYspmhG/iW+ti/C4/W3RYsPfF4o6Krc1JglcSYHOJ2
	y0lNW5DuHZ126h2E7l9iWGzPuYf0VxOvV6nPwgi8Z8apG5ZVRC26uBO/XzDZMFbs
X-Gm-Gg: ASbGncs+A1K0h6TXsrF1Dwuy+Uw1LLM/lzog9pGpva7f2F3zhhDGGoT4nzfIBWv8tpc
	DjwAjN6Wbf0hsSvkEZ2i+MEtJae2l8/zLMqigoiac4IfI8xFthHxJCYTeDw6inrgxqlW6dGViLj
	lt5ogXtFG371gGIJfLP68VjCx5rREVay4WXhaHmaDqAKrGGVJR7hYv8gQX+NgcGENAIoIxIsQX7
	He1N7kwW2edMXzDpvga4bMQusitRmC4/QrdYQJasvvxQBP/uO2boRMPc/a5Pibbd0RQNoFu89td
	4Iu2Lpy7oMeet8m44qsNhlW5fIsmNUvmc5Hash3cGMhV4a3FHwBP2H+2mrTfUViTbWomRzuF7/U
	F/KTBSWDn89ycSAT5DHP/OBZ4CdO9hTRHzlmAdVAZJzh7Xqi6iN2GjPOVkdFnpOPqpZzfKnSBoz
	cN2I+O8xGXs8NGoPSEuUauZn5cy4x7QRyWl9u/niXgtp02Vf7W
X-Google-Smtp-Source: AGHT+IFlJriALFrHCFtH8Qoex1KHnyqfFOdgwGY/kzYv9IhgIyiXACEdhCgNO3C4sFY6x2Lj2nhjYQ==
X-Received: by 2002:a05:6102:2928:b0:534:1aae:2d7b with SMTP id ada2fe7eead31-5d7dd66394fmr7811530137.24.1761221213196;
        Thu, 23 Oct 2025 05:06:53 -0700 (PDT)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5db2cca3dc6sm757317137.12.2025.10.23.05.06.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 05:06:53 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5ce093debf6so714960137.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:06:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXNEun+fmkeHNat+b9Qb+nIKrqnmpYaCszTE0D7tWHj1Rdudo1MgOKxULidkcFgthYBWuLyp5C3nyHz@vger.kernel.org
X-Received: by 2002:a05:6102:3f04:b0:5d6:27c7:e6b2 with SMTP id
 ada2fe7eead31-5d7dd502043mr1773971137.3.1761221212859; Thu, 23 Oct 2025
 05:06:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87h5wsa3h5.wl-kuninori.morimoto.gx@renesas.com> <87frcca3fn.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87frcca3fn.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 23 Oct 2025 14:06:41 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVxS-cjcYSfGBcrcmEcWUiZQ2bcB=5KUVhOkddvvyVYoA@mail.gmail.com>
X-Gm-Features: AS18NWCCDA4ZcBUR8Pt9ZNf-GPGyVbzC7QOLSvHrOidBYngzkjHnnbOKzVEfnBY
Message-ID: <CAMuHMdVxS-cjcYSfGBcrcmEcWUiZQ2bcB=5KUVhOkddvvyVYoA@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] arm64: dts: renesas: Add R8A78000 X5H DTs
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Sept 2025 at 06:18, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> From: Hai Pham <hai.pham.ud@renesas.com>
>
> Add initial DT support for R8A78000 (R-Car X5H) SoC.
>
> [Kuninori: tidyup for upstreaming]
>
> Signed-off-by: Hai Pham <hai.pham.ud@renesas.com>
> Signed-off-by: Vinh Nguyen <vinh.nguyen.xz@renesas.com>
> Signed-off-by: Minh Le <minh.le.aj@renesas.com>
> Signed-off-by: Huy Bui <huy.bui.wm@renesas.com>
> Signed-off-by: Khanh Le <khanh.le.xr@renesas.com>
> Signed-off-by: Phong Hoang <phong.hoang.wz@renesas.com>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

