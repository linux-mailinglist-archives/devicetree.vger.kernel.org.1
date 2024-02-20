Return-Path: <devicetree+bounces-43738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 629B385B6AE
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 10:07:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D4A028C2AA
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 09:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A45E85F477;
	Tue, 20 Feb 2024 09:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LIB+prbN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80675F469
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 09:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708419975; cv=none; b=m8KQekkQmeM+Ps32j3Z+cgaGA8msNG3DPgwP303HjOo5iFV92u4dFFb2FXK1ovOOgFn/dd2Tzf5ONAt8AtuvCAgfPNBvllSaH1jj+HnFaEwfA3Yl+HViu8slFa6Rr7S+gGP10Ia9v8OECVq4PX6tYUe5xKYlwFoRJNuD8QvbXYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708419975; c=relaxed/simple;
	bh=N84xpgCHrORAjoI2Nkdi/wi3wZrgord7nWepiT3bvPA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qgfPnZhaIMOx0KPsqcHZ9BaTJvXKrE8IiEnsbAmKJHAFJU5DR4I49BB3SF8t0LSYClMjuLtEmRecIto6xUtCZEG7aSJt6u3bARTMp13UX2RmOUHRj5HlxQXm6OHBEXjgpvcV68Ud1GlWj0dxi4eVBC1Zr1Z3CxaKGPNj+4KP9Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LIB+prbN; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dcd7c526cc0so5532766276.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 01:06:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708419973; x=1709024773; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=R0CyeS56TSWYq1NAjfXsEvKV0TSPVdyTmQCCIvDs6Vk=;
        b=LIB+prbNJQ4xwvId5haLIrz9MKnw2dAFfET7Y3YQF7PBn3wPmQLpZa+6E9ei/DXPmE
         UmvBS0vnLKV087zDaFocXnSsig/WW2LJL6Q4biN4TcXcGiU0q74tQuWlpH4mOVCbfUnp
         Q7RrHBQC7CN+wTw9VGIdmLRfny9zukw4STKn7/2y7wUZgXSe5VQVlQtShFvS6MsQJw5S
         Rq25wYI2NTEIq0zFKUx/Qjg3kFmkEFMtg3w9qDR8gnycsze6A4/KuZkTwO+4VS+iPzoa
         QMtMB8irZuCBIpVkHTkREMxQUnTS+UuBxVRtCfhbSq/B7mgXxa3alRtaUC0GsXawKxgS
         iO9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708419973; x=1709024773;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R0CyeS56TSWYq1NAjfXsEvKV0TSPVdyTmQCCIvDs6Vk=;
        b=OixaLkET1KldGOR++O/npRubWObahjeHYsbuCGnO9g1ylr9R2+38E9Tp+P1IorIVmy
         ueEkQQ7n0rApuyftjt79taSHE69GpxD83ojKVQmuDd7+THTwW01qvG2lv5rZfw5fBnAV
         Dloz9Xeiw7h6hNfax+bkZCfkgYhUSbe+9+khKkxMcOVOV+i2ydCQK/Cx6fq0UOzVpIaW
         Io9BwoLovaIac51ga0U35wmbvABCHBiv91SjCVpJWR66Vgq+2Q+6fvrbj0aTUwhbJWT9
         5krqHzS+TuR0T+1dRqcPtyYyXUvrYwC0oQxnDOiycEotcxFulWxCIwkqS6OM0vSc1Co/
         3OKA==
X-Forwarded-Encrypted: i=1; AJvYcCWTcoPr7CYsfMNMb73SxR+7f8QB0KAaNi1gKqXeISPy5pHAK+mnu6aZSDq6eTzg5PqQkXvjS5Gy9iSNZk/oSOiDzWFN7S0zyUFGOg==
X-Gm-Message-State: AOJu0YzHnwA0nxFiVwCgCr7ZupwQ/Vw9gZpGYmITKm7Y6ZLa/Y+UL1NA
	25WXsax2HK5SVBj17SFDO3kM/rEv8sL1k7YIUHnlRl1RvRyPnmlF+bhK9Q4sFiIuua1Jc4HjN22
	JDcyHHC+W6HX3yYVuCOF/MNNyUGeAdpztsVdA8A==
X-Google-Smtp-Source: AGHT+IF50+ClBlIDnyyXGYJ4+9cr8Az9j0fxyWVTYfiRxOMlR8QjxPnTxJgiBCmodSw3Jj3u9rVrMXJR5+zExry6ZEc=
X-Received: by 2002:a25:680e:0:b0:dbd:553d:9d6a with SMTP id
 d14-20020a25680e000000b00dbd553d9d6amr14218173ybc.40.1708419972956; Tue, 20
 Feb 2024 01:06:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240205115721.1195336-1-quic_jingyw@quicinc.com>
 <20240205115721.1195336-2-quic_jingyw@quicinc.com> <2fa4d857-7262-40df-a842-56945ecffb81@linaro.org>
 <441ffff2-81a8-4b53-b15b-5ac6375d65c3@quicinc.com>
In-Reply-To: <441ffff2-81a8-4b53-b15b-5ac6375d65c3@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 11:06:01 +0200
Message-ID: <CAA8EJpra8UjWzWArQQg3Cq3m7WLo4Shnsj=EOhb50Yh46bOh7w@mail.gmail.com>
Subject: Re: [RFC PATCH 1/6] dt-bindings: arm: qcom: Document sm8650p soc and
 AIM500 AIoT board
To: Jingyi Wang <quic_jingyw@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	andersson@kernel.org, konrad.dybcio@linaro.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 20 Feb 2024 at 11:00, Jingyi Wang <quic_jingyw@quicinc.com> wrote:
>
>
> Hi Krzysztof,
>
> On 2/5/2024 8:33 PM, Krzysztof Kozlowski wrote:
> > On 05/02/2024 12:57, Jingyi Wang wrote:
> >> Document Qualcomm SM8650P SoC and AIM500 AIoT board.
> >
> > Please describe shortly what is SM8650P and what are the differences
> > with SM8650.
> >
> >>
> >> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
> >> ---
> >>  Documentation/devicetree/bindings/arm/qcom.yaml | 9 +++++++++
> >>  1 file changed, 9 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> >> index 1999a5f2f254..e87ceb42853b 100644
> >> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> >> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> >> @@ -88,11 +88,13 @@ description: |
> >>          sm8450
> >>          sm8550
> >>          sm8650
> >> +        sm8650p
> >>          x1e80100
> >>
> >>    The 'board' element must be one of the following strings:
> >>
> >>          adp
> >> +        aim500-aiot
> >
> > Drop this line.
> >
> drop this line will cause fail dt binding check failure, any suggestion on that?

It will not, it is just a free-form text

> >>          cdp
> >>          dragonboard
> >>          idp
> >> @@ -1051,6 +1053,13 @@ properties:
> >>                - qcom,sm8650-qrd
> >>            - const: qcom,sm8650
> >>
> >> +      - items:
> >> +          - enum:
> >> +              - qcom,sm8650p-aim500-aiot
> >> +          - const: qcom,sm8650p-aim500
> >> +          - const: qcom,sm8650p
> >> +          - const: qcom,sm8650
> >
> >
> >
> > Best regards,
> > Krzysztof
> >
> Thanks,
> Jingyi
>


-- 
With best wishes
Dmitry

