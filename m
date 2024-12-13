Return-Path: <devicetree+bounces-130594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 329B59F0812
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 10:39:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41B78168935
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 09:39:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60AF11B0103;
	Fri, 13 Dec 2024 09:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="g7OhLdu5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531941B21BA
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 09:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734082753; cv=none; b=pg6Dp4p3uuRuJK+qK0oDB8bW3KD7n5rd1dnSnMv16r9lFihOct/qyz5NRPwHHzRvibqkbd46yuzxqhet+ovsqPZYtn+QVHxov1lbG+AL84xyxD8u+cCPwV/tmtTYuhdmymlfx+swaFdN226bs7Oa2grmpw1VAQS8kGlNJ/BWFsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734082753; c=relaxed/simple;
	bh=2dVHZNzyurcrnKSHioCNBqidibj8sEypNo67w3dWXbg=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=UAoaFzkSF6Ff6GvG7HyMAq3VkR6fA+0s7chiGD4H+ZnvH0cQKGXgyF3DEXetXDOp/Vz0M1P65I80WdMaIJrLGmNPT9QPbW9xxxcFMeQ+EM8GMMNNoUsfAupYLtPySzubM9vLRD/gEqjA2jTVEcHpFyK3IX4+N9TMAfnP1q6xw5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=g7OhLdu5; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43621d27adeso10633155e9.2
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 01:39:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1734082750; x=1734687550; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t4JqniyrUVA29zrwSIJYAdkpKjXdhEDlx602bvtZzJU=;
        b=g7OhLdu5JF+wOJRljRkKcUYiMoR2IphW/B1mYJJOudFHF873xfXgc8Ie1n92m4ruDu
         No7Ue6P3NIBv6exHD3+X6G6DFCLtjg9fpJFrVugbuz5y7p2e2+bbgcltBv/m2Maagpo9
         y2pd4FunZqFaWEj+PlSbXvkpys8Anfe2vaazOSsrMJo6qQvyRKZfUNkVSKwzZ+6kdhJo
         1dMgGdish7xXxQPwvaHm4dkLzogun6AX3+7QzRg7iQiTXdEKz2XQJ8gGbqbqKfMA7Q+r
         oKIlkOcoBcPWf+LjwMIb5NiX2a00zY+awCASDakCDGilNmDU65shrr9/vCVQw4yVXWH6
         2D7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734082750; x=1734687550;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t4JqniyrUVA29zrwSIJYAdkpKjXdhEDlx602bvtZzJU=;
        b=pHPEXhgCO5jCRt1U1LwZMzTsYZ+GJk595u8tNP91vQRDxFwIcrp8vpcPM5bPj8SpHl
         e+FaJtKAzT2HDj0VdRLBpUDwSARXgkPSAvKN3czbmM1BUb1tpLf6l7D2OcaYitKohH4q
         G6ETXrXeMls/fjt12UPlVJAIFX+fQyQW7zXDOVzW/Jr1YlpzA6aYADX+QgdfBNYtPx27
         mvVR99vhDa0xZMc8fT7CyQ9jnz3XbFwo7lhozFe7oTdOYe/y1WcLod1vHrY0uFBdKxJm
         6y/IQE9Fe4eVlIDee5bJI0fauaaEnZa+DJsYXzlx+pHVOhjkvd/KiQ5jH0ZRfwwFrSIu
         pVZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcBW4VEpckHlk+l7u2vToVjtNK3pN5PK8gJ6ei76Iy1W2bbVhl4lbzXTNUpFs+6c0lN6t+z22WlT1i@vger.kernel.org
X-Gm-Message-State: AOJu0YxoZqhEZFITc0WB9v6Br3azbzpoUId2QphOyEyMsw20cZAZCuTn
	1gNZVA7Xm7FB7RZ468vgv6bv+t+9i8EtVtMUof8VGo58wPCHsHUwzLYO1vp+xrs=
X-Gm-Gg: ASbGncvvVbcmwphHdoPKsQxf6A44SNfaM+r5WTKsxN65O00IZJGp8sAQv7RoZLCl8yL
	Dfz4Rij6T00iYrZOZbTnwS8ypwM/KyhSldtVQRjEj+WQd8L+dPNjZlro89VaPgJiUomiXdnUbLg
	aif+rytJ3f4v4f7Kg/2LYLcuOtwgJ1CrrzVk9G5hGejiTOU7zoG+FS+l4G6WKUsGlKh0pWcGS3L
	71CnYRH9oqyr8mW5D/I7VE+IL+BBY3zMe3lKbov2qkRN8RtcS2EuZ/lij7x6qpCUJQSChzQfih6
	hrCuOn2fF40CzgkqD4yuTtB2lg==
X-Google-Smtp-Source: AGHT+IH/9u8CkqVlx6cHHLvAJS9uDAoxtK09++pI/aUoVOp3EvdqqeNkdS8a6S0cwyVHTzYjlA51+A==
X-Received: by 2002:a05:6000:4609:b0:386:39fd:5ec with SMTP id ffacd0b85a97d-3888e0c15c4mr1424272f8f.57.1734082749648;
        Fri, 13 Dec 2024 01:39:09 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824c5c98sm6495726f8f.58.2024.12.13.01.39.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 01:39:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 13 Dec 2024 10:39:08 +0100
Message-Id: <D6AH15BCVPCD.Y8CO9YRUJZ3W@fairphone.com>
Cc: "Robert Foss" <rfoss@kernel.org>, "Todor Tomov" <todor.too@gmail.com>,
 "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, "Mauro Carvalho Chehab"
 <mchehab@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Barnabas Czeman" <barnabas.czeman@mainlining.org>, "AngeloGioacchino Del
 Regno" <angelogioacchino.delregno@somainline.org>, "Caleb Connolly"
 <caleb.connolly@linaro.org>, "David Heidelberg" <david@ixit.cz>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] media: dt-bindings: media: camss: Restrict bus-type
 property
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
X-Mailer: aerc 0.18.2-0-ge037c095a049
References: <20241209-camss-dphy-v1-0-5f1b6f25ed92@fairphone.com>
 <20241209-camss-dphy-v1-1-5f1b6f25ed92@fairphone.com>
 <nqggstwkytqxpxy3iuhkl6tup5elf45lqi3qlgyv6eaizvnfdr@2uy57umdzqfa>
In-Reply-To: <nqggstwkytqxpxy3iuhkl6tup5elf45lqi3qlgyv6eaizvnfdr@2uy57umdzqfa>

On Fri Dec 13, 2024 at 10:34 AM CET, Krzysztof Kozlowski wrote:
> On Mon, Dec 09, 2024 at 01:01:05PM +0100, Luca Weiss wrote:
> > The CSIPHY of Qualcomm SoCs support both D-PHY and C-PHY standards for
> > CSI-2, but not any others so restrict the bus-type property describing
> > this to the supported values.
> >=20
> > The only exception here is MSM8916 which only supports D-PHY. C-PHY was
> > introduced with newer SoCs.
> >=20
> > Do note, that currently the Linux driver only supports D-PHY.
> >=20
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> >  .../bindings/media/qcom,msm8916-camss.yaml         |  8 ++++++
> >  .../bindings/media/qcom,msm8953-camss.yaml         | 15 +++++++++++
> >  .../bindings/media/qcom,msm8996-camss.yaml         | 20 ++++++++++++++=
+
> >  .../bindings/media/qcom,sc8280xp-camss.yaml        | 20 ++++++++++++++=
+
> >  .../bindings/media/qcom,sdm660-camss.yaml          | 20 ++++++++++++++=
+
> >  .../bindings/media/qcom,sdm845-camss.yaml          | 20 ++++++++++++++=
+
> >  .../bindings/media/qcom,sm8250-camss.yaml          | 30 ++++++++++++++=
++++++++
> >  7 files changed, 133 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/qcom,msm8916-camss=
.yaml b/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
> > index 9cc0a968a401836814560c1af3ee84d946500b4f..3de2a3d2b5b761106975aab=
65ff614b2ef579ef5 100644
> > --- a/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
> > +++ b/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
> > @@ -94,6 +94,10 @@ properties:
> >                  minItems: 1
> >                  maxItems: 4
> > =20
> > +              bus-type:
> > +                enum:
> > +                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
> > +
> >              required:
> >                - data-lanes
> > =20
> > @@ -113,6 +117,10 @@ properties:
> >                  minItems: 1
> >                  maxItems: 4
> > =20
> > +              bus-type:
> > +                enum:
> > +                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
> > +
> >              required:
> >                - data-lanes
> > =20
> > diff --git a/Documentation/devicetree/bindings/media/qcom,msm8953-camss=
.yaml b/Documentation/devicetree/bindings/media/qcom,msm8953-camss.yaml
> > index 8856fba385b1123d748199b46c5009c97700ad9b..6d776b0ca71140c0816b246=
dbaf41ef376205bba 100644
> > --- a/Documentation/devicetree/bindings/media/qcom,msm8953-camss.yaml
> > +++ b/Documentation/devicetree/bindings/media/qcom,msm8953-camss.yaml
> > @@ -112,6 +112,11 @@ properties:
> >                  minItems: 1
> >                  maxItems: 4
> > =20
> > +              bus-type:
> > +                enum:
> > +                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
>
> Just 1
>
> > +                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
>
> Just 4
>
> The type and meaning is already stated by video-interfaces and the
> binding headers.

This is actually something I find rather curious why this is not done
more obvious, e.g. there's basically no link that a '4' is
MEDIA_BUS_TYPE_CSI2_DPHY from dt-bindings/media/video-interfaces.h

video-interfaces.yaml only states "- 4 # MIPI CSI-2 D-PHY" and it's then
the users excercise to find MEDIA_BUS_TYPE_CSI2_DPHY for that.

Regards
Luca

>
> Anyway:
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> Best regards,
> Krzysztof


