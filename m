Return-Path: <devicetree+bounces-122158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F12029CE939
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 16:06:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7ECCB1F23DB2
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 15:06:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 851131D45FC;
	Fri, 15 Nov 2024 15:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="rLDQ+yyi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674A61CDA1A
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 15:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731683187; cv=none; b=tuF1V/5v0aMvyrOA0T9xJs2P1US9nTEBIdPGQOZY2f80CtTMIIF5YAl9YhbTNwV71FM3fnUzPM0KmFkfRU+8NawR5T26wFWrtS5McbhddCDbM0aQbRYUoJrZFAIL615Sr+a88Umnkqc2wDd3Tt6F1B0tTa4bdzlBsVko9PhkTJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731683187; c=relaxed/simple;
	bh=uPhgKsx31+w99ZN5CAn4r/SW8AcxxzhuHcuFUO+IyG0=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=TJMcFSOL8zwzpClNL2Rs/sZGpdraiMFyNCXw098/S5ap8Uvq181mlGpmMskfjkR7iJqZjUdLW66rljLcqu95/npJiVfrldvCB35L3pLNQrCI88e24LDax1/Szxva6ZH6SGSYu8UhctFqpzQV/y0RFa52F8gwb/BBF1bZACIEx68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=rLDQ+yyi; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a9a4031f69fso294805266b.0
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 07:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1731683180; x=1732287980; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uDOl7NltAXr6G8mTcGijCAhgwcSdhqInV58H0gMs9FY=;
        b=rLDQ+yyir9CMwY28CEiJhv2vdFCVNztboPr0RgUuxyvCr6PGZ00PpcCb3S18jqDuQ7
         8habij7cL9ZMlLQoBMEf/Vmi2awuWSaO9huHN5uyOKjxapSr9xzUilNHqxVd+LHYx2LT
         z8EZkbbxR7Ea7jQ9dHyOVydDwukTWfjOSBztEiIl7L6SkfWhrjOZsh+c20B/b+xNzQVh
         K58MBEYp5R5fCycgWeK4PIAaT44hWC9owA/Pq5dqtHx6Pw74oiEM3f12KwQHdV1Hm/Un
         NpvgV3VbE+s2Y4V4DvBgkxhnMcmOV+A8jVLbO53bfpBdejymoljZL0BEWORfV454XtvC
         mmvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731683180; x=1732287980;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uDOl7NltAXr6G8mTcGijCAhgwcSdhqInV58H0gMs9FY=;
        b=Fp95+eRuZu2z3j7ud3nEFHMHrJ26H3w4clYkbfCF59pO0pTX4shBLzK3JR8xI41Hkr
         1F19zsvGfUfTfk5L99XIMpLi6Xt32CfW1ntTwOR2F2PEqLM1c8Dd+iTGsDM9f/N78ZZT
         fj7mnysl5r1soYtL28G5bmduotkfybrVRvtC4+5g6XAZjYIsX9pJiSZGrNn5ZqNaBvPt
         AmErJSPK7RO4MadHuE/tjCVUDmkyfG2EVeEGPKIlrZYEdgT51AsMNuNqn8TUy12yTxhT
         TUXzz9Oi9Lo7J1sLBwj5Fv1sHF4o4+7lJ4KA8AhLrYaUUXmE+0Zy8pw318cpE57ZVsGC
         6b+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWfYjjqdQgK4SzOJfkqoCeQ+5s5mf0hV/kbvzk/42DXiy4UUNogwE35Icaydyc/K4yYSlqJjEpATaon@vger.kernel.org
X-Gm-Message-State: AOJu0Yzra/N/cgT5KZIGszg2prLlse4e1vqb1rFmlg+u5eC6XuGOsfk4
	FXtKYb7yvjGLAoR1Lw6Cr7NB1Bb9XIMIBqRb9479AhnqCssr5cqARsLPNgASMN0=
X-Google-Smtp-Source: AGHT+IFedO/GRq2PCsSSCKMui+UkqTBIrEZvLlVfKH50GUxLxbbg1/IGmebko5wSJKNUi0L/dcOMmQ==
X-Received: by 2002:a17:907:3d86:b0:a9a:14fc:44a2 with SMTP id a640c23a62f3a-aa483488086mr263775366b.30.1731683179714;
        Fri, 15 Nov 2024 07:06:19 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20e0434f6sm186743766b.139.2024.11.15.07.06.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2024 07:06:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 15 Nov 2024 16:06:18 +0100
Message-Id: <D5MUGDO3V9ZE.2EQQUXKCQV3QB@fairphone.com>
Cc: <andersson@kernel.org>, <konradybcio@kernel.org>, <robh@kernel.org>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <cros-qcom-dts-watchers@chromium.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <srinivas.kandagatla@linaro.org>, <quic_bkumar@quicinc.com>,
 <quic_chennak@quicinc.com>
Subject: Re: [PATCH v1] arm64: dts: qcom: sc7280: Make ADSP a secure fastrpc
 domain
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>, "Ekansh Gupta"
 <quic_ekangupt@quicinc.com>
X-Mailer: aerc 0.18.2-0-ge037c095a049
References: <20241113050042.181028-1-quic_ekangupt@quicinc.com>
 <5oqzxppquoeppt6xnjfm2rdwm23hbui5k3caz5v5ffqzizepob@dz5ikvzgbd4x>
 <c1f0e56b-b489-4370-99e3-0973641410b8@quicinc.com>
 <CAA8EJprDTz7b4rNtR4e9A-=j9_z-aJGBg3+g5is8Bmy=cgTM1Q@mail.gmail.com>
 <b8a9a8f5-1f36-4eea-925b-84578e71838d@quicinc.com>
 <sbkm5wvhtjoluhz7mi7f2wyc4t5znhazcxra52cd5yev5iksbi@yqielk6i7bpe>
 <9b16f4d8-56ea-4ef6-9cb5-35750af871e9@quicinc.com>
 <7grzazq7tfv3kixnevia2fkebe6o352372g3gpdinqeihmuavl@6qxd6vvwcwgt>
In-Reply-To: <7grzazq7tfv3kixnevia2fkebe6o352372g3gpdinqeihmuavl@6qxd6vvwcwgt>

Hi Dmitry,

On Fri Nov 15, 2024 at 3:45 PM CET, Dmitry Baryshkov wrote:
> On Fri, Nov 15, 2024 at 05:40:23PM +0530, Ekansh Gupta wrote:
> >=20
> >=20
> > On 11/14/2024 5:30 PM, Dmitry Baryshkov wrote:
> > > On Thu, Nov 14, 2024 at 10:49:52AM +0530, Ekansh Gupta wrote:
> > >>
> > >> On 11/13/2024 5:20 PM, Dmitry Baryshkov wrote:
> > >>> On Wed, 13 Nov 2024 at 08:18, Ekansh Gupta <quic_ekangupt@quicinc.c=
om> wrote:
> > >>>>
> > >>>> On 11/13/2024 11:13 AM, Dmitry Baryshkov wrote:
> > >>>>> On Wed, Nov 13, 2024 at 10:30:42AM +0530, Ekansh Gupta wrote:
>
> [...]
>
> > >>>>>>
> > >>>>>> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/b=
oot/dts/qcom/sc7280.dtsi
> > >>>>>> index 3d8410683402..c633926c0f33 100644
> > >>>>>> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > >>>>>> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > >>>>>> @@ -3852,7 +3852,6 @@ fastrpc {
> > >>>>>>                                      compatible =3D "qcom,fastrp=
c";
> > >>>>>>                                      qcom,glink-channels =3D "fa=
strpcglink-apps-dsp";
> > >>>>>>                                      label =3D "adsp";
> > >>>>>> -                                    qcom,non-secure-domain;
> > > - Are there other platforms which have this flag set for ADSP?
> > Yes, there are a few platforms where this property is added for ADSP.
>
> Please clean up all of them to reduce a possible chance of different beha=
viour or further c&p errors.
>
> > > - Granted that sc7280 was targeting ChromeOS devices, might it be tha=
t
> > >   there is a CrOS-specific userspace for that?
> > FastRPC nodes were recently added to this devicetree recently. Looks li=
ke this property is just getting copied.
> > It might be that fastrpc was recently tried on ChromeOS device or it mi=
ght be added to support some other devices
> > that uses fastrpc(qcm6490-idp etc.).
>
> Indeed.
>
> Luca, could you possibly comment, as you've added ADSP / FastRPC nodes?

I've just followed other platforms, I have little clue about FastRPC
myself apart from it being used for hexagonrpcd for interfacing with
sensors. There's not much (any?) docs out there.

Regards
Luca

