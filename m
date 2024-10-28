Return-Path: <devicetree+bounces-116444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D29E39B2EA9
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 12:21:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 523D6B24BD6
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 11:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12A551DA0E9;
	Mon, 28 Oct 2024 11:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="e7Du6eab"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9DE21D6182
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 11:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730114092; cv=none; b=ach2CrFaO7NA4oIC5IgsXIKd0K8Lh6crMI0Axb0byYYR8j9i6pjjlzom4wsaziMQSETmdi79L8tVuzM6RvqZMv/pkwjCOakllxAw57tLfQR68a/v7c2wqyUdaKsuoaWOpTmEmcs7sTsNZw769E+3L04JhIYvS15fT3YiR9BVsRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730114092; c=relaxed/simple;
	bh=rZV1CslZk1B8arY+dKaXuzo5OLwD/6vbUj85cb0sG88=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tplAL3+6NXXfRAkOhKQtt5XBcTCmGubS6CS468isr8FkYTfhC1IKev6X4tpwwZtDnDu4sxQUXD2vn6BiMXSWD2vTRzgO3ic2URtb4zWm/0bcs4wcJN0wKpyFGrTn1VffuAXES34Y1L9TVaeXW869Y0QeBcwbqyr++sSikXxupTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=e7Du6eab; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-50d5d6f9fdaso1243984e0c.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 04:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730114088; x=1730718888; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MJAyl38jEw54JK8vLB+Jw3zg1/RGB44yP0anG4AqfEo=;
        b=e7Du6eabINLk2Ql24iZH8tnHaMXmeb+Q6GJAmaVJ1nAu0pC40c42sGuvaNfIU4xaBd
         eglne1+StcMiaQlw0jajYb/6RACViTnSSCJ07pkzSq+fH5pfU3IEfupk0xmden8exHb2
         8xDIi3Z/GCnckCOA8D5w5uqGfTsf25Peq3fZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730114088; x=1730718888;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MJAyl38jEw54JK8vLB+Jw3zg1/RGB44yP0anG4AqfEo=;
        b=Rb4txVh+gc801SFzRPTeX+Ca4qmxYnc2wmo1n2GwcHp41naPnS33hcbRMROu93hJT4
         1ymAGPnPPsNwRO22GHmGODsnLnaCMYP3Zk/R2HyrK9Mdjfq33BI2kmc1SNPo/nrNKhYM
         chsYwOfqQkf+wlZrYiWqGlijYztLGP3vWvuDCUaoedetz//C5ck4ztl2yh+2sHtLscAK
         nw+nmDxzDb7SCVLqTngTXlpWESjRZeyYVd+oLqRBX6r1KrxPlTKU64E6x62O/RF2TOzo
         H2E/qMsOpolSXhMCyyZWapEE+P8Pq/4eERIUCaFwYjh7LakEbb36DBIqeRz0Kv6N6gNF
         sBWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmdPwpFMMXaOFDctmf3jwGc5Mv3mkjvMe8zLrEX5nNWw4BliaQl631lb0/cTPFlAoFBpyd5DDDIcQ+@vger.kernel.org
X-Gm-Message-State: AOJu0YydFw6Yj++KXYAwxjWJqJNLKBmbSU5IqRHQCJvbnQd4wCBMB+E3
	Zv1zYQL3X+TLma4Nh6cWgeMktYF3Rme0N5D38uhgKd4tZKGvnTTTxIPbgjCPDcn2b1pYJ/4lBzg
	=
X-Google-Smtp-Source: AGHT+IH+dLW06FthWQByPgyXgyY11ntWyAbxIoPwu/vXgFtZu+i9k5KI4CRbDnvMeVaKKWrvF55xQQ==
X-Received: by 2002:a05:6122:d9a:b0:50d:5654:951 with SMTP id 71dfb90a1353d-5101502d012mr3792939e0c.5.1730114088436;
        Mon, 28 Oct 2024 04:14:48 -0700 (PDT)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-51004777d3csm831633e0c.39.2024.10.28.04.14.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2024 04:14:47 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-84fb1225a89so1166304241.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 04:14:47 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWZjN4BFh2lNCcy4Mad8xpYBc3mxssUUdsF738ZTAYEga7Ox7H5IA7NCCXtPxCkb3+cxToEYGph6mv+@vger.kernel.org
X-Received: by 2002:a05:6122:1699:b0:50d:583b:934b with SMTP id
 71dfb90a1353d-5101510e5a4mr4976737e0c.10.1730114086990; Mon, 28 Oct 2024
 04:14:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025104548.1220076-1-fshao@chromium.org> <20241025104548.1220076-4-fshao@chromium.org>
 <i6eljb2nzhwr4bd55dbudsra3sni2hhk2eqgu3gttatwvnolt4@w4uhrklbyop3>
In-Reply-To: <i6eljb2nzhwr4bd55dbudsra3sni2hhk2eqgu3gttatwvnolt4@w4uhrklbyop3>
From: Fei Shao <fshao@chromium.org>
Date: Mon, 28 Oct 2024 19:14:11 +0800
X-Gmail-Original-Message-ID: <CAC=S1njm-YDo=e9Eh7Y_qkLJMa+SK63s8Nre54d0sV0V59DonQ@mail.gmail.com>
Message-ID: <CAC=S1njm-YDo=e9Eh7Y_qkLJMa+SK63s8Nre54d0sV0V59DonQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] ASoC: dt-bindings: maxim,max98390: Refernce common
 DAI properties
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 28, 2024 at 4:55=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Fri, Oct 25, 2024 at 06:44:43PM +0800, Fei Shao wrote:
> > Reference dai-common.yaml schema to support '#sound-dai-cells' and
> > 'sound-name-prefix' properties.
>
> Why? Is this a DAI?

I'll add a line to say this is a DAI and the patch fixes dtbs_check errors.

>
> >
> > Signed-off-by: Fei Shao <fshao@chromium.org>
> > ---
> >
> >  Documentation/devicetree/bindings/sound/maxim,max98390.yaml | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/maxim,max98390.yam=
l b/Documentation/devicetree/bindings/sound/maxim,max98390.yaml
> > index deaa6886c42f..5bd235cf15e6 100644
> > --- a/Documentation/devicetree/bindings/sound/maxim,max98390.yaml
> > +++ b/Documentation/devicetree/bindings/sound/maxim,max98390.yaml
> > @@ -9,6 +9,9 @@ title: Maxim Integrated MAX98390 Speaker Amplifier with=
 Integrated Dynamic Speak
> >  maintainers:
> >    - Steve Lee <steves.lee@maximintegrated.com>
> >
> > +allOf:
> > +  - $ref: dai-common.yaml#
> > +
> >  properties:
> >    compatible:
> >      const: maxim,max98390
>
> Missing dai cells - how many DAIs are there?

Acked. Will add
"#sound-dai-cells":
    const 0

>
> Best regards,
> Krzysztof
>

