Return-Path: <devicetree+bounces-17437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6727F2892
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 10:20:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE7CE1C2102F
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 09:20:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65E6138F89;
	Tue, 21 Nov 2023 09:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JCKgJlqf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0734DE8
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 01:20:03 -0800 (PST)
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-da41acaea52so4971872276.3
        for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 01:20:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700558402; x=1701163202; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=e0GnsYSjmMnnlfj2CWEXFz1CqUs2uGzKvSRcvkw5bjs=;
        b=JCKgJlqfNrr/Kd0IbU4DXNllY54+Wjs3TBNKIPViw27VRn7QzfehGURVE/BCq6khIH
         SRFGCXovd0ZCX5fdajIY4jn2R6KVA2Yx193y33q8+SX8Iw7mv5yK/Y47Iu4Ybdi1yG0R
         pL9ySpMhZLFXOtY8CaqreGe9URFLWEKvUmQlsB7/OXAR8nOQtyp5H96H4lg7XfnDlbEG
         h9LoMTmNnROteLbb/WjWYHDRpOjYq+nTt4yRyB+ljOP0SCfBvO29CC+nyAhX6hGNlDu0
         VOARcusWCH3R6sdUGQ2na0xqZOItV+Y9E3deHI94trQ3mYYOsvdXFAv31d0ORwlxGzRT
         7nFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700558402; x=1701163202;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e0GnsYSjmMnnlfj2CWEXFz1CqUs2uGzKvSRcvkw5bjs=;
        b=vPajpO6I6VAmDO1xeznyzdJAIoUNiNtn6xhiLpxqFP7qSzPfUBYP0vTLrDIZFBvO2b
         MHeRqCZgwFJRUXbk3s+xWaDSv0MeE+vNMP0wPhIQ3lae8FTmN5IV1AUw3zChFxhaIm3h
         tzIcZTBRdIQ40sLuC+cEwx0WPXAl4txsNlq7psN2tZQGTrmIMuNEaKQJuwD/6YDYrF0P
         BxK9dB6lMZvmczRdSIYlS9W30hC6Lc987CUqGcdIHkinzoskgV36kApdnmPAtHN/fY63
         ig199WRqFc4yx/KQKrECxCAjd7l5Tt3kn+8CQRvLlzUV65dQsZ7/toVewVpGdJffbYCW
         u3lw==
X-Gm-Message-State: AOJu0YzIwfDwW1xfktftudA+NQuoNASfveJie7nYh5gSLrgXI69CQwNk
	/EN/XM0avn2tuCJF/4W153P0E2LOSW9v5cs51F5drg==
X-Google-Smtp-Source: AGHT+IGGKp46rrXxTxtTOtiXmo2Li35FgNeYDd8e5HO6aCQZjqPditR2ptVz6cb2AzXxBDV7hw/hT+XOKdph+CuSf5Y=
X-Received: by 2002:a25:ae03:0:b0:db0:2161:5950 with SMTP id
 a3-20020a25ae03000000b00db021615950mr10361703ybj.63.1700558402174; Tue, 21
 Nov 2023 01:20:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231120224919.2293730-1-dmitry.baryshkov@linaro.org>
 <20231120224919.2293730-2-dmitry.baryshkov@linaro.org> <ac3f3304-6dcd-470a-907c-32a63d3c39cf@linaro.org>
In-Reply-To: <ac3f3304-6dcd-470a-907c-32a63d3c39cf@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 Nov 2023 11:19:50 +0200
Message-ID: <CAA8EJppOGsc1+iw-YB9FBEm2UPpyAB_4cQg94Ob4swPzXheQ7A@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: connector: usb: add altmodes description
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Hans de Goede <hdegoede@redhat.com>, 
	=?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
	Mark Gross <markgross@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	platform-driver-x86@vger.kernel.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 21 Nov 2023 at 10:31, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/11/2023 23:00, Dmitry Baryshkov wrote:
> > Add description of the USB-C AltModes supported on the particular USB-C
> > connector. This is required for devices like Qualcomm Robotics RB5,
> > which have no other way to express alternative modes supported by the
> > hardware platform.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../bindings/connector/usb-connector.yaml     | 29 +++++++++++++++++++
> >  1 file changed, 29 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> > index 7c8a3e8430d3..c1aaac861d9d 100644
> > --- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
> > +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> > @@ -171,6 +171,28 @@ properties:
> >        offer the power, Capability Mismatch is set. Required for power sink and
> >        power dual role.
> >
> > +  altmodes:
> > +    type: object
> > +    description: List of Alternative Modes supported by the schematics on the
> > +      particular device. This is only necessary if there are no other means to
> > +      discover supported alternative modes (e.g. through the UCSI firmware
> > +      interface).
> > +
> > +    patternProperties:
> > +      "^(displayport)$":
>
> This is just a property, so should be under "properties:".

Having it under properties would make adding new altmodes harder.

Inherently it should become something like
"^(displayport|virtuallink|thunderbolt)$".

>
> The rest looks good to me, but I don't know USB that much to judge.
>
> Best regards,
> Krzysztof
>


-- 
With best wishes
Dmitry

