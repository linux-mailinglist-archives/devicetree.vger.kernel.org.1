Return-Path: <devicetree+bounces-232611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1516BC1961C
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:34:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 60DC240183B
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BA23324B0A;
	Wed, 29 Oct 2025 09:33:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B83D2E0905
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761730423; cv=none; b=UyAqUt2JI6PGEiElJ/5kOmSLku7qt8rAlzz4d4FdXKXeRQVDe0QuQrXD/7Sekkm+PiZL+4u2oQ9lZfu0RdY9toMJnMZ+tNyMcB5tauZW3gQViovdHiJdxRttg2Ftq1Cd6d/fDoULzSjvQaSqAtap9v4f3qo2x6C4Zi/wr1OGqLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761730423; c=relaxed/simple;
	bh=aflcx8jLILY+2sdFq74hVkylZgAmv9N8piATLBVIfpk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EpBSf3mqa7mHJr9Fr/bd1taeMFksAZImg+1kqXF2gWb6HZMkOs489wLdmkrKe2BrSpV6wgg92AaRMDsxJSWh6hbpqGtNqWrut2aBOFnesAGF9ZvDuw/CS0piDWjgKIOFA6Bt7HNn9TZ2R7CjBA8qk+N7LWg1BpD1chTYi+fKsoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-934e487a957so1757738241.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:33:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761730420; x=1762335220;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=30syW/IitxNwwmQ4AxaTICD2pH9pK+LwP2BddhlDAug=;
        b=J82BOD1Dw+OXMv6qwt0mM64T6A9cXP9dHfFnPvUGjlD+pKH9tF86GqiDsas3fEoH6m
         AeT+0uamjfROBs1P+CnYrI7IwHBkTi3cfzLMqeoun/neJHcJpvpKDKYPOXdO43RxEfpU
         5vXTUhFT006XYae5bUBnTBEQj9xDHyIa+eaJqlXFSaEO6x6UQW6PE8j5uHSVDZMMOQuE
         up2ZFS1lwR+jnqGJC0VHyvXUP1r0DnZ86kIW2WtGH93aIggwa33dfHxS8QaQO3KNHQrP
         Hd1TrG16B9Aoap4kwz8BSJJiJCaJ2AAAA2zc3kUc+NhOJadXButAWm7eNeWOedvVFlsl
         3W4A==
X-Forwarded-Encrypted: i=1; AJvYcCVTxYze7vlwV+LNbL4QqChbRNLh5qTFc5WZ4uStb1/UPuk6VcPnuXUFI7Uymw9OBvXtfea77SgmKQ4d@vger.kernel.org
X-Gm-Message-State: AOJu0Yx85RJolO5mtunHEPf6z024Czfe3QRhWWbOnrZuXyRGt3ILcFbL
	gvSYwDNVsLsJHYF8Ml98RrW2IFyx/jjOvQm8KoR0lJb41TA5UH96UsUF+c4QoPo4
X-Gm-Gg: ASbGncvpa9dm8Quu0+HSNdFPCM0n0/daINykmXfjKpiIXcneiP/5t+18/4EzTmgOV1D
	u2PS6y4HK0SfUbjfuLR6qLiQ5aF4j2W3mUg7gD5unXjJDM6hAZr6kVRvPHM+5oGy6A2r3aBBcZf
	hs1n3Jq1djOE4oL8gRnsqhME39+OiDnBeZ0/tJUG7A57hJYXdAo4g/ZoUzX9u2a/w8eQ5WFuf0o
	0ZvzDENvRk990fpPLOrL1ZIlyNXsGx4Mkoj0OCxSSD1kezRVy/w+zCNLhasLEcvkYFhN5jnZySK
	4KqG6IowNYm5yhylYlq9w0nQH8MAkcACPBMNjv76elJM98twv7T67MFBA0gsG3uQJmX09uHywM+
	GPpOyNCi2p1qPJTX6Pg93VCoINUfBMfogMTwBzEH2hFOEOkr0CF+nh5H315haQgGMpQe8JOEN/D
	alinQrcgRnZ23tGWr1ir1Mb4YdTV5FzRurcjhJ3k/kzj2hN4P7
X-Google-Smtp-Source: AGHT+IG5WF0fxvrCbjMDo/gQSB6x2e1k79s6RDLGSv0OmkEh1QgM7sHbix2s5CIknhEO4N1uBMGJNg==
X-Received: by 2002:a05:6102:644a:b0:552:aa04:c61 with SMTP id ada2fe7eead31-5db90650f92mr665515137.23.1761730420197;
        Wed, 29 Oct 2025 02:33:40 -0700 (PDT)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5db4e5039cesm4818571137.3.2025.10.29.02.33.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 02:33:39 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5db52533e5eso4011503137.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:33:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUGUsz9/3JuxZz0HMgXPLRM+lFnrS8JDKzZmgrlGnT8oOxS8gFxQy+LapVs1LYDJK2B9KtAAUn3HEGI@vger.kernel.org
X-Received: by 2002:a05:6102:549f:b0:529:fc9e:84ae with SMTP id
 ada2fe7eead31-5db9064ee34mr611527137.24.1761730419708; Wed, 29 Oct 2025
 02:33:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87frb8n7kl.wl-kuninori.morimoto.gx@renesas.com>
 <87bjlwn7j9.wl-kuninori.morimoto.gx@renesas.com> <176129066419.661728.14767654389778601283.robh@kernel.org>
 <87ikg1gcwx.wl-kuninori.morimoto.gx@renesas.com> <CAMuHMdWu1GemaT8vQv=vnsMvyK5t7+rAspFEKi53oWmyj1kZAA@mail.gmail.com>
 <875xbyusu1.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <875xbyusu1.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Oct 2025 10:33:28 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU+B2k-mcEvDikbRb254JsqG+U45OKmz0w+UDJ8453A4Q@mail.gmail.com>
X-Gm-Features: AWmQ_bk9NwGRU1T-dqH14hulll-ihhVFBceFHK_-cX100g8oKAgZ5mkQIDa3C6E
Message-ID: <CAMuHMdU+B2k-mcEvDikbRb254JsqG+U45OKmz0w+UDJ8453A4Q@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: mailbox: Add Renesas MFIS Mailbox
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Morimoto-san,

On Wed, 29 Oct 2025 at 07:26, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> > > Hmm... I can't reproduce the issue. What I'm missing ??
> (snip)
> > You are checking against the wrong bindings file.
> >
> > However, I cannot trigger the warning by passing
> > DT_SCHEMA_FILES=Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml
> > instead.  I only see it when dropping the DT_SCHEMA_FILES parameter,
> > and thus running all checks.
>
> Grr...
>
> > If you are 100% sure you do not want an SoC-specific compatible
> > value, you can fix the warning by adding "renesas,mfis-mbox" to
> > renesas-soc.yaml.
>
> It seems I need to.
> In this case, should I create separate patch (= for renesas-soc,
> for mailbox) ? or can I merge it into one ?

Changes for .../devicetree/bindings/soc/renesas/ go through the Renesas
(i.e. my) tree, changes to .../devicetree/bindings/mailbox/ go through
the mailbox tree.  Hence you need separate patches.

However, your v2 does have an SoC-specific compatible value, so you
don't need to change renesas-soc.yaml?

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

