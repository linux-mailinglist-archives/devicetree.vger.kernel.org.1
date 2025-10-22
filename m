Return-Path: <devicetree+bounces-229889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E5CBFD5D2
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 18:50:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0AD1F189A4C7
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90461299A8A;
	Wed, 22 Oct 2025 16:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PTZgqxQh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769D129BDAC
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761151609; cv=none; b=K5uQO3PRyC4FgUL/fpPq3BeJ7OLItUxsAaGuVCBzEoKawL1e637gO2n4g1iZ70z43xAlVayvbPjfJiZViPvYjDCHw+eFGOYV3E+AKG4X6+IvR1ASThg3yMSLQXbNL0EBGmll1qBcCI1H76maje8heUsZ8d8m03y8fDJlcxXgjPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761151609; c=relaxed/simple;
	bh=kzK0X3PESTcd0Pn7d03B0oVRUrs6ifjmGrqa6trxFU4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=XOG8RyDgR+uSLYtxdaSC+5LKokoiOMQZi0Los2RX6GR/qrZbKiJjWKPEXaEPe35YcaNajBfDuy0N7kNxofoJjKnQsJN2xRhEyXd/svkoSuQvmaG2WszGEVsGWq0sd7V1ZBfjJIeB+yFDbDmr1+omTioq4KWTZ5SnbgT0S3vr2KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PTZgqxQh; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-421851bcb25so4263279f8f.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761151606; x=1761756406; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hB/kxv3520VBWvRt90QZf897nQckO35BdxVzd7xmja0=;
        b=PTZgqxQh0FAFLKNMK5gF/Sl/decW5TjYrWfZ+dOhQ3RDXp1tX7oQPY/9YAlUR4wBMO
         emIb+1KUgcwNPxJQUvJewVkSts5oD+hjJA2SnXfREkVbzxosYgctYK/COSKK9mKOU3+i
         PZlCkCtei1u6ylPJfv3z0e55lkKkWrjbxdj44D4Ec7vKHycEIXgF9qCtiGdhjDIRSvqE
         /oijCbkj95mBAJOinAzS+QHMmpDcsJxHhgSQHxZv3jC8WMNdp8ITQikZFfffZbDQhvrI
         eo9N6IkMNa6hCZbC2Lv49K0XJClTRfTe3V627rHQF4hlRwBhoHtgQdVXBufEOYBBCa2O
         ZcWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761151606; x=1761756406;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hB/kxv3520VBWvRt90QZf897nQckO35BdxVzd7xmja0=;
        b=ryp8u5j/WNAiFeHxA+v9TWJqDLcvon2wyPc40He9bFYZ01FLIo7madTqAtQmZEFhuL
         pQzcL6+WGC+3XKIzy6FHBhgS0WOUloALSn4K30JqN189O6KObFIqoTsxDTCqgOy+si7D
         tvWj3BqSnvv81rNpuvNCTg2kXXbPqvygMt2YY/PnROqItINjHRZmkbvss9kydSQe4wST
         EYu4gUeTVUAKIpcj0CC5gz5i3DGiAoYgem0WhRLZrV235xTR0OXqwk0YIp1LYU88vhnR
         ezNAqiZI+2YLa5HYcWZwQ+G8OR1HaydsJRGJTgTIUSq+zAiaPpMpgtTCBB5S5OnURIOJ
         anyA==
X-Forwarded-Encrypted: i=1; AJvYcCXXzoLeOIoJsgUeLzGd/+PDrgRv2ivQR27ByjfFdMm2CCkcrXa310rg4DhwjQvnZX4pvOIepNhDYEKJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5QQEfCyLZYiputkn+h0rA0UA83udhKZMCcA4rtaeyArEoib6K
	myOcgAePe1aywe7hHbmvBqoN9y4kBYBHzG7U94shRcWu2ffsDrpdrAOM0i7vaN4Jtro=
X-Gm-Gg: ASbGncvknFUReW3g8azFZg2B644gQCDo3As+q/PCw5MSVxjKYCIp/bY+MJU313zNkyj
	2pBvtwBqZAZVa9S0tmaScRj1xrfBYwBdxs8AANqiKQmd0n/PJaDydjIZ2zNLheTebEfFc+sDXb9
	pxvis4Cm4+XOQEWTFORMCxYbZUtY6bx2+8FymflYKjK1PkFeX8TZ1gYnnzEd5rsNgG40KnEk1t2
	8ij/o+vArzIa3OIUphSKPetkSX+pWlnmgzhx8GlaZ5xjSeVvNsxUVy/dCdFUCF8sXLeQZqP0In0
	MKcDlxejgYIh+w4b8HppclHBh79h9RGryJxlZTV7tf/ZnXLcUHrqNBpYpqt6xJ8c+xOwuG4Ns+0
	xrZQowx2DNDZdG9vyexD6HiEx8pStfUzleSJDkp+xNP1Qr5HHbvKgv0stb1TqClnHCGFx43fw8u
	TpTRMv4ajk1FiFo+M=
X-Google-Smtp-Source: AGHT+IHC0nEVJ9kS8jNlN1CcS2Es7FqGZUD1CeVHVY8B/z53AT+D2UQg55S0hwzJKEC6PDUH79Dojg==
X-Received: by 2002:a05:6000:26d1:b0:425:7cf6:5b9e with SMTP id ffacd0b85a97d-42704d146a5mr15287672f8f.3.1761151605615;
        Wed, 22 Oct 2025 09:46:45 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:11f4:2b3f:7c5a:5c10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f009a797sm26064120f8f.27.2025.10.22.09.46.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 09:46:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 22 Oct 2025 17:46:44 +0100
Message-Id: <DDP051W3LY8F.3FK5FJT1ABLTG@linaro.org>
Cc: "Srinivas Kandagatla" <srini@kernel.org>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Jaroslav Kysela"
 <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>,
 <linux-sound@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: sound: qcom,sm8250: add QRB2210 and
 RB1 soundcards
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Srinivas Kandagatla" <srinivas.kandagatla@oss.qualcomm.com>, "Dmitry
 Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>
X-Mailer: aerc 0.20.0
References: <20251007-qrb2210-qcm2290-sndcard-v1-0-8222141bca79@linaro.org>
 <20251007-qrb2210-qcm2290-sndcard-v1-1-8222141bca79@linaro.org>
 <b0d9cec5-1162-476b-8438-8239e1458927@oss.qualcomm.com>
 <CAO9ioeVcqT_Yhvz-RMCucLtcpa4xCLrA+srM8Vy_ZZ-650ZQnw@mail.gmail.com>
 <DDKF9YV37ETZ.3DXIDZA4ZU6I3@linaro.org>
 <695ff482-ad53-45fc-9ab0-ad69d8bc89d5@oss.qualcomm.com>
In-Reply-To: <695ff482-ad53-45fc-9ab0-ad69d8bc89d5@oss.qualcomm.com>

On Fri Oct 17, 2025 at 12:27 PM BST, Srinivas Kandagatla wrote:
> On 10/17/25 8:35 AM, Alexey Klimov wrote:
>> On Thu Oct 16, 2025 at 8:46 PM BST, Dmitry Baryshkov wrote:
>>> On Thu, 16 Oct 2025 at 18:08, Srinivas Kandagatla
>>> <srinivas.kandagatla@oss.qualcomm.com> wrote:
>>>>
>>>>
>>>>
>>>> On 10/7/25 2:26 AM, Alexey Klimov wrote:
>>>>> Add soundcard compatible for QRB2210 (QCM2290) platforms.
>>>>> While at this, also add QRB2210 RB1 entry which is set to be
>>>>> compatible with QRB2210 soundcard.
>>>>>
>>>>> Cc: Srinivas Kandagatla <srini@kernel.org>
>>>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>>>>> ---
>>>>>  Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 5 +++++
>>>>>  1 file changed, 5 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml=
 b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
>>>>> index 8ac91625dce5ccba5c5f31748c36296b12fac1a6..c29e59d0e8043fe2617b9=
69be216525b493458c4 100644
>>>>> --- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
>>>>> +++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
>>>>> @@ -21,6 +21,10 @@ properties:
>>>>>                - lenovo,yoga-c630-sndcard
>>>>>                - qcom,db845c-sndcard
>>>>>            - const: qcom,sdm845-sndcard
>>>>> +      - items:
>>>>> +          - enum:
>>>>> +              - qcom,qrb2210-rb1-sndcard
>>>> I don't think you need rb1 specific compatible here, unless there this
>>>> is totally different to what the base compatible can provide.
>>>
>>> Why do we need to deviate from other platforms which declare
>>> board-specific compat too?
>>=20
>> There seems to be now a few incompatible suggestions for rb1 sndcard:
>> - make it compatible/fallback to qcom,sm8250-sndcard (1);
>> - make it compatible/fallback to qcom,qrb4210-rb2-sndcard (2);
>> - add separate compatible/enum for rb1 sndcard as qcom,qrb2210-rb1-sndca=
rd (3);
>> - add base compatible as qcom,qrb2210-sndcard and fallback
>> rb1 sndcard compatible to it.
>>=20
>> The latter one is ruled out because base compatible should be used and
>> it is not going to.
>>=20
>> As far as I can see the last addition went simply with (3).
>> Which one finally you all want?
>
> Am fine with either "qcom,sm8250-sndcard" or "qcom,qrb4210-rb1-sndcard"
> as long as we reflect that correct driver name in machine driver.
>
> traditionally we have SoC level compatible which works fine for 99% of
> the boards for that SoC, expectation was that if there is any deviation
> or board specific changes required, this can be accommodate using model
> information. am fine with board specific compatible too, however am not
> okay with both "qcom,sm8250-sndcard" and "qcom,qrb4210-rb1-sndcard"  or
> falling back to another board compatible for various reason one being ucm=
.
>
> So 1 and 2 re *NOK*
>
> I hope this provides some clarity here.

Yes. Thanks. I went with SoC-level compatible in the latest version.

Thanks,
Alexey

