Return-Path: <devicetree+bounces-67178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 368F38C6DD7
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 23:43:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF9EB282901
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 21:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 038D715B54A;
	Wed, 15 May 2024 21:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0QOtEJSq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 870CC1591EC
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 21:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715809374; cv=none; b=qk7bk6x9+nGCpoJLw9bsYK1nfRjiJBZ652DZdlVU+unrcOCCkzZMiN3q8AgroRlEXdnFMMwK79++hpxJwjSL4RUZjtjeVFvrgFQpz68AoDopZ7Cv+7+AvHT4+sybF+KkQiNhVpPKs8NPZdATIunPPxLJ4+BAROZBzqugs7INCmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715809374; c=relaxed/simple;
	bh=KiSQc1JiF1aFCWtXL6ki6+sQulb5IdXpzvrOpZ5e52g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u7xua+H89dOrGTZEIcgXtbxf0UyJzXssps+NDt/RPZgSjxMBhDv80wflRcFBGJRcEUM9cpJutsy/lHjZQroTyt7p1I9yrvVknINUXsVkIErI45SXif7hDcZrw/hQiwE+p2NYjyGSm8kXSDveN2F/uSftEK21SkP8yU/JuxUXy8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0QOtEJSq; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2df83058d48so714671fa.1
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 14:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715809370; x=1716414170; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P9TfeFMGzDggFyesSkjXt3hsg/J9ww73zqsP1azRQZA=;
        b=0QOtEJSqS+Eg+xF9kTmTsbL5TKLrRVeRRfuTWB0SBxayVlCbJKCcZW7U4f6XrFCOka
         iSeN5U22t2J1crAerabEFIWld2iWMr6A05MC02rwdgkZsY9eGV6ypBLUBfL4RGN1VQl2
         wTFzLGtaBbDgg3V0+huoK9r0z5j0WH2yyaUwtNF+oZ9sPRhk+oHTy98PvB2sD9He37X2
         aPTorNU7+QwJCHVIn+1wPTTys/SqXZjxk2mO3qbZyDvugbPgOCyue7opxINHDgozx9Ao
         zdtikShOz0U2sTEp8FTdeK7snkX22NtCiv2fyWMugKZkNOvUc2zFokN+IaDaiOt0dD+X
         rdOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715809370; x=1716414170;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P9TfeFMGzDggFyesSkjXt3hsg/J9ww73zqsP1azRQZA=;
        b=eUaNAQ98ZGEYLYyCxFVKusPCadOeDQwTGFTddJeeo3sYoCZkyemK8rJ50M7njACDGw
         TOEukbOjEHpcGPhLd/YASvGUDZTnHfLm+7ksDFzp9ip7Yjwf5TDZPKBooj7TSsg+gaaK
         xnB5hIRm/Rhv2VTlFtVb2OHdiLts/v+in/C29xlMqTaDVJyVckG6kwIKeIQxOSOG+KWW
         LuDLtGcgvHrC9TGYhsv2Y7VZe9NsYxKeDNDUo6IjP/pXPrk7AtNNuJ90uJTArGFv9Twq
         29Mlhoy5JEt8OM2W80BUpfkXPkisrbouPM0xsZI4OUhCoysLsubKY6gCxOGbGBnKEH22
         rMpA==
X-Forwarded-Encrypted: i=1; AJvYcCXSj/bORvPat5pRzGoVhVKfgLRwjrH7ka6XH5zRveRq9EpjmWMJmHlsJ5GI05k8clSgJts+QUBDa1DGBCTaYY8VAs9U4CIEwpUS8g==
X-Gm-Message-State: AOJu0YwyxqM38aNenDp1LSn4aFPPy6SLM2LMsZ3pFKTmUTZOIp2rqM18
	BJDCLXfn2/VBnLo+aLEx057Odu3etWdomEmcZALILOXbmjBSEfLSHH36fT0iKz+vw6kMDAPGxWL
	Nis6ORxW4hYFtPEzozLHRI2AptR8ybrg0Nsqwug==
X-Google-Smtp-Source: AGHT+IGpxIiwcjdpifjmdvRLi4LFm9ed7boSODEZiMBXMdO6n9tTtimmmZlUZkosahIDXDhpvE+zOtAwD/uTbM4pshc=
X-Received: by 2002:a2e:b88c:0:b0:2e0:4a32:1f41 with SMTP id
 38308e7fff4ca-2e51fd46457mr124091161fa.19.1715809370626; Wed, 15 May 2024
 14:42:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240401-ad4111-v1-0-34618a9cc502@analog.com> <20240401-ad4111-v1-1-34618a9cc502@analog.com>
 <CAMknhBHeKAQ45=5-dL1T1tv-mZcPN+bNo3vxWJYgWpEPE+8p3Q@mail.gmail.com>
 <25cb3514-1281-49a8-9e9b-40ead9b050dc@gmail.com> <CAMknhBHu8DveBgV3cor8RP2Up4Zs-+QRx7S2aoHZ_3iKiErVjg@mail.gmail.com>
 <20240406155328.447b594f@jic23-huawei> <64b7fd83-f226-4b1f-a801-0fe1cf20f842@gmail.com>
 <20240413114825.74e7f3fa@jic23-huawei> <89e93f4d-e569-46ee-802d-a1668a01b882@gmail.com>
 <20240420153310.7876cb8a@jic23-huawei>
In-Reply-To: <20240420153310.7876cb8a@jic23-huawei>
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 15 May 2024 16:42:39 -0500
Message-ID: <CAMknhBGxEfGJhi+0Pxi+XqCSKLAKLzhLOt_rZo+vP=XqQDqWGA@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: adc: ad7173: add support for ad411x
To: Jonathan Cameron <jic23@kernel.org>
Cc: "Ceclan, Dumitru" <mitrutzceclan@gmail.com>, dumitru.ceclan@analog.com, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 20, 2024 at 9:33=E2=80=AFAM Jonathan Cameron <jic23@kernel.org>=
 wrote:
>
> On Mon, 15 Apr 2024 21:42:50 +0300
> "Ceclan, Dumitru" <mitrutzceclan@gmail.com> wrote:
>
> > On 13/04/2024 13:49, Jonathan Cameron wrote:
> > > On Tue, 9 Apr 2024 11:08:28 +0300
> > > "Ceclan, Dumitru" <mitrutzceclan@gmail.com> wrote:
> > >
> > >> On 06/04/2024 17:53, Jonathan Cameron wrote:
> > >>> On Wed, 3 Apr 2024 10:40:39 -0500
> > >>> David Lechner <dlechner@baylibre.com> wrote:
> > >>>
> > >>>> On Wed, Apr 3, 2024 at 2:43=E2=80=AFAM Ceclan, Dumitru <mitrutzcec=
lan@gmail.com> wrote:
> > >>>>>
> > >>>>> On 01/04/2024 22:37, David Lechner wrote:
> > >>>>>> On Mon, Apr 1, 2024 at 10:10=E2=80=AFAM Dumitru Ceclan via B4 Re=
lay
> > >>>>>> <devnull+dumitru.ceclan.analog.com@kernel.org> wrote:
> > >>>>>>>
> > >>>>>>> From: Dumitru Ceclan <dumitru.ceclan@analog.com>
> > >>>>>
> > ...
> > >>
> > >>>>> Other alternative that came to my mind: attribute "adi,current-ch=
annel".
> > >>>>
> > >>>> Having a boolean flag like this would make more sense to me if we
> > >>>> don't agree that the suggestion below is simpler.
> > >>>>
> >
> > ...
> >
> > >
> > > We do directly relate reg to channel numbers in drivers like the ad72=
92 (where not
> > > all channels are differential)  I'm not convinced either way on what =
is best
> > > here where reg is currently just an index into a channel specificatio=
n, not
> > > meaningful for which pins are involved.
> > >
> > > It doesn't seem worth adding an equivalent of diff-channels for a sin=
gle channel
> > > setup but I guess it would be more consistent.
> > >
> >
> > Would you agree with the attribute adi,current-channel within the chann=
el and
> >  diff-channels set to the correspondent current inputs (13 10 for pair =
IN2)?
>
> From another thread today I've concluded we do need a single-channel
> equivalent of diff-channels, but you are right that here it is a differen=
tial
> channel so <13 10> seems like the best option to me.
>

Current inputs are differential? It seems like we would need 4 input
pins for that.

