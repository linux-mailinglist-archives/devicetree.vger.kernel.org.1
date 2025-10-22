Return-Path: <devicetree+bounces-229863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C169EBFCE71
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 17:33:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A504E3A30CA
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 15:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CDA234D4F0;
	Wed, 22 Oct 2025 15:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ILZvfWV6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85A5826ED35
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761146912; cv=none; b=VedobVuBCacWOE2T5aXaZIIOzfrEu0GpCrnm4EdC3lnwy6UMixWrp+j+XV4qf1pvGRHDWEJDTsyF0zZ/CSzv9zO9VomAYeLPQIj0h5Dp9THIV+DXOVzOE4+dGvpizCtx4yGQ5GTXZBFFAMIr672wFT0gnXqQQGOgAmIGBCv0CWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761146912; c=relaxed/simple;
	bh=LKg80GSsXajEimsbU2IImSWBv/62yWeZsCxzc4ocqVA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nGFwyzFpDb1GQAkF9sGRtQtq2IT4QsnjksCs/K/nRgJvC/KSXJCzPpn3pAChg2zSI1nl+W1lo1rMuX+XYxTs3eA3IosYtBy+asQRkVNQu5dsv5dw8AsSeGcBd+uWjeemCMK+EFN7kiTJljr8QJVlYhwdqwZBW2fqOeMyO7AFg0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ILZvfWV6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MAcXCT026895
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:28:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kEkN3I7ez210KvWSzWyrOcOsuH0KwadB9yDxw0Xm8nE=; b=ILZvfWV6hSPfBB5J
	g2+JWRa5A3ucDW0n2H2/I/8ejYIUzQKN9LYqo6m/rEmw+chUvqXhMcY4/CdbfTGr
	sRT++teJ3xdavvz6u7hIdzFqOmiXRAFzbhewbT5CLz7yNZUGuZToZVTx2aD700bn
	pKHNPVLVCcCnwBw2lHbBDy679TTkT6bWKyZxZTTNZu9nGEhiZ//2Fc8WiOZWkL0I
	05/3zBBEnxjxatTOyk+UMsjM4sLQnZhKc0c/9E8mjvcYEef20Swqa6V0y4piTCLS
	EA71sOigZgcIpSvN6cppV7fEb95urk8T0saPXw2q4kJ7SvWztAQddwx6DEKK5WmK
	+kRTmg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v08pnd5y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:28:29 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e8a35e1923so3276121cf.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:28:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761146908; x=1761751708;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kEkN3I7ez210KvWSzWyrOcOsuH0KwadB9yDxw0Xm8nE=;
        b=os0A9611zzZie1nMrVOpCmzqXfp4hoDKknOPO+4akymEu3BvTnpG3MCfi4NevQikyU
         rVWr0CtLCoPAYRWUNZyAFB/r3EIPv3mSCICCubfo+mgUMkDH3D9d5Jfy8J/96P68k2Uf
         HnCGtjyNsQvwxFQlK2Zo/5Mp6vNCqec1gvGioI+eTKozPlOUN/illGnjO/8ltiytdA05
         sOmgTRPAROcSPSGCqDONb/f/aAy4kUcqiMUT0S9R7cFSHV829hB7BrOPLJSOZJ4ODuPo
         QmXObvnxzJy/V6lQrkSD66GPeMZ3gYaOT6XBpMKeyP3bCx3nnlHxTNon8KyGQ8Wel3RT
         cVpw==
X-Forwarded-Encrypted: i=1; AJvYcCWgd7b9YeNiLpCGMoxAockPZ0r+io8E/PmQLp+fiW8piM2LMw/T0qO3JDs0vp/iW/irTDOkfw8xt557@vger.kernel.org
X-Gm-Message-State: AOJu0YxlBX1LMsJx55ZDCbeYYHklQ/dahr1DeChjoxecpIu5GWMGnYAO
	QY01EAUA14UkAWdIJf3Mb6n+aZEcw1k2JQZlKDPyaqZulNqfo/WxE9kp1Iod5YzntEn+MwjJDHD
	A1ehkxHUDGSxXfqp5mfz60awhLNY1yThcRYZHwrlzgSaCwzMO7LjpPR9AO9Pg1v7r
X-Gm-Gg: ASbGncs+CUxl7m3ajpGRPpG8Y3kT6pk6NSGe0AD+vYM3aZn/7OpqkSN/qIqQ3SCHp/s
	fYsYTXKVw7s06kv9T/bFF3QKDNYFtbT7zrzyCtpxb37jrpWi+6vufSAyk5IWyB36DSaPYK14Y92
	QM8+mBCLEL/snnGLPoks9ZsuyCPc/989N21zEKN2SxSsq1hkOJPkXWtKzWkiR3atAVpUkS63X4h
	wU0FiRkEAn0NhHI6+/COsZTqJ9BCYTBAfr/qQ62v47yJJjk1Dh4tAfmNL1bS3dmPZ7b49ASs/hj
	YDRfLHo/4drfEoIdcxaGh9i83IhXPSPHGGiNC9yQCDcb3s8Wsu84/pAmrEPv5/BFRKLFabKNiIB
	LVniHJUqvldg/XjzLRXhLmOMBM45hL705L7ersUdyBh0WugwZJYQ80jpQ
X-Received: by 2002:ac8:5916:0:b0:4d7:e0ed:421f with SMTP id d75a77b69052e-4ea1167dbc0mr64496561cf.3.1761146907964;
        Wed, 22 Oct 2025 08:28:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIbfA/J7/7e/fTVE+4K3MaejRMmguF//6ihYzs52oLlv/Bgz24gIfsByl/uIBh4sKc+gqcHQ==
X-Received: by 2002:ac8:5916:0:b0:4d7:e0ed:421f with SMTP id d75a77b69052e-4ea1167dbc0mr64496241cf.3.1761146907534;
        Wed, 22 Oct 2025 08:28:27 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb0365e1sm1371481666b.48.2025.10.22.08.28.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 08:28:27 -0700 (PDT)
Message-ID: <41481de2-12fd-49b5-b3bd-f3e44e78dcb3@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 17:28:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/9] spi: dt-bindings: spi-qpic-snand: Add IPQ5424
 compatible
To: Md Sadre Alam <quic_mdalam@quicinc.com>, Mark Brown <broonie@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dmaengine@vger.kernel.org, quic_varada@quicinc.com
References: <20251014110534.480518-1-quic_mdalam@quicinc.com>
 <20251014110534.480518-2-quic_mdalam@quicinc.com>
 <dd1e4289-5e36-4b24-9afd-f09569459a96@sirena.org.uk>
 <96ae7d38-4ce0-fa34-e6f0-6bb6e4ceaa28@quicinc.com>
 <0a743099-face-4cc1-91ef-098a748604b7@sirena.org.uk>
 <49eb9f15-fad9-4f8d-1463-04cd692bbe51@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <49eb9f15-fad9-4f8d-1463-04cd692bbe51@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAwMCBTYWx0ZWRfXwWYe2O69B1OL
 /NAfz6iDNegy0yHqpMI+d+I77dBJI4VMHzQduGK3oABgkxzkLpwiTp2/FSpNtL0adgbWKr3U0Jw
 pVE0WoXErtkXdC/7A0B/MXOZPSzOOizpqFFkUt09sMiyQmRwz65vw2sV5dGPwDMdeoW2HYVr99b
 CZPMnbgzErcqh5omyNcN2mPL78WjcB1ilScoIhTctcxtyORX0ylJ7SAWAu1NcL8NUqTtRU55fBX
 XRVHsLWs/7DCu/ZeDthW9GKl0+1cnwrNbKYJPPkT7oBcArBIKwXatVW4Ijn+Eq1w3sww0dlqqIT
 ERRmTjBS05hmV0MPE+6H8rsbvLWsSG/w0nYymPVQCPux3/tpS5EkN6zCOXxhaP057jkdV8C6p1Z
 qSM+V/nd1G38iI9u0MRT0Wd9foWENQ==
X-Proofpoint-GUID: bJP2UFt_sY4kHLXxDoS-bsutKYU-EDKI
X-Authority-Analysis: v=2.4 cv=Up1u9uwB c=1 sm=1 tr=0 ts=68f8f81d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=WIUPFbzvC2a9H5sHzXkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-ORIG-GUID: bJP2UFt_sY4kHLXxDoS-bsutKYU-EDKI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_06,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180000

On 10/22/25 5:20 PM, Md Sadre Alam wrote:
> Hi,
> 
> On 10/22/2025 4:12 PM, Mark Brown wrote:
>> On Wed, Oct 22, 2025 at 12:29:01PM +0530, Md Sadre Alam wrote:
>>> On 10/22/2025 12:39 AM, Mark Brown wrote:
>>>> On Tue, Oct 14, 2025 at 04:35:26PM +0530, Md Sadre Alam wrote:
>>>>> IPQ5424 contains the QPIC-SPI-NAND flash controller which is the same as
>>>>> the one found in IPQ9574. So let's document the IPQ5424 compatible and
>>>>> use IPQ9574 as the fallback.
>>
>>>> This doesn't apply against current code, please check and resend.
>>
>>> Thank you for the feedback. I’d appreciate a bit more clarity on what
>>> “doesn't apply against current code” refers to in this context. I’ve
>>> manually applied the patch against the latest mainline (torvalds/linux) and
>>> it applied cleanly without any conflicts. Please let me know if there’s a
>>> specific tree or integration point I should be checking against.
>>
>> I tried to apply it to the spi tree
>>
>>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-6.19
> Thanks for letting me know — I’ll rebase the patch on the SPI tree (for-6.19) and resend it.

JFYI you can generally count on linux-next/master as a good base

Konrad

