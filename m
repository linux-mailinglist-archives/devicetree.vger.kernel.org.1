Return-Path: <devicetree+bounces-49650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE21B87748C
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 00:45:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E7EC2818C9
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 23:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47F39535D0;
	Sat,  9 Mar 2024 23:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jLyI/qk+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29070535B4
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 23:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710027905; cv=none; b=adOdikDSe8Jk0fAauJDvYIalryaUK91nmgQaqaVmNDvYfRHGUcF35w+RlX3q/UXgx6i34dNq11V4UZFDkBFX+C+TF7j4XWOpBElhYJ1IcFzBFo3Bdcb95lzlyxAyq+nbKLf6phiBCWWwMM2TqFWurhVgXU9thGFz3NVt9HRG3TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710027905; c=relaxed/simple;
	bh=3/X1psLY0Zim7ILl0IF3hRPUcK261kr1dKIcPs6BxMw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m90DwYI2q4+9A1YWH47HsFDGhu4j5PdJx9S3KH734TBsy9uwY3mX9ZL/8T0Fi8zc0n5msje1gVjic8I3LLhMSW+MbYAP0A941ZFEhFGGQM3KVI6sncWvg+hd9paiOnFpwPsa/i+rrNauzx0QVXtLPV1Y9CABLX2+J3mG4jGIiN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jLyI/qk+; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dcc73148611so3446545276.3
        for <devicetree@vger.kernel.org>; Sat, 09 Mar 2024 15:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710027901; x=1710632701; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0qceh3sC8kiofPhUeytSOniPbrODQxl3H6CnR4Wu1NQ=;
        b=jLyI/qk+s/RmWhoWQuJbrPZ8XCGTJLIKMQ4kqA1A9pM9FkPG65cQIL1u2lXBXv+Ds5
         +UslktRtXmDiWp9kdkv1cu6rVjFUIBiYFXjvd/8DpoZzSh+D3Vh7PmIu2hBast2ZNPD5
         PN04i9PFrArGm7O/ssv7FThABXkNIUe/j6puUNXcJ7VV8sUSS8XZVHPkgbetAMiv5jEj
         OuN8PI0sXRCHtvgYKjXHVqBdJCV3ruY7vXPPvGdWsTxhllJ2veD2IeIyAzu+/kfkg+b/
         aBIyQSQiVa4DnxwmVx7+Sw5MWawM/c2RjD1PODtf5t6T3VN5qYJJpAi4LTt7++XKTSJr
         81ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710027901; x=1710632701;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0qceh3sC8kiofPhUeytSOniPbrODQxl3H6CnR4Wu1NQ=;
        b=jhl0E4a21q55wBCC4D9vzyPcJ8U7GWSevDyUiU/2dZQy0SKj2p6nzeKp5oQeHQ5NPq
         RbTLzeypBnsAsKRj7Ka1sf3DMA7NdC8RNroRMX5nl4nnqmLxxYGKSmpbhO0tmPnhmeCJ
         6hNqBEqDlsDQYX6CxzuHeRqq/mRRSLtLLQqA2kkA2/g8nbRsU2HZToH20pO8ht0UevDH
         /famssZwM1Zaip5yzQPJwylOg6rcE3XzcBnrA1GCD8WT33GDDfamA9H4UahQPXcN29vl
         qLCN7xnwHd4OQiZUNzC38gaO0Tk2rw5fyIEIFv55MyQn0MEqBZyQoIQkYgKkUF5dNMnl
         1xsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCsfe4etl1TnQ+BMRFUGuzLvcWPEALUkny1A5dWARuAxQ5u4OLFvjUo87qFU/H/z0RJ8y6bc0G1+DOLiEyTmxJGYm363SviTC30w==
X-Gm-Message-State: AOJu0Ywc+FOEQKFfEWzZA3CWpK2beVMgeSmIBzP8SetsAVILbBz0TvhZ
	vq6z/NxsG6UvQsnKa1iRGkCx4DbPgZ1hI9ZMg+vZPbtz6nnu9jQcLotcFi/u41eBOQu3lOVOwfu
	vvKlZLCihz1HK1YWarr3Aq+Q9FFD8ELRHvQm5NQ==
X-Google-Smtp-Source: AGHT+IFjQ7Gcrqq5W6UpC7l3IWPSk0nRWcufMO5FpukUPjCY39q7UzwvY6a72jclK6kDbiYQJofABauyhz+jduzN9j0=
X-Received: by 2002:a81:a214:0:b0:609:ecb9:77c with SMTP id
 w20-20020a81a214000000b00609ecb9077cmr2763677ywg.18.1710027901171; Sat, 09
 Mar 2024 15:45:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240129092512.23602-1-quic_tengfan@quicinc.com>
 <20240129092512.23602-2-quic_tengfan@quicinc.com> <CAL_JsqJfsWaj9OPkvc34rBvx7W_3v9+1kZqNu6QKDsA=iWAA4w@mail.gmail.com>
 <CAL_JsqLbbRFijBXS5CyRm0P4FMY7bR3UUdgXA7xP4Z1oRevnzQ@mail.gmail.com>
In-Reply-To: <CAL_JsqLbbRFijBXS5CyRm0P4FMY7bR3UUdgXA7xP4Z1oRevnzQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 10 Mar 2024 00:44:50 +0100
Message-ID: <CACRpkdZ3uhyTnF7YkMk9sOeJJFZ4UPEna7PwpqPeBpWDdAmayA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: qcom: update compatible name
 for match with driver
To: Rob Herring <robh+dt@kernel.org>
Cc: Tengfei Fan <quic_tengfan@quicinc.com>, andersson@kernel.org, 
	konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 8, 2024 at 9:10=E2=80=AFPM Rob Herring <robh+dt@kernel.org> wro=
te:
> On Tue, Feb 27, 2024 at 7:37=E2=80=AFAM Rob Herring <robh+dt@kernel.org> =
wrote:
> > On Mon, Jan 29, 2024 at 3:25=E2=80=AFAM Tengfei Fan <quic_tengfan@quici=
nc.com> wrote:
> > >
> > > Use compatible name "qcom,sm4450-tlmm" instead of "qcom,sm4450-pinctr=
l"
> > > to match the compatible name in sm4450 pinctrl driver.
> > >
> > > Fixes: 7bf8b78f86db ("dt-bindings: pinctrl: qcom: Add SM4450 pinctrl"=
)
> > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> > > ---
> > >  Documentation/devicetree/bindings/pinctrl/qcom,sm4450-tlmm.yaml | 2 =
+-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm4450-tl=
mm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm4450-tlmm.yaml
> > > index bb08ca5a1509..bb675c8ec220 100644
> > > --- a/Documentation/devicetree/bindings/pinctrl/qcom,sm4450-tlmm.yaml
> > > +++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm4450-tlmm.yaml
> > > @@ -17,7 +17,7 @@ allOf:
> > >
> > >  properties:
> > >    compatible:
> > > -    const: qcom,sm4450-pinctrl
> > > +    const: qcom,sm4450-tlmm
> >
> > I think you forgot to update the example:
> >
> > Documentation/devicetree/bindings/pinctrl/qcom,sm4450-tlmm.example.dtb:
> > /example-0/pinctrl@f100000: failed to match any schema with
> > compatible: ['qcom,sm4450-tlmm']
>
> Still a warning in linux-next. Please send a fix.

I understand it as applying 1/2 is the fix so I applied it.

Yours,
Linus Walleij

