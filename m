Return-Path: <devicetree+bounces-221474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA86BA014A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 16:53:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE44D4E4DBB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 14:53:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 903052E1737;
	Thu, 25 Sep 2025 14:53:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF022E0B4B
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758811987; cv=none; b=fePjrJ8lSFLUC/tXmfoOxO1E4oSax6SMjC7VbDKVUdfUDqVjYXPB1pGkwzI2hTQcT+RT3K8KboKJDKbTi1QHCuBthvqn7Z4lHlLmBwHdIU+LSKXTv1lp1alf0Z6HNTgIa3qGCHFProYIAcEiJeYC5vlF87z2unzglrnXkcC5g2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758811987; c=relaxed/simple;
	bh=ZXJMMFCZDGimdSoFUJxE3pUZd+JGKjmvs7+jQKpoKQE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TbvbPGft7IR3lCjC2x+VK0CEVPjsqGSS1v+vevlmHiF62y4j6HNTuhlEYUK+43HlJ1BWr+n0D8INLuTbFPLxMGBVrH6jLy7Wnkw6zHck4UdK3sETfUWT7/qU0SxmPhBkbnQq637z6D7SsVWN4aNXIu7CY8iA3EhbxmHSW1pXYQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-57ea78e0618so1002282e87.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:53:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758811980; x=1759416780;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DlO5HN86Kc6YrRTCW9kNidWKyaECOConDbUQtE/vSBs=;
        b=USJy/GShZ+k5Lb5zlM1NTNFrHKtdkOz+sakJysKUZu5OwPynOaPCuUZORTwb8qsCEU
         yB6TRwoPFxgAj7Idl79/FF4hHuMzWwmIgyddtA/on1acyZ49ekSmu3w17v2OVbA+CDni
         KRZpzQqi9iSWM1OVD5k1c5xKo0QZNQuSXvVnIcRtUtHAxC8cdk/SSShZv4w2xbqD3bf0
         52NxgMtcYrlLk8TgINZXXUu+wzcK3bTt1P2u7FU9AdKeUEr/sVMXtvUunU5kPbjrDSaZ
         LF63MDPMlkgQ2tUIVrc8y7i/0oB2T16dcZMIoiKK9w5cNoZGDJH1ktP5PAWbLncDSun0
         rekA==
X-Forwarded-Encrypted: i=1; AJvYcCUUnoXDoL35mCqIw19/MQg4Yt525br9qbswiRe0zoxbkGLqKoY4kp1IiEf2v3gGzvLDimu4VHmb0CnR@vger.kernel.org
X-Gm-Message-State: AOJu0YzmF+XbXQGNcRqtDIYUiFxybAGSq+kohPzIdAnF8DLwz8CYKPSl
	8oB/VVq5dvaZdEo7GqQjd/k/YCAx3mVTvIzC/zqkI3l8fpwckLxVLvkvd1soMlDy
X-Gm-Gg: ASbGncu/FE2mnGgLQKKrbumowpY4pwbZM02034kVrprGWXXoDDmyJGSKJGmPqXkP8hB
	qRuatcKegA3DNeexxHBirwkLxspbHCbbN3qNykIm0pDpj/pKYweqoPOZHuIBMSgSK37ABliD5ow
	QumUi/5Gq1TWwfxspuEyiuK1VuLGG8TjzH16XiKQ08JaENhbk9EQNHH1beuqiZ/4dMe1gOwQ5do
	1R5qfhZW5ag9ijF7kVHoIWxKSD5SF2d6Q19pYVd1HHjtLyQhBc5zy65ckiWC13QzVRgxIgrofIC
	lqCUuFrlyBhzrq/nO4LmKjXkd7i14srf+DFaKZGoWuHoJFRewzSiw446Xd6415PY94mIPMIVSyB
	u2tOOSzhnJs2KIpb19QZXe1u8Tl2lqhAW1/LuASRcplmpbffm6tokIjY=
X-Google-Smtp-Source: AGHT+IHwO0uD+yzk2F5Y4MhbUiBlWuPlNWwn/vqhyOPys/uNlhi4aoqL4X4FTl5e2S5M0w8r1asdDQ==
X-Received: by 2002:a05:6512:3b9e:b0:55f:4ac2:a5a8 with SMTP id 2adb3069b0e04-582d0c2849bmr1129497e87.13.1758811979571;
        Thu, 25 Sep 2025 07:52:59 -0700 (PDT)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com. [209.85.208.178])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313431055sm832438e87.30.2025.09.25.07.52.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 07:52:58 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-367444a3e2aso12077451fa.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:52:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVWSeB+QC+nVXboQDkBF4KDjISSrKqqavIF+iZsZ74B2mMlLRIqoPLsASgv6QeH4hS22+kr158pePbt@vger.kernel.org
X-Received: by 2002:a05:651c:150b:b0:333:b6b1:a151 with SMTP id
 38308e7fff4ca-36f7cecce7emr13436431fa.7.1758811976957; Thu, 25 Sep 2025
 07:52:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250919000020.16969-1-andre.przywara@arm.com>
 <20250919000020.16969-2-andre.przywara@arm.com> <20250922181611.GA567602-robh@kernel.org>
In-Reply-To: <20250922181611.GA567602-robh@kernel.org>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 25 Sep 2025 22:52:45 +0800
X-Gmail-Original-Message-ID: <CAGb2v64KvnvSy0-MYd7FBLVKeJQk=-=VWxRLsHXMP1+MFOPPfg@mail.gmail.com>
X-Gm-Features: AS18NWC5SLylzS53NFTh78yeOtaf2DKHmvxRwMULDvXeTqI87y6sQlGtbhqXD2w
Message-ID: <CAGb2v64KvnvSy0-MYd7FBLVKeJQk=-=VWxRLsHXMP1+MFOPPfg@mail.gmail.com>
Subject: Re: [RFC PATCH 1/5] dt-bindings: mfd: x-powers,axp152: Add polyphased property
To: Rob Herring <robh@kernel.org>
Cc: Andre Przywara <andre.przywara@arm.com>, Lee Jones <lee@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Mikhail Kalashnikov <iuncuim@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 23, 2025 at 2:16=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Fri, Sep 19, 2025 at 01:00:16AM +0100, Andre Przywara wrote:
> > Some X-Powers AXP PMICs can combine some of their DC/DC buck converter
> > outputs in a multi-phase fashion, to achieve higher currents and
> > decrease the output ripple. The datasheets call this poly-phase. This i=
s
> > programmable in the PMIC, although often set up as the PMIC's reset
> > default.
> >
> > Add the "x-powers,polyphased" property to the binding, to describe thos=
e
> > pairs or tuples of regulators that should work together. In the lead
> > regulator node, the property lists the phandles of the connected
> > regulators. Just an empty property means no poly-phasing.
>
> Don't we have a coupled regulator binding already?

That was my first thought as well.

Though on the driver side, I guess we would need to add a coupler to the
axp regulator driver to handle the polyphase case directly, or somehow
tell the regulator core to ignore this property.

Unlike separate regulators that are ganged together, in the AXP PMICs it
seems that when buck outputs are ganged, only the controls for the first
output have any actual effect. In such cases I don't know if we should
just ignore / leave out the secondary outputs from both the description
and the runtime state.


ChenYu


> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  .../devicetree/bindings/mfd/x-powers,axp152.yaml   | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml=
 b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> > index 45f015d63df16..260c4c0afc475 100644
> > --- a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> > @@ -304,6 +304,15 @@ properties:
> >                noise. This probably makes sense for HiFi audio related
> >                applications that aren't battery constrained.
> >
> > +          x-powers,polyphased:
> > +            $ref: /schemas/types.yaml#/definitions/phandle-array
> > +            description:
> > +              A list of phandles pointing to other regulators that sho=
uld be
> > +              polyphased with this regulator. The linked regulators wi=
ll be
> > +              synchronised with this regulator, within the PMIC, but o=
nly if
> > +              supported by the PMIC. An empty list means this regulato=
r
> > +              should be configured in a single-phase setup.
>
> phandle-array is poorly named and is really a matrix because you can
> have arg cells. So you need:
>
> items:
>   maxItems: 1
>
> And is there an outer max for linked regulators?
>
> Rob
>

