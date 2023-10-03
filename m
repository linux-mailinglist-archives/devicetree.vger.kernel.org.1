Return-Path: <devicetree+bounces-5653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3004C7B72BB
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 22:49:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 4CEC11C203B5
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 20:49:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40E883B2BF;
	Tue,  3 Oct 2023 20:49:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D26339A4
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 20:49:24 +0000 (UTC)
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 966CAAB
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 13:49:23 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-59f4db9e11eso16615317b3.0
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 13:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696366163; x=1696970963; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1FJPUi+MyKd+dVlpPJp8bCnu+4EByJ0OLEwCa+47Woc=;
        b=iQuYNBszchRggbd6WjC55XwIUE+gyP/TU5N/kmIZaDYm70LI6NqGfn1UzzGQi/tXaC
         unkpbqBS7c5TR0yJ34a/OdFb6FwQGjNMHrtiChKmpUdtQCegM+xuJFjXIyxhogSnEOVx
         f26/hvizaKpAkmFIm1A/4kf2HJH2EeK6AnHz6qFCS4zZ0nSd4HzZaJKAsangJS+fKZpx
         NKdPdSMYeri8z2PiYed0NaWLcGBNQxM0in4EPXL9IXKevIrM+Hq9rt3RT78KM/x6JGBa
         Tb3y3iF37kLVIha2+xdHhdSURKn9Am1vl3H9Sis0/kn4+jXgoo9p7wHMJQaFZZFxHdBL
         Dspg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696366163; x=1696970963;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1FJPUi+MyKd+dVlpPJp8bCnu+4EByJ0OLEwCa+47Woc=;
        b=A1R8hqPFNNoTji9FWFBM/YdSk3RrlES51hevCZQ+JRD6BXdwwQqsBISTyW9oAOXYLe
         3p0hOB8tQupuaWIjxi2k9tmpw4WJ0Szc8k4yk+ceuu5aRn5skdZ1eooxEjcyV7d95W6E
         c3EORS91yNkspJc7y7WTDuHAG+NNzhveRIleBGQLpUAAktvrU3JRrnx6dohwj7oLMvE6
         6qTOuA63RJyhaxyhgJVUAmJ89DkyMwSzBvKV5jphq56x5L7ond4gfiojQgPTBD9uOE0P
         t4u8yUM9foKEn9Vnif3Af0pdJ1xHR44L5f1Yt1DPV1W2iKsZgXY2gTj1jBTgGUk4G/3r
         F6mQ==
X-Gm-Message-State: AOJu0YwpYAkIGoKQaGqOTyz5pqPtEgjRQKEQZshA9ebRJEUvTCVmU+2n
	xofsAg3SZQXKgvVFACG0Y7V28CGcRmP2S0gCIRGe9g==
X-Google-Smtp-Source: AGHT+IEreLlAAb1BEaIqmVOi80nv6yIE6GNZPrSiU+SaEd9snYNzmyb1GnIOcQcstQN89h5TnTmEDXhfiAWNkiQFVLc=
X-Received: by 2002:a0d:e215:0:b0:573:bb84:737c with SMTP id
 l21-20020a0de215000000b00573bb84737cmr740029ywe.26.1696366162811; Tue, 03 Oct
 2023 13:49:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231002021602.260100-1-takahiro.akashi@linaro.org> <20231002021602.260100-2-takahiro.akashi@linaro.org>
In-Reply-To: <20231002021602.260100-2-takahiro.akashi@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 3 Oct 2023 22:49:10 +0200
Message-ID: <CACRpkdZsQN5V0Nt46dQmUiQo-co81Z_TrzWW_9CPJEbF+X-vnw@mail.gmail.com>
Subject: Re: [RFC 1/4] pinctrl: define PIN_CONFIG_INPUT
To: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Takahiro,

On Mon, Oct 2, 2023 at 4:17=E2=80=AFAM AKASHI Takahiro
<takahiro.akashi@linaro.org> wrote:

> This allows for enabling SCMI pinctrl based GPIO driver to obtain
> an input gpio pin.
>
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
(...)
> + * @PIN_CONFIG_INPUT: This will obtain a value on an input pin. The retu=
rned
> + *     argument indicates the value.

We need to specify that this is the inverse of @PIN_CONFIG_OUTPUT,
that setting a line into *input mode* requires the use of
@PIN_CONFIG_INPUT_ENABLE, so the config can never be set
but should return an error on set, and that the argument returned is 1 for
logic high and 0 for logic low.

Otherwise I think this is fine!

Yours,
Linus Walleij

