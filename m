Return-Path: <devicetree+bounces-89397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C48940FED
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 12:50:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 44EB5B28900
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 10:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 333DC199E80;
	Tue, 30 Jul 2024 10:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FC/eXwEH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5602E1990AD
	for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 10:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722335444; cv=none; b=p7PKoepDxluEaPtHe/ApFrXoTB8gLZsSFzye53z3jKR3gYOVDOpXEZntMlODgxSOLYFwud5Z+CozuYy0mxT/u5AscEVrHOAlDMzB5fcD2bCQEm0Y4PVRW2/dT6prtyE9hMPQ+IN8KxBYatnTeKWQMQN5BYo9LBVB45K+Twenqqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722335444; c=relaxed/simple;
	bh=+SZusJMwP5eTibZ0Xgy1WVMZxJPy4VghvcWPJCa+v2o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RwhBhG596Tc4jN8qBq88EQXYgZtYjUPpsGdusczoWPzMt4Ou0zZH1Ex1ofFOkIXFNKUZ/quPpzyRXdqCi+k/Cy6lKVDN0xBWMhqO7dQiXsHdSfgRhLO/a+VeGERUR20JBPAnsiEwHTJEXhq4I4bOmk5sfittzpr35OXo4e1jxNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FC/eXwEH; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a7a94aa5080so516851366b.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 03:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722335440; x=1722940240; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gfgTeO7eFehEfuHZo0dSc8+LCrIJf/o/Tpdg8fxovkI=;
        b=FC/eXwEHe+1YqH+wwKuOMai2VT7ZmZqh6eRRF33Y/d5LQefLFjk4sqMsMHrflheGxJ
         3+aTTh8rpMI/wOHcjX1HmhayCbUIXQT1kyjpRqyZBZaLYWTJn+JL9dHVWXyofisIohiu
         5eL5u2LC7DI/zcyv+eGpXIDW6rjORiciDXORmVyR7CJ2M5GTR8uGing/Js+yaQpHP66r
         YVxmC8yXsTPhMha2vvaUV6ADT+nQ+G+WFvp8B1y1TJBNxpvSx+tgIljhFK5im0dp5/F2
         3YqqkH+VJnfNF8Aut7oMCPDdFU9GsEugUuSjjRLO+G2eKNR0bQgE5VvNIdIRPndWwlTO
         UIDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722335440; x=1722940240;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gfgTeO7eFehEfuHZo0dSc8+LCrIJf/o/Tpdg8fxovkI=;
        b=pKu+W2DIFcRBz2kZBTVBI7CUi7ny575QM/W4i07ZaPhHj2Q/q5vjAWHjNr/MTUlqEH
         mplKgkbrRtG3xldSLe1vePSlgoKN/tSnPRjXXJjuLKgnUY2c/XZ6mFUsQjbRDx9U7TpQ
         HaK9xhFhLA5CQL9hEpXna02gL1ZLBuphXuh22A0+r50uQmypQQxofN6lurMqtQDQmvU2
         c1lhHIvdGhbxdZSJ7GOCFYdazmfh12yPmrooNlxS9eKNhD8Iq+R5oP/cFmVlRu3w0nC3
         hGnGnC1S467IYI4LxPaukrEE6qX1nUpgCpSOkvJ5C2jrYW2DKHZ71PTzRAzAVXjY/dlH
         QQhw==
X-Forwarded-Encrypted: i=1; AJvYcCVIl2Wx1ILcxW4YQtAxRLvxu8reM98Haba7UzIPDFwBNpxb48ox0zl6ds9o7N1Kk8XqAB8Ha9jPcMVUl1TZcRTrf5T3d7W4CKrmoQ==
X-Gm-Message-State: AOJu0YwtuZFXwgofj9LkKhQBd/CgsuQCecSwt9QBU3RwvdSU1sf3TsXS
	KukEJoJ3gIE1EILpdU8No+dMMkbZCWXDdHMGtskagf1Y1OWBpEZuTFBtHyJG7+g=
X-Google-Smtp-Source: AGHT+IGxx92z7IX9vhw/RN+EO3wwfQ/M++6atfLPhpUAf+bjo2ykfbCE8+G6Hz0TR83vimf4DR4ZTQ==
X-Received: by 2002:a17:906:dc8b:b0:a7a:aa35:4091 with SMTP id a640c23a62f3a-a7d3ff5b256mr842252966b.25.1722335440243;
        Tue, 30 Jul 2024 03:30:40 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff1f:b280:8303:a4e9:79c5:e939])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acab4ddefsm625461366b.59.2024.07.30.03.30.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 03:30:39 -0700 (PDT)
Date: Tue, 30 Jul 2024 12:30:38 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Stephan Gerhold <stephan@gerhold.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, alsa-devel@alsa-project.org,
	linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Adam Skladowski <a39.skl@gmail.com>
Subject: Re: [PATCH] ASoC: dt-bindings: qcom,apq8016-sbc-sndcard: move to
 separate binding
Message-ID: <ZqjAzgoKo-5vaCtK@linaro.org>
References: <20240723083300.35605-1-krzysztof.kozlowski@linaro.org>
 <ZqVXUI37fNB5D0DM@gerhold.net>
 <3d9f76c1-2e14-43dc-b438-5fac94ffc73e@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3d9f76c1-2e14-43dc-b438-5fac94ffc73e@kernel.org>

On Sun, Jul 28, 2024 at 12:30:12PM +0200, Krzysztof Kozlowski wrote:
> On 27/07/2024 22:23, Stephan Gerhold wrote:
> > On Tue, Jul 23, 2024 at 10:33:00AM +0200, Krzysztof Kozlowski wrote:
> >> The APQ8016 SBC and MSM8916 QDSP6 sound cards are a bit different from
> >> others: they have additional IO muxing address space and pin control.
> >> Move them to separate schema, so the original qcom,sm8250.yaml will be
> >> easier to manage.  New schema is going to grow for other platforms
> >> having more of IO muxing address spaces.
> >>
> >> Cc: Adam Skladowski <a39.skl@gmail.com>
> >> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> ---
> >> .../sound/qcom,apq8016-sbc-sndcard.yaml       | 205 ++++++++++++++++++
> >> .../bindings/sound/qcom,sm8250.yaml           | 137 ------------
> >> 2 files changed, 205 insertions(+), 137 deletions(-)
> >> create mode 100644 Documentation/devicetree/bindings/sound/qcom,apq8016-sbc-sndcard.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/sound/qcom,apq8016-sbc-sndcard.yaml b/Documentation/devicetree/bindings/sound/qcom,apq8016-sbc-sndcard.yaml
> >> new file mode 100644
> >> index 000000000000..6ad451549036
> >> [...]
> >> diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> >> index c9076dcd44c1..1d3acdc0c733 100644
> >> --- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> >> +++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> >> @@ -27,9 +27,7 @@ properties:
> >>               - qcom,sm8650-sndcard
> >>           - const: qcom,sm8450-sndcard
> >>       - enum:
> >> -          - qcom,apq8016-sbc-sndcard
> >>           - qcom,apq8096-sndcard
> >> -          - qcom,msm8916-qdsp6-sndcard
> >>           - qcom,qcm6490-idp-sndcard
> >>           - qcom,qcs6490-rb3gen2-sndcard
> >>           - qcom,qrb5165-rb5-sndcard
> >> @@ -58,18 +56,6 @@ properties:
> >>     $ref: /schemas/types.yaml#/definitions/string
> >>     description: User visible long sound card name
> >>
> >> -  pin-switches:
> >> -    description: List of widget names for which pin switches should be created.
> >> -    $ref: /schemas/types.yaml#/definitions/string-array
> >> -
> >> -  widgets:
> >> -    description: User specified audio sound widgets.
> >> -    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
> >> -
> > 
> > These two properties are also valid and supported on all newer
> > platforms, please keep them here! There are certain use cases where
> > these are needed independent of the platform, e.g. to control an analog
> > switch or mux connected to speaker or headphone outputs.
> > 
> > I agree that it is cleaner to move the IO muxing to a new schema though.
> > Perhaps we could define something like a shared qcom,sndcard-common.yaml
> > schema to avoid duplication for these generic properties? In the Linux
> > driver, these are handled for all platforms in sound/soc/qcom/common.c.
> 
> This was added to the common driver code but it does not mean it is
> reasonable binding. I don't understand why for example we even accept
> here aux-devs, instead of putting them into one of DAI links.
> 

The auxiliary devices (typically analog audio components) are not
necessarily related to one particular digital audio interface link. It
is typically the case (e.g. an analog speaker amplifier connected in
parallel to the headphone output of one of the codecs), but I don't
think we can assume that as a general rule. There are often multiple DAI
links that go to one codec and then it might be tricky to decide which
of the DAI links the aux-dev belongs to.

> The pin-switches and widgets could be used, but are they? The only valid
> argument to keep them is that you added them to common driver code.

These go hand in hand with the aux-devs property. If you have multiple
analog audio components connected to a codec output (e.g. an analog
speaker amplifier connected to the codec headphone output) then the
pin-switches/widgets describe that the output paths (speaker and
headphones) should be separately controllable.

The alternative for pin-switches and widgets in the DT is to hardcode
them in the ASoC board/machine driver with a separate board-specific
compatible. Personally, I would prefer to keep the machine driver
specific to the SoC instead of having definitions for each and every
board.

Thanks,
Stephan

