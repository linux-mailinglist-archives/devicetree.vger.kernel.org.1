Return-Path: <devicetree+bounces-109379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B184E99643A
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 10:58:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C4D01F21B17
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 08:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC45418A6A3;
	Wed,  9 Oct 2024 08:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qly0dBCC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5C718D64B
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 08:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728464070; cv=none; b=COuvMkY0sJCawIBlwzJqrJw2OaJJENMsnUMhk72znisrmAGht6+AV2Q0rlaSoxlE3n6MMhJ/5Z/70VOIPZPnOeLRfRbTK4Lky2Q2bfh2XwkDHjAdoNPL4SdDB0+gacFw7g/aehXNSOQKq7bv/ksSWE6CHNu6jWNL1ieUYBkJly4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728464070; c=relaxed/simple;
	bh=FFpBgRTSKsDxjFwRJ4STqSap+pHtBiqiKgJExfia4cU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zj+lzbvawIYYx6oOra+EpVnM+H0mFv+pxV3qNnQ0v4yeHOAAai9/RMJPUOjgfrpbAH4d0iVBq937ru8LgH8UdB60aU0t6EHPShS2FcNTC0tc0pASXax8VJwt7rrj+1qxe8kEahoVnO9wJDXZfnDyN/vQDsfvPh9uJNSoGaE65AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qly0dBCC; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a997736106fso169176166b.3
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 01:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728464067; x=1729068867; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dpIdKlGEx3HAehwqgbFbosdnXDUfWgAPKaA5vSiJ7Sg=;
        b=qly0dBCCgx/PKO8FM7kP3nfkfpTi1IYuzHKzpXG0GA3+Bstye7DQHR5ClxRAurhocE
         w5hTuxGeBEtoTkFrV/5S5CkCalr3GkffDanMybsoEIPwC78d003EkGafxdHhY6MIm8su
         4XI077YoehVFJXS5QPymPpxN81SAn5qx66SVCfE/DCQR4kwVE6WnAp3MkKg3XOYLhM4L
         wtyE81WsxWRvkw70/VdnMN8z6m2WKScIFeu/ypKeNnXc4PHdMqh/WZ3zpMRMXDiRT4zZ
         ZnicK17HZqog2VpCYEi2W8bxuQjAExqgSuXPLIGLgA8RbsGQ19YXhD20QG+jnMUlqlUV
         Rvhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728464067; x=1729068867;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dpIdKlGEx3HAehwqgbFbosdnXDUfWgAPKaA5vSiJ7Sg=;
        b=TjQpRmaPMLUh1xEbIMIvs5YrUYNsWxj7Nc+bnmpXJ+Ip0KHrp5aycLUQh/87ffwoza
         i0clp/387V6u/NH7HRRNLmTbbQy62NwQ1sqq7EIzj4NS8iuJoiGt47SPWmyqeDjGB0Yd
         Z2wh3Z9vcyVPvd2RuKIbwCT7P2yjkWRvviLsf8D7J03RAF2JVXWBUbOfA+tfBUL6KDMn
         A26hI04zPgXnwBW6mPcSk4KEf1WAjSbh6Op/6drAVNuHN2GZTjaFghjHtX0x3ldtIjeO
         uB4CSk29JOCl88JVA0WxUWJ3rqIT7VQiao2NjTkeexXg8JaPEixa5l0fvX+8U7Ukw/2H
         NpRg==
X-Forwarded-Encrypted: i=1; AJvYcCWn9TrjMWuIHfb8NaQb3RDMkuMODRlVaE/nLfymBPaITUyacySFR3WIW9FvUv31Rn3q0uql1UuJGtZP@vger.kernel.org
X-Gm-Message-State: AOJu0YyhoOsomWdsSJSmw0PONzVlKU1lLHaAmKInRK8DfvGUxy+GI6Fg
	UYeJNxLD9b77SD0mYfNRetqk8R5qSv6InY715XG2a9UWlrEtLbYodEIDXXwHGikvk9JUmK2LFzO
	vWnI3fMYA0bt2Nm2rN6s8C5+VO5/AdqnlQUlZVw==
X-Google-Smtp-Source: AGHT+IF44BE8hthfETE7YKbsC6rLoLa1YTo/RGuFZV8OdBGOLSb3SfY5NiHb4he54Y0t/CrceLlKzYCcXMtLj21d6h0=
X-Received: by 2002:a17:907:3ea7:b0:a99:3ac1:2997 with SMTP id
 a640c23a62f3a-a998d199561mr127216166b.25.1728464067351; Wed, 09 Oct 2024
 01:54:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241003211139.9296-1-alex.vinarskis@gmail.com>
 <20241003211139.9296-2-alex.vinarskis@gmail.com> <CAEvtbut-boW2nrbUTXFkvZ8N7qA_OtNz0dMPzRq0OYu4oF+jmg@mail.gmail.com>
 <7cfa0ccd-2fb3-41ed-ac4f-8ca9bf29514b@linaro.org>
In-Reply-To: <7cfa0ccd-2fb3-41ed-ac4f-8ca9bf29514b@linaro.org>
From: Stefan Schmidt <stefan.schmidt@linaro.org>
Date: Wed, 9 Oct 2024 10:54:15 +0200
Message-ID: <CAEvtbus6AK3-NHm98aO7O-PBYcaQ+VH_Mup5eViqMwCQrP1GFA@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: arm: qcom: Add Dell XPS 13 9345
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, robdclark@gmail.com, 
	peterdekraker@umito.nl, Bryan.Kemp@dell.com, tudor.laurentiu.oss@gmail.com
Content-Type: text/plain; charset="UTF-8"

Hello,

On Wed, 9 Oct 2024 at 08:55, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 08/10/2024 23:07, Stefan Schmidt wrote:
> > Hello Aleksandrs,
> >
> > [Again in plain text]
> >
> > On Thu, 3 Oct 2024 at 23:12, Aleksandrs Vinarskis
> > <alex.vinarskis@gmail.com> wrote:
> >>
> >> Document the X1E80100-based Dell XPS 13 9345 laptop, platform
> >> codenamed 'Tributo'/'Tributo R'.
> >>
> >> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> >> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> ---
> >>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> >> index 5cb54d69af0b..7c01fe30dabc 100644
> >> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> >> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> >> @@ -1058,6 +1058,7 @@ properties:
> >>        - items:
> >>            - enum:
> >>                - asus,vivobook-s15
> >> +              - dell,xps13-9345
> >>                - lenovo,yoga-slim7x
> >>                - microsoft,romulus13
> >>                - microsoft,romulus15
> >> --
> >> 2.43.0
> >
> > Tested-by: Stefan Schmidt <stefan.schmidt@linaro.org>
>
> How do you test bindings? Running static checks in kernel tree is the
> same as compiling software and adding tested-by.

I took the whole patchset in when testing it on the actual hardware,
so I gave the tested-by for the whole series as well.
That being said, the binding patch here does indeed not benefit from
any on device testing. Feel free to drop it.

regards
Stefan Schmidt

