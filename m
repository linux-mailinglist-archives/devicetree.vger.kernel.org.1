Return-Path: <devicetree+bounces-123406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA689D46E1
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 05:38:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 96BAB1F2217E
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 04:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1B9113B59E;
	Thu, 21 Nov 2024 04:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZSYuPck0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E4E74068
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 04:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732163926; cv=none; b=ArJAgoR4pALmP1f2k7/HvRo5fhzbQ1RN+8zTa2pgJxbv8GH+SNe9Ghi5YVgM+USnZ8FmZIgtO13oaAf0KRdO2hkGwO+HY3to8WRrqjS6gCLGWi6nqXX7vF+5DUAY5sTDUNqAMJwANHo6irSMi/qKcQ91+NY1yx0y1+3xyG0T0ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732163926; c=relaxed/simple;
	bh=6R/H2aCpWWe9mDwoGtCzoGDBGd4Em2C16yy77qhvZSA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SMsbAglPhbcVGauCWiklj/a6+dYD7rJOflIs8DrxWdwUejRQ5Wv9u8PXhdLcejprRuYBpcIpZpPq0vTxNHXrjqP153ovlCY6lGRLwlozUp3mOpD75Te96SSSeiCPrCdSfWxqY7HwAe6Ym9nk1Dhon77xBE7vXQL+Mhzwn0Y392o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZSYuPck0; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e388d8850d3so477068276.3
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 20:38:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732163924; x=1732768724; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kHq3g3nEaimpSCWtvuF8a7MUOkKPxPFfmbJ4EXDd6nY=;
        b=ZSYuPck02Z3xZoMz3/g7zpJ+l0mYnjrS2MBDrJjr5faEibwR5xXBzqvGzAbGaICjBI
         jIAOA01Y3yNC4+0p1+uxZRfQ70OybJyCsmcXwgtn/psPJsvMiw8AJP9VZZwVE9xZr57g
         jgG8bx6hPe5HIgvvjyfBVn8/SIQHkgxRF3uvFjeyfkJgSSZuwDSSKyLnwbbAn9O7EkgM
         HvoJhgq2kuM3Z9o82sYa6s0b1wxB197fAlgBFP4dTDeIDi4pIkrJe+Bem4+8UHn9SXhO
         xKwJg5rKFQGgK0/3q9EkSiwTE0rUhCMQyngAVaTHPn7EDB6H4z4fkVCHgVVZhKetw1qr
         K52w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732163924; x=1732768724;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kHq3g3nEaimpSCWtvuF8a7MUOkKPxPFfmbJ4EXDd6nY=;
        b=askR1i3DbucgEjkbBiJAs5IY+8xwQNayY+If/asSaj+RtBXS63Dzi8gcKiNxLFKnEH
         FJzRiFGWA7H3PtcLbyRtrwLsyacKLvPOUoqv0L1BvHF6Ocl4mQtgIMsC263vQN5z88g/
         VkfRlFGeZJ73gkES1WSoO/P8U3B5aYUga5ifmdnQ/l5PtLJKX1TAzrx7henQDVrBRbRF
         HrciSq+J2xu5Kft7EnCoAihlNI9+lB4tWUJvAisktY8SNp0CxjnqVXOlVQRsDkZ/RXLV
         +vDHttJvNWBi4VoFz8jxrJ8+zCDmVgz9Pdw8y3Z4Ic1nLgyQAi67izl8VFaIhenpf+xj
         pF9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXsZqGjzb7LzC2rJs4kKPdE7BjQ8lgd4zOcQFiTvE3rAsmURxHSeOr/dlJ/+y/Bzr4Gn7Kkqmuf2Aun@vger.kernel.org
X-Gm-Message-State: AOJu0YwDNYjq1kUoQjKlLprLpgAkQTypZjxFS4T8ab3RueOU60tPLE7m
	W1O8ubRxS7/yQqgbMvM0JH4MuoulHRzDjXK27f527e215larlE4uwAmyhCZI5WORkU0iaY9+xmr
	R3oY7Qnts2sqdKLuY8LPRYMJ6xv9sg+eN3nfFfw==
X-Gm-Gg: ASbGncul/wOsbRcvY7Y02nZj/QModNxCYbCAPdg2gEk/qkmNp4y0tw1dZDY1TeJWp6R
	kXWqf7YZN0wg5EnAkcKZsjo3OBZXgvA==
X-Google-Smtp-Source: AGHT+IGy/j+wiEKXbWpg+rdcMPTv/vGoVdsPjG4eyoPMFGLTqsk3vYC/qn1djx+YzFpaj4sluNr2T8hKE9K+QOCRfe8=
X-Received: by 2002:a05:6902:2781:b0:e30:c872:176d with SMTP id
 3f1490d57ef6-e38cb70ab2fmr5251355276.49.1732163924089; Wed, 20 Nov 2024
 20:38:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241120095428.1122935-1-quic_chejiang@quicinc.com>
 <20241120095428.1122935-2-quic_chejiang@quicinc.com> <454tdpuglu23nmxfqqesv42h5rk3vqiji7spo3naf2djqwojqt@6x3ram3lnlkq>
 <fb5bc38b-83b3-4924-b1d0-39219a2927b4@quicinc.com>
In-Reply-To: <fb5bc38b-83b3-4924-b1d0-39219a2927b4@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 21 Nov 2024 06:38:33 +0200
Message-ID: <CAA8EJpqAOD_+SLG2LbiodWOs28_rquvMefmSH5CY1yB_rkiZPg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: bluetooth: add 'qcom,product-variant'
To: Cheng Jiang <quic_chejiang@quicinc.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	quic_zijuhu@quicinc.com, linux-bluetooth@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_mohamull@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Nov 2024 at 06:02, Cheng Jiang <quic_chejiang@quicinc.com> wrote:
>
> Hi Dmitry,
>
> On 11/20/2024 6:43 PM, Dmitry Baryshkov wrote:
> > On Wed, Nov 20, 2024 at 05:54:25PM +0800, Cheng Jiang wrote:
> >> Several Qualcomm projects will use the same Bluetooth chip, each
> >> focusing on different features. For instance, consumer projects
> >> prioritize the A2DP SRC feature, while IoT projects focus on the A2DP
> >> SINK feature, which may have more optimizations for coexistence when
> >> acting as a SINK. Due to the patch size, it is not feasible to include
> >> all features in a single firmware.
> >>
> >> Therefore, the 'product-variant' devicetree property is used to provide
> >> product information for the Bluetooth driver to load the appropriate
> >> firmware.
> >>
> >> If this property is not defined, the default firmware will be loaded,
> >> ensuring there are no backward compatibility issues with older
> >> devicetrees.
> >>
> >> The product-variant defines like this:
> >>   0 - 15 (16 bits) are product line specific definitions
> >>   16 - 23 (8 bits) are for the product line.
> >>   24 - 31 (8 bits) are reserved for future use, 0 currently
> >
> > Please use text strings instead of encoding this information into random
> > integers and then using just 3 bits out of 32.
> Ack. Originally intended to make it more flexible for future use. It can be
> text strings for current requirement.

No, fixed-format data isn't flexible. Fine-grained properties are.
Please define exactly what is necessary rather than leaving empty
holes "for future expansion".=

> >
> >>
> >> |---------------------------------------------------------------------|
> >> |                       32 Bits                                       |
> >> |---------------------------------------------------------------------|
> >> |  31 - 24 (bits)   |    23 - 16 (bits)   | 15 - 0 (16 bits)          |
> >> |---------------------------------------------------------------------|
> >> |   Reserved        |    0: default       | 0: default                |
> >> |                   |    1: CE            |                           |
> >> |                   |    2: IoT           |                           |
> >> |                   |    3: Auto          |                           |
> >> |                   |    4: Reserved      |                           |
> >> |---------------------------------------------------------------------|
> >>
> >> Signed-off-by: Cheng Jiang <quic_chejiang@quicinc.com>
> >> ---
> >>  .../bindings/net/bluetooth/qualcomm-bluetooth.yaml          | 6 ++++++
> >>  1 file changed, 6 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> >> index 7bb68311c609..9019fe7bcdc6 100644
> >> --- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> >> +++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> >> @@ -110,6 +110,12 @@ properties:
> >>      description:
> >>        boot firmware is incorrectly passing the address in big-endian order
> >>
> >> +  qcom,product-variant:
> >> +    $ref: /schemas/types.yaml#/definitions/uint32
> >> +    description:
> >> +      specify the product information for driver to load the appropriate firmware
> >
> > DT describes hardware. Is this a hardware property?
>
> It has been added to identify the firmware image for the platform. The driver
> parses it, and then the rampatch is selected from a specify directory. Currently,
> there is a 'firmware-name' parameter, but it is only used to specify the NVM
> (config) file. We also need to specify the rampatch (TLV file).
>
>
> Can we re-use the "firmware-name"? add two segments like the following?
> firmware-name = "rampatch_xx.tlv",  "nvm_xx.bin";

I think this is the better solution

>
> Or add a new property to specify the rampatch file?
> rampatch-name = "rampatch_xx.tlv";
>
> >
> >> +
> >> +
> >>  required:
> >>    - compatible
> >>
> >> --
> >> 2.25.1
> >>
> >
>


-- 
With best wishes
Dmitry

