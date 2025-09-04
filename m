Return-Path: <devicetree+bounces-212938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29475B44272
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:15:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA7AA5A2A35
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C284421FF47;
	Thu,  4 Sep 2025 16:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gw8efOoS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1606D161302
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 16:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757002549; cv=none; b=dPH9bVlp21R9oscMAUJt1TYqO4Q+jyeAGoO8Qfv/dD0Q6CRi0n7vH5lok0nChaQDaXOqisTEX/p/k5/mTEB18bDldvvAFXorSB2EvDVUWTXSeV1uVCOy4M1dMa/2t8p84D2R+rIQ4IYmFrDMVw9eqgHzg5Wr/hR6JqDK+es5mqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757002549; c=relaxed/simple;
	bh=vze/ZlwTd5ppR7XiRhFX6wHetjbPSzhXTCHbwjcjWzw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oKM0fKIn1PeY6aztsz2fa0TVNdH9ONrtcX5DNL/LekfNpdniwdniwS8YEV9WNoXLSbusptPj1lZ1fequ6bLMYsD/PNa83XLQ7Bf+j9SIICz1bUnXe4XkIcoONTmdx+83Y2LLaregEC3oSnPgpCsH/DGxDiTsEGBicWkObQvap/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gw8efOoS; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-71d60504bf8so12427547b3.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 09:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757002547; x=1757607347; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uo0RISLwmkgLCYh2IN11pINVWBVogTF0MXL6fRzX8kM=;
        b=gw8efOoSP0x2Bgv8VWhapuQ/gqlnXnPhm+T83NCk1694qd1QYa1Cnxw+75t1NgmQNc
         3Z5IGc1ANFKPVBH5IfrANYp98vENSbhF11/yPTji9x6X/lcZV3bpTXYM0/JN5zSmFmvU
         zlxdpdhgkG9OxN7aLRHHv5wwGxyaY4kMrk1gMLG9ZTs6fUPifcOdfL6KbVpgEU76JnDY
         tZrB5tq0kP4fRJLX+KXtpv2KgnVNEud4e3QIjsJayG6RIm9XBXZ+w3wJHgpd2bRalN/W
         qOpv0ibOv1N/3CbtnTx8SyhQTMzLCT5YtrdOwNYog1FsTdJKdxF2ZVoq0giPwYOIBcK8
         0N0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757002547; x=1757607347;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uo0RISLwmkgLCYh2IN11pINVWBVogTF0MXL6fRzX8kM=;
        b=uwl40pXgmLfBfVvraATNkvGso2u3mKYdkIi/tP/D1lgJ5vCq+F6ngjli0GUtlucE6E
         MEypAmp+TimGLqAlpAE5d6q1LGqc+PcQMLLktA5s26d/uUxsHqpMk1LGGljR/zWT9d9T
         iZQjTZgwWjb3aFP3qABJRBuWlakjd0yp9kxLPEG4wy4bPolLzuovOi+HXoggYRXJAzbr
         ToMdgO7b9GCJuSBlYJeO1wptdO01znx569A9G2jJEFpPOD2fU4cCI/AKkm6qRdUd+vcc
         hSSfxtYqoyPxbCwse20+cADgRYPYPOkoTx9E0aeeFcMaA1hVUHW1F2bz/VYcJu9fUxB1
         HPBg==
X-Forwarded-Encrypted: i=1; AJvYcCU0MC+MiJMQj9GfiTXHAvJjnXwvpOo2wmdgEGWgrU0bmPKFjhmMjYiev0+dsTxKOYRPWkDeB2nULY0Y@vger.kernel.org
X-Gm-Message-State: AOJu0YyGWEArsdh4PNXNQ6RXnfKe39pRdDCakdbRIfzttg8DxnCx1Joc
	ZDCK8zRbQYlYLEmjgmVCTWvpq0ercw5pZAe/hChOrX0G8/zJBcb4Ww5tQlZLjQJlLk1yqXI+71k
	ne9OJ2GVKTpT/f6GUgxMjrDowDh7+TNfDEZBv4bjnEg==
X-Gm-Gg: ASbGnctjncONTQ7XIHon9DRkbWo3ZRkPSFqFqxVFrwxlZlJcYuxojbU3iH49ZNUi74s
	noroGp99QQMCIYG8sR23kW+E2eQLdwBcvo59j9UIbU05vJMO7gD/6ETcgj1rnZ392Oi9cF7oeon
	unLGIrG2rVjW9FXo5kiKri1AxvycxPjuoIAI8/MvCQtVZ9HeFTllv9RXY7k9/mGpEV2dng38Pvp
	Yl57cl+
X-Google-Smtp-Source: AGHT+IGSXAOQmOoToso0IfgUWvRUsTdb+WXo9AwnFjKjAqk7EZwQu7nr5DaxVSxNz2rwNfbQNvsp9DSe55yaj+5joiM=
X-Received: by 2002:a05:690c:3602:b0:71f:efa8:587a with SMTP id
 00721157ae682-7227656b2e1mr198475327b3.44.1757002546924; Thu, 04 Sep 2025
 09:15:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250822-pm-s6-s7-s7d-v1-0-82e3f3aff327@amlogic.com>
 <20250822-pm-s6-s7-s7d-v1-1-82e3f3aff327@amlogic.com> <cce649b1-511b-4895-84be-2c85e748cfa8@kernel.org>
In-Reply-To: <cce649b1-511b-4895-84be-2c85e748cfa8@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 4 Sep 2025 18:15:10 +0200
X-Gm-Features: Ac12FXzPPHOEhHKW5z-O62jRJm47PZ-fsc3O4NGHgJmoH8G2XEru5vbAJkJqx1g
Message-ID: <CAPDyKFrE8CafoKDkdHQKf=yxJjNcJUu9vFrpAASQYXhtUg6cVA@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: power: add Amlogic S6 S7 S7D power domains
To: xianwei.zhao@amlogic.com, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Jianxin Pan <jianxin.pan@amlogic.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, "hongyu.chen1" <hongyu.chen1@amlogic.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 4 Sept 2025 at 13:07, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 22/08/2025 07:39, Xianwei Zhao via B4 Relay wrote:
> > From: "hongyu.chen1" <hongyu.chen1@amlogic.com>
> >
> > Add devicetree binding document and related header file for
> > Amlogic S6 S7 S7D secure power domains.
> >
> > Signed-off-by: hongyu.chen1 <hongyu.chen1@amlogic.com>
> > Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> > ---
> >  .../bindings/power/amlogic,meson-sec-pwrc.yaml     |  3 +++
> >  include/dt-bindings/power/amlogic,s6-pwrc.h        | 29 ++++++++++++++++++++++
> >  include/dt-bindings/power/amlogic,s7-pwrc.h        | 20 +++++++++++++++
> >  include/dt-bindings/power/amlogic,s7d-pwrc.h       | 27 ++++++++++++++++++++
> >  4 files changed, 79 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> > index 15d74138baa3..12b71688dd34 100644
> > --- a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> > +++ b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> > @@ -24,6 +24,9 @@ properties:
> >        - amlogic,a5-pwrc
> >        - amlogic,c3-pwrc
> >        - amlogic,t7-pwrc
> > +      - amlogic,s6-pwrc
> > +      - amlogic,s7-pwrc
> > +      - amlogic,s7d-pwrc
>
>
> If there is going to be new version:
> Please keep alphabetical order.

I have just applied this, so please send a fixup patch on-top.

Kind regards
Uffe

