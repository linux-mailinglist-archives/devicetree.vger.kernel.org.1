Return-Path: <devicetree+bounces-116439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB469B2E8F
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 12:19:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0CAEC280A93
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 11:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0E3B1E04A1;
	Mon, 28 Oct 2024 11:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="n23b6RTl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75031DB37B
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 11:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730113740; cv=none; b=C+GwSGzPwUSUh/rkUd2ADvOfFqEAMT/32nGv5opySr0+IqSu43i/65UC1s58d6Vplfxl03fXYn1GcC39MFqevfEMj9ZofqipCai6b0R33mRFM64cDLQ1VSRFeGHp+LkZ3qVB3J7FfMXTyNlV6/hIlyu+8V6Oge73Wadvm1Zz878=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730113740; c=relaxed/simple;
	bh=jis7Kv52BEjG9fhKdic+D6aCcwWpTNhVCT1ZsGHn5WU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KmNt2+Z4oaTop1TQSvhTsnUpmvGjMsVUio3OiT5eMQLij0q6oovEJoLv6U7pVh762YFVKhp/k/V/X1uwtTHERjwY9eikCnMWYUMOzWGxz+nUpAOn7/XUAPfAv22sdQTyrsPD5osED+eeYLFGyW9Cky1LYD87fATUEqqtYM59Meo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=n23b6RTl; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-84fcfe29e09so1091775241.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 04:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730113737; x=1730718537; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ANRl9fyJhN3L3pKsYoqtRh0fyM37Mr+toNEHHpk2z1g=;
        b=n23b6RTlMkcGYsxrktM60RntZ9cfXh6Yoc1xBYW7Qy8tShEB+4+ZncUsXjgU24voDB
         uCym34+gcUAxOW2bkZHi8z2VbT/+2BQZDiZfNon6vYhysC7ME18ReJUiWBLevYfX/Tf6
         qxPHZ3E15JfTWo513hEok72v7/lf4zY6CdLgg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730113737; x=1730718537;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ANRl9fyJhN3L3pKsYoqtRh0fyM37Mr+toNEHHpk2z1g=;
        b=eW2FbjHthPZHj3K59jLBXok5LxDRqeI18DJMWyiH/b/2jH8WV/huqd9N0QmM876r+a
         vguyeQLE9zGBqFAXgCUvud6PvDSQ8k0KplNVlKX4/IvQf9vV3xz10GDFqplCZK5O4hda
         bNTA/gTmfryeg6sHyruCmpIu8TEa2bcwl2JLFW3X0+6ndDD82Ou+WA2LfRR4sFCJIu1F
         Pqyw7VNmd1fqP04k5wfC5tYlXQ0Ovn0Wh3vRNO0HehC6FvQ6jg+CNw185ceeuGBMme5y
         ZW4VqKaLakDIQRnl0fTqxLbEjql7i1bwolNsSuprIHduxIgFNIDpXEKPddkcXdhSubTZ
         DBbA==
X-Forwarded-Encrypted: i=1; AJvYcCUWj7FFE3TG30cC/LntQ9ajyUve4+VzE5UWF19fnSJs6EyweU0XRFUwwvgovn6fOM1K8SXOaZaFHgt3@vger.kernel.org
X-Gm-Message-State: AOJu0YwJeqrdszoI4jTD5KYCrqfpP1WeAHLZJPsMWDH24p4rdRlkow9m
	bv/8Qb3/aHdFbEzUwzC3Yr+tlFFNEmC5R6zBsyB6k/uBAf9cxXcvzVUicTO7XHragmv3WKCCxh4
	=
X-Google-Smtp-Source: AGHT+IGQYzqSocMxbTzID2kZE5DyivsHtrWTdFfIZHTtz03Ila8RTaAv2/EHjqQMZujrYlYSTKJbfA==
X-Received: by 2002:a05:6102:3a0a:b0:4a3:a137:ba7 with SMTP id ada2fe7eead31-4a8cfb5a02dmr5223462137.9.1730113737085;
        Mon, 28 Oct 2024 04:08:57 -0700 (PDT)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com. [209.85.221.176])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4a8c5235b4dsm1048265137.8.2024.10.28.04.08.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2024 04:08:55 -0700 (PDT)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-51013e05707so571251e0c.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 04:08:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXet07CcvxNRzEbdzIohBilKMyDu+lqDmIJJz9gzNH7XPexiiq5bQeJNHLisrOeeZpYY9zu3bP394Wc@vger.kernel.org
X-Received: by 2002:a05:6122:2a41:b0:50d:5f75:f7d9 with SMTP id
 71dfb90a1353d-51015109f5dmr4172633e0c.9.1730113723870; Mon, 28 Oct 2024
 04:08:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025104310.1210946-1-fshao@chromium.org> <5vjaxo652w5hici5hxi3t6o2r5vkggrz25lqvm3or5fip3svke@fttqk5wabxqb>
In-Reply-To: <5vjaxo652w5hici5hxi3t6o2r5vkggrz25lqvm3or5fip3svke@fttqk5wabxqb>
From: Fei Shao <fshao@chromium.org>
Date: Mon, 28 Oct 2024 19:08:05 +0800
X-Gmail-Original-Message-ID: <CAC=S1ng7zRR-Ek1AQ7W6DhhB82=yVpMZq6JfzPEbWWb67knCVg@mail.gmail.com>
Message-ID: <CAC=S1ng7zRR-Ek1AQ7W6DhhB82=yVpMZq6JfzPEbWWb67knCVg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: mediatek: dp: Add #sound-dai-cells property
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
	Jitao shi <jitao.shi@mediatek.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Maxime Ripard <mripard@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 28, 2024 at 4:52=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Fri, Oct 25, 2024 at 06:42:45PM +0800, Fei Shao wrote:
> > The MediaTek DP hardware supports audio, and the "#sound-dai-cells"
> > property is required to describe DAI links and audio routing.
> >
> > Add "#sound-dai-cells" property to the binding and filter out non-DP
> > compatibles, as MediaTek eDP doesn't support audio.
> >
> > Signed-off-by: Fei Shao <fshao@chromium.org>
> > ---
> >
> >  .../bindings/display/mediatek/mediatek,dp.yaml   | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/mediatek/mediate=
k,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.=
yaml
> > index 2aef1eb32e11..c05c2b409780 100644
> > --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.ya=
ml
> > +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.ya=
ml
> > @@ -42,6 +42,9 @@ properties:
> >    interrupts:
> >      maxItems: 1
> >
> > +  "#sound-dai-cells":
> > +    const: 0
> > +
> >    ports:
> >      $ref: /schemas/graph.yaml#/properties/ports
> >      properties:
> > @@ -87,6 +90,19 @@ required:
> >
>
> You need to reference dai-common instead, since this is DAI.

I'll add that. And if I understand your feedback in another patch
correctly, I assume I need to reference dai-common and also keep the
original #sound-dai-cells lines for the number of DAIs, so I'll keep
that. Please correct me if I'm wrong.

>
> >  additionalProperties: false
>
> and this becomes unevaluatedProperties: false

Acknowledged.

Regards,
Fei

>
> Best regards,
> Krzysztof
>

