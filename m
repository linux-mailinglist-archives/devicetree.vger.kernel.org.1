Return-Path: <devicetree+bounces-160044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 404A3A6D63B
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 09:35:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B08E316B1AC
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 08:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F3CF25D542;
	Mon, 24 Mar 2025 08:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="g3nnqUVa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C0D125D21F
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 08:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742805305; cv=none; b=erPdqxnMVkVbMtvHAoEbi3ba89vK/0KgHdQHM647zMP5MO55itTO2uxqjDT4860m7byfQUvFOJE1sJp0XjEvfRz/yotMT2S4eFuRy5Q1zivUvejCVGNhBFtV1HAI3Um78Qsql5KJ1z6Iw4Ov40J5sTw8lHbEe2ZxmcnWS02hmIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742805305; c=relaxed/simple;
	bh=K3YpedOgsq+C31b7tTZPOvr8kmsx7aRuaqrW18HIxhw=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Cx7tpkePg2TycPqcyzxcmt/S9AkaUkq9cNN5DVMtwqr3IdYaaGLo8wzCrnfiXl2s2OA3SEfEYFCO6Su+ohjE5TjNZAVkO2/gQCz2dLc6xhM41cDi0x6FfXgetsKkAjNWYhEs/SWGjqjS0/F0U1QofJM70KULH6LU+UPFl08i/YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=g3nnqUVa; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ac2bdea5a38so696276866b.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 01:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1742805302; x=1743410102; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MtM2jPewpBB1GtxH9hLs2BIeUeV4rFif5sXTsAELetg=;
        b=g3nnqUVayA+f7NYeLW4hAiJ6sS4fK2KZa2bpyAoDXBkba+jQIKQUUEDXz0ESBMSWcM
         iWza+ATFopkHY5JcRWdt8zXpxCYU1gFaiinP6lHr2xTe+lY37Lb/77hCsBVLsJwx58N9
         TjgxXO95Z+vb0DX1z865cDKAE8MWlhrvSxJmINVv10KIaXQB/fw/B2TDhvC7cc+MuFtj
         MIw9a9YhKpcpLOTGKiC4xodgN3K3AOcvtbGx6WLLbV22kld7Uv5EbyH4zp1dBWOLN15o
         vyaBFZeufh9eZIbOm4TwBctTezPT6Xb099svTmaDB/j7e56g5Uc62cJ76AAIwI0sNnmz
         ZMqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742805302; x=1743410102;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MtM2jPewpBB1GtxH9hLs2BIeUeV4rFif5sXTsAELetg=;
        b=bIQzHREeU12diPAfy6uYOsgdq3SXXjcp/wVmWhaUPqR/hJMLypxi0L4KPu/nH7EGBW
         VgXTypDpedAN+n9M/oXAHmtWhCI7Xwv0U/xL67TEt0yepR81q+hbGz9xBdIyU/ACTkfn
         ckNKfrHWMdHKFO8I+SMCmmbZxHF/us5sn9+WWkpWm7vLH/I+FReIAaZB3FeyZjdGE+bQ
         K6JcgwNP7Hxc8ZEU8mDgk1w7Lf4vMzzctee8ToNcUhyk6DffC025gRDhScpXzS5EKAm9
         +dWBzLV/Fos9BVBY5XWlQba1vb+M1yerpL49a5PGXAamOkZbsMVO+S+yXV3ul/jM1V/Z
         /APQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGmBNICVtfYP0oY3HtS6NQ+pAD/jj+m+Zkvmtef9a1vSEXc8h3rgq0eb14mAZNfXxUaIK5KBGRjDLC@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc93TXubBoLHdUDWXA8cTZauJX+Jt6dh13QMyzRqEz5SCtoA5z
	fg9LuAK/40DdXmuc7Muc2YVfBU4yzhNQAhI4Z23KmtzGsseFsKohx6U6ixqGvV8=
X-Gm-Gg: ASbGnctAOmhl3udGAASJXOYwHfEEgo5gJNhznY2HJ3IciZVjLDkQwVVuoymE5XyZiU5
	I7+YJdOhBx4/tIJ/48RpaltUWB8b0kayFtNOXnsJ0MYDkKhE9BIH4VxaCaamzouDpfS3vJ+d7AZ
	K+aMSuccNhV618T0bNi0BDGR0S20+bPiFrCyrLIh/NbU03H+JIH0KWgc2K232y3tYV5XhpV6+1Q
	I0xhVGMuVCAKn3scdY8q0ra9jqcHzKjcjtoaPhuVvJNhpQ9IcJdJyXFNKQfDd0/Y1y6dFr9tPNQ
	gu9wKy+802nKS719iIgNj0HD4ZZEsaQX1/QhBrpqzp3M5p2b3eDrsLpDX6QSLXG2ydAbc18duv4
	jH3XbtZ7IXcRLt4anAi6uNCr/
X-Google-Smtp-Source: AGHT+IGB5qcChPuaAQdfX+14ZggTxmYRK+LL7JdV3Pt+9T+i1b9nMe6nfbPAb3Nqpg2BGHGLPaSOUw==
X-Received: by 2002:a17:907:971e:b0:ac2:622f:39c1 with SMTP id a640c23a62f3a-ac3f20f3e88mr932569966b.22.1742805301737;
        Mon, 24 Mar 2025 01:35:01 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3efd8f37asm645336266b.179.2025.03.24.01.35.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 01:35:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 24 Mar 2025 09:35:00 +0100
Message-Id: <D8OCX2BM20CX.J365MYKB5ECZ@fairphone.com>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Taniya Das" <quic_tdas@quicinc.com>,
 "Konrad Dybcio" <konradybcio@kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm6350: Add video clock
 controller
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20250321-sm6350-videocc-v1-0-c5ce1f1483ee@fairphone.com>
 <20250321-sm6350-videocc-v1-3-c5ce1f1483ee@fairphone.com>
 <wjq7sxdc5enfu6zhp4d53mpyevzbuwm6qc73kwiu2v3v5p4zkk@mevxbzosjai5>
 <D8M2U2EUF169.MWRPXFYRBXMM@fairphone.com>
 <dbdc13ec-13ca-4d80-8c96-26e5e7b4ab3e@oss.qualcomm.com>
In-Reply-To: <dbdc13ec-13ca-4d80-8c96-26e5e7b4ab3e@oss.qualcomm.com>

On Fri Mar 21, 2025 at 5:23 PM CET, Dmitry Baryshkov wrote:
> On 21/03/2025 18:15, Luca Weiss wrote:
>> Hi Dmitry,
>>=20
>> On Fri Mar 21, 2025 at 4:56 PM CET, Dmitry Baryshkov wrote:
>>> On Fri, Mar 21, 2025 at 03:45:01PM +0100, Luca Weiss wrote:
>>>> Add a node for the videocc found on the SM6350 SoC.
>>>>
>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>> ---
>>>>   arch/arm64/boot/dts/qcom/sm6350.dtsi | 14 ++++++++++++++
>>>>   1 file changed, 14 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dt=
s/qcom/sm6350.dtsi
>>>> index 00ad1d09a19558d9e2bc61f1a81a36d466adc88e..ab7118b4f8f8cea56a3957=
e9df67ee1cd74820a6 100644
>>>> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
>>>> @@ -1952,6 +1952,20 @@ usb_1_dwc3_ss_out: endpoint {
>>>>   			};
>>>>   		};
>>>>  =20
>>>> +		videocc: clock-controller@aaf0000 {
>>>> +			compatible =3D "qcom,sm6350-videocc";
>>>> +			reg =3D <0 0x0aaf0000 0 0x10000>;
>>>
>>> 0x0, please.
>>=20
>> There's currently 80 cases of 0 and 20 of 0x0 in this file, is 0x0
>> the preferred way nowadays?
>>=20
>> If so, shall I also change 0 to 0x0 for reg in a separate patch?
>
> I'd say, yes, please, if Bjorn / Konrad do not object.

Sure, I'll just send a patch as part of v2, there's no explicit
dependency of the series on it, so it can also just be NACKed and
ignored if so desired.

Regards
Luca

>
>>=20
>> Regards
>> Luca
>>=20
>>>
>>>> +			clocks =3D <&gcc GCC_VIDEO_AHB_CLK>,
>>>> +				 <&rpmhcc RPMH_CXO_CLK>,
>>>> +				 <&sleep_clk>;
>>>> +			clock-names =3D "iface",
>>>> +				      "bi_tcxo",
>>>> +				      "sleep_clk";
>>>> +			#clock-cells =3D <1>;
>>>> +			#reset-cells =3D <1>;
>>>> +			#power-domain-cells =3D <1>;
>>>> +		};
>>>> +
>>>>   		cci0: cci@ac4a000 {
>>>>   			compatible =3D "qcom,sm6350-cci", "qcom,msm8996-cci";
>>>>   			reg =3D <0 0x0ac4a000 0 0x1000>;
>>>>
>>>> --=20
>>>> 2.49.0
>>>>
>>=20


