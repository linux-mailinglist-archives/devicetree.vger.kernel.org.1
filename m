Return-Path: <devicetree+bounces-7989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F777C6659
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:25:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B374C28206A
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D26CDF5E;
	Thu, 12 Oct 2023 07:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A6VeEVM7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B540ECA71
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:25:34 +0000 (UTC)
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1514BA
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 00:25:32 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-59f6441215dso8274617b3.2
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 00:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697095532; x=1697700332; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TDAhFdVB+tI63Tlx2t2hh2M0UUe3pqSQGZTAV8ccMac=;
        b=A6VeEVM7CMTkMAW3XQEu2P/1mFYFlEYacRE0Ls8x/hzbESmj5QyPpZJD1x5SsFhPqv
         H557ocPI0nTRzBCMZ5L9QPjLjxw9McUxqPFsLLmasP/Yc64mNyipynfh7TIU7M2Y1s+0
         Ig+1b1lOTnmbMVXJ1pdf+7mQOfAdH5omjlglhIyA6iuvZ80pY9AT2SnghAwrIpTVTLKI
         Mm8Xs+03HTsNjEEO0XKEn55jLC2kwP1NbEmxPb8+ldVztl7xQZ72qnU7+JhJSBuLrvQb
         +FtvuC1G3wqCFVyc1DtCcJ/bC741gF9izTDxwfWVtB/OEByXiGvsXf2iFiZhTtLPUEFR
         Pozg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697095532; x=1697700332;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TDAhFdVB+tI63Tlx2t2hh2M0UUe3pqSQGZTAV8ccMac=;
        b=OiPS1BuIWqCYK1sx96rgsOYUjbbpdbaywiXhaE9BWzxZqJZ1CALFf/uxbVIk9ZQ+VI
         nrCR6NKfdww3V7KjEDGUXUOw4E6ZM5arTtLWVolR6p+VjSiTcgWUbDmIFbKFr1oxbqlT
         C1yeqkrKkKXPd9QxndliS5cRhWuT2s7m3PgGJtTqytsfFTM/KLZLeEPPOSd2GfbvTPd2
         RAUMwDTrpbogjE9ENqcdK801Q6jzvgIJSgL91o/7HzL9GIVLaj+iKS1w0cObGV4CJE2g
         ZouaQKw8Oazf2zEDgIzURI0coQh0X322y2f+Buz1cPVTRiA+tXyJ5G9puZhgC9DP2bR5
         BbFg==
X-Gm-Message-State: AOJu0YwzOXkh7ARnqGAhvF4SV7qoaLxyIK+280/oyJHpconttQSsCZeA
	w25cBJtyWUV4/Hygt3k66zKFUV9rtnhHC03ws+p+DA==
X-Google-Smtp-Source: AGHT+IE1z8dAp3iRYvs+gdRvN9L402ugX2Jjidpf6aPy91pCQWQFCgioWCTUTu8Sw1eBuPdlEorX6wiszzJHDYzZZa4=
X-Received: by 2002:a0d:f5c7:0:b0:59b:d872:5ca8 with SMTP id
 e190-20020a0df5c7000000b0059bd8725ca8mr22496429ywf.22.1697095531944; Thu, 12
 Oct 2023 00:25:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231005025843.508689-1-takahiro.akashi@linaro.org>
 <20231005025843.508689-6-takahiro.akashi@linaro.org> <20231006132346.GA3426353-robh@kernel.org>
 <CACRpkdaLsfSBEG-h9ZNT2_Lm8tW8AZO7tedDVNeuZoQAqSkyjw@mail.gmail.com> <ZSTgTC4cFFpofYAk@octopus>
In-Reply-To: <ZSTgTC4cFFpofYAk@octopus>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Oct 2023 09:25:20 +0200
Message-ID: <CACRpkdYD6pkccYoy90AfzV3KT7oYkBPD2_4ZW-AXzT1eUVpchA@mail.gmail.com>
Subject: Re: [RFC v2 5/5] dt-bindings: gpio: Add bindings for pinctrl based
 generic gpio driver
To: AKASHI Takahiro <takahiro.akashi@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, sudeep.holla@arm.com, cristian.marussi@arm.com, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 10, 2023 at 7:25=E2=80=AFAM AKASHI Takahiro
<takahiro.akashi@linaro.org> wrote:

> > We can probably mandate that this has to be inside a pin controller
> > since it is a first.
>
> Yeah, my U-Boot implementation tentatively supports both (inside and
> outside pin controller). But it is not a user's choice, but we should
> decide which way to go.

OK I have decided we are going to put it inside the pin control node,
as a subnode. (I don't expect anyone to object.)

It makes everything easier and clearer for users I think.

Yours,
Linus Walleij

