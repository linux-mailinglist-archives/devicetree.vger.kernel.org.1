Return-Path: <devicetree+bounces-232781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3B7C1BA6D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 16:29:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6C5CF5C222F
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C11462D63FC;
	Wed, 29 Oct 2025 14:52:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF6E299937
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 14:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761749529; cv=none; b=dwr5u5/P+lPeN5L0ie4YtfWZZGXiPXDLGE6VKCL3lbujA96wUcR3pMuuQnHQRUsCbDmJPWIoFPeOXZaSW4XNEQluBy/lf2C7KF1eSaA4vg+ZFDz6pWZZr44LmnSFXTZ7qlOMLgr4dmdu7fsOaGpyRx0I+22W92DLcNcth7mxo0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761749529; c=relaxed/simple;
	bh=x8Q6phZmuf/56rhTPcAI9gNeRvjsr//c9Go6x2HJnsU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BOA8zU0Ef37dswSukPKS0JD6uX2G93rBsc5RQtRswktn6aTAc+pYKenQz/4OBsfc+6fLkC5R4LfllYMoQPN7jtF4MRgfRXCEdGPFY+R138HQPXNX10tih8+YALEVzsLvklVY/cD9I5u4u3nZ3RVMd23aPbNNkyhqeI0aDVQWFWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-932dfe14b2eso6097651241.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:52:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761749527; x=1762354327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6X2VdOjut9PuIWiMUTBESV6nSJnAJvEj2IyZk3vIzkk=;
        b=hdu6Ob44QP2kvBEmYGd6dfnI7A0ClE2a2vTrNL8LXU9y+be5iesfXEVIhgmHzbOY9v
         B8/th7/3a07V7vrsW+qejsQZlg5OI+iPbYoFkr9Ev81JGdFGKEgnAQOo5kQm2PsTmOfv
         Q+zTp8or0cLQxovrYniY+f952F4Sl9bWI4RH5b8S2ZszEjK5/ZZ4NIJEsk95D0XJjfvM
         nmY8zwncLrCxRK0BKU39bqWEN7tjAznt5hDbLWZpGN81AgAuwie26l70lVX5qO4ZRxyw
         dDfX35p90U5ne5CtjWq0zXBfbqyFkiE9iIp1TplECjAMRr7+Cq9P+T47BKzkq+kI3l4O
         mS5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUt99tt04CekrPYf5Lej31ENasj5ST3q09kJpCQdcb44gvwNUVKfmgOA3MvzLJKxtmhw31sMs+40WuH@vger.kernel.org
X-Gm-Message-State: AOJu0YyDlsC/WMez2hFKPcK+DWfvVnonphHtz2h9FVIbDuzehhGtNHcs
	6Pa4MJizEUF61BuIW2zwUyw1f75/tzGextrt8eTu5Y2XT4FVxjsXkFOX5sv0h1kE
X-Gm-Gg: ASbGncv9Ja+bKtF8dx0Q4twmP0vIuN+HDgSRhWzXCaITFfefJiUGAcq9fVRMOyKD3pN
	zdM5Jv11C3xHUWHcSwznYin5JU5JvXUr69aWUm7K5SdyWUdL2b8QwZ/vNNnS5Sni7voFSwfgm10
	8HQSuQXd9RgG33+HVQJLd7y4W1lVQDb0tte6CZ4I2V88T0fZEZl40jmF/1t8fcMYJ/31zdmIzkD
	6gumOheoPtBjuJNejGvAx010mVkwQtJucxi1dK1w+riR6a2btvTlrgFbhLOYNelOQ8AnnxWecHC
	ueSJuL+qP7Ecfg0nQEhxdV8z/EYLZ44pubUqANzMfbvifZ4NOUel3fI5lQPdIkx8fj7y1Ja1+tT
	6sdzeWxUWo7ys1VW4ZhOlnwCVusyrJ6ab2IJQcsf6WQ5EJwIwDOnstyKABrFkM9v08q0RfelZ2z
	V00XH3pSCqi63833VXyU8N7BmzxbpjSJ4XxLBvKzmnww==
X-Google-Smtp-Source: AGHT+IGy9QWjjPXdsKN/Nnp+qzMe6A4jWawlzYbi1CE2d8wwPveg4Tswn7mw36eLkj24ICnt0sAgMQ==
X-Received: by 2002:a05:6102:5121:b0:5db:2af9:72fe with SMTP id ada2fe7eead31-5db905adedamr1060980137.16.1761749526712;
        Wed, 29 Oct 2025 07:52:06 -0700 (PDT)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5db4e56f7e5sm5097942137.9.2025.10.29.07.52.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 07:52:06 -0700 (PDT)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-932dfe14b2eso6097620241.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:52:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWCxXFIFEdPz+5WpMc/oBhVIIOi+Br1I2ovf0lTPPkda+GGDX92AVxewwVMitQ8mLqKRghn08i8T9Ae@vger.kernel.org
X-Received: by 2002:a05:6102:2927:b0:59d:ad3:e1e4 with SMTP id
 ada2fe7eead31-5db90575883mr955429137.5.1761749525479; Wed, 29 Oct 2025
 07:52:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027211249.95826-1-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20251027211249.95826-1-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Oct 2025 15:51:54 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVwXjE0Bq1KjENkN4m2h0_nN0F2S=CC8mW3B92NdpN2_g@mail.gmail.com>
X-Gm-Features: AWmQ_bmfWRMn93VJbp2i3KyknET1ZJrYFFCyir3HovrKjiX49vnsC4NYomuCi4I
Message-ID: <CAMuHMdVwXjE0Bq1KjENkN4m2h0_nN0F2S=CC8mW3B92NdpN2_g@mail.gmail.com>
Subject: Re: [PATCH 1/5] arm64: dts: renesas: r8a77960-ulcb: Enable GPU support
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 27 Oct 2025 at 22:13, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Enable GPU on M3ULCB with R-Car M3-W.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

