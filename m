Return-Path: <devicetree+bounces-56555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D288E899B25
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 12:46:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B2F891C21144
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 10:46:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA7B71649C6;
	Fri,  5 Apr 2024 10:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GGWwebyO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD9916087B
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 10:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712313980; cv=none; b=LrrG/x2Wx6lFPC8TQseC4mtGJ5Jn+ZN68cuOSuJk5RWY+CNLtpDIQ4lAFPAywYWHQhIkwSoe8bS64kqR9DrGeJMcLn4CWM/czytLMx5qZslm6vZn6jsUlEm/7BVRNp+Sswcm/IF4E8SjOxiFWEh/qDah9KlVycVsMFJ1+ROos54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712313980; c=relaxed/simple;
	bh=L4E8p/GV0Ds3nAyTGC7XhelVlzhjjV+Qy3Ty0PI9xhc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z6P2/4RLCwZijuWdMjuaFRRyS4wQCLJ0y0A876QSdduuVI0fkkJDp+XblAxF+dZy3q6oofrgEdkevTTTm388Q7WSeFasVJn/h44XZlt9TDyW9gKLhtP5zJr7jdaSSTCnV/pJkrEXJGFQ6MDYug7+jeGCDsDy6fHrPBG1YHmZNAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GGWwebyO; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-615038fc5baso21449957b3.3
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 03:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712313978; x=1712918778; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q464s0pydIE+zRv4fDUf6M5jc7NXRIaMdUPXgVeAtAQ=;
        b=GGWwebyODwX1q83KcA6XibR/TAUUryUs9RAXB6qHCP44ebWZzZS5aIXNPQWAxE1AO7
         gYKsazdPwfBfDJvbTpgXc68DiPMoCz+dqMq9Q0M1hIaJnwpCyA9SrtkIubiAXlCAMcsS
         78goY38sLNRvBNY95rZKbN0OHqZytgDZd+TFDwzZvnl6+F9Nvu3hDdFSvn/ovsPPgNkm
         OI6GYMzBW4EXmaee6BavjZ9WetJnuyyzm1Hm4oXdkWhqAlr93wPkIbuAb8bvH9ofV9qt
         gpwBNontvPPV6cDagbQqe7sMvoItWqAjbq/YWvIHiu5HYF6PabV77Yavag1P+VUnamnX
         Hadw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712313978; x=1712918778;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q464s0pydIE+zRv4fDUf6M5jc7NXRIaMdUPXgVeAtAQ=;
        b=gXNCIg51ogqf7sBcJQHHte9NoFWRfQElVSV22j9PhG10afN2H8SZPeQWpXb8gE6JLP
         lxSTelPDw38snP9jlXFZYqUmonac4/ezGqLsYufLyLommXID/VMWTVA4rFEgV0LHbA2l
         QCtIveRRns12FvLAa0Lvtgek84v2vGcoThD44mSua3WqJ0vi2Dv7bKewH39iyVTwZm1L
         RLV9bXY6mmccAv1G94Ypvbmot4cBMBDT6hPY8nI2Z8zvT/TCeUqUu5SVoTALnEpk1vr4
         CTh6EpI+qSdw89wVaYUjQwFBeuPwkiA+JG07x3uY0cyaGgnsyM7qkfuOvi2pkM2WL4ML
         erRg==
X-Forwarded-Encrypted: i=1; AJvYcCWBlmlDSVY6WsrA9UfouVVTYKCtbI9h2Da1UgRAskgx2PSmSRbXyR8NM1StDUDc3gvILp4XisApQ/r13j5yZAamhImZ9l2pQmfp2Q==
X-Gm-Message-State: AOJu0YyUte9X/NGjEblu6oGMi2maVouyQcRMimcGF3WxwRQ6E0aHd3ei
	GG96KQhgnNQhHOzA625dMv2wkDd4eKhkSeg1kAz5ITKu6r9k5xdkXHgL/BMCtJZ+4RxUxV4gG4l
	c/tRFW9idVUZjZkUL88k2cwFhohCM5bPFBG+Z1g==
X-Google-Smtp-Source: AGHT+IFD4lOAA6OE545MWaALDTv8kewFB0UhOTHwNBgdOdA/c4Xh5GLbUDrWS+o4QO2az8mbVpwytUQzz3UDkLFdfw8=
X-Received: by 2002:a25:bc85:0:b0:dcc:44d7:5c7f with SMTP id
 e5-20020a25bc85000000b00dcc44d75c7fmr782319ybk.62.1712313978067; Fri, 05 Apr
 2024 03:46:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240404084631.417779-1-quic_mohs@quicinc.com>
 <20240404084631.417779-2-quic_mohs@quicinc.com> <CAA8EJpqWaYhzPKgTREtJnfdNZ4oSFZaRFM7Jhg+qd3AqadGOkA@mail.gmail.com>
 <797d67b9-9e09-8b84-9abc-dd4a4a2a40f5@quicinc.com>
In-Reply-To: <797d67b9-9e09-8b84-9abc-dd4a4a2a40f5@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 5 Apr 2024 13:46:07 +0300
Message-ID: <CAA8EJpo2__vcpqq1zofyyZ6UwPPn7Ed0R=TPcMZ25+JHwRExwg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: qcom,sm8250: Add QCM6490 snd
 QCS6490 sound card
To: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Banajit Goswami <bgoswami@quicinc.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-arm-msm@vger.kernel.org, 
	alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_rohkumar@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 5 Apr 2024 at 08:56, Mohammad Rafi Shaik <quic_mohs@quicinc.com> wrote:
>
> On 4/4/2024 2:23 PM, Dmitry Baryshkov wrote:
> > On Thu, 4 Apr 2024 at 11:48, Mohammad Rafi Shaik <quic_mohs@quicinc.com> wrote:
> >>
> >> Document the bindings for the Qualcomm QCM6490 IDP and QCS6490 RB3Gen2
> >> soc platforms sound card.
> >>
> >> The bindings are the same as for other newer Qualcomm ADSP sound cards,
> >> thus keep them in existing qcom,sm8250.yaml file, even though Linux driver
> >> is separate.
> >>
> >> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> >> ---
> >>   Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 2 ++
> >>   1 file changed, 2 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> >> index 2ab6871e89e5..ff1a27f26bc2 100644
> >> --- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> >> +++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> >> @@ -29,6 +29,8 @@ properties:
> >>         - enum:
> >>             - qcom,apq8016-sbc-sndcard
> >>             - qcom,msm8916-qdsp6-sndcard
> >> +          - qcom,qcm6490-sndcard
> >> +          - qcom,qcs6490-rb3gen2-sndcard
> >
> > My 2c: you are adding one soundcard for the SoC family (qcm6490) and
> > another one for the particular board kind (qcs6490-rb3gen2). That
> > doesn't seem logical.
>
> The qcm6490-sndcard compatible for enabling soundcard on
> qcm6490 IDP boards.
>
> Will change compatible name as qcom,qcm6490-idp-sndcard.

Any consistent way is fine with me.


-- 
With best wishes
Dmitry

