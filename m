Return-Path: <devicetree+bounces-256682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 592F5D39FD2
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 08:31:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17BAE3015150
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 07:31:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 812E63358CD;
	Mon, 19 Jan 2026 07:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EL+Qux2+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6D533554F
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768807880; cv=none; b=fSZL04GnvCRh4kmc1NVsNBientBjt0Kxl8nxJA2giiyZJqAcvCFEjojWFCgk49FfMYctWqeq0OB6S5NPaLICcfp53BEjfXBpdT8PPOiPHhyy0VjOGfwU6tCZtt3xrYcWpqkgk00y5yLnQVbHI0297RjtYt+hYUwpnn7QdC7j800=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768807880; c=relaxed/simple;
	bh=05TtTHgNdkznqfwnElj2udcrcsdoU2jg/0WhEE3uwVo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=liOAc5K3O0XrlL6GZqdlyq7Ji+43QGBJcBu4prIusJpsjHtBaZL2KvyZ19skwSj4Vqdqsf4wpaZHSlUwzLoXvf+bqGQ/i6pdthtl9tpfsHg+HtPZ9Ghn8rr19MPgXcl8vz6iikd2CiXWNsiXZllPi143AoZuDGfgWVhifecn9lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EL+Qux2+; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-34c7d0c5ddaso2468233a91.0
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 23:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768807878; x=1769412678; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AmBvNvnKo3AicJkVDkgT9ULTWLrciXVW8Cf69nuUyxE=;
        b=EL+Qux2+p4S0GMN+UbqfFQsveq8jsI1J4KOnyaARNfcfhNBlF8r9JTpQeF2s0b7k0C
         rHIpbwOYqjc23L0u1xMk8EI2N84aA2mo/YWxbOp+MYUwGBVvxMWHTGHILHdSbYXNZrzL
         6w6C2bbG0giK668dYZ6PPimjup/8sKlTSi+PysY/pvN3+kbHImN2GnaJM9OXzusoErRH
         6WKwB97vCtKVSvD5hBZLHWpiuVF6TJq6kJ7/RZi24qQycoO77ZIbS9pDbHR4RTbACcYo
         V0MIrX8VeJema3MwftpKr6erg+6Es6hG8b/fwkV6P9xNiAnz8yeDh06Yn91WvJ0+NdYt
         6sUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768807878; x=1769412678;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AmBvNvnKo3AicJkVDkgT9ULTWLrciXVW8Cf69nuUyxE=;
        b=fMo1GXYQhxK5FWeC/wgZDkfD+8kn7kqmLWuE93plnbr9/IqXwra9TCZvtOJMYIaP6b
         q9fMp/UsGxvctL2vTXaQEQvacA1LBgLjkbEyJZvMM8P9WoKB4ZXQG9MolhWtvawbv+lA
         gedVTpM/NlIwHtQvXwtf+G+Rwn0/ulD4DczkQp5unQBvBl8Vz6tdDHaRfuhTLSpdxbCz
         66BKEPKcs8z9qOjSjU2B7DMOX/DR+dTEb0qPfuEee7o9KNTXl+GyMhwCvcnMlZ+Yd24F
         8jmQiaXcMsgd4vhou7XoB/3oqXMcn1RQ5It6jev0tI+wvgADHTQeRpoHXlNNMCViyum5
         e4Og==
X-Forwarded-Encrypted: i=1; AJvYcCXdLdJPeGXgdJYa/yK2ez/x7wak+miHxRef9KwrrR61aUEM20IpjlZ/8zD9bDQruSzQhkLEAXduHcSr@vger.kernel.org
X-Gm-Message-State: AOJu0YyiUxOOLVSIcpEwiVWEjt1vW5MbNpFSb9QGfqBTdawhor8YzjXq
	jbzYXmeO1R3XQfpvP2eD9E1Ru4ZP8IgfeIgHA8RyTX4JtI9exHtYKuuJRckqtDj+yEquMt4h6I1
	1Qmg+rRuv7CJfoo5bRosR0yFtwC1+2/o=
X-Gm-Gg: AZuq6aLvYOzxOCcm+FYfVSAzH0/q+MqKAY01l1RhlIP9L+IaUWUFZ43mlv5k9xPuGR1
	LQpHNunIcWKr5HODCo1i+vbhblOqFgB+phD09ApwBWjwXvwEnAEE0AuCeyKLm1iZI+hXw2Zkpqq
	5zNDPYRqA03fQktjFt1YBZ6iwGpwGdgr/+FkZSkSoxjH7ALx2GJpp9/kzLvJbYUneiK4stmn3gm
	6XalfyhK26qJ+zM4HOGHs83yHVgpdQSc9kP3N0UoP1NVX3NQcRu0o9PHuhmpX3tPFnFmhs=
X-Received: by 2002:a17:90b:3884:b0:34f:6ddc:d9de with SMTP id
 98e67ed59e1d1-352678fcf6fmr11202077a91.16.1768807878309; Sun, 18 Jan 2026
 23:31:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116101648.377952-1-shengjiu.wang@nxp.com>
 <20260116101648.377952-2-shengjiu.wang@nxp.com> <20260117-versed-proficient-pigeon-bd0b2a@quoll>
 <CAA+D8ANrcjvOCfRN7gGGW+7YzvVieU7P2uexUpVYTw6MEHAKYQ@mail.gmail.com> <2be56ba8-5659-4d03-a886-ad32a32f6b44@kernel.org>
In-Reply-To: <2be56ba8-5659-4d03-a886-ad32a32f6b44@kernel.org>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Mon, 19 Jan 2026 15:31:04 +0800
X-Gm-Features: AZwV_Qh5iuoRHWZMiK5VT4SDQMVso2DrWmENEWodorBSh_MSb2zROT8lpDWRAvg
Message-ID: <CAA+D8AMv0TaGwCU8yWWVbVfuYHyPMjMnz0MWNLh86nfsGMZtYQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: fsl,audmix: Add support for
 i.MX952 platform
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, Xiubo.Lee@gmail.com, festevam@gmail.com, 
	nicoleotsuka@gmail.com, lgirdwood@gmail.com, broonie@kernel.org, 
	perex@perex.cz, tiwai@suse.com, linux-sound@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 19, 2026 at 3:07=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 19/01/2026 07:27, Shengjiu Wang wrote:
> > On Sat, Jan 17, 2026 at 7:44=E2=80=AFPM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On Fri, Jan 16, 2026 at 06:16:47PM +0800, Shengjiu Wang wrote:
> >>> The specific feature for AUDMIX on i.MX952 is that it can be bypassed=
,
> >>> so add fsl,amix-bypass property for this feature, besides this there =
is
> >>> no power domain defined on i.MX952, so make power-domains to be
> >>> dedicated to i.MX8QM.
> >>>
> >>> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> >>> ---
> >>>  .../devicetree/bindings/sound/fsl,audmix.yaml | 35 +++++++++++++++++=
--
> >>>  1 file changed, 33 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/sound/fsl,audmix.yaml =
b/Documentation/devicetree/bindings/sound/fsl,audmix.yaml
> >>> index 3ad197b3c82c..50fb08460b4f 100644
> >>> --- a/Documentation/devicetree/bindings/sound/fsl,audmix.yaml
> >>> +++ b/Documentation/devicetree/bindings/sound/fsl,audmix.yaml
> >>> @@ -34,7 +34,9 @@ description: |
> >>>
> >>>  properties:
> >>>    compatible:
> >>> -    const: fsl,imx8qm-audmix
> >>> +    enum:
> >>> +      - fsl,imx8qm-audmix
> >>> +      - fsl,imx952-audmix
> >>>
> >>>    reg:
> >>>      maxItems: 1
> >>> @@ -75,12 +77,41 @@ properties:
> >>>          unevaluatedProperties: false
> >>>          description: Output port to SAI RX
> >>>
> >>> +  fsl,amix-bypass:
> >>> +    type: boolean
> >>> +    description:
> >>> +      The audmix module is bypassed from hardware.
> >>
> >> I don't understand why device AUDMIX would have property saying AUDMIX
> >> (so itself) can by bypassed. If you bypass the device itself, what do
> >> you configure here?
> >
> > The case is that the SAI interface is connected to AUDMIX,  but AUDMIX =
can also
> > be bypassed by hardware configuration.
> >
> > Yes, adding this property in the AUDMIX module looks strange.  Another
> > choice is to
> > add this property in the SAI binding document.  Is this better?
> >
>
> Not sure, but certainly it does not look like a property of AUDMIX.
>
> I assume you acknowledge all other comments.

I will move the property to the SAI binding document, then please
have a review.  As this change, the binding document will be updated, for
the comments to use the example-schema (:false) will be adopted if needed.

Thanks.

Best regards
Shengjiu Wang
>
>
> Best regards,
> Krzysztof

