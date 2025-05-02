Return-Path: <devicetree+bounces-173018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1C5AA7401
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 15:41:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96FCD4A09E2
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 13:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 290F5255251;
	Fri,  2 May 2025 13:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XBBuYMPf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A1842550AE
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 13:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746193288; cv=none; b=G96Ms6pAPZZkj5Vm5PArgodjjDTj259GyjdTjuzDJ6IqGdnluf8VcBTBpBSgdm2s55udM0pdUECTDo1VG3QXlJl6byTOb/QEyfi1CTkrksukqqt+4GG5EivoqTPqLTNidJDUVn9mcpN1ShMwECdiypGBfJMc15kRFUAcngmDlhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746193288; c=relaxed/simple;
	bh=7ctWe9g+bFqInv1ZScTK1DftzAfA+fAaQRA0VhrX++Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RJJsqf+rSwBiLkcXjy3xTPTyXQ1nGxZcqMvNDel9WF5Y75craOyos2PhCbfATGljb5wK96e+i2qaqsG7fgmYQ2NQCNrbhNxiJZt2wVooxpe7CT8ElIrsXzhulUn+cNq1XDo+j65JxSGVmbxTYarU9OswJgyg2upDmfn+adydsgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XBBuYMPf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 542DQPoo015851
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 13:41:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tRa0e6yzESCL53RBCKhEahi2ua9XrR9IpLFLe64y6t8=; b=XBBuYMPforHmAtBm
	H5FIgiWGFHx/rirNgvHm8uCpeP3+W5XiGVJAXgcJ196ov/SKhH53jJ75c410K0jy
	olIo9OcfhiF122ZpZZ7CCdCeBBWcBIWdpHCOGPOhdFjuR4HtChTx9daNEozpI2GD
	6unYvAglJlNodLjKJ2FFhqZwiYWfaokeucGYLum/IRvKEAwBTs5RlPRLBpM61FrK
	eOuC7/EJpiPiOpPzB2xZ6gba1pzo8a6akiCUJWig/l1yzoJLHKbNdAbH+cHp/Fvu
	Bm3YJLTfexs50TRYMp+z8w2pxLHuNzp7+883322cLXDiPv7vFEIlKniZxK+pgNcb
	yE4PWA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u40d3g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 13:41:24 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5ad42d6bcso48564085a.2
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 06:41:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746193284; x=1746798084;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tRa0e6yzESCL53RBCKhEahi2ua9XrR9IpLFLe64y6t8=;
        b=U4s4xP1IsZ1qdk5BwPQi4Z3p8v+JjMYjncetc6a7gZGpnXJRZVCRv/6NqTrfAmmSG2
         6T7UTrREUnx0ITI2EkZxYAjYdLI55YIVLL4gLzNDJ4p8THSuoHmILMXcKLs/vR/Lj9Bg
         X1f9aNBw9/+0s5pRvug6vgPBS0LZeBHcNvq8OuQmhmpcfKRGq9DTvVoFdr6j5ejRcjt2
         8WmRO/HGjDQihWzvpR56iSXnyr3i7FKTHK7NN5tHlRdBfhmV1btjR88s3LrMgHJo7GPi
         VXCLgt31IedrjMD6FKBii5Wq1xxkGnW1bYJu9sAaLA7dABNKeEkH/fApg5aCcsEZmmEG
         W+eQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxmOCCZg1WSEoNulOk67VlAstRGWSiG/xvDjsUGvSMn6mMDQun+XDT7Zf2BPXcNeFVkxe6yaF8yQFq@vger.kernel.org
X-Gm-Message-State: AOJu0YzQtw3dTgnBTajguh7Szg+TKMy0q0vjEVK1GLGKeuhDT83yFJfz
	6XlA6jS2b1NYwSp+bQ9QHbumCAInprgCH8lF2UvA/hZHIq+QwSvbgPrkNagVsT5U1EN8XNNxWQU
	yFftgBBUEC05P7YfiKFmI6zUJ39AnMwL4wmizNA7xyBuqTdTXWY/iXJzxEmm6
X-Gm-Gg: ASbGncvEDlCyk4c+fTyH76y8/aVtx3KYaRP4IQWtGAws6JQK40bN2QR5qZmq7TGqIiP
	n7GJdppoWFif5y8FUHJ7KojRq+FbD0DfnRSq2iq1LT1AmHC3yMM4OXpEfh5lU8RsjcxzsX42CNv
	mVhYCxw1RAh07ZBecfDOxoqxa4K61eJH8//IxeE6vPeYx/dQ7yfyBog27sfSWtMt1I6friI2MWE
	jMi6iSufL250rE4wPelwrbnbEuHzpjyZnRC2vvWjWaiEhSV2kMgXRHxrdMPmyslW/Gzn6rplGzL
	fJHLAIABkvyJU7ltpPYOs+YIeB9FanAvVbloxpLXcrg+V1zAC6CnIJTPmolQSqlLRjA=
X-Received: by 2002:a05:620a:4252:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7cad5b386c6mr117517385a.4.1746193283667;
        Fri, 02 May 2025 06:41:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfDTzMBbUFb5N3T6kjUkUukjjuCz2lS26RtjyWTZXBYvPjhKFgERakqZQ1lYamKTv/P1YcxQ==
X-Received: by 2002:a05:620a:4252:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7cad5b386c6mr117516085a.4.1746193283175;
        Fri, 02 May 2025 06:41:23 -0700 (PDT)
Received: from [192.168.65.113] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1894c0363sm50718166b.121.2025.05.02.06.41.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 06:41:22 -0700 (PDT)
Message-ID: <f6d9b03d-3870-494d-b97f-b0487927c9d3@oss.qualcomm.com>
Date: Fri, 2 May 2025 15:41:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: qcom: qmp-pcie: Update PHY settings for SA8775P
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com
References: <20250423-update_phy-v1-0-30eb51703bb8@oss.qualcomm.com>
 <20250423-update_phy-v1-1-30eb51703bb8@oss.qualcomm.com>
 <tqzmof6rq7t7k3jbdmay7dplz7el3c6i3ehesdiqnp7iq5f7ul@3lnf3awj7af5>
 <CAMyL0qMQCGE-JNwTjqJk8TrGLBDr_1W7Sv_nECkW9Xp1fXgeuw@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMyL0qMQCGE-JNwTjqJk8TrGLBDr_1W7Sv_nECkW9Xp1fXgeuw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Bv6dwZX5 c=1 sm=1 tr=0 ts=6814cb84 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=2aamsdQwrFB3mmDgIHkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 0_YaI8xn2t5NgMvXCJfpvMPBPhUHKs3b
X-Proofpoint-ORIG-GUID: 0_YaI8xn2t5NgMvXCJfpvMPBPhUHKs3b
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDEwOSBTYWx0ZWRfXxZARyoKOe8an NslQMcROg5zm0xvw0YZ+aJE+Tb2Fgx0s1K8TrNskn2V3MJdw422mKcZwdlnIqlSka7nBLnH7s7M JfxM2p9kf48tnLU8jG0za7/hwU6zwQFqSTlsLNwTfT0fjYWLCX/y1VlUneWKHLpkggcVYQTFQXp
 UXt843DgVfXFFk4UHKTx2VGfRjH7UvlXGroc6rCpG4MILpjJUUfIP2ibnJ1pcE0bWQj8YtfKb7r 2GA6hCqDXXK5kESbVpOUzzz/MAqKBc9OZPkYAUPPnIk9H8kl7Ftyhe5Gj/WdtV4xPeBYSl1RSXt 2n7oyMk/T1Gl+i5jpddJtTlAGZR12Y14G6BYA2q1oSBqSW2GQzCZnamHxynVVoQPvD9ZzGN6quI
 CQA6l4rsAM0+UjzPrj24xINtIVRM6jFqHeTBoIbPBg3SC7ZaH6P3kIwLO6k82gN530Wh120C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_01,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 mlxlogscore=999 phishscore=0 adultscore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020109

On 5/2/25 2:25 PM, Mrinmay Sarkar wrote:
> On Wed, Apr 23, 2025 at 7:07 PM Dmitry Baryshkov <
> dmitry.baryshkov@oss.qualcomm.com> wrote:
> 
>> On Wed, Apr 23, 2025 at 04:45:43PM +0530, Mrinmay Sarkar wrote:
>>> This change updates the PHY settings to align with the latest
>>> PCIe PHY Hardware Programming Guide for both PCIe controllers
>>> on the SA8775P platform.
>>
>> Please read Documentation/process/submitting-patches.rst, look for
>> '[This patch] makes xyzzy'.
>>
>>>
>>> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
>>> ---
>>>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 89
>> ++++++++++++----------
>>>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  2 +
>>>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |  4 +
>>>  .../phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h | 11 +++
>>>  drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
>>>  5 files changed, 66 insertions(+), 41 deletions(-)
>>>
>>> @@ -3191,6 +3194,7 @@ static const struct qmp_pcie_offsets
>> qmp_pcie_offsets_v5_20 = {
>>>       .rx             = 0x0200,
>>>       .tx2            = 0x0800,
>>>       .rx2            = 0x0a00,
>>> +     .ln_shrd        = 0x0e00,
>>>  };
>>
>> This does more than just updating PHY sequences. ln_shrd-related changes
>> should go into a separate commit.
>>
>>     Hi Dmitry,
>     thanks for the review.
>     Actually in the previous phy version there was no ln_shrd related
> register write.
>     and only one ln_shrd related register write introduced to the latest
> phy version.
>     so introduce added ln_shrd with phy update.
> 
>     I will add a separate change for ln_shrd.

I think it's fine to change them both in a single commit, but you should
explain in the commit message that previously no writes have been made
to that region simply because none were deemed necessary.

Splitting that into two commits will give us an unpredictable programming
of the PHY, where not all parameters are in sync.

Unless that separate commit would be just adding the offset data, but I
think that's form over function really

Konrad

