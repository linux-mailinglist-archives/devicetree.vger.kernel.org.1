Return-Path: <devicetree+bounces-266364-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLEqKrCNlWmbSQIAu9opvQ
	(envelope-from <devicetree+bounces-266364-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:00:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B160F1550D1
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:00:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A4BD33006237
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D1B3327C07;
	Wed, 18 Feb 2026 10:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HJAB0Onc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BUR5i0es"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDAD33ADB6
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771408810; cv=none; b=YjzPB0muPuy+JYRDW/vSsBYh5QyTSnZodG7izpywtLBi7mBDMPy7ue9uBxSnUE5kj3TjG3bP62gSVuRgHxveO4zUrz2VNNI/SVnJnpot4US8RfVlYk+bd1gcBuaqJXIFNa4Jl57HE7PXHIRQrFviXmqMoiO2OYpIvost8h8Trbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771408810; c=relaxed/simple;
	bh=riGe/tzNNOFyQt7XZhywId3Y47Fv9ru/Uer5m+Nu7XA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bILBbvcMC335luW6P2j8vakd9FrLbmpy1/FrbzQQuc/fHvOKRBl4zSCD716FbpBHZi5bA+x0f0wzoX9NLCU0uP+5MGfwJr8HTGWlUniRRzeS/p27/HOjJlP3kFWa2MIWhEFI2b/XDjlWiULSC2lW45leYtk6LkVNvYsuGW+hPnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HJAB0Onc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BUR5i0es; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61I9cnCZ2784529
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:00:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A3V6u0Iafv1/XijVKD4yYBLElbyLwaHjWkSrOrPE3DI=; b=HJAB0OncRHRVU/Sn
	2APsI1FyYrAbFACnCAzNcptpvGYAC52kG2CdG2dlG+qba0yNaxJhhjTCYrAz7TFI
	idlnYo0brjZ0pwBowON4v6qZq2bnjjFoVS3OayaDtPKpS26c7e7NwvvegH7IYKch
	Py785HbummHn46CG6EZdq3GUaolWyH5nlzbEifvvBRYT113ZTjerqr8A9ySsYRTS
	faTyB+QiiO/Q5MC4C6STuAqoQd9yUZ/61KPYiMrfMI87he4anFRCVxKewJLLek1q
	Frh8eFiW+8a7fUHn8N3tLE5KEpUzQxPae8YovzWLf/abXdr6WCverYWQ7RH8z6zF
	tu4Cvg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ccyrk1s02-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:00:08 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2aadeb3dee4so305916865ad.2
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 02:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771408807; x=1772013607; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A3V6u0Iafv1/XijVKD4yYBLElbyLwaHjWkSrOrPE3DI=;
        b=BUR5i0esvM2BXlCDnLJnMOAqBKybTJbCCaAFKgYhAtL6Hix+pEvYvmM8UVe12Gk4W7
         LH+KSE3lAEKFj/IkHsxTmoaizci8CBKLNERjc9JBUPA+X0Wnf+kWlDxPUCdbisX7fKws
         TdqwxtjdfXAVliz0ctfhvGJF2DGZ0gqjfFLOAdftJy3r8y6wOFWO8ZGhcnhhWjjZu3Ct
         J+bdPALpdkHAlXAkMYjHbBOdRTaNyQMBJDGwZ7RsKR+JKSdVK9OVR5F5QyoIue73NuTN
         uqyRkUTKcG4qeNWB/qC1Z3WsldLbmr87oBNEen4Vm/h4fG8zAUAmjSB7bhnnyzYgu4iv
         OWww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771408807; x=1772013607;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A3V6u0Iafv1/XijVKD4yYBLElbyLwaHjWkSrOrPE3DI=;
        b=VfzGYXvkmCcSC6nIrQGLAs4bZz+lLaB/w90/UdgHjh2SYk0mC78mVw2WjMM5gAyEK8
         n9Da/IWVIJpOHsYtoqINWiYF3frHL/FqQBa2ObNg+emVnjhPIEZt9jtbW4jP65KQEddN
         GWb1evaBROnVuHGOFYJ66wq4DrhTMAEtQW1Yb4ml1Yla0KCTNKeV4C612tECpPCwhGfP
         KAzSXt7vKNbUV2a9m1GXr7msx24u2hYwA9FYGUfHbU902u2y74K7CS+ZGRwJ8m6tmiw0
         TzGWr240ZgBMPNfAxAh1DAB+rJk6e0XqTvuiSIG8V8zBOy2XPEywGfX24keosfwfYdB+
         9mPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwuxmJo5cTi9Cf3F+7aOw81hNDynnxHkDr17GA3GC463P7ZhBEBGywaaPfPaaEzvfe97bHvnj2GxmD@vger.kernel.org
X-Gm-Message-State: AOJu0YxIguKGC49u19fiEq9V6nkejA7Op3NgQO4PXxEixp1BezN+GgU3
	SzWWI8UrUiXvhat6uHi4ybjmaDCAK55K2nItQdERczCCMUkg5mWZw04oYBzyHS2vYIdvjf97vc8
	Pz9HAXUZlQYVmDwL+hFTIUsCS/ABHmOzbBkNXe7/2u0iUMck+us1DMdekIHYHMj7M
X-Gm-Gg: AZuq6aIeAr37HHRUHXvifshnI/kWEScCpOX/eW2H6rNilgoSz4PW8AfVq8XeWL2ZZdw
	bSiVADVOfPAU4cqHrc2VhQf1uQNvxCo8Aqxa9RqXAQsiWj1PGnDI3/zuHdA7pPNDQ5U8iIrhJZ4
	ExWXgenYmJol5Ln+Kl9a+qTDD0OG2nUTrrgNOex3ZcfA6BZhE5MjQ38VwtbgF8iMBjWL/x+pDWA
	xbGBkHOsvfaB/YWLj90eEkrlntwAk8XT1XJNf8JTcx0ZKNN+VwUTNt7TVtz1mCMrrK4TcRSJnQ3
	EG7hNctA2r/X8TPhIsz04RIbgiY1JduK1BkzwG7Ap4G6ngecFZPCAKZVoxeQhBFdaDuPYosc6CN
	b7SOEL6CARj1d8TEna10NrKSM6JcAAvVDMZAJRDUpUDLrWupuF/1vihQ=
X-Received: by 2002:a17:902:cccf:b0:2a7:5751:5b30 with SMTP id d9443c01a7336-2ab4cf4f481mr172922325ad.12.1771408807440;
        Wed, 18 Feb 2026 02:00:07 -0800 (PST)
X-Received: by 2002:a17:902:cccf:b0:2a7:5751:5b30 with SMTP id d9443c01a7336-2ab4cf4f481mr172922025ad.12.1771408806981;
        Wed, 18 Feb 2026 02:00:06 -0800 (PST)
Received: from [10.218.18.194] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a9d624esm121341045ad.49.2026.02.18.02.00.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 02:00:06 -0800 (PST)
Message-ID: <544be6af-fe02-425c-9457-4101f5dee80f@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 15:30:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node for
 PCIe1
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com>
 <20260212-industrial-mezzanine-pcie-v3-2-1e152937a76a@oss.qualcomm.com>
 <97af21d5-7457-4dc1-bd47-2e34e6df094e@oss.qualcomm.com>
 <ee1a1fa2-89df-4d8b-898e-9a4a50e1df6f@oss.qualcomm.com>
 <5c17f64e-5125-4365-b986-8c058cee292f@oss.qualcomm.com>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <5c17f64e-5125-4365-b986-8c058cee292f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: V25RXHYoVVbKYNppnhdRsy-TsoDF_KZ7
X-Proofpoint-ORIG-GUID: V25RXHYoVVbKYNppnhdRsy-TsoDF_KZ7
X-Authority-Analysis: v=2.4 cv=eOweTXp1 c=1 sm=1 tr=0 ts=69958da8 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=imnyHFFQhiNMD6IFCfgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDA4OCBTYWx0ZWRfX3bv6UWh1n72e
 Lz7hWouFNlqEc834NyjsRhv10UbBQC+FzS51z3zHXKiGWPz5ey6sej2EiR+8zVQ7kysdiUJ5GFj
 S2JyWLgwnDAgnCRj6lkisWrFt6wOg9wS6hB17X2memJ/EWzNKUBewOq/63olkhavscqzU9+ebfk
 1M2VB6PgltuQkWUsbVcRN5o7AqhMwpoVv7WB0g3Hhb76yZWE0LUVDW+BIXf3AbP5bR3tqWdaBrd
 Yse/x+O5kRG+ClzhtUKie4crheBw06ncwoR9TENczxF/WHzNo7ynfHGEmxbd6EbbOiD97DP246F
 chtBdrm/kDEIhvRJ4xBjPQpvCRpssNi0wqgVQOvvcR04rgPwtZVBcNvg5HK3txJmvBEsCwLumt0
 VfHL7hEDtXKtsjoSq/luuV7JYXleDTWHGMWyjsXIrqpgYNWL3ZO/hjz8HNUj3o0QPFl4w8A02BY
 G+c+OZvDlbfPMMdTjdg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0
 malwarescore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602180088
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-266364-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sushrut.trivedi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B160F1550D1
X-Rspamd-Action: no action


On 2/16/2026 4:58 PM, Konrad Dybcio wrote:
> On 2/15/26 3:19 PM, Sushrut Shree Trivedi wrote:
>> On 2/12/2026 5:16 PM, Konrad Dybcio wrote:
>>> On 2/12/26 11:44 AM, Sushrut Shree Trivedi wrote:
>>>> Add a node for the second TC9563 PCIe switch on PCIe1, which is connected
>>>> in cascade to the first TC9563 switch via the former's downstream port.
>>>>
>>>> Two embedded Ethernet devices are present on one of the downstream
>>>> ports of this second switch as well. All the ports present in the
>>>> node represent the downstream ports and embedded endpoints.
>>>>
>>>> The second TC9563 is powered up via the same LDO regulators as the first
>>>> one, and these can be controlled via two GPIOs, which are already present
>>>> as fixed regulators. This TC9563 can also be configured through I2C.
>>>>
>>>> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
>>>> ---
>>>> +&pcie1 {
>>>> +    iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,
>>>> +            <0x100 &apps_smmu 0x1c81 0x1>,
>>>> +            <0x208 &apps_smmu 0x1c84 0x1>,
>>>> +            <0x210 &apps_smmu 0x1c85 0x1>,
>>>> +            <0x218 &apps_smmu 0x1c86 0x1>,
>>>> +            <0x300 &apps_smmu 0x1c87 0x1>,
>>>> +            <0x408 &apps_smmu 0x1c90 0x1>,
>>>> +            <0x410 &apps_smmu 0x1c91 0x1>,
>>>> +            <0x418 &apps_smmu 0x1c92 0x1>,
>>>> +            <0x500 &apps_smmu 0x1c93 0x1>,
>>>> +            <0x600 &apps_smmu 0x1c94 0x1>,
>>>> +            <0x700 &apps_smmu 0x1c95 0x1>,
>>>> +            <0x701 &apps_smmu 0x1c96 0x1>,
>>>> +            <0x800 &apps_smmu 0x1c97 0x1>,
>>>> +            <0x900 &apps_smmu 0x1c98 0x1>,
>>>> +            <0x901 &apps_smmu 0x1c99 0x1>;
>>> This map is not just an extension of the existing one - is that
>>> intentional?
>> Yeah, I created a new map just for readability. Should I instead just add new mappings
>> and keep the older core-kit map intact ?
> Quite frankly, I don't know. I that against the "base" it's missing:
>
> 0x400
> 0x501
>
> so presumably the second DSP and an endpoint for the primary switch's
> ethernet port?
Since PCIe enumeration happens in a Depth-First Search manner, bus numbers
3 to 7 are alloted to the cascade switch connected to DSP1 of primary 
switch.
Bus no.'s 8 and 9 are alloted to DSP2 endpoint and embedded ethernet EP
respectively, on the primary switch.

So, in the cascade hierarchy, bus no. 4 is alloted to Cascade switch DSP's.
There is no DSP with device no. 0 so BDF 0x400 doesn't exist and is
omitted. For the same reason, BDF 0x200 on the primary switch is also
not mapped.

BDF 0x501 in single switch case maps to the ethernet EP. In cascade,
that EP is being mapped to 0x901.

Lspci (single switch):
sh-5.2# lspci
0001:00:00.0 PCI bridge: Qualcomm Technologies, Inc SM8250 PCIe RC
0001:01:00.0 PCI bridge: Toshiba Corporation Device 0623
0001:02:01.0 PCI bridge: Toshiba Corporation Device 0623
0001:02:02.0 PCI bridge: Toshiba Corporation Device 0623
0001:02:03.0 PCI bridge: Toshiba Corporation Device 0623
0001:05:00.0 Ethernet controller: Toshiba Corporation Device 0220
0001:05:00.1 Ethernet controller: Toshiba Corporation Device 0220

Lspci (cascade switch):
0001:00:00.0 PCI bridge: Qualcomm Technologies, Inc SM8250 PCIe RC
0001:01:00.0 PCI bridge: Toshiba Corporation Device 0623
0001:02:01.0 PCI bridge: Toshiba Corporation Device 0623
0001:02:02.0 PCI bridge: Toshiba Corporation Device 0623
0001:02:03.0 PCI bridge: Toshiba Corporation Device 0623
0001:03:00.0 PCI bridge: Toshiba Corporation Device 0623
0001:04:01.0 PCI bridge: Toshiba Corporation Device 0623
0001:04:02.0 PCI bridge: Toshiba Corporation Device 0623
0001:04:03.0 PCI bridge: Toshiba Corporation Device 0623
0001:07:00.0 Ethernet controller: Toshiba Corporation Device 0220
0001:07:00.1 Ethernet controller: Toshiba Corporation Device 0220
0001:09:00.0 Ethernet controller: Toshiba Corporation Device 0220
0001:09:00.1 Ethernet controller: Toshiba Corporation Device 0220

Sushrut
>
> Konrad

