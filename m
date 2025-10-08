Return-Path: <devicetree+bounces-224506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC2CBC4978
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 13:38:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 562223B778A
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 11:38:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08B062C3259;
	Wed,  8 Oct 2025 11:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bk1zzqJK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49541758B
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 11:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759923483; cv=none; b=tYJshj3yf/fLKM2ndCLSI28chy8Xkiym7apYeLNT2iZb8fzbjJ3Fk0I763wRpgipvusnNjb1qNuCKRj5I5zYvszIoTTF+mQcT09nU/55Sd59UhZES1SgDecsXzuA8m5NYYMadC7WpJYHVvO/RkPDuolcHGC7mVSnr2VEMCwzu4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759923483; c=relaxed/simple;
	bh=ezaGH/pycikWMfeGzluiwOekIc13FK5FGi0K1uMrFjo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NCvfzEWf6Ety8rCYV3856ThA8dSnVFTKOwyNHOD5Ob4su/kuiV2p/v94BjCf5jVKmX8pmgmyeBxWKqPnrxuL+axde0ylY9hW9jS1AkwclCmVqf/AQCfhqKZzaLJTtecmx1QCBOKOmN2wU2v/539DBpc2GjNHSlnpzGLAH4HNWWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bk1zzqJK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890RDP022754
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 11:38:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ezaGH/pycikWMfeGzluiwOekIc13FK5FGi0K1uMrFjo=; b=Bk1zzqJK770M9jkF
	2ATfKZlHmhLxp91fuBVyfHABcofWS9zFJZtssQNJpDxiC+eE/sDLFnpi+eCUFIaJ
	7vamghPN1QoNoI5Vb4vziWbKQEOCtTGcXzjBH44jne9TkTBcMjj9GP1lR5CfU4z/
	hU8VisZcoIc+3PgQRH/H3WRR+/eoBQczYyfKi+/I+5yrhkw0878mDRXX1wCVTb+A
	o6u62TKuuN6qk4cLnhKROR6ck8sT4A3Nl7lhq+IsBH2glqdt0Az9KH3WxLhbhlD/
	0laJWeQhjIktD+w76LryOd5QuQHbJ021L2WEXnFWR+Qz8Hwu6ElPcmUrrwVOPPMQ
	GX8e0Q==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49n4wktqj7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:38:02 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77f2466eeb5so7401224b3a.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 04:38:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759923481; x=1760528281;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ezaGH/pycikWMfeGzluiwOekIc13FK5FGi0K1uMrFjo=;
        b=Zr6NcdPTitWRHNrd39uw+CgJ8kciBmCIeuk/LlDpjKzcc5D/IV9tNFNNeFVyvOxe0t
         Je/PXalIV/QgC2Dwg4HCREmbZpBjYLvtpuC2pj39TX0AROTCPxp6f+HtMet1yrnS15gx
         8LzqXJwoBysqmilm520xNBt4m9iNRDCYn7aeEFVhcl0KOkNofY9wJJYWX5n4ckW9aGbn
         umLkuMGvKd4aMj/YGwYbDdb6uJXOiRB3owQrlLQbyG2xjBUIo+r0LPZjPXua/RRh7KLR
         dIqHasjIibHAxGqde+Iy89hyqd0Wzd8W/C/oBRzGHkf1wooi7mZantOLs8RiJfibuIG0
         qYLA==
X-Forwarded-Encrypted: i=1; AJvYcCX1i6hcaGyA0+Cy4UY5HDSAE/L4o35gODhe48ssalSC8/io67aFzkJPwA0PuFCQa172K+sxBmYLZjJI@vger.kernel.org
X-Gm-Message-State: AOJu0YxKGxnJ3B5sbAVFEB25c26BE7apPJ1xSd1RpNwIekJTjHQtMeLm
	TsVQsmqQe0yqX63z7M/0QZYLsvf7xyHpR4A/wyQcTwvcT7tTayNl3hhLptO/VPsuuGPxgW2CwEI
	p/uCNeMI2i3UGmrTm61cQS38v8q1q4ACwG37PsEiU6HK8wRv53r/psXVpV+Pz3qjq
X-Gm-Gg: ASbGncv8g5jFX5eXOXuv7Ka/S4TSN9PMF+a1BrWHEM2GA+P55hOqh4vkoIijQURndUo
	F6Cs9RiFQ5VL0X3pyQJozviiEcw9646k9R8qiptQpmIsEn/Yin4KsierQ+rIej3TG+lLhNJQQOJ
	967m3UK1PS+Wfax9R9ZPMNYT/f+zbU9Gbcs4VlBS1WD/WdfVN9xMweCAeVMb58Af2GANMSblKMI
	b5ILJE+IKm7VZotx3Ytoyr8BAY2zpR9cKW9V+XKMWalqdh2hHPcemg8hoXzg/JPcxPv4Z7BmCd3
	ifwDRZPxYdcHC4EnuaP5279q+WBB73o1Nvj4t4Xmz9WJ7EzrFVuobzU0XOnb4WbqZrqMBDBcAbF
	3OJoRWAKrBPDdA85BJ2HDScJpboRaeHbHX0cPr6krvaVRh2PQHuN6FD/CM+7vGHg=
X-Received: by 2002:a05:6a00:23c1:b0:781:18dd:31e7 with SMTP id d2e1a72fcca58-79387d0f59fmr2905866b3a.27.1759923481183;
        Wed, 08 Oct 2025 04:38:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF73KHt8IFMBclXeAyQRzint+ey8PeCCSrbWaDF7Iqjj9CiCF8ILNjUMuh0yFpufq6Q2b8e9A==
X-Received: by 2002:a05:6a00:23c1:b0:781:18dd:31e7 with SMTP id d2e1a72fcca58-79387d0f59fmr2905840b3a.27.1759923480561;
        Wed, 08 Oct 2025 04:38:00 -0700 (PDT)
Received: from [10.79.195.127] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb1bf4sm18571996b3a.25.2025.10.08.04.37.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 04:38:00 -0700 (PDT)
Message-ID: <c35f3888-113e-4906-b6a4-6183e245ef18@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 17:07:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/24] arm64: dts: qcom: glymur: Add cpu idle states
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-5-24b601bbecc0@oss.qualcomm.com>
 <d1de95e2-0665-4889-aaae-f8370b041826@kernel.org>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <d1de95e2-0665-4889-aaae-f8370b041826@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA3MDExNyBTYWx0ZWRfX4TYV7i3jOphd
 LuhpOdRctK2mjmx+fUnLfOVPwMrBUj6Xlov+QPMBi6flZyKm8OP3PdqWtMJkX5BHv0hkjFV/v7z
 2k9fkcM0nLQSBh4LRZSwPcn+Xn+F4QyjsBnOob5GJ41f/QssPGIcui/CCDzkbJtmXNTACsbsm8Q
 hLIGUd4Oakp0lJOCyHoxS50ot+GnADdEGu0iCmF36TJIbpKWzr3Yd51YFNMRMMPFsHXXog648m7
 DelMEmQKcq+whciRxitLJuQx8TmBRaVrC3LNKXVfISGUpIQEsDOiViv3IjANYSsnAigv6XKbDu0
 gdbpuZlYNAoOW3geA/pyZRadokLz0sqyssI3uUEeH7fAR5Qo0zt62sKdpPstJNXIT8vkpV/ryjz
 RQGWrQ9NWkA1W9nMR2hhEwd2VATD0g==
X-Authority-Analysis: v=2.4 cv=BP2+bVQG c=1 sm=1 tr=0 ts=68e64d1a cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=NZGLDdUIzFi5uwaMtbcA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: 1VCeUwb_KCYYKLVo_mCSBpHCQw28IiOW
X-Proofpoint-ORIG-GUID: 1VCeUwb_KCYYKLVo_mCSBpHCQw28IiOW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510070117

On 10/6/2025 7:56 PM, Krzysztof Kozlowski wrote:
> On 25/09/2025 15:32, Pankaj Patil wrote:
>> From: Maulik Shah <maulik.shah@oss.qualcomm.com>
>>
>> Add CPU power domains
> CPUs are part of base SoC. Splitting it makes no sense.
>
> Stop fake-splitting this patchset just to bump your LWN stats (as
> admitted in other email)
>
> Best regards,
> Krzysztof

Squashing commits 03-08 in next revision.


