Return-Path: <devicetree+bounces-118080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC6B9B8F13
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 11:22:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 63CF61C227B7
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 10:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8D2615CD46;
	Fri,  1 Nov 2024 10:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zNrDVJU8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0C5C1586F2
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 10:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730456507; cv=none; b=NPBgwT2effvVpH2fZ5Pa0bfh/1TpKPlnxIEEruuHwJiS5q1xranqqFzDg+FSp9noqOAqg5UNszPArcowNUGVPX/M8bAR+fHwqGpGKY1aiEf0ocHTIbi3Ynmlxd5f5+Zjy7PGsbD/NCKSDJ2Lfa572JhVBpLS/EfBDAkP1iJTVoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730456507; c=relaxed/simple;
	bh=4/ezJhMVv4g5+hO3ZmYWJYwO3H0qSI/sZ7ZYkaIRCjY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d7uhf5axnrlrIk0B8dEKpZLeRUiHEN2ogqZRdKJ4nchst571b+NeYu9sMP9cGg+55cfKg/KnfKqAtUrsCfkimiQpAdD7h9+Xhf5oOZ+ANaFXSYqBhRM4IeJZ3o9QJG6/2B41O1xLNgqEfpNoIZok2Dqt1weqIRJsH/5kGDSta8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zNrDVJU8; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-6ea656c60f2so7868387b3.2
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 03:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730456504; x=1731061304; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=v1OOWFaJk+1JoyvwxXdi8qci9o7AVgvK3rkL5KCBYSI=;
        b=zNrDVJU88sjWhXO5CVcp8A+GgbkOpUNcSC3IThVnwzKdCmKYujGQjNqx6tTNssTKtq
         EbceWmEc9P93+EGQBKOXTsnrWVLR6Zspj8Dx18NspaH3LByPurUkL8wYwEv9juYXUuZQ
         rl4+Uzav0u9YwuMv5dckfGu1efLJoZwoeCoq4wZ6vlmR3RkQoCdAycO3CKnTMV60N3NK
         s3+1bGyNR0gO4h8HJ7SqBmdOXxKCKXSY28Q1rzij5DgKPY839dWbp8ImgO76oJRMrddd
         fIedmls1vldRsI2SeqiTIaIp71Ni7FLj2uwWwGwrY7EcEqrWG+KoJrfCvl+dDaOJeTkv
         wclA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730456504; x=1731061304;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v1OOWFaJk+1JoyvwxXdi8qci9o7AVgvK3rkL5KCBYSI=;
        b=hPJ3Xrl1o6no4iyiAaSpLvMqqIH4Ww+OFrAXjyG7rCT1mWXjHvaAjm0CqTVEItU4Ww
         aB+H/4HFj/ibt+KdZGX0oceebHE84NOamnAktiO7GLkpJfWF1prDK4iVfBLyy7oUTLb+
         CGI/eaX0kUlVTi6uliEbXF6Und6H3rr9Ru45JTypprBfhmvIbVGLkQ+iWv6mX/uC1KeL
         MIMmmUEYds42zTzLAPNDB2Wk3sljIANipfgIa+ESihJNjj9kYNEMOGIechd+0+ui3HBF
         nhaPNz7I8hvdDTjQZPOsmw6a803WOJyYC2S5czGETOMziYUyUd9pI/BFiHJV81dhGwF6
         6Qjw==
X-Forwarded-Encrypted: i=1; AJvYcCXN1920cjgNpLIUI3uobzDNVVcECfQ6q0Eo9N8xy8enSaRbEogWgiq2urW45uBjjHE5cEK0aNlrQhh4@vger.kernel.org
X-Gm-Message-State: AOJu0YydIR+IgdzxgutlK8djcEuDgix6+hl8uC8XbHsrwSEgDEGgUtoN
	sGVE5oYpBav4WueskhRVcSo0G7VktO+/uaDdioZS44uVOnU/4/5R2v3MdfoDBg1s201hHRn4Z5B
	Ao3dc+vrntae3QOLv/PmJ52Ucs9Or6XV3wsmBeQ==
X-Google-Smtp-Source: AGHT+IH3otYNddLuzk8gQrByLU+Sf4Mj9Uga9WVF0JjPzZQt9IvpKS5zTDwy//SSX+obcs3a4lj5hYohRHYRqexjcQQ=
X-Received: by 2002:a05:690c:3506:b0:6dd:b7e0:65b2 with SMTP id
 00721157ae682-6e9d8a6f784mr243997357b3.24.1730456504581; Fri, 01 Nov 2024
 03:21:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241101-sar2130p-dt-v3-0-61597eaf0c37@linaro.org>
 <20241101-sar2130p-dt-v3-1-61597eaf0c37@linaro.org> <pmgutki3fjqbka5ozalevpw7qptmzykhqxiaofqc2nh4gpnn4f@bgmz6fknavbf>
 <iixsrpkyzae5mpwsa2qm5jdyftzgav52ryficoizlhfzw54xbi@gdfxwmjutqp2>
 <80a37af3-ffef-4342-b7d3-f2eb36bb60ba@kernel.org> <sjayaro5coievz22gdeu6tplzjs6kju333a6womyuk6bsvw2h5@a5ewi6sdl7wj>
 <144458a6-6c63-4386-99da-3a27743288b4@kernel.org>
In-Reply-To: <144458a6-6c63-4386-99da-3a27743288b4@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 1 Nov 2024 12:21:33 +0200
Message-ID: <CAA8EJpqC2j8GC3Z72ShtnyBxFx5jBttg-J1V_MJDuJZUsKon_Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: arm: qcom-soc: simplify SoC-matching patterns
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Kurapati <quic_kriskura@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 1 Nov 2024 at 11:23, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 01/11/2024 09:52, Dmitry Baryshkov wrote:
> > On Fri, Nov 01, 2024 at 09:37:23AM +0100, Krzysztof Kozlowski wrote:
> >> On 01/11/2024 08:47, Dmitry Baryshkov wrote:
> >>> On Fri, Nov 01, 2024 at 08:26:04AM +0100, Krzysztof Kozlowski wrote:
> >>>> On Fri, Nov 01, 2024 at 02:49:22AM +0200, Dmitry Baryshkov wrote:
> >>>>> The patterns for individual SoC families grew up to be pretty complex,
> >>>>> containing lots of special cases and optional suffixes. Split them per
> >>>>> the suffix to make it easier to extend SoC patterns.
> >>>>
> >>>> This is doing something quite different - split is not important here.
> >>>> Instead you narrow the patterns significantly and disallow things like
> >>>> msm8994pro, sc8280p or sc8280px, and allow things like sa5200p.
> >>>
> >>> Just for the sake of correctness, msm8994pro is still allowed, if I'm
> >>> not mistaken.
> >>>
> >>>> I don't see here much of pattern simplifying - dropping (pro)? really
> >>>> makes little difference.
> >>>
> >>> Patterns are simplified by being explicit. E.g. in the previous
> >>> iteration I completely didn't notice the intersection of the |p that I
> >>> have added with the existing [a-z][a-z]? pattern. If you think that
> >>> sa5200p should be disallowed, I can tune the numeric part of the
> >>> pattern. And sc8280p / sc8280px should not be allowed in the first
> >>> place, such platforms don't exist.
> >>
> >> I am fine with this, but extend the commit msg with some good rationale.
> >> Have in mind that the point of this pattern was *not* to validate SoCs
> >> names. sa5200p is fine, sc8180p is fine and all others are fine, sc8280z
> >> as well, because we do not want to grow this pattern with every new model.
> >>
> >> The only, single point of this entire binding is to disallow incorrect
> >> order of block names in compatible. Not validate the SoC names. If you
> >> need narrower patterns to achieve that objective, sure. If you need
> >> narrower patterns to validate SoC names, then nope.
> >
> > I need narrower patterns to simplify adding new SoCs.
> > Another option is to define a mega-pattern like
> > qcom,(msm|sm|sd[am]|.....)[0-9]+[a-z]*-.* . Frankly speaking I'm fine
> > with that approach too.
>
> I do not see how narrower patterns, changing:
> "^qcom,(sa|sc)8[0-9]+[a-z][a-z]?-.*$"
> into
> pattern: "^qcom,sa[0-9]+p-.*$"
>
> instead of
> pattern: "^qcom,sa[0-9]+[a-z]-.*$"
> is needed for that. It's true that 'p' is simpler than '[a-z]' but if
> this results in new commit next time we have sa8995r, then benefit is lost.

Ok, let's drop it, I will just update the qcom-soc.yaml to handle
sar21330p via the "^qcom,(sa|sar|sc)8[0-9]+[a-z][a-z]?-.*$"

>
> Best regards,
> Krzysztof
>


-- 
With best wishes
Dmitry

