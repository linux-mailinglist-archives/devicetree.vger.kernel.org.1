Return-Path: <devicetree+bounces-125688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 944D59DEF51
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 09:24:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 520062817EB
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 08:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F30014884C;
	Sat, 30 Nov 2024 08:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NHJt8hrc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3F18139D05
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 08:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732955080; cv=none; b=b5xyC2ytD67SzMsUIfmWVm7EKLwiOke95LJGRzuPNkIAeWmCkX391cGbX9q7MxX2NpVi9BRrsM9w5yrmcbTI7pKJzH+tNJbdHSvOkmRsR1ROm/j5u1iGNEgPrnvqxRawTSv7xNRFR100JzyfM9si3kwY4SI3Fo2/W4RrKMDHRTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732955080; c=relaxed/simple;
	bh=T3ZEkR8FRmoGfS+iUyMyev1GAYYNn73koObaMJIbYTs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HBfMLk3ZHGNAp34rLOgl0Gy8DlYgNljjTRuqn4UC6XyKQxvNOUzzuSpflmrARWTeMIg2UTCQO5sn+yxFEkig0k/L3bqw2PYF0Pb58kZH3IOYlZ6OepCrSXwoJA67E/QxsFJyFu3n25DWPLZJ6BoDso8tkhW8QMhcVSzX+UGphvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NHJt8hrc; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e3970ac2dddso2050974276.2
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 00:24:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732955077; x=1733559877; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=H/ULrCe/2Ff2FSpV/AO7lLO8UIbyUN2jMxQuSykRyzA=;
        b=NHJt8hrciPsj4dP5MblfovlRQUFihV/MU8C/dhYWcMpQrTzHiWR22MuxIc62cGSRnR
         xbOjWKkivNTo9KZpDd+Lu1X31zAVKLJvjlnk+zuaO9rwnsciaCqn/i08AGNOpzfjnfif
         wASpwo/Rq9ZIxxEoZdDMh0gj95Rc+CqPvj5Pt/3RuM9i/ZI9l6mpEJvR2K/Zbd4FodZV
         SRlKzpyyYIBO+SYS+7GUmm8IZs3X4f8VE50rm/hHdE6suSbd9hpKC7xDqw8EwAay0Wx0
         Z1J/Lu3efgKuhai4e6o45CB/LA34ccTHYr0qe3jceyLlDW1i76F4F79xyataFk82nqUt
         2uOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732955077; x=1733559877;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H/ULrCe/2Ff2FSpV/AO7lLO8UIbyUN2jMxQuSykRyzA=;
        b=TMSwlGa7dDNq5p0nEfthRlgnHyRHwcLxfoWa3DGqeH0Yp8E2Vj4FgEV2L3/sXR3odP
         m95CIJHLhOlqrL7LKSYQcwDQnmrGO4adPk11srKZIwOB6WbsmqCbXfKeUzhcNS1+dELa
         y1s+LYckeXcQtBPKqHV9xyVYjhHXVB1cD4jvSEFDNg3UYdcpYI0IaipQkuO7vvxFm884
         MaXQY/nIGQr5ifTLQkQa7xL/l+6UoaOElj0rpbsWyOrXEvLNkkGUiSEqA6KzAEhsQMuJ
         Bv/DYD9xbJ0jejCqoNrBAHANo+Q8YTXa5G2+SyRf7lIAf463whAFWAY4pgiPS393UU2T
         fg1g==
X-Forwarded-Encrypted: i=1; AJvYcCW5moUVb/dWXjrUEml2dmKKAr7AivHEX1gvF2XWmRj3hvkWic83pcQ2wrRpOMcorPWSkhLMp1shABha@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+MJkiawKfOZJqWkNIvyVO6B5wM/bD2WXwyCzJk+XVtE0Xqen/
	TlFtQLWL7nxFncVilhBz2mB2MIhwQdyhk9uywk6S0VPm4GOxzsAZDuzLwRyIjUdj/P/MsTxLSJN
	YwhTwa4+dkXeX0OY8dx6GwY4hFdIt3BfhlRhl0w==
X-Gm-Gg: ASbGncv8zyTzkNprN1O6kaZnCffhakKQ+jR6aftZdZ7G/bbCkVgmiISx5rg20gYuzGp
	aYH8n2kF+g8a/NhVUzAs829eJgeGp1zOf
X-Google-Smtp-Source: AGHT+IHFtwIx+xIGxgtLl06FwKCAMpkX4wI1vOoW0DJY8p3/N1CSY9tG7GAJulWq+lCQjzID8VtEYI/abuGt1T7MRbQ=
X-Received: by 2002:a05:6902:f84:b0:e38:b6be:1d58 with SMTP id
 3f1490d57ef6-e395b893aaemr18050418276.21.1732955077495; Sat, 30 Nov 2024
 00:24:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241120095428.1122935-1-quic_chejiang@quicinc.com>
 <20241120095428.1122935-2-quic_chejiang@quicinc.com> <454tdpuglu23nmxfqqesv42h5rk3vqiji7spo3naf2djqwojqt@6x3ram3lnlkq>
 <fb5bc38b-83b3-4924-b1d0-39219a2927b4@quicinc.com> <CAA8EJpqAOD_+SLG2LbiodWOs28_rquvMefmSH5CY1yB_rkiZPg@mail.gmail.com>
 <a7ec9426-8c8a-49b3-9916-4c2660c38e49@quicinc.com>
In-Reply-To: <a7ec9426-8c8a-49b3-9916-4c2660c38e49@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Nov 2024 10:24:26 +0200
Message-ID: <CAA8EJpqpzwGL38F_MYUJVuAT8q96QZO7CSh00ZpNBU5cGWUqqA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: bluetooth: add 'qcom,product-variant'
To: "Cheng Jiang (IOE)" <quic_chejiang@quicinc.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	quic_zijuhu@quicinc.com, linux-bluetooth@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_mohamull@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Sat, 30 Nov 2024 at 05:48, Cheng Jiang (IOE)
<quic_chejiang@quicinc.com> wrote:
>
> Hi Dmitry,
>
> On 11/21/2024 12:38 PM, Dmitry Baryshkov wrote:
> > On Thu, 21 Nov 2024 at 06:02, Cheng Jiang <quic_chejiang@quicinc.com> wrote:
> >>
> >> Hi Dmitry,
> >>
> >> On 11/20/2024 6:43 PM, Dmitry Baryshkov wrote:
> >>> On Wed, Nov 20, 2024 at 05:54:25PM +0800, Cheng Jiang wrote:
> >>>> Several Qualcomm projects will use the same Bluetooth chip, each
> >>>> focusing on different features. For instance, consumer projects
> >>>> prioritize the A2DP SRC feature, while IoT projects focus on the A2DP
> >>>> SINK feature, which may have more optimizations for coexistence when
> >>>> acting as a SINK. Due to the patch size, it is not feasible to include
> >>>> all features in a single firmware.
> >>>>
> >>>> Therefore, the 'product-variant' devicetree property is used to provide
> >>>> product information for the Bluetooth driver to load the appropriate
> >>>> firmware.
> >>>>
> >>>> If this property is not defined, the default firmware will be loaded,
> >>>> ensuring there are no backward compatibility issues with older
> >>>> devicetrees.
> >>>>
> >>>> The product-variant defines like this:
> >>>>   0 - 15 (16 bits) are product line specific definitions
> >>>>   16 - 23 (8 bits) are for the product line.
> >>>>   24 - 31 (8 bits) are reserved for future use, 0 currently
> >>>
> >>> Please use text strings instead of encoding this information into random
> >>> integers and then using just 3 bits out of 32.
> >> Ack. Originally intended to make it more flexible for future use. It can be
> >> text strings for current requirement.
> >
> > No, fixed-format data isn't flexible. Fine-grained properties are.
> > Please define exactly what is necessary rather than leaving empty
> > holes "for future expansion".=
> >
> >>>
> >>>>
> >>>> |---------------------------------------------------------------------|
> >>>> |                       32 Bits                                       |
> >>>> |---------------------------------------------------------------------|
> >>>> |  31 - 24 (bits)   |    23 - 16 (bits)   | 15 - 0 (16 bits)          |
> >>>> |---------------------------------------------------------------------|
> >>>> |   Reserved        |    0: default       | 0: default                |
> >>>> |                   |    1: CE            |                           |
> >>>> |                   |    2: IoT           |                           |
> >>>> |                   |    3: Auto          |                           |
> >>>> |                   |    4: Reserved      |                           |
> >>>> |---------------------------------------------------------------------|
> >>>>
> >>>> Signed-off-by: Cheng Jiang <quic_chejiang@quicinc.com>
> >>>> ---
> >>>>  .../bindings/net/bluetooth/qualcomm-bluetooth.yaml          | 6 ++++++
> >>>>  1 file changed, 6 insertions(+)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> >>>> index 7bb68311c609..9019fe7bcdc6 100644
> >>>> --- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> >>>> +++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> >>>> @@ -110,6 +110,12 @@ properties:
> >>>>      description:
> >>>>        boot firmware is incorrectly passing the address in big-endian order
> >>>>
> >>>> +  qcom,product-variant:
> >>>> +    $ref: /schemas/types.yaml#/definitions/uint32
> >>>> +    description:
> >>>> +      specify the product information for driver to load the appropriate firmware
> >>>
> >>> DT describes hardware. Is this a hardware property?
> >>
> >> It has been added to identify the firmware image for the platform. The driver
> >> parses it, and then the rampatch is selected from a specify directory. Currently,
> >> there is a 'firmware-name' parameter, but it is only used to specify the NVM
> >> (config) file. We also need to specify the rampatch (TLV file).
> >>
> >>
> >> Can we re-use the "firmware-name"? add two segments like the following?
> >> firmware-name = "rampatch_xx.tlv",  "nvm_xx.bin";
> >
> > I think this is the better solution
> >
> How about the following logic for handling 'firmware-name' property:
> 1. If there is only one string in firmware-name, it must be the NVM file, which is used
>    for backward compatibility.
>
> 2. If there are two strings in firmware-name, the first string is for the rampatch, and
>    the second string is for the NVM.

I'd say, other way around: the first one is always NVM, the second one
is rampatch and it is optional.

>
> 3. Due to variations in RF performance of chips from different foundries, different NVM
>    configurations are used based on the board ID. If the second string ends with boardid,
>    the NVM file will be selected according to the board ID.

Is there a reason why you can not use the exact firmware name? The
firmware name is a part of the board DT file. I assume you know the
board ID that has been used for the board.

>
>
> Here are two examples:
>
>  firmware-name = "qca/QCA6698/hpbtfw21.tlv",  "qca/QCA6698/hpnv21.bin";
> In this configuration, the driver will use the two files directly.
>
>
>  firmware-name = "qca/QCA6698/hpbtfw21.tlv",  "qca/QCA6698/hpnv21.boardid";
> In this configuration, the driver will replace boardid with the actual board information.
> If the board id is 0x0206, the nvm file name will be qca/QCA6698/hpnv21.b0206
>
> >>
> >> Or add a new property to specify the rampatch file?
> >> rampatch-name = "rampatch_xx.tlv";
> >>
> >>>
> >>>> +
> >>>> +
> >>>>  required:
> >>>>    - compatible
> >>>>
> >>>> --
> >>>> 2.25.1
> >>>>
> >>>
> >>
> >
> >
>

--
With best wishes
Dmitry

