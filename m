Return-Path: <devicetree+bounces-126158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDCC9E083E
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 17:17:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 51DCABC0A96
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DBEA20ADEC;
	Mon,  2 Dec 2024 15:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PLJE1dPj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B19205ADE
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 15:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733152497; cv=none; b=SU5IWmjGv4PQ3kuIcPBZGrxLnmQToxH7Oa9Dbc0Gdl/oeEwnNOah5hWTXq0bbt8rO9FhMNigi9jJvyqkB3FX9eBbfZ09BNbySJbooiRYOUVGIjhlGeg2Pxn+gfATn7LQiwRKYlo/EwdkEYt4FyZ149Rcxgh1Smm5zzC/mZw7SEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733152497; c=relaxed/simple;
	bh=KpbBb9LzkFtJK58lCHF0v1Z3JHq622hksZSIbRBCl0g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jVrTOu5PsmFlLa6lrTQYx33Gzz8jT7sYw1itbELA/D9FeIq3YxTS6qYBYWjPkDCU23Jyd1PeFZdzk3CJf8SBF2g7V1OSX2estkpQoJ5OiITnSXkhqqIM/XBSAcEyAOV70RmCaNnBRtDt+XdZu7LcEiWjRJObaL/GGN+FKxj6VNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PLJE1dPj; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e3985aabf43so2621458276.3
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 07:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733152494; x=1733757294; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qgQqAmUH/5qaUZ/FJ2uuZznRVamzcHOkuY3OD4Ps5BA=;
        b=PLJE1dPjXIVznliCdSp+UlhxtKkxfSt2y+ydkpuZl8kdtHVygA2D50m+sjil2p47sW
         /bCeI1ZiaWy8RemxSNzqjqptCm3N9/+yQNQEBPbi8++DCjgW0vDntMzlS/j8oZ2m5SkB
         BnOQRjQl+4E5OGqK/KrKkhNKcMntsLmuZuJploYYJhWlQOTVH5yYM02mamDRY/vCT4JZ
         CBDel8IP1vIkk7/MyJDSY7nH4fd+Fezs1sg3izI2H/FZi3zQa3SqkYtFQoooiyQ7/jFn
         RCs6m/htUzUWQyIMCY1hX/RPitke7pPo3NAZsGmNnAM6iTeF4yq20SiVmzWyXS8LZvkU
         O9qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733152494; x=1733757294;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qgQqAmUH/5qaUZ/FJ2uuZznRVamzcHOkuY3OD4Ps5BA=;
        b=u5vCMofMFfkXI97IAIhRdufprEio5blmqtkt4gy40nxMZtKKsWJkV6U1MBSlGPpctc
         DHnQSxi9QihLUVTkJoovLd6wvy1AXYtalYv6/xC1cAuKd55ZyzsU75ZHmrFe6ownfStw
         ZAEBh7ZZ+yu8fC9CcsVEjRNEx99UNHSCGo7tz4Vt/FLEgzHf6lypy3rQQ62HWYY732OP
         WEYr0rbr8gTCju3kOSIVknfqdgrxZBr9cO7LUCs9CCihgKsy3uhwVOqkQ5afE6+3re13
         ilNYZiEcDji4KuqPD+mA9t/GtRbonpXqe1SiRr7W9xj8G03vRVidX08q/T3HONB57iii
         U9aw==
X-Forwarded-Encrypted: i=1; AJvYcCXODmayGuTbkOS2CFW2uAmefaTj+SOHdRgjdw2XXmn3xSZRRn4PmQOW5cTqLyujkUbAbnFmZLvo/2hi@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0TgZo7Yh69rnNvb7jfYd59Zn1W2i2YWBc0ED7zrN8lCZtOUGI
	H/AMceYjTN4z4l6JJc4aYd1brKGqIKwmE1OecL1zD0UFb1P43wXLtn6g+svJGFlSOhFFHc1wL5l
	XrHk1jjJNO6GVIefO7+n1DXWgn9GdeNIsuyYHzg==
X-Gm-Gg: ASbGnctCVvKpKcTok+vrk+0DMZ1WwWCLoCVgFk+EMx5k7xC+K+QvibGMAh7T7OdJP54
	Y6FqyKhq4KSn/ch7VT9riL1Tl9tklZQ==
X-Google-Smtp-Source: AGHT+IG0eZmZdCpjszUFPQKzsE1pjfh6dUFyWF3HVs2HVQq6iY1PVz+uppjKox4aaeidt2hxIDY0FGQr5/t0c8vw8OQ=
X-Received: by 2002:a05:6902:1242:b0:e39:826a:c746 with SMTP id
 3f1490d57ef6-e39826aca1emr13293016276.40.1733152494114; Mon, 02 Dec 2024
 07:14:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241120095428.1122935-1-quic_chejiang@quicinc.com>
 <20241120095428.1122935-2-quic_chejiang@quicinc.com> <454tdpuglu23nmxfqqesv42h5rk3vqiji7spo3naf2djqwojqt@6x3ram3lnlkq>
 <fb5bc38b-83b3-4924-b1d0-39219a2927b4@quicinc.com> <CAA8EJpqAOD_+SLG2LbiodWOs28_rquvMefmSH5CY1yB_rkiZPg@mail.gmail.com>
 <a7ec9426-8c8a-49b3-9916-4c2660c38e49@quicinc.com> <CAA8EJpqpzwGL38F_MYUJVuAT8q96QZO7CSh00ZpNBU5cGWUqqA@mail.gmail.com>
 <944fdc7f-313e-48b9-8917-370942d4f073@quicinc.com> <qsaiic4jvhf6nqe7efchxvja6tjvsiquem6ofsgq52iygfflya@huv6x7kz6emd>
 <c3394a08-edab-45a4-9ed8-db2a06598a0a@quicinc.com>
In-Reply-To: <c3394a08-edab-45a4-9ed8-db2a06598a0a@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 2 Dec 2024 17:14:42 +0200
Message-ID: <CAA8EJprgYM1zqzoJvvUAFbauMLQR0zpvQ93eVY6wzxU5YGvhiw@mail.gmail.com>
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

On Mon, 2 Dec 2024 at 16:25, Cheng Jiang (IOE)
<quic_chejiang@quicinc.com> wrote:
>
>
>
> On 12/2/2024 7:38 PM, Dmitry Baryshkov wrote:
> > On Mon, Dec 02, 2024 at 10:22:52AM +0800, Cheng Jiang (IOE) wrote:
> >> Hi Dmitry,
> >>
> >> On 11/30/2024 4:24 PM, Dmitry Baryshkov wrote:
> >>> On Sat, 30 Nov 2024 at 05:48, Cheng Jiang (IOE)
> >>> <quic_chejiang@quicinc.com> wrote:
> >>>>
> >>>> Hi Dmitry,
> >>>>
> >>>> On 11/21/2024 12:38 PM, Dmitry Baryshkov wrote:
> >>>>> On Thu, 21 Nov 2024 at 06:02, Cheng Jiang <quic_chejiang@quicinc.com> wrote:
> >>>>>>
> >>>>>> Hi Dmitry,
> >>>>>>
> >>>>>> On 11/20/2024 6:43 PM, Dmitry Baryshkov wrote:
> >>>>>>> On Wed, Nov 20, 2024 at 05:54:25PM +0800, Cheng Jiang wrote:
> >>>>>>>> Several Qualcomm projects will use the same Bluetooth chip, each
> >>>>>>>> focusing on different features. For instance, consumer projects
> >>>>>>>> prioritize the A2DP SRC feature, while IoT projects focus on the A2DP
> >>>>>>>> SINK feature, which may have more optimizations for coexistence when
> >>>>>>>> acting as a SINK. Due to the patch size, it is not feasible to include
> >>>>>>>> all features in a single firmware.
> >>>>>>>>
> >>>>>>>> Therefore, the 'product-variant' devicetree property is used to provide
> >>>>>>>> product information for the Bluetooth driver to load the appropriate
> >>>>>>>> firmware.
> >>>>>>>>
> >>>>>>>> If this property is not defined, the default firmware will be loaded,
> >>>>>>>> ensuring there are no backward compatibility issues with older
> >>>>>>>> devicetrees.
> >>>>>>>>
> >>>>>>>> The product-variant defines like this:
> >>>>>>>>   0 - 15 (16 bits) are product line specific definitions
> >>>>>>>>   16 - 23 (8 bits) are for the product line.
> >>>>>>>>   24 - 31 (8 bits) are reserved for future use, 0 currently
> >>>>>>>
> >>>>>>> Please use text strings instead of encoding this information into random
> >>>>>>> integers and then using just 3 bits out of 32.
> >>>>>> Ack. Originally intended to make it more flexible for future use. It can be
> >>>>>> text strings for current requirement.
> >>>>>
> >>>>> No, fixed-format data isn't flexible. Fine-grained properties are.
> >>>>> Please define exactly what is necessary rather than leaving empty
> >>>>> holes "for future expansion".=
> >>>>>
> >>>>>>>
> >>>>>>>>
> >>>>>>>> |---------------------------------------------------------------------|
> >>>>>>>> |                       32 Bits                                       |
> >>>>>>>> |---------------------------------------------------------------------|
> >>>>>>>> |  31 - 24 (bits)   |    23 - 16 (bits)   | 15 - 0 (16 bits)          |
> >>>>>>>> |---------------------------------------------------------------------|
> >>>>>>>> |   Reserved        |    0: default       | 0: default                |
> >>>>>>>> |                   |    1: CE            |                           |
> >>>>>>>> |                   |    2: IoT           |                           |
> >>>>>>>> |                   |    3: Auto          |                           |
> >>>>>>>> |                   |    4: Reserved      |                           |
> >>>>>>>> |---------------------------------------------------------------------|
> >>>>>>>>
> >>>>>>>> Signed-off-by: Cheng Jiang <quic_chejiang@quicinc.com>
> >>>>>>>> ---
> >>>>>>>>  .../bindings/net/bluetooth/qualcomm-bluetooth.yaml          | 6 ++++++
> >>>>>>>>  1 file changed, 6 insertions(+)
> >>>>>>>>
> >>>>>>>> diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> >>>>>>>> index 7bb68311c609..9019fe7bcdc6 100644
> >>>>>>>> --- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> >>>>>>>> +++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> >>>>>>>> @@ -110,6 +110,12 @@ properties:
> >>>>>>>>      description:
> >>>>>>>>        boot firmware is incorrectly passing the address in big-endian order
> >>>>>>>>
> >>>>>>>> +  qcom,product-variant:
> >>>>>>>> +    $ref: /schemas/types.yaml#/definitions/uint32
> >>>>>>>> +    description:
> >>>>>>>> +      specify the product information for driver to load the appropriate firmware
> >>>>>>>
> >>>>>>> DT describes hardware. Is this a hardware property?
> >>>>>>
> >>>>>> It has been added to identify the firmware image for the platform. The driver
> >>>>>> parses it, and then the rampatch is selected from a specify directory. Currently,
> >>>>>> there is a 'firmware-name' parameter, but it is only used to specify the NVM
> >>>>>> (config) file. We also need to specify the rampatch (TLV file).
> >>>>>>
> >>>>>>
> >>>>>> Can we re-use the "firmware-name"? add two segments like the following?
> >>>>>> firmware-name = "rampatch_xx.tlv",  "nvm_xx.bin";
> >>>>>
> >>>>> I think this is the better solution
> >>>>>
> >>>> How about the following logic for handling 'firmware-name' property:
> >>>> 1. If there is only one string in firmware-name, it must be the NVM file, which is used
> >>>>    for backward compatibility.
> >>>>
> >>>> 2. If there are two strings in firmware-name, the first string is for the rampatch, and
> >>>>    the second string is for the NVM.
> >>>
> >>> I'd say, other way around: the first one is always NVM, the second one
> >>> is rampatch and it is optional.
> >>>
> >> OK, Got it.
> >>>>
> >>>> 3. Due to variations in RF performance of chips from different foundries, different NVM
> >>>>    configurations are used based on the board ID. If the second string ends with boardid,
> >>>>    the NVM file will be selected according to the board ID.
> >>>
> >>> Is there a reason why you can not use the exact firmware name? The
> >>> firmware name is a part of the board DT file. I assume you know the
> >>> board ID that has been used for the board.
> >>>
> >> The boardid is the connectivity board's id. NVM is a board specific configuration file,
> >> it's related to the connectivity board. We may attach different connectivity board on the
> >> same platform. For example, we have connectivity boards based on the QCA6698 chipset that
> >> can support either a two-antenna or three-antenna solution. Both boards work fine on the
> >> sa8775p-ride platform.
> >
> > Please add such an info to the commit messages (plural for it being a
> > generic feedback: please describe the reasons for your design
> > decisions),
> >
> Ack.
> > I really don't like the .boardid template. What if we change property
> > behaviour in the following way: if there is no file extension then .bNN
> > will be probed, falling back to .bin. This will require reading board ID
> > for all the platforms that support it (do wcn3990 have board ID?)
> >
> Ack, this proposal is great.
> Yes, We have board ID for each connectivity card. An NVM file maps to it
> if necessary.

The question was about the WiFI generations, not about the NVM cards.
Do wcn3990 also support reading board ID?

>
> Let me provide a new patchset based on this solution. Thank you very much for
> the valuable comments.

:-)

> >>>>
> >>>>
> >>>> Here are two examples:
> >>>>
> >>>>  firmware-name = "qca/QCA6698/hpbtfw21.tlv",  "qca/QCA6698/hpnv21.bin";
> >>>> In this configuration, the driver will use the two files directly.
> >>>>
> >>>>
> >>>>  firmware-name = "qca/QCA6698/hpbtfw21.tlv",  "qca/QCA6698/hpnv21.boardid";
> >>>> In this configuration, the driver will replace boardid with the actual board information.
> >>>> If the board id is 0x0206, the nvm file name will be qca/QCA6698/hpnv21.b0206
> >>>>
> >>>>>>
> >>>>>> Or add a new property to specify the rampatch file?
> >>>>>> rampatch-name = "rampatch_xx.tlv";
> >>>>>>
> >>>>>>>
> >>>>>>>> +
> >>>>>>>> +
> >>>>>>>>  required:
> >>>>>>>>    - compatible
> >>>>>>>>
> >>>>>>>> --
> >>>>>>>> 2.25.1
> >>>>>>>>
> >>>>>>>
> >>>>>>
> >>>>>
> >>>>>
> >>>>
> >>>
> >>> --
> >>> With best wishes
> >>> Dmitry
> >>
> >
>


-- 
With best wishes
Dmitry

