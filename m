Return-Path: <devicetree+bounces-264954-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cI+RIzicjWlT5QAAu9opvQ
	(envelope-from <devicetree+bounces-264954-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:24:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 043C712BD29
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:24:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B6D173034798
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:24:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 375702DB7A6;
	Thu, 12 Feb 2026 09:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="evqxtkRy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IaVBpGio"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0642D8DB9
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770888244; cv=none; b=XTxsn+N/VI79M2vlajzWNQD1JmbtggA4k9OPMHHgQk5/X22KFgOyQIejcbpsjH8F+xhPSe5ambrXsMxARN0JT6o/a5jd+ySIZp4Q+dfXt5Rj9vkfHMmhm8E96ir0I4b9G5V9zY+CBdUuSIPdPyqA8KTyr6MnhZj5Wrn9ZwyZofQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770888244; c=relaxed/simple;
	bh=FNY/wXUFTDAUIoYt1SUyj6jU69X3UEtPaOl7Hq6tX3E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u5dQJriHet63SYXMc05qk51vlVCtUkMmt8s5SNnSlffqL/XvVd1+Vd1GEEv3zcXbiXeu+u3R/uSGSrnRqI6I1PcOk6BQ0VFS3pZjvgxSi6dxrvmEqNND8AIGO7hgYrKFJ+ciZIWldzaq7twupdxt1ByGl9GAYk6Ugd0q5nATEwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=evqxtkRy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IaVBpGio; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C3RtA93963723
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:24:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jYQTdQ3eriXSnzd+Hz092D0hWf/uAteoJhiJrVldSDY=; b=evqxtkRydXiX2AV7
	byV66pKayOc6TVexcUwade+SjBI+SLFsaNSCwwKMfgASWVVN+v2PUFyTBayU9ddI
	lQg/LzQQ17FfoE4NLadjtfWsrjxuVedDC9ML7zKPHr7F4+uKoFhoF7P0HiIzGP5N
	w9yEIpca19ENGG/5Jf+jJOExixPuxBZAemMtH96zd1Tp3nDSHBgnoAO7XEESLqAt
	0L67vpBaDi//HIFEVTcmKqrxJyZD+SwS7kziY8aObKNS7YF4B4wI7SviSoL8oIov
	lmqBb3H/gFbqR4lcWbGA8P4hTx+HElnCMpPVvE2tMssaS4UKK0qKW87svE9F/il+
	4E69JQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8y8ntdet-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:24:01 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-896f5c90f07so30655376d6.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 01:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770888241; x=1771493041; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jYQTdQ3eriXSnzd+Hz092D0hWf/uAteoJhiJrVldSDY=;
        b=IaVBpGioZJq+jwl0U9amCK9YknTITLR6ZP38X0sS3hAIHs+kJDoQRBs7a/L1FolcxO
         J3g9qwOVAYAblMi4UjZDnOa4B1eea7XUc+sDIQDqUDL9rh4ldHvmEkfkUHLDVE6A5Fmj
         WEx6I/RVTfvbPHjDkfWM/ZdfGnZMzpudt6nvFvJjOzVHksWWZkUH2KxSOMjB2O0oV7zN
         8/8EM8LCToknF5SAlHtl8umaePjCLESahHjv+0KuXO8qb3cOVh4N+ugITRlJBZjGbzaM
         eFwK6DgZkh2XbpIMv2ql+9pdaTx0VRFEGRg3HFuby0jjWit7RII+MOFcvvVX49zNGZxG
         cHEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770888241; x=1771493041;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jYQTdQ3eriXSnzd+Hz092D0hWf/uAteoJhiJrVldSDY=;
        b=SDYlVAyB4n419S+Ft3AqpjCkPQdG7TZEtjZzedW8QlvccSwnpkxd7+OQF72b5svowg
         nrdItO0ANIJcgWDP3dCzUoLGZolz4i5Wid8ETqLk6nvRciITjQ4vQNu31OREqwyPm7dz
         d5hpHRP47EuN5PqIFm4DQkHvUeK2obLHR+NUH0xuvfpJs4YCndocxAXLV53cz3SiDlAV
         hj8LDG0SFVzL0dpeRDsqA9B5S0gx6RfKRRd6CuTHSYty16H1E8na6PPHTWbRCxb0fWQj
         mB5XJxfVpSTCjrFB3N+hzdGybOJzd63e66ey4vatdPljExbw5buStwvS+PMsdcE5L2Fg
         nm8g==
X-Forwarded-Encrypted: i=1; AJvYcCXMbJUNMr3XiIddnSvQi6V/5UsWkJCY+2PR5zEoorhwubei6wiNb+SEfDOm67EHMmPpB8FdiZ6CF0DM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3zZ+XMSeRVRm7ouvKWQTs/Kl0VaW2q9neuyxwElM8KM94/ekG
	4+CXTONQcYwij5ZVK9kFeOMnXyVfOt1Vv1Q08snqmNe5EFEEYho7EQHtIiZ+VxFnUQ1/k33f3Zs
	BhOldhV9rakykE/tq9nMH0zk2F9jzT0jETO6auoZWQmJmcaJVr1GY6MNHiHgF1U4F
X-Gm-Gg: AZuq6aK18pEfJhsNrJl2Uz2plRGA6txBPjgkx3/FOmXxlENFebP+PB8oX1dBVYI7svN
	iRw4zzNyQqz/v0s0E3XkMjgktJTaqQ0G+jeBeVnYkcl/DY4SuXyZzBlViBrQu/oGOyDrMR7+Cyq
	I15VY3Q/Y7FAky4BsCWoWgwCMnlZ+5uBHHoIhrSCZj1A5ynR4INd2WfHVcCuhXuHUYgOQtzNGBI
	Dxw6ZwOU7IndLz5cBBdWLjb/3gVI+dvC/7ufGMSchlPJsycOalcXzR3YH0Sq2gofRAfFR3yfXz3
	4R0oPmJeOMnuOa6a1aIchIqXGIXdnh3ronszxrKPZTuPF+WaDTaNz8x0Gv2g76194aPFVDTSKk8
	XsgfPOoHl1t/CA2hBMjjVIA690H3Fr8JexPcd6fWR9kr3nTIwClcw3eMd41z5H6npVC77kW4shB
	adU9U=
X-Received: by 2002:a05:6214:6105:b0:896:f9ed:be98 with SMTP id 6a1803df08f44-89727999b22mr22927276d6.5.1770888240990;
        Thu, 12 Feb 2026 01:24:00 -0800 (PST)
X-Received: by 2002:a05:6214:6105:b0:896:f9ed:be98 with SMTP id 6a1803df08f44-89727999b22mr22927126d6.5.1770888240531;
        Thu, 12 Feb 2026 01:24:00 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65a3ced48dbsm1488000a12.15.2026.02.12.01.23.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 01:23:59 -0800 (PST)
Message-ID: <d7c66964-48b3-49ed-8d52-5341c382c1ca@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 10:23:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen supply for Glymur
To: Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-1-87ca84fd78b3@oss.qualcomm.com>
 <20260209-magic-conscious-seahorse-b81c8b@quoll>
 <aY1Jx5J8x/OALk5M@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aY1Jx5J8x/OALk5M@hu-qianyu-lv.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA2OCBTYWx0ZWRfX5w5lOPUsjCI2
 nqljyPcukD/OPfV+yPTMP2VPGrEouFSxQ/EeuIw5LvxG+62wHWcpEik4cX0ksBiH+MWyx7eCZ9M
 K9i8Ee+WZ2nyC7HfLg6In2ebxM+V0+xYkXK8YO38k+9VEMYAgQoPq//vcpLT0ArqnpNcsTHmJFg
 EGgtWvDaxGXvVdlb0cWdlDpi6T+iYrOyAyrgz7yn1b6NEL1m+Ms0Gm6DmeZwmRV9lHWAyRj6Jgw
 8GdnKF48AD+xWmMNKKu6Y5AevhyAxpzfNJK+TB+SA20Ysf3YJSEidLtlpbXdK8Un3LQlhfXjtBz
 ATm4L4VT5hyi9rzQBtHywJiYMW0krq/r2mT15igSQb0vXA1USq4eccCgVKRcF0p8gfOZxmWNhz8
 UDvG8gmmLR8Q5MUeSVBvoWddKvPd5u+9XvLcsMTK5ATp2/lXE4/5aL1k/q6+P04hs14pGkdPa1j
 5jFGCCmWegcEDw0j/AA==
X-Authority-Analysis: v=2.4 cv=VNvQXtPX c=1 sm=1 tr=0 ts=698d9c31 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=4XAFBGz2Hh_vFV4knqAA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: mRBztyyY4_e8HWYSTCW2c_afGJfENQ1N
X-Proofpoint-ORIG-GUID: mRBztyyY4_e8HWYSTCW2c_afGJfENQ1N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_02,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 suspectscore=0 adultscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264954-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 043C712BD29
X-Rspamd-Action: no action

On 2/12/26 4:32 AM, Qiang Yu wrote:
> On Mon, Feb 09, 2026 at 09:06:23AM +0100, Krzysztof Kozlowski wrote:
>> On Sun, Feb 08, 2026 at 08:49:39PM -0800, Qiang Yu wrote:
>>> The PCIe QMP PHYs on Glymur require stable reference voltage provided by
>>> refgen. The refgen itself requires two separate power supplies:
>>> vdda-refgen0p9 and vdda-refgen1p2.
>>>
>>> Since there is no dedicated driver for REFGEN, add vdda-refgen0p9-supply
>>
>> How does the driver matter for the bindings? If I add dedicated driver
>> for refgen, then I change the bindings?
> 
> Yeah, I know that dt-bindings should describe hardware, not software. But
> what I meant to say is that the refgen is different from qref which is
> controlled via TCSR registers and its LDOs are requested to vote in
> tcsrcc driver. The refgen doesn't required register setting and it doesn't
> have dedicated driver, so we vote its LDOs in phy driver. I will avoid
> this statement in next version.
> 
>>
>> There is qcom,sc8280xp-refgen-regulator so why there cannot be
>> qcom,x1e-refgen-regulator?
> 
> I think we can and it seems better because the refgen for pcie phy also
> supplies reference voltage to other modules like usb. But I checked the
> qcom-refgen-regulator.c, it contains some register settings and there is
> no LDOs voting. I'm not sure what does those register do, maybe Konrad
> can provide some backgroud. But on Glymur, we only need to vote LDOs. So
> what if we use a fixed regulator in the device tree to represent refgen?
> We could set refgen0p9 and refgen1p2 as its input supplies, then the PCIe
> PHY would just need one refgen supply reference.

That refgen on e.g. 8280 supplies display and camera PHYs. The latter have
some sideband interface to request a vote directly (on all but some single
old SoCs, IIUC), while the display ones need a manual vote.

It would stand to reason that perhaps this MMIO-controlled regulator would
have some sort of a voltage input.. so maybe that's the missing part in the
story? I'm trying to find some answers but it's not easy..

Konrad

