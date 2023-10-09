Return-Path: <devicetree+bounces-7043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 908787BEC70
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 23:13:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4979228199A
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 21:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A173C41221;
	Mon,  9 Oct 2023 21:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="DHBCRYD1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB9A2030B
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 21:13:05 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8DB6A6
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 14:13:03 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4063bfc6c03so150825e9.0
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 14:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696885982; x=1697490782; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QqbHq0ttFKvzPDwgSW9g3cAaws+68PDkrZBukLsrYPg=;
        b=DHBCRYD1GpZ8BuBLvYBRa2hJglIPijQ2KiY7S6hTL2AYMrkC1yaz4lmVULicDw1Y5f
         an3fRQW4XwjJAEZyLRwNVS6IZO1paYcNO+PN5TWqZt+xd8QKSSwAAqQJWyXEbuljJ6ZC
         Q0wkMXWx2hRWaqnQIgIy2w8/9nE7qfcWcdNwMH0jifx7amFU/DA4K3SnBmwpHN5GTx1Y
         6St0P5ym7YfKaNyDQZjTQwinOSviAj/WQE3/M1DgvyHoL+kyrWqV1oQByGAavxR3gbdW
         itvOlWH3OXxkz3MjER4fkKGWXi4juBqhu+RcDqiHusqSHYGu+506gRAQ8qJKhpfrlD+Y
         emnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696885982; x=1697490782;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QqbHq0ttFKvzPDwgSW9g3cAaws+68PDkrZBukLsrYPg=;
        b=FPajX9qTjHr4bh7KwkPCwhAdOoOquC61MkChmUOzfhtEgBUBgJElq8yQ4Gt9km6QJy
         HEQwJKc0DxZToIbE3mwr5OvS1wurqCAKH5a+f858TnVv/T8l2/RMWISVOHgx8SoV3+CW
         SQRn+gbQ0OnYbl6VmouJqHhc7V4wWcoGIjbdYPx9p3Y1FTKNavPbXa2hnjFTq0fu0K3M
         2XReccI8UvFu76G1QtPPf9iTco00MPXhu7+XFkR0edGHw7Dakfmt2bJuRcyY/q/qiOYV
         V8xtcrvKMf8WV3hqUcJzQ1ufOMAePCiQcSoAQcCKafhUCDPV/A/gnCtcOYnFqK46Qd9c
         UKqg==
X-Gm-Message-State: AOJu0YxjF34xjLRa9tH2m+7jhdA+krM2L9OqapvyTQOD+Zfufx11vhh6
	7Jy93PrjIkuH4JMkuXY99m0Fq1oSsvQbHxYpQY7xTQ==
X-Google-Smtp-Source: AGHT+IEc1Yipf+guyltWqLmMAGO5WEoyxOts2zEN1XQRauRZYshwjhFYg1hG2ydPwgb8BE1UULsUeAEXoI4qSh8EO3Y=
X-Received: by 2002:a05:600c:1e25:b0:406:5779:181d with SMTP id
 ay37-20020a05600c1e2500b004065779181dmr383034wmb.2.1696885981988; Mon, 09 Oct
 2023 14:13:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231007060639.725350-1-yangcong5@huaqin.corp-partner.google.com>
 <CACRpkdbek0-Vhk4_34qY+0=EGrQxJS_CfLuF_5fRozMMyc+=Kw@mail.gmail.com>
 <CAD=FV=UFa_AoJQvUT3BTiRs19WCA2xLVeQOU=+nYu_HaE0_c6Q@mail.gmail.com> <CACRpkdYrFhTCa9rJ4savOcqRxcnyqoojCnwaCk6cnJv=aWxo4A@mail.gmail.com>
In-Reply-To: <CACRpkdYrFhTCa9rJ4savOcqRxcnyqoojCnwaCk6cnJv=aWxo4A@mail.gmail.com>
From: Doug Anderson <dianders@google.com>
Date: Mon, 9 Oct 2023 14:12:45 -0700
Message-ID: <CAD=FV=U5mX49s5yp+5uy+OfnkNrQgTJPf6E8fGHf=_Nn6M5f9A@mail.gmail.com>
Subject: Re: [v1 0/2] Break out as separate driver from boe-tv101wum-nl6 panel driver
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Cong Yang <yangcong5@huaqin.corp-partner.google.com>, sam@ravnborg.org, 
	neil.armstrong@linaro.org, daniel@ffwll.ch, hsinyi@google.com, 
	swboyd@chromium.org, airlied@gmail.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
	USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Mon, Oct 9, 2023 at 2:02=E2=80=AFPM Linus Walleij <linus.walleij@linaro.=
org> wrote:
>
> On Mon, Oct 9, 2023 at 10:53=E2=80=AFPM Doug Anderson <dianders@google.co=
m> wrote:
>
> > Also: just as a heads up, Hsin-Yi measured the impact of removing the
> > "command table" for init and replacing it with a whole pile of direct
> > function calls. She found that it added over 100K to the driver (!!!).
> > I believe it went from a 45K driver to a 152K driver. Something to
> > keep in mind. ;-)
>
> Sounds like Aarch64 code. I would love a comparison of the same
> driver compiled to ARMv7t thumb code. Just for the academic
> interest. Because I have heard about people running ARM32
> kernels on Aarch64 hardware for this exact reason: so they can
> have thumb, which is compact.

Yeah, thumb2 was the best.

I suspect that in addition to the aarch64 vs thumb2 part of the
problem is that mipi_dsi_dcs_write_seq() is a macro, so this wasn't
just a whole ton of function calls, but a whole ton of inline function
calls. ;-) Still, even if we fixed that, I'm not sure it we'll ever be
able to beat the space efficiency of command sequence tables.


> OK OK we definitely need command sequence tables in the core,
> what we have now is each driver rolling its own which is looking bad.

Agreed. I'd love to see someone tackle this (though not blocking
Cong's series on it). Hsin-Yi took a quick look at it and noticed that
some drivers have slightly different cases for how they handle command
sequences, which is a bit annoying. For instance, at least one driver
had an extra NOP between commands and said it was important not to
remove that. ...so we'd have to figure out how to abstract some of
these differences without it getting too ugly...

-Doug

