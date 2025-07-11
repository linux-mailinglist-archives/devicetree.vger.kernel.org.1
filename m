Return-Path: <devicetree+bounces-195315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E864B01430
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 09:16:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 42F927BA3A2
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 07:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F8AA1E51FA;
	Fri, 11 Jul 2025 07:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="MqndLE7P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494DD1D54C2
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 07:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752218171; cv=none; b=nQpDYCfxHRZOcgFx5Vd56eCklupYUx3jdINGpATWvq2rHXi7p9ieuJI01IkioqhDdGyAxWI7xe45qMg/D6/fUFGLL0TddtwFV65AOihkO6cMbL/yXP/IO921p6f0BgMXaTRE8tmuQcAQMvo5dnv3fnv18h+gxLySKGqKOms/LQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752218171; c=relaxed/simple;
	bh=mQN9mdk1zfE/Tq5fh19Uc5eXfQWbs21bpIrv8ogxK2Q=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=aAbMeuWDqsEYRhjmdsaB8d21GKehShL1o16cOrTvwTl88rkJNF1ApeVZsYEK9jwxNUp8xv02vct7wG0ggIkQAsQkn6vgaHXwnoqqvf7an1EPaYDifGqh5zNZmrCgWx5GicHSNrI2/BC3n9IuyAczyxoiHTg23R642hDMDxYyT/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=MqndLE7P; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ae3703c2a8bso338792966b.0
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 00:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752218166; x=1752822966; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mQN9mdk1zfE/Tq5fh19Uc5eXfQWbs21bpIrv8ogxK2Q=;
        b=MqndLE7PKl9zzR0Rw+yxuQH9xRgcSWHu0Bj/CMeSKIjfBBTkvDDEWfrDTCXfLmOjtC
         q928gjsdLd/k7BCARcEk4yd1Tx6yE2kLDq7Oo6ODDP80dxuPNrd5nCr3XygIoTHlGVZF
         mQscZFbdEkjC7CwkiL/cwpZaKK5sBIlC/likUE+IbptK5En51OoQIkrh9Bn4U/adORgu
         G/seUWpX++2qDiK662J4vh/SNklqxQ4LqQ4NLELTX5xmZ/38C+QBhh0PYpKwN0/7oOtp
         Vz4kp0Yg4N7QmOQIuU5jpE96/2cS6s6fwfQg5flmgzZUSXHjj6JfEzpga36hd1qZdYLY
         uOdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752218166; x=1752822966;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mQN9mdk1zfE/Tq5fh19Uc5eXfQWbs21bpIrv8ogxK2Q=;
        b=XQPiowTD5ya6y/E4q3LYbHI068c8gdlhrumMLjyhxnYnQjNW8FjFhGJeoh/tVGQq8a
         noIeuqPTz7C1kDdmwPLa8FQxq7NxpRoy4yBSdO1vytpx0NO8OMmO524GVOPIF3IFC6NZ
         JSaNsji6TkF1ZjX9WwuPs9AC8gP+AnFk+2r28tgBSwqhe122fF9AtwnLWt3mBy103IfU
         HlcLoq7bUnO91dodL1Hq9q/Zp7DeR3YppYLIe9zQFdmx9/tEKzCTVXZLbKMR9jpEG5b5
         1Ip7ik+7LPzA2E3uuApk0L51QCHjbf+KzbyJz3g3mAGFnukcn010+87WsawggUNPoE5t
         60mw==
X-Forwarded-Encrypted: i=1; AJvYcCUTTvyOH/IAQvi5EZpoPGbiH2Y4cFqrloOAsZ5eg8wEO2LYB4LEkpY8b9OPtSlfXdIamfSwNyye4jgF@vger.kernel.org
X-Gm-Message-State: AOJu0YzpdpTYqMKUrO9NmXy2JaoZ4HPM1x0B7tDT1NlcL0GUl+vy+QHo
	2XFtsfz/UQwm510sOHQWnSJW58HJisCleOXpdMGm9vbkXfRY5sALdW5SEJkJKI2jnQ4=
X-Gm-Gg: ASbGnct5J8LDNJE9sCyhhrI5toyKxXX5AMqHiXwiP4lF3JQ/kwSkqlwmDmXw+Z+dN8J
	jdyKFjgjlhPyQvAsMZTxGCuNVTiWW7nUbzSi7lDXafYF49eMPh0LtMg1lGMCZrneJrc4sybApww
	aQ5mA6upPmzl1N6s0xsn5LgOZe5h8aUt0cxj7WuRzNrgaAsOnKvFMp3NQt35iZXBhU6R7R9ViTJ
	ng5TrDsF4Mozd7rR/l+SlE31NqEiH8vK3gETUqXRDUZiyBdvftUsTzQetO0bi7JsJf8coeKP0fG
	KemFjn5YVnD0AhWswEd0XUzD5ClqMoAYlUhsipSNf20F3J2ugFog/vHlAK1/y9UbwQvBR1EBqK7
	Jxa2nE8paB+6Qk/RdpQmcvZVP8hnZJ8vodZvDCCI5hXu8VkBsLPRJTZ/CBsMaYzYoARw=
X-Google-Smtp-Source: AGHT+IH2FGswcnzP9yBEATuhQDfW/yRMBsxTqQVMW57GBq/sG29jWT8g0652cQbAb2QfRokBgo4ULg==
X-Received: by 2002:a17:907:cd07:b0:ae3:64ec:5eb0 with SMTP id a640c23a62f3a-ae6fbc55069mr219024266b.11.1752218165525;
        Fri, 11 Jul 2025 00:16:05 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8264613sm254810266b.91.2025.07.11.00.16.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 00:16:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 11 Jul 2025 09:16:03 +0200
Message-Id: <DB91HZVOWORI.32382ZPLWQMOS@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH 4/4] regulator: qcom-rpmh: add support for pm7550
 regulators
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250625-pm7550-pmr735b-rpmh-regs-v1-0-cab8ef2e5c92@fairphone.com> <20250625-pm7550-pmr735b-rpmh-regs-v1-4-cab8ef2e5c92@fairphone.com> <bc27209a-e0f8-40bf-979f-3d747c501ae8@oss.qualcomm.com> <23ae6ddb-682a-4c4a-bd63-f0a1adb6f4f8@oss.qualcomm.com> <DB7I7D3P01FF.3T5WRSTJIWLVK@fairphone.com> <c1a48230-c4f5-4c04-a53a-449bd90b1fd8@oss.qualcomm.com> <DB8FM0YYS9UL.JP6OVNZAXWBP@fairphone.com> <c57e130c-38a7-491d-945c-7d5530d4fb46@oss.qualcomm.com>
In-Reply-To: <c57e130c-38a7-491d-945c-7d5530d4fb46@oss.qualcomm.com>

On Thu Jul 10, 2025 at 6:08 PM CEST, Konrad Dybcio wrote:
> On 7/10/25 4:06 PM, Luca Weiss wrote:
>> On Thu Jul 10, 2025 at 3:03 PM CEST, Konrad Dybcio wrote:
>>> On 7/9/25 1:56 PM, Luca Weiss wrote:
>>>> On Wed Jun 25, 2025 at 4:20 PM CEST, Konrad Dybcio wrote:
>>>>> On 6/25/25 4:10 PM, Konrad Dybcio wrote:
>>>>>> On 6/25/25 11:18 AM, Luca Weiss wrote:
>>>>>>> Add RPMH regulators exposed by Qualcomm Technologies, Inc. PM7550 P=
MIC.
>>>>>>> It has 6 FTS525 (FT-SMPS) and 23 LDOs with 3 different types.
>>>>>>> L1-L11 are LDO515 LV NMOS, L12-L13 are LDO515 MV PMOS, L14-L23 are
>>>>>>> LDO512 MV PMOS.
>>>>>>>
>>>>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>>>>> ---
>>>>>>
>>>>>> FWIW everything you said in the commit message is correct, but I'm n=
ot
>>>>>> 100% sure how to map these LDO types to the existing definitions
>>>>>
>>>>> OK so found another page (also made sure that the supply maps are
>>>>> indeed OK)
>>>>>
>>>>> SMPS is OK
>>>>> L1-L11 is OK
>>>>> L14-23 is OK
>>>>>
>>>>> L12/13 -> pmic5_pldo515_mv
>>>>
>>>> Based on what are you saying that?
>>>>
>>>> Based on 80-62408-1 Rev. AG for the LDO515, the Output voltage range f=
or
>>>> MV PMOS is "programmable range 1.504-3.544" which matches "pmic5_pldo"=
.
>>>>
>>>> But yes, in the table next to it, it's saying 1.8-3.3V, which matches
>>>> "pmic5_pldo515_mv".
>>>>
>>>> If you're sure, I can update it but the datasheet is a bit confusing.
>>>> Let me know!
>>>
>>> I was looking at the same datasheet as you and took into account both
>>> the LDO type from e.g. Table 3-12 and the output ranges from Table 3-24
>>=20
>> But why, looking at table 3-24, is there a mismatch between that text
>> "programmable range 1.504-3.544" and the table on the right saying
>> min 1.8 and max 3.3V?
>>=20
>> Programmable range sounds more like what we'd want? No clue...
>
>>>> (3.544 - 1.504) * 1_000_000 / 8_000
> 255.0
>
> I would asssume there's an 8-bit register that holds the value,
> hence the >>>programmable<<< range may be larger

Okay thanks, you've convinced me enough :)

Will send v2 shortly with this updated!

Regards
Luca

>
> Konrad


