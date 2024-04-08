Return-Path: <devicetree+bounces-57054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF5389B95C
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 09:55:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C749A1F2194F
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 07:55:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FF9B2BAF6;
	Mon,  8 Apr 2024 07:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="1ZHkJbeT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C443BB2A
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 07:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712562605; cv=none; b=Jl+YQ09dn0Pid7K+SCxEV4YsOQWbLKbdEf/EczmUyqFYLE/OOVNiaoVw3UfN12sEIYocLYg71dl21SrEXTUDx88/vqvMlD4ReFoYS7wsFSYWjIZkTUkpwXs4OCDYKYxmLUGL89ux0Px2FWkupv1q3cqSVkag0l1+RjdgVnA2Gdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712562605; c=relaxed/simple;
	bh=62vWMyM9ah8wOO+7CU7SyM0WhITWK9lt/sA4APfNOvo=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=En9+qNsom2/4tJMcxJwMFHVBlAQJAbdtwD36pD9ZCFz7ubi3sU2ZfnkciRdK5HSjs0iqetTdtK2sohQZx4vtrF8PEq8OhJvXX3lcS4l6YBSTU3Sw9dQZOFMQqwC1VbiDGIKdmIZiAtpVZSqM7E1GJNAaAZqSpT401KjW3VSYCb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=1ZHkJbeT; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a51a20a6041so314175666b.0
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 00:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1712562601; x=1713167401; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KfgzFQr5Wn5nGNjOjmePsm1TRI//Puj9xojQkt54LHE=;
        b=1ZHkJbeTpAz+gh+CUHHOfINR/SX3pJAR9hMbB3wxyRUDRunYDfG5g+qzkRZouNpLqk
         aTF1FfFqY8BKsi2XpEnNPnJ6x2+CV+yLBlbY3xd1v2peLrEuGRKa0l7FNdUwuCdnFq4c
         /H4p479Zf+MLLQRzbBDDQvI67NAYI4Po7SGL3i7haDNQyck77d2+j5cNiHzA1rN6sGi4
         akb2fHCVe2nSgsABZJIWiu+Q0W43T0UWPE1ysyMTji2NAUUqGt+D5t+/N6Dm/HJmpR/I
         enscToTqvko6SQtq9IegujD9dIiX6JybwwlQCXpivGQOTCySGKZhuqEqiNyINuwpkadA
         NJZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712562601; x=1713167401;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KfgzFQr5Wn5nGNjOjmePsm1TRI//Puj9xojQkt54LHE=;
        b=kM8t5lMbYoxTaBXTLtzFVlTqliduu9nC/Uo5yWcprKEiBbpYCbDKoWHaYSgtJu3hSw
         MjVGjFgM93BKsuvWeODkujMUytvFPONmP+pFR/8jeWHPdnPtm+At+YO6Vc3RoAaGEVO5
         oy4/t5kLhboqSWiU07sC9xrb5R3TY3d/wuPkhzv6tKMF7xnlD5L/bRpsxXB9DsWl4gaf
         z2eLWhBT0+Hv764isv27oxOyqG2GIYbvt+8eD8oGpBxEhQbtNEwtSKQkLuMQePs+U9Hm
         7j50dd3FcJW8KwmZzkHfZqstBD4QbQPld6LyQ6LlmCHBSBmTW39poGNFMfeaM5sclW60
         CZpg==
X-Forwarded-Encrypted: i=1; AJvYcCX8UBvjjhdFL8U6OMZvSxU7CgF5zvfy6bvfrfhIhSqT70m//hS9282u6rRPYA1W6VBVAjiGW1pK/INu+HL3nAwHEVecEYBo4kzMdg==
X-Gm-Message-State: AOJu0YzCGvBbT+JbwsepYJnM4K8Q7sxRtEnY14lgQgcAXPLguGnZOmLw
	V5JHxa7Bjnh7IiO0i60e51FTWeX0J9siqIh3ju52XzFXEtH66Qe1lWHFkPv6lnA=
X-Google-Smtp-Source: AGHT+IFJUfdSA6v/lBANNp6iDa2JuX8w0cZ5BpDfKTm0N9EV+TTWcWipmjmt3PpztCVgiHFVkU3nzA==
X-Received: by 2002:a17:906:ac7:b0:a4e:5a23:24d with SMTP id z7-20020a1709060ac700b00a4e5a23024dmr5000388ejf.38.1712562601498;
        Mon, 08 Apr 2024 00:50:01 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id lx26-20020a170906af1a00b00a4e440989f5sm4079452ejb.159.2024.04.08.00.50.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Apr 2024 00:50:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 08 Apr 2024 09:50:00 +0200
Message-Id: <D0EKRXT8JJCG.DJW8LMIPMWX5@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Dmitry Baryshkov"
 <dmitry.baryshkov@linaro.org>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konrad.dybcio@linaro.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 0/4] arm64: dts: qcom: add USB-C orientation GPIOs
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.15.2
References: <20240408-hdk-orientation-gpios-v1-0-8064ba43e52a@linaro.org>
 <D0EJR77G6HF0.2LUJ3XY1YFG65@fairphone.com>
 <CAA8EJpqUz8anQ9V_Ht67DMrMXw49u9R01mHKDMxnGf-UpXrrUw@mail.gmail.com>
 <D0EJTA1YFZRW.3LWBWJC0QYQ62@fairphone.com>
In-Reply-To: <D0EJTA1YFZRW.3LWBWJC0QYQ62@fairphone.com>

On Mon Apr 8, 2024 at 9:04 AM CEST, Luca Weiss wrote:
> On Mon Apr 8, 2024 at 9:03 AM CEST, Dmitry Baryshkov wrote:
> > On Mon, 8 Apr 2024 at 10:02, Luca Weiss <luca.weiss@fairphone.com> wrot=
e:
> > >
> > > On Mon Apr 8, 2024 at 4:33 AM CEST, Dmitry Baryshkov wrote:
> > > > Populate orientation GPIOs for some of the PMIC-GLINK-based devices=
.
> > > > This leaves only FairPhone5, RB3Gen2, SC8180X Primus and SC8280XP C=
RD
> > > > without the orientation GPIOs declared.
> > >
> > > Hi Dmitry,
> > >
> > > How would I find this GPIO on the schematics, or downstream devicetre=
e?
> > > I scanned over some relevant areas but nothing jumped out at me excep=
t
> > > for the USB_PHY_PS signal coming from PM7250B CC_OUT and going into
> > > GPIO_140 of the QCM6490 - but I'm guessing this is something else?
> >
> > It is exactly that GPIO.
>
> Great, thanks! The PM7250B datasheet and my limited USB-C knowledge
> didn't help me there much ;)
>
> I'll send a patch to add it.

One thing I've noticed now is that the dt schema currently explicitly
disallows orientation-gpios for anything that's not sm8450, sm8550 or
x1e80100.

  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dtb: pmic-glink: orientati=
on-gpios: False schema does not allow [[84, 140, 0]]
          from schema $id: http://devicetree.org/schemas/soc/qcom/qcom,pmic=
-glink.yaml#

So I'd think also this series will cause some extra validation errors if
the schema is not adjusted? Are you planning to do that?

Regards
Luca

>
> Regards
> Luca
>
> >
> > >
> > > Regards
> > > Luca
> > >
> > > >
> > > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > ---
> > > > Dmitry Baryshkov (4):
> > > >       arm64: dts: qcom: sm8350-hdk: add USB-C orientation GPIO
> > > >       arm64: dts: qcom: sm8450-hdk: add USB-C orientation GPIO
> > > >       arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13s: add USB-C or=
ientation GPIOs
> > > >       arm64: dts: qcom: sc8180x-lenovo-flex-5g: add USB-C orientati=
on GPIOs
> > > >
> > > >  arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts        | 2 ++
> > > >  arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 2 ++
> > > >  arch/arm64/boot/dts/qcom/sm8350-hdk.dts                    | 1 +
> > > >  arch/arm64/boot/dts/qcom/sm8450-hdk.dts                    | 1 +
> > > >  4 files changed, 6 insertions(+)
> > > > ---
> > > > base-commit: 8568bb2ccc278f344e6ac44af6ed010a90aa88dc
> > > > change-id: 20240408-hdk-orientation-gpios-141bc7fd247d
> > > >
> > > > Best regards,
> > >


