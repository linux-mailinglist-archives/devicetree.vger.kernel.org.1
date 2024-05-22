Return-Path: <devicetree+bounces-68384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E56E8CC1BA
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 15:04:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17AAE1C20F30
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 13:04:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74BA38287F;
	Wed, 22 May 2024 13:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="aiR9Rt8G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0CA3757FD
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 13:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716383085; cv=none; b=SJZA9Bm73U4t1U/PXu91ZSG+b47u3unY/RuDnunPo3Jg62OeEcVVC5V8zebev3tWN7u6Oq3mgDsMmKzmuUlyRhHvmxNDoqqh4ODdOKP7xw3dpYb+CXenl8GWFtaHnWUzzPet+DSWmUv+VeF+nikuVOYcX7kJ42oYIOFoW3wkW+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716383085; c=relaxed/simple;
	bh=brhl0/DXRnXV/ZHmDUXj41RbzdwcZhb7GnVstZ8T2/Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qEZ0Vqveau4ruENk/CydtgwaKzT8T3Awn0T9afti9aeL73XlktguSr/lqDN9h7THLzFGbStnEV88zBepcoj+VGX5KVDYTnehv9lfWFWegskObVV5h3naI2lRr0YAxTB2EpxaQX8mKkYpW+HaEWH+uIpw/e52v1QRvzIKavDreeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=aiR9Rt8G; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-51f0602bc58so965365e87.0
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 06:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1716383082; x=1716987882; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DGTGELrUuaUwo7ycK6qRf+gpBatOH6Oxm8oaeQeJOPA=;
        b=aiR9Rt8GxGCnpDFGFQfe3dCY7F2nZCvdSz2NjiWDzctcYTihJ4E/zfJKvrEpeQsU+I
         Uuy7MY3gAb67512YFST2WvzRTqDTt62dChL9HANYacUASG9WyqAI7IS7S8SAH6nNNlE6
         43J3Ns3ggwdugR5I1EpETEk765RNiDyWzHW8h21s0LGUdbc0x0ErxQcjtjvl1WZJAgLa
         LBFaNexDmFQyolAIMmxEouA9hlkNzpAJ3npSZ3hY2v/joRCCKwlVP0QNi7+45zf5zh69
         pRPdB4Bbdyj3hkqsLQAwneFnug/VFEMl5GW2DT5BxEfDBL8XtgPZi4C21HSP4tl+/2wr
         FAvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716383082; x=1716987882;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DGTGELrUuaUwo7ycK6qRf+gpBatOH6Oxm8oaeQeJOPA=;
        b=wdw31Lm3+/kqD4iMsF5NrTd30WCcbG5BCWe0z0Bxx4pfwZJNQAjQcI6jHKZ03heThA
         jiCPxZr68aswpp+qBtM385+mIUTwncJya0CfMm6+5pCB3YG5yDCy/SWmBHvt9O/oRgYJ
         PGm6TtJUQ0CCb7XBMQ670jI+kApLo2XKNZ3TD3B/42qS1UDQ13xntmdSqczei8gP18q0
         DgI2NSC12RYdSJIwCxbnPHrQCDcNKJ/xBcc7pXV7JMS6EtgkQ9Z3yttKRydkTNUQcp6D
         RHMR68Ipc/xQZGl/Qj7JrvK87R7PbB09NZntEfvSE/YcMfbFKNA/Ahg3WdQBXidQthjB
         xw4g==
X-Forwarded-Encrypted: i=1; AJvYcCUQFuUYHbnrOtBRaFgp4Sckpkz9TycVbp2ZTG3QmkKaNlw5wW3qKG+7KZCJZHn415CHUA3t0+Txs8DpbcFANgMvJXi08vh6AWcDqQ==
X-Gm-Message-State: AOJu0Yx6hNv7wGV5karp3B4RRab1Ee0WNmN/PggvwmbG0qV+GlY5OCIC
	WNsFvhz4T9rbvhxjJYv9py/VAjRxn6XLRZ7phA9Ertq6jj7e0vqZm+ePoDxVHMoAaQ0AVSV0+l8
	kddQboeJtRyXwHCT/F++24mulVmbR1IdLBGw5ZQ==
X-Google-Smtp-Source: AGHT+IEkHB/CMIYxvydwEoilsMzXnYS/9G5iKitRKDFPLk8duwpCMuRIhLgUbWJeL7uEvdxIE6YvbGUjSaXZnyWMHSc=
X-Received: by 2002:ac2:5f70:0:b0:520:77e7:79d0 with SMTP id
 2adb3069b0e04-524079a89acmr3037442e87.4.1716383081916; Wed, 22 May 2024
 06:04:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240522-topic-lemans-iot-remoteproc-v1-0-af9fab7b27f0@linaro.org>
 <20240522-topic-lemans-iot-remoteproc-v1-1-af9fab7b27f0@linaro.org> <e89c3270-e51f-4d5b-87db-09ff8f0961e6@linaro.org>
In-Reply-To: <e89c3270-e51f-4d5b-87db-09ff8f0961e6@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 22 May 2024 15:04:30 +0200
Message-ID: <CAMRc=MczvfcXnEae__LJh47T=vCTbCz9EHOrNP+QmpTDvdarZw@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: remoteproc: qcom,sm8550-pas: Document
 the SA8775p ADSP, CDSP and GPDSP
To: neil.armstrong@linaro.org
Cc: Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Tengfei Fan <quic_tengfan@quicinc.com>, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>, Alex Elder <elder@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 22, 2024 at 2:42=E2=80=AFPM <neil.armstrong@linaro.org> wrote:
>
> On 22/05/2024 14:08, Bartosz Golaszewski wrote:
> > From: Tengfei Fan <quic_tengfan@quicinc.com>
> >
> > Document the compatibles for the components used to boot the ADSP, CDSP=
0,
> > CDSP1, GPDSP0 and GPDSP1 on the SA8775p SoC.
> >
> > Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> > Co-developed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
> >   .../bindings/remoteproc/qcom,sm8550-pas.yaml       | 76 +++++++++++++=
++++++++-
> >   1 file changed, 75 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-p=
as.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
> > index 73fda7565cd1..9d3a862c39e1 100644
> > --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
> > +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
> > @@ -16,6 +16,11 @@ description:
> >   properties:
> >     compatible:
> >       enum:
> > +      - qcom,sa8775p-adsp-pas
> > +      - qcom,sa8775p-cdsp0-pas
> > +      - qcom,sa8775p-cdsp1-pas
> > +      - qcom,sa8775p-gpdsp0-pas
> > +      - qcom,sa8775p-gpdsp1-pas
> >         - qcom,sm8550-adsp-pas
> >         - qcom,sm8550-cdsp-pas
> >         - qcom,sm8550-mpss-pas
> > @@ -44,12 +49,13 @@ properties:
> >
> >     firmware-name:
> >       $ref: /schemas/types.yaml#/definitions/string-array
> > +    minItems: 1
>
> This will allow a single firmware name for all compatible,
> which is wrong
>

So increasing the limit from the default under allOf doesn't seem to
work, should I instead keep this and make the lower limit stricter for
all other models?

Bart

> >       items:
> >         - description: Firmware name of the Hexagon core
> >         - description: Firmware name of the Hexagon Devicetree
> >
> >     memory-region:
> > -    minItems: 2
> > +    minItems: 1
>
> Same here
>
> >       items:
> >         - description: Memory region for main Firmware authentication
> >         - description: Memory region for Devicetree Firmware authentica=
tion
> > @@ -81,6 +87,21 @@ allOf:
> >             maxItems: 5
> >           memory-region:
> >             maxItems: 2
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          enum:
> > +            - qcom,sa8775p-adsp-pas
> > +            - qcom,sa8775p-cdsp0-pas
> > +            - qcom,sa8775p-cdsp1-pas
> > +            - qcom,sa8775p-gpdsp0-pas
> > +            - qcom,sa8775p-gpdsp1-pas
> > +    then:
> > +      properties:
> > +        interrupts:
> > +          maxItems: 5
> > +        interrupt-names:
> > +          maxItems: 5
> >     - if:
> >         properties:
> >           compatible:
> > @@ -128,6 +149,7 @@ allOf:
> >         properties:
> >           compatible:
> >             enum:
> > +            - qcom,sa8775p-adsp-pas
> >               - qcom,sm8550-adsp-pas
> >               - qcom,sm8650-adsp-pas
> >               - qcom,x1e80100-adsp-pas
> > @@ -177,6 +199,58 @@ allOf:
> >               - const: cx
> >               - const: mxc
> >               - const: nsp
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          enum:
> > +            - qcom,sa8775p-cdsp-pas
> > +    then:
> > +      properties:
> > +        power-domains:
> > +          items:
> > +            - description: CX power domain
> > +            - description: MXC power domain
> > +            - description: NSP0 power domain
> > +        power-domain-names:
> > +          items:
> > +            - const: cx
> > +            - const: mxc
> > +            - const: nsp0
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          enum:
> > +            - qcom,sa8775p-cdsp1-pas
> > +    then:
> > +      properties:
> > +        power-domains:
> > +          items:
> > +            - description: CX power domain
> > +            - description: MXC power domain
> > +            - description: NSP1 power domain
> > +        power-domain-names:
> > +          items:
> > +            - const: cx
> > +            - const: mxc
> > +            - const: nsp1
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          enum:
> > +            - qcom,sa8775p-gpdsp0-pas
> > +            - qcom,sa8775p-gpdsp1-pas
> > +    then:
> > +      properties:
> > +        power-domains:
> > +          items:
> > +            - description: CX power domain
> > +            - description: MXC power domain
> > +        power-domain-names:
> > +          items:
> > +            - const: cx
> > +            - const: mxc
> >
> >   unevaluatedProperties: false
> >
> >
>

