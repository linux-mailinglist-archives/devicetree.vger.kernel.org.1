Return-Path: <devicetree+bounces-224198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F20EBC1929
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 15:52:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D16D71893144
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 13:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B1A2E0B73;
	Tue,  7 Oct 2025 13:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y3WqfNXH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32A82D5A0C
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 13:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759845167; cv=none; b=JW9XHsfFQsSaRkfft7D5BB7eGxURk+XKqlNstay91FbMMg5q6NPjxF6FkbwXfGq3jXbQxgwCNhK1naw45jN5JOo1enUtWVw3XJal/4WdmyWMYvUMIWEcBRYyd3dSJR7dM9W33Xbi84o+Go110yoSWnGRMz+NO7qO4y1Nkiqlf1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759845167; c=relaxed/simple;
	bh=f5quxsD7kD6Ih9GEhCBk0VqY9TBIGBE9qAz7H4Uv878=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qXmJYvmk+SHROFlpJF48gscV2jPzF+m5X2Jm08z42D9EC3rlm2K/eyqclSjtqMin1MwN5mpVshCC0X9jy8PT6bWaFEhlkr18l60gUj/zJUDGlY27pThbM30Migr+FfoEtR81ONcZXj/xr+Kcd5BFXIJkeU32PmIAoJit5SppZMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y3WqfNXH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 597DHKLR026276
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 13:52:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	f5quxsD7kD6Ih9GEhCBk0VqY9TBIGBE9qAz7H4Uv878=; b=Y3WqfNXHWWrYHtS+
	BDgYT68WoDhWcu2R5JHS49VIqXT/TWGRmR701oy4hxC6ndSR420niwdpD9AHdmG+
	/j71wZCnVcEV6CIxKzsi4paE174yQoVeKupmA/JMjJYLPt+iwAb69Zq7fGPBC/XH
	f9lWmRdlHyuSNy31HU74p7BMDIPGUlsFuw6wRIO+WJQCnLSqhgbQneR3rABu4jXB
	xLQzE6Qcy4qHt8cAciGAkvSLOXCXbbPNTSeFDHwbRX1NPVDZoHz47g2SbkWq9YH0
	X3EFBVdcvUo3mWqkprhj5Y5ZZ6dOZTylj1U1BvW/hNgDbYHE7fu8WyVZDpqPLAmm
	gayWsA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mgd0k411-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:52:44 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d6c3d10716so11750521cf.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 06:52:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759845164; x=1760449964;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f5quxsD7kD6Ih9GEhCBk0VqY9TBIGBE9qAz7H4Uv878=;
        b=MNjnqNPBXjGrpBHbG9M6dhdB1ge5yRZWrh7hCixFfuMn10+8ABf59Aytq6TVCJ017R
         xmwRcAw0uRfySoLGKBlVaXIB3iCZ4K9P8tE+5oQyTSnLCwOmLXmbaE20K80Q9G1+vQ+Y
         pKNaUCjyRRVzbUzYoi5bkTY8mI+982dER+2RjZ7jcCqgNqrc015n653U/1uLdIDvj6Jh
         ZcQzs1eNzTyyvL39PsRInkbJEoLqb+P9gT/RXBPo9ub6VRRVqtA4i8ZtG/QCAasFtbEV
         8l1BphMxykfQvJQ1ym/2Vf8ZFCCcRQ/UBCDgo9d8KtmWQ+Nnpx9z7mMoSWrz63jI1XYN
         Ab/w==
X-Forwarded-Encrypted: i=1; AJvYcCWw3H+1EUsSbIJlvUbr/V62G7uh3pu2r/b3jzzDeWevHPBH65HqIcWNTBgHN/VMfov6DPIxTqho/Y+2@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4udPS1z+YrKRTDzOmEbHdckN/zB9S/9HxLjRfH/7PvbUGdBDt
	TWbG+0wxQMAuEpnfUqh8CiW8/oMYnvkmzy/BeW3PFHID4e5Wd3uspqow/HI+hN6Jcbl1VdMTXmW
	zk9KNrzWzavA75FDnAXp8DFHr4FPjTCF9vnIT7ZyqQjJJeHwn3K7v4MrOML8tpOeJ
X-Gm-Gg: ASbGncs0gx8ov6p+LAlyfpXJe2l2WdYc8UCRgYKptLRD/UBCnK7KsCybh20syx2d1L2
	CdqOvGZW3LzheoiGLZiH0S1WuyQkMWUdXx9NU04QjXyVuMDfVbGMiJKkaXsvAwi/Lp5vOR5b3Pd
	vtwEDbQwksIdUav9lC6mLgZJyrsB4OfKEUwmOxefLWyH2Db+ifzCxp1k8c9P4EpCYB73qRAKriJ
	hLcxGM3kDH+cQZuWj/BJG46QXSvHxk3DP9FaFRixPcBm1Uqz0oLUpK3aJPnZZmsifmealr4Nwtp
	pMABcWGlD6EnYcpFEUmgkxdpeWQZS3NRF5GoygMVgUZUlCC2EpL9MVzXrGGftfsR5rFkfKBZHw4
	km4u6zauM/3u5pH9ae/XmK6R8rBo=
X-Received: by 2002:ac8:5a96:0:b0:4d2:c24f:8495 with SMTP id d75a77b69052e-4e576ab6f37mr148653571cf.10.1759845163793;
        Tue, 07 Oct 2025 06:52:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrbYCke4RKbJCWVLHrYFekPQqhct84fVVqozOHno+gW+Ehu+hQR4MkHPlWeZtq07QH/BIUVQ==
X-Received: by 2002:ac8:5a96:0:b0:4d2:c24f:8495 with SMTP id d75a77b69052e-4e576ab6f37mr148653151cf.10.1759845163203;
        Tue, 07 Oct 2025 06:52:43 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5007639379sm109584766b.48.2025.10.07.06.52.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 06:52:42 -0700 (PDT)
Message-ID: <c4498ebd-cffa-45c9-ae7c-ea59f475e10f@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 15:52:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/13] arm64: dts: qcom: sdm845-lg-judyln: Add battery
 and charger
To: Chris Brown <crispybrown@gmail.com>
Cc: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-3-5e16e60263af@postmarketos.org>
 <772be3c8-751b-4f96-8ed1-fc8033babe74@oss.qualcomm.com>
 <CABN5=wFgARbrhqyNbgQ_iMKPt8M7ixZPEhvXVd6AY+Jv+7=YWw@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CABN5=wFgARbrhqyNbgQ_iMKPt8M7ixZPEhvXVd6AY+Jv+7=YWw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: SMay5MzoQNEC0Qs_wT-fo2XI1NH0SHtX
X-Authority-Analysis: v=2.4 cv=T8aBjvKQ c=1 sm=1 tr=0 ts=68e51b2c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=NEAV23lmAAAA:8 a=2WuTmijT5FzHyVTfSM8A:9
 a=QEXdDO2ut3YA:10 a=8veUMr47oZIA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: SMay5MzoQNEC0Qs_wT-fo2XI1NH0SHtX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMyBTYWx0ZWRfX0MfZwiSkHAhL
 DfjT5rAvh+VwZJmNmoIJAF2FHD+nOsZBYEIe5XhbEHc585TYGp9lmBBrLKxdHmonfYaA9oqYWjE
 khnWdnTp9y00yndp9knbwJOhPnAyo+md5ZV6/nSTNkeqOqKbF50X2x0LoQ5MBbL72kgkrTs6eWp
 D2SsURD6c+6+Y4uAbXAXCSS3/3L8++evwML40ykq/qcOFi//f2WlCykGjhOeQRLod66KX8v7X4f
 0Vd9gEFC51gTRBDyRaLesg8SQgdhgZrLWdp/9rUiG2jKgERgqU4F+p06M35W2WfZ2omhoM48Czj
 r7GEEcB58pJDV9bVQiKaElgfD+UP2j2trJg8fYGrxwBXC6sTx/3tyJarFlJZu5tUXJIyjNmuthR
 Up8N61g885arCRsVexgDnt+8wz0mJg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060123

On 9/18/25 3:29 AM, Chris Brown wrote:
> Source
> https://github.com/EmanuelCN/android_kernel_lge_sdm845/blob/U/arch/arm64/boot/dts/lge/sdm845-battery/LGE_BLT39_LGC_3000mAh.dtsi
> Small assumption on my part that "fg-cutoff-voltage" has the same meaning
> as "voltage-min-design-microvolt"

Hm, I suppose we're not getting any more information

As an additional test, would you like to discharge to phone to 1% and
check what the battery voltage property says in sysfs?

Konrad

