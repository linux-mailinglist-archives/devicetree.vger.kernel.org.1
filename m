Return-Path: <devicetree+bounces-232087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F123C1419E
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 11:29:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0825427CC4
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:28:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D85C2E8E00;
	Tue, 28 Oct 2025 10:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="aU3GrO2k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 808B729B8DC
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 10:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761647332; cv=none; b=G85bZV/7YuYWxpyeg4EQqrJSK4fsZ1r118C8QrzUSoKSEKKaQkcFmOtioFWeDXDxGcsJkGU7vJHjup17XEgbiWGZFEO8ZNZm1V1hFnqQb8hJs92LplepuIccFVqb3FGUIk3sep4UWAu3Jm2fQilO+KmqYF81t1AL4ZtS/8d+WzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761647332; c=relaxed/simple;
	bh=97lSLwesVjAQqGP6skiXp6OA8f6iB6kdYNT3xfDro/s=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Uf8P0q+m+glJGx9TNIa0rCnINhI5zYto9mEnpifgnsjEtX6qoT8QIFAXhMCa61nRq0q0ZwxPzYIwcaAylEQ5vhiVP/2hGIg6qpjjz92cRnG/Af3j3ooBWCsIIxux3CEsUA7p+nRaZiof1R0UgHeSxVNLC6PyuBkm+5BPWWZBG20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=aU3GrO2k; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b5a8184144dso922005266b.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 03:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1761647329; x=1762252129; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BMXRbRNlxsDfZ+3w0LxcZhJkySSjDHR6SRYAtaTDu0Q=;
        b=aU3GrO2kS9+WybFtzDm7a2CJFn5fjQKKP2ABsbZpN6JJJQgYfc7MUrurTAo2NLFkpV
         OyezEVOkGSQKgr/pyP1LeOfLoBDeyQYO2wOoQ/IBasYN+GaIhIL1lEp+ERYS7RKK0nyP
         tDSyWvsO8Ok4e6prEonkSVxUtGdclOYbax7+neXpAa66Yv/ACQL0ZgfDn45Se79R3atB
         lz6Wx8nCyFYh9e6liukI65xCZ7fr8inxIC+gHIWO62E1cUheqkmmmkqcJ601V5rct6h1
         z5QB1Wi6TxHrLhNeUsHc8olN8BIb+w8WdaNoBD5TCoWDaoQHIYtrtlKF4Z+wRMkKvhLe
         YPjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761647329; x=1762252129;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BMXRbRNlxsDfZ+3w0LxcZhJkySSjDHR6SRYAtaTDu0Q=;
        b=ggT4X0gYhF6DiL38OSK7/LMR6RZhCLQOKbTLRxHNiZ5djEapoNw5pwILIA0RYnlsg9
         TKQRHwmpFB0aoEHopYjrHZn7w50vESFtCX25zDY1umBWjchF3nCzpK2ioXvPmo8iNcIb
         NmcCjJs0BeelUm2+WW6qxKn/T8y/tVCjjxwSx/rBQBtYoLCD4I31PdvkVG8Pr/p28sTF
         rGQlqkBZt2+e1df4kgahv6M4IW/k6mJ2cyRDjlS64Go6LRYA+M5Fo3zuqaMy6NLig+Ov
         zUFP8J0QHEicejTOWCYGVl7XWX0RUHbdGVZI8hBJPru/PnmLP2WSdx96d/3BlH+h+zBj
         14qw==
X-Forwarded-Encrypted: i=1; AJvYcCUMCPtMIrSz1rFQrqWiyWVpcuSwpRJr3H3x8ZKzX11P1RCW09fHpR0lr4EmSuy1sHUADP0WPK8vGM/i@vger.kernel.org
X-Gm-Message-State: AOJu0YyI4rtFvIEUpvD0jWw996Uv1sc72rzrIjfzfbdBJ6nhB6EeLyKr
	xQyr3UeDt5INUl0BnvtzWBXXBrYnz2rCF0AbqVQ478IqYeOqpsLr4q2s5Z8OeXYvf4s=
X-Gm-Gg: ASbGncsgpI+kgFAGGPvxvs6EU36oKFpDhIc5Vxaboa5CCWoHci60Xqq5ACxHHUdUDgL
	qp/rQO35+pnnSsfH8GWA9PcFFxn3HVU72y8sZR6DRwQo7DbsEAM6ohtEGLpIXxVPu0Lc0I2VXU4
	9O19KO5NWPLp3/tHe5W7aLefEnauUVWkfIA5CB9jpcmDRb2TzltFtCvjc+EpTbsR3J7EgBp5pOr
	YWphpYqtdZ8PhOtu+hJid/BDiSJD4IIuWntSWPhuIOd1W6QVF9mjx9ymcXJ/B6khVgWoNgX8XLU
	7e2r2MkkQSqjfzNuZnvg3hPoA8AdCzKdbuUH51051RPr6GPN1EHz/psfwrvfscyWXNCAfFWlWr2
	QLmvGZ3XwHpGp1kOQzbZM1kPXi+OlgV67ZVzbx+8MeQI4VRoLfi8G/Qf9jk9bP5WWgWCnfZGfiN
	16vLpMKgaDBcpAcF6gXjYHSC6Rz8PmXkmpezJ3sI2D38YMHt2wE2CUc7waj7v6TRQGT8RRrDZHH
	KkQ7EISK9OhgafM
X-Google-Smtp-Source: AGHT+IEU5BeJr58XwmNwQIw9Dt6MZPEA/KOQRVo5aRqLMfkGu4vi0uAfJ/1Dmz1KWCAKn3Lh5uA37w==
X-Received: by 2002:a17:906:81ce:b0:b6d:801a:1e12 with SMTP id a640c23a62f3a-b6dba44f2a7mr270336066b.18.1761647328784;
        Tue, 28 Oct 2025 03:28:48 -0700 (PDT)
Received: from localhost (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85308039sm1069788066b.8.2025.10.28.03.28.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 03:28:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 28 Oct 2025 11:28:46 +0100
Message-Id: <DDTVUXIIQQUS.2UUJ9BS4JCZ0V@fairphone.com>
Cc: "Bryan O'Donoghue" <bod@kernel.org>, "Robert Foss" <rfoss@kernel.org>,
 "Todor Tomov" <todor.too@gmail.com>, "Vladimir Zapolskiy"
 <vladimir.zapolskiy@linaro.org>, "Mauro Carvalho Chehab"
 <mchehab@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: media: camss: Add qcom,sm6350-camss
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Luca Weiss"
 <luca.weiss@fairphone.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251024-sm6350-camss-v1-0-63d626638add@fairphone.com>
 <20251024-sm6350-camss-v1-1-63d626638add@fairphone.com>
 <20251028-defiant-visionary-rottweiler-f97cda@kuoka>
 <DDTUHFIN3IEK.3FY5IS9S73ASO@fairphone.com>
 <0bf4ab2e-9846-4f8b-ad72-e9db6fb7d08e@kernel.org>
In-Reply-To: <0bf4ab2e-9846-4f8b-ad72-e9db6fb7d08e@kernel.org>

On Tue Oct 28, 2025 at 10:46 AM CET, Krzysztof Kozlowski wrote:
> On 28/10/2025 10:24, Luca Weiss wrote:
>> Hi Krzysztof,
>>=20
>> On Tue Oct 28, 2025 at 9:54 AM CET, Krzysztof Kozlowski wrote:
>>> On Fri, Oct 24, 2025 at 02:23:59PM +0200, Luca Weiss wrote:
>>>  +
>>>> +  clock-names:
>>>> +    items:
>>>> +      - const: cam_ahb_clk
>>>> +      - const: cam_axi
>>>> +      - const: soc_ahb
>>>> +      - const: camnoc_axi
>>>> +      - const: core_ahb
>>>> +      - const: cpas_ahb
>>>> +      - const: csiphy0
>>>> +      - const: csiphy0_timer
>>>> +      - const: csiphy1
>>>> +      - const: csiphy1_timer
>>>> +      - const: csiphy2
>>>> +      - const: csiphy2_timer
>>>> +      - const: csiphy3
>>>> +      - const: csiphy3_timer
>>>> +      - const: slow_ahb_src
>>>> +      - const: vfe0_axi
>>>> +      - const: vfe0
>>>> +      - const: vfe0_cphy_rx
>>>> +      - const: vfe0_csid
>>>> +      - const: vfe1_axi
>>>> +      - const: vfe1
>>>> +      - const: vfe1_cphy_rx
>>>> +      - const: vfe1_csid
>>>> +      - const: vfe2_axi
>>>> +      - const: vfe2
>>>> +      - const: vfe2_cphy_rx
>>>> +      - const: vfe2_csid
>>>> +      - const: vfe_lite
>>>> +      - const: vfe_lite_cphy_rx
>>>> +      - const: vfe_lite_csid
>>>> +
>>>> +  interrupts:
>>>> +    maxItems: 12
>>>> +
>>>> +  interrupt-names:
>>>> +    items:
>>>> +      - const: csid0
>>>> +      - const: csid1
>>>> +      - const: csid2
>>>> +      - const: csid_lite
>>>> +      - const: csiphy0
>>>> +      - const: csiphy1
>>>> +      - const: csiphy2
>>>> +      - const: csiphy3
>>>> +      - const: vfe0
>>>> +      - const: vfe1
>>>> +      - const: vfe2
>>>> +      - const: vfe_lite
>>>> +
>>>> +  interconnects:
>>>> +    maxItems: 4
>>>> +
>>>> +  interconnect-names:
>>>> +    items:
>>>> +      - const: cam_ahb
>>>> +      - const: cam_hf_0_mnoc
>>>> +      - const: cam_sf_0_mnoc
>>>> +      - const: cam_sf_icp_mnoc
>>>
>>> Please share the list with the previous generation of this device. Whic=
h
>>> one was used here as "previous"? For example x1e has quite different
>>> names - nothing with "cam". No "cam" in qcs8300, either.
>>=20
>> sm8250 is the big sibling for sm6350, so it's matching the names from
>
> Ah, ok, good to know.
>
>> there upstream. These exact names are also used downstream for
>> "qcom,msm-bus,name".
>>=20
>> I don't think there's anything preventing removing the cam_ prefix thoug=
h.
>
> Let's use the X1E names here.
>
>>=20
>>>
>>>
>>>> +
>>>> +  iommus:
>>>> +    maxItems: 4
>>>
>>> I was told iommus might differ. Are you sure all of them represent the
>>> same (e.g. not specific iommus for specific purposes)?
>>=20
>> I don't really know.
>>=20
>> These 4 iommus are labelled 'msm_cam_smmu_ife' downstream. There's still
>> more iommus for more hardware blocks: jpeg, icp, cpas_cdm and lrme.
>
> OK, that's fine then.
>
>>=20
>> Maybe someone from Qualcomm/Linaro can explain this further if
>> necessary?
>>=20
>>>
>>>> +
>>>> +  power-domains:
>>>> +    items:
>>>> +      - description: IFE0 GDSC - Image Front End, Global Distributed =
Switch Controller.
>>>> +      - description: IFE1 GDSC - Image Front End, Global Distributed =
Switch Controller.
>>>> +      - description: IFE2 GDSC - Image Front End, Global Distributed =
Switch Controller.
>>>> +      - description: Titan Top GDSC - Titan ISP Block, Global Distrib=
uted Switch Controller.
>>>> +
>>>> +  power-domain-names:
>>>> +    items:
>>>> +      - const: ife0
>>>> +      - const: ife1
>>>> +      - const: ife2
>>>> +      - const: top
>>>
>>> Uh, not your fault, but who came with this list in previous generations=
?
>>> Instead of simple and obvious "top+ifeX" which allows growing/shrinking=
,
>>> someone put "top" at the end which means this cannot follow same order
>>> as X1E for example... Heh, it follows at least sm8550.
>>=20
>> Shall we put top as first power-domain? I don't think it's an issue to
>> change the order.
>
> Well, it matches sm8550, so I am just grumpy complaining. It's fine.
>
>>=20
>>>
>>>
>>>> +
>>>> +  vdda-0.9-supply:
>>>
>>> There are no dots in property names. Are you sure these are called
>>> VDDA_0.9 in the device datasheet (not schematics)? Please look at other
>>> bindings how this is being named, depending whether this is PHY or PLL
>>> supply (or only PHY).
>>=20
>> The following power supplies are mentioned:
>>=20
>> * VDD_CAMSS_PLL_0P9 - Camera SS PLL 0.9 V circuits
>>     (not referenced in downstream kernel, connected to vreg_s5a in
>>     schematics)
>
> So that's vdda-pll-supply

Just noticed, this S5A regulator is the MX power-domain, so we cannot
add it as vdda-pll-supply.

From what I can see, so far no other camss bindings take in an rpmhpd
power domain, and given it's not referenced in downstream kernel, it
doesn't look like it's necessary to control it, from camss.

Maybe it should be added to camcc though? Still not quite sure how
downstream vdd_class should translate to upstream...

Thanks for helping with the other points, those are clear.

Regards
Luca

>
>> * VDD_A_CSI_x_0P9 - MIPI CSIx 0.9 V circuits
>>     With pad names VDD_A_CSI_0_0P9 to VDD_A_CSI_3_0P9
>
> vdd-csiphy-0p9-supply
>
>> * VDD_A_CSI_x_1P25 - MIPI CSIx 1.25 V circuits
>>     With pad names VDD_A_CSI_0_1P25 to VDD_A_CSI_3_1P25
>
> vdd-csiphy-1p25-supply
>
>
> Best regards,
> Krzysztof


