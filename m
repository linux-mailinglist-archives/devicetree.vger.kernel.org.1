Return-Path: <devicetree+bounces-241290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F21C7C01F
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 01:25:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B402935CB77
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 00:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70E321E834E;
	Sat, 22 Nov 2025 00:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jo4sToj2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35A01D5AC6
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 00:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763771146; cv=none; b=ZCbYr6WJmPJfKC++6ZzD8YkKoP0tA+pLr2x2mJMjo413I6B6xMzm4n65ZY7EfNrGEpfgY7s7B4nnzenrQ4OOQCvcYhcCHJxjIij8b+6Av3AolnH+jm0SBnkoQozQagyr/JdV4Tgi2D01yrFbHO6Pyu816itBGemgZYX2izIrT5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763771146; c=relaxed/simple;
	bh=3FbzkVndmK8QpJownEkpXhfdxMtc5cCwZkNZ8Jg1ch0=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=A5TlCyfMlOWci/L4D+sJ2jWQVNYTdDbm4fFQXXIxllXjnaVhh+eKi33IORqTXX0RzpulVCk2xKFhvmE/oAuZPaPfVjPdhufE4k/TRpKachkv4WXR2veps/0ysNEKHD3zp2HJXZP2xqoV+N5U2AbC56x64L/MXnetih2HfWqvOLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jo4sToj2; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-55b0d4b560aso2288676e0c.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 16:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763771144; x=1764375944; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0W8r43+CmjiXPg0JACx3RiyUF49vynFvG9uLrKdatF8=;
        b=Jo4sToj2OjpByJ4hiwCVPZ4hlAydPlMvRe/aHrINtxv06tJqsoz7vX0INLlI8nmld4
         2tihMeUCHmJlfRJNV6nQUEW6gxQhLYrLM0tCWt4nrNHcBwESPkzXBqur8C3xEEDrKXfS
         ltoBUw/SCrubLVlelFmHGfFcn2zNkdzyeoabUaDVhQzRq+XE79MovPE6lfXGomdgDuGX
         mcSA+/Wt1CC8Zw/5oJWqG19C4K7Myl/20i8xq9oWRMVqqa5y/SaQEy7qCnHlrEtI10rS
         CWLulsBS4VVnka8dvzrxziOpYsZfWa7gke9whHqVtEdC+/McYYo+R5MZ8DpvqFFVdtFN
         6rrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763771144; x=1764375944;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0W8r43+CmjiXPg0JACx3RiyUF49vynFvG9uLrKdatF8=;
        b=JZ6FjAGE0pjLTfQ0gcEV6JuNZmkLc5fH5XYoq4El0//+b448fJ78jPXtVOVoAb83/Z
         64aP21cC/G2Gp6d2SzRpmM+avoTv/61Y2jToqb8aBrHxMAlgRGS320upbPMCTnPDU8Of
         lkBFc8rMCXulA9B41YNbsqHIlF+gta22bqIHwXi1DXyFxwORqq43fCGznXduHrI55DTG
         dbHj8bFxtGUp3b2MqaexSwNvI1bEJCOqJ63w0z9oyZ2laGi8zMvnpo7ZEPblvvmqXoNy
         neawXS3KF94XXPuB8+zQwrwOKxB3NgbD403PVSaUL2PegBXYWW9caCDsE7pltl2zlSYO
         L8vQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhQvJpGSNelc+kjgmFWlSxJ6AD5hcrF4unhPSMi8d7b+sIgJp88pc+XuVHcq+AkDEc0HA7JAdQtlO0@vger.kernel.org
X-Gm-Message-State: AOJu0YwyFMETNRaYyr0E5Qp/COCvCbTqhdCQY5dvuwTmOEJd1i+7IdcM
	sYKbFqnneqgGFHguylsMLeuPkAm6IgzNdWdxSsSJkmkJAOg7coW5vmXI
X-Gm-Gg: ASbGncuAVsA13KoIBMIZJdpN3nQC2trCzRqvo8db5iGoHyugNwQtktbwGTx5jL/fmLO
	wYh3BO7g5jrcEP4yqgAxcwgooRhMzw5blgg4GATSnE0dLnMegyiHr6BOAtOWL2354qKAj4ZQvRg
	gCmy+LDBCWVlFcuS6RS9sMRZbD19gCdzIune71Ay39XuCj5wxYzwVU/GbJ0K1TD7hPncOsLMhIR
	+/Tu6nqwb/zOka1o+BZjNTNa6FhuvmS6Gk/1YXTrZuNuVc/Zci+asShi/2z2XuhvKLaM0vHLUEZ
	/78aO8b3W4X/avfWBPV9xRoELyJwTSpslb/ABKGyHCf0G60sU3ceqwmk51lqV8wtiPnXSSIdDbW
	vrOErqMexVfPJr3vGnuXyGSqe3e2XW3Tvz+wgpiEY+DQV4mOFr2hISMnJXKGbTZ7T5niaazXsVG
	O2wZQ=
X-Google-Smtp-Source: AGHT+IGz1qzq15xr6FFYF1N+SU5pv821ORcu/7J8UUR75MhdpYi6aaDdWxpQ+x4HwuY7ULlTff3Jag==
X-Received: by 2002:ac5:cda8:0:b0:54a:a2a3:b16b with SMTP id 71dfb90a1353d-55b81a1729emr2689162e0c.3.1763771143836;
        Fri, 21 Nov 2025 16:25:43 -0800 (PST)
Received: from localhost ([2800:bf0:82:3d2:875c:6c76:e06b:3095])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b7f7749f3sm3098987e0c.11.2025.11.21.16.25.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 16:25:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 21 Nov 2025 19:25:41 -0500
Message-Id: <DEESOSIR28AI.2YMRBJ17VCQHG@gmail.com>
Cc: =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Andy Shevchenko"
 <andy@kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Jonathan
 Cameron" <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: Add TI ADS1018/ADS1118
From: "Kurt Borja" <kuurtb@gmail.com>
To: "David Lechner" <dlechner@baylibre.com>, "Kurt Borja"
 <kuurtb@gmail.com>, "Krzysztof Kozlowski" <krzk@kernel.org>, "Jonathan
 Cameron" <jic23@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Tobias Sperling" <tobias.sperling@softing.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251121-ads1x18-v1-0-86db080fc9a4@gmail.com>
 <20251121-ads1x18-v1-1-86db080fc9a4@gmail.com>
 <32e76bff-f535-40ce-88e2-7bbf7da87620@kernel.org>
 <DEEO8SSA15XY.1SDBZEILR5AHM@gmail.com>
 <2676d37e-fe3c-4504-8990-fbee0ce8407a@baylibre.com>
In-Reply-To: <2676d37e-fe3c-4504-8990-fbee0ce8407a@baylibre.com>

On Fri Nov 21, 2025 at 5:40 PM -05, David Lechner wrote:
> On 11/21/25 2:56 PM, Kurt Borja wrote:
>> Hi Krzysztof,
>>=20
>> On Fri Nov 21, 2025 at 2:10 PM -05, Krzysztof Kozlowski wrote:
>>> On 21/11/2025 18:16, Kurt Borja wrote:
>>>> Add documentation for Texas Instruments ADS1018 and ADS1118
>>>> analog-to-digital converters.
>>>>
>>>> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
>>>
>>> You did not test it before sending, so no full review but few nits to
>>> save you one round of reviews:
>>=20
>> My bad! I will fix the errors. Thanks!
>>=20
>
> ...
>
>>>> +  interrupts:
>>>> +    description: DOUT/DRDY (Data Out/Data Ready) line.
>>>> +    maxitems: 1
>>>> +
>>>> +  drdy-gpios:
>>>> +    description:
>>>> +      Extra GPIO line connected to DOUT/DRDY (Data Out/Data Ready). T=
his allows
>>>> +      distinguishing between latched and real DRDY IRQs.
>>>
>>> I have feeling that you miss proper handling of IRQs (e.g. active level=
)
>>> on your board.
>>=20
>> Can you elaborate? Should I specify active level here?
>>=20
>>>
> The problem is not about the levels. It is rather that the behavior of th=
e
> interrupt when disabled/masked is different on different interrupt contro=
llers.
>
> On some controllers, if an event happens while disabled/masked, it "remem=
bers"
> that and will trigger the interrupt as soon as it is enabled even if the
> condition doesn't exist anymore. Not a great hardware design IMHO, but th=
ere
> is real hardware that does this.

I can attest to that. My hardware (RPI 5) does this haha.

>
> I think a better wording would be to leave out "latched" and say that
> it is needed to be able to distinguish between an interrupt triggered
> by the DRDY signal vs. an interrupt triggered by SPI data.

I'll take this wording, thanks.


--=20
 ~ Kurt


