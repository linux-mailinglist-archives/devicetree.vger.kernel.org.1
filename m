Return-Path: <devicetree+bounces-231373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 71527C0CB97
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:40:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D052C3A28F0
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:36:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6673B2E9EB2;
	Mon, 27 Oct 2025 09:36:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E61B24EAB1
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 09:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761557799; cv=none; b=M338pwQpC+IyrsPM+lJF/M6hC2SKz3sp6OqDPc4xREGyW05E5idUDf9DUBMjqcfuS+ZLIFNlMhbLYpF8c/fspJNhNv203kUU6I+A3M4sO2Lc1wMCzOrTnLdPH/9ZsNlGH7/U04ro/57LUnx9hTmDXwyo9ze8wjKWe9CO8UDJW+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761557799; c=relaxed/simple;
	bh=fncR8W3gUwNVJs/Vf4KEEfYIEt4HzTjF5c31Mog2Tps=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JjWHwYl6VyWQaFTGd9WNk4QNBw7z2E+9b7q8yFc7KSxtfZ3kvFV0wkCm3NcqH5HnqRA0aGZY6cngYN4zBKEw7iszFxjQ4+mpwqbXemHOKKTNgijm1kZZnL83wFUAUMw4DGtwOYPmmgdwN9Nxf5q0H9WR6igNIicticUQHA4xFbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-932bcc0bcf3so3399964241.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 02:36:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761557796; x=1762162596;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hU5eTMlYlc3Dd8EpCFgpJqF1eiQsAhEcO++v12mjSXI=;
        b=mBf1B+nvpNCQ18pv00y9IbyzBOq001fYRfzqC1slx0ZBI8bBuP2Yz79aDjne2sIdn0
         hsTKDTyAhwYeeNDhWf6clmwKLOejRry/uQGqsZYYcmnZqR/wTZEV8qXjqdCztsIs09sK
         2fZrK/BfXZO/wKq6HWuW5VDB4K6rEYQDw9a9748qckpIEhH20UgfT7O34sL0V4v5FHPm
         gnxdkZghGj7WqsL/5pmCjyp5Mu7AjtcPp9R5BHyVAnAMpDQ40Z0uhaceeRcry6/OV9ut
         1Iez/6/KTOdA1wMq0HP+/xA1gOi4PzL4Fo4WHSenZI4VW3dUaluzAMYrGnCthO1PzI/G
         AwIA==
X-Forwarded-Encrypted: i=1; AJvYcCVmWpdScGMIkCpkydl27XiroSnnfMMnctvS3ARPK5imvmrokYDBCzPQARdLJKjUvqFTvPRVL4aWvIKR@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg/DHCwp1XkaylSZPavm1v6XImu1IZ89B/7q2VE3LMA9CcWWqS
	IgFWIIrsVGEC0VbQqSKmqLnGrGQvafeZpPlUXTnauxbg+E01fIKoMNJtHdRIPabF
X-Gm-Gg: ASbGncszyTGI4qvfx72kBAKSVNEfazTSrY9BHTAWJwMvCgxhPh+esfjkYoaWarEGMEX
	vXPYgDwXi5SxO5+Rmi31fkClpiZd9/qAB2TQ/4iGL2CkIcg3WGJVGTZAorjIN7YdYTLt53hqxnQ
	HCdu8cZ9A2vAHyicto8v5yyz/hwfXA3FqeBiIPv19zRjuA2cxidDqRhb5mVSAnfKb87V3tCPpcY
	zRuv9LrHN6sL8T6kTJU9kCRioEP0Xq0cAinAQcK46MHZLe80VrHP3NgWbdnYHYuBeP0LyaZ6+OU
	KuvQbPWWUTVeADmZRmHj1LNRiorz0yKFlEtgbnnm1I/ZN6hnV6gEvuO071GRjfwYMzztYBuzqo8
	rQyumCxfQCCaSeUScLU8rrWa8lGoXvWskdpLsCK+OIUZ+76ZG0quXBqedLMdBDMAmXkQYADEbY3
	zOP4V2kswuubk2lq/RIKJiAxJHH9T3ZGXf1mDnQ1BhrHigv0/vPpXQ
X-Google-Smtp-Source: AGHT+IGwT4/HMClbWQAQl0xwsUY50nVJVpRIp4wjPC11SkakTZyBQ/gSJ9D6E2l90mGNoI/ZEz7bWg==
X-Received: by 2002:a05:6102:d92:b0:5db:2c12:eeba with SMTP id ada2fe7eead31-5db2c13097fmr5196636137.12.1761557796051;
        Mon, 27 Oct 2025 02:36:36 -0700 (PDT)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com. [209.85.221.182])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-934c3f152cfsm2656023241.4.2025.10.27.02.36.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 02:36:35 -0700 (PDT)
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-5523142df73so3715569e0c.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 02:36:35 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUHMa0UDNzrR49g1OwiFlHdRl+0aChAqxEuqFM4i/OGi3WGaRX4pZN6YBzQGgE4Ct9ZP+IRquftdNfD@vger.kernel.org
X-Received: by 2002:a05:6102:1625:b0:5d6:2bf0:32ed with SMTP id
 ada2fe7eead31-5d7dd5eb045mr13327749137.34.1761557795627; Mon, 27 Oct 2025
 02:36:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87frb8n7kl.wl-kuninori.morimoto.gx@renesas.com>
 <87bjlwn7j9.wl-kuninori.morimoto.gx@renesas.com> <176129066419.661728.14767654389778601283.robh@kernel.org>
 <87ikg1gcwx.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87ikg1gcwx.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Oct 2025 10:36:24 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWu1GemaT8vQv=vnsMvyK5t7+rAspFEKi53oWmyj1kZAA@mail.gmail.com>
X-Gm-Features: AWmQ_bn_brfemq2GlaNph51jwJdZbBeeTlVBAadZH4syrq6rxb0hI8SuGXTM8tQ
Message-ID: <CAMuHMdWu1GemaT8vQv=vnsMvyK5t7+rAspFEKi53oWmyj1kZAA@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: mailbox: Add Renesas MFIS Mailbox
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Morimoto-san,

On Mon, 27 Oct 2025 at 05:57, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> > > Add device tree bindings for the Renesas Multifunctional Interface
> > > (MFIS) a mailbox controller.
> > >
> > > Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> > > ---
> > >  .../mailbox/renesas,mfis-mailbox.yaml         | 49 +++++++++++++++++++
> > >  1 file changed, 49 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/mailbox/renesas,mfis-mailbox.yaml
> > >
> >
> > My bot found errors running 'make dt_binding_check' on your patch:

> > from schema $id: http://devicetree.org/schemas/soc/renesas/renesas-soc.yaml
                                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^

> Hmm... I can't reproduce the issue. What I'm missing ??
>
>         > pip show dtschema
>         Name: dtschema
>         Version: 2025.8
>         ...
>
>         > make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/mailbox/renesas,mfis-mailbox.yaml

You are checking against the wrong bindings file.

However, I cannot trigger the warning by passing
DT_SCHEMA_FILES=Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml
instead.  I only see it when dropping the DT_SCHEMA_FILES parameter,
and thus running all checks.

If you are 100% sure you do not want an SoC-specific compatible
value, you can fix the warning by adding "renesas,mfis-mbox" to
renesas-soc.yaml.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

