Return-Path: <devicetree+bounces-185017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E030AD6042
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 22:43:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1367717817B
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 20:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9080E288511;
	Wed, 11 Jun 2025 20:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UibWW5dJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C475C1B0F19
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 20:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749674615; cv=none; b=VWqSpVC712Oml0eYkx2dr1g2AKvpwbnFNxiYviQ0sWFnSzRJKmzzCPQ0kLxgnKDVH0axMU3HCtQdZEDLK9vNINcaOdFUfU5gi7Ovmr2/5ZHL3edsksusq5OO4n2qrmspekh7qwK6dL66yjxO7zffRRpxmgvdaiKQYT2nj2CV4So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749674615; c=relaxed/simple;
	bh=83yv50CaBfMFuVTkj7A7SvKe5M5x6OmGdAG5zdc/yns=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nVgUZjp3VySovzWcAvATge+hwKiCrUwiFRGXLSPahsTVuDJXtfsKo2LpnnGVUvTm9gxvH96pDXUdeC6gWHPPtg6JbEpAAvm8T7sYrtDGp+geSIkQhe1VOrDeMrb3JzpHp+srzhKnI1L/sZvoax2IrCEqU9WNIjsoKZUIzZor0x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UibWW5dJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55BJtUJA027902
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 20:43:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GVs4TGgM77zmRwDvs28CfyzU5Glz56xefxXn8V1biV8=; b=UibWW5dJRRze7WGx
	r4Njq0laImJAqWZH7mMDnJ4cde/eOATLk9dppsS++0LzUDEfDwr1nCa3HBnc29Bg
	pqyksFNACzTaIBH0NeUgaUo+AMrTS8qzq0M4oIrrPlfjUtSy4fo4jbu58XcR83yo
	LHr9fk9HMtuaZ5lR14vwSaQ7++8yl/ZNwH/KIaIa0FSuNHBTmb6KuvxzBiTZ8JWK
	C7PxlhMCyhAem2+Br8Ppj6FVeaqylicy6ysNKdKlBgJ/qtZhjHI4oVZBZFUHq07R
	79lEpriZM2azbqj9Q16PTkp1ycRDyyY9N5/y1k2kzRz2EgDaFSWWWPw6Lv3ENZ53
	NcLIrA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 476jrhd795-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 20:43:32 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7cfb7ee97c5so3816085a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 13:43:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749674612; x=1750279412;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GVs4TGgM77zmRwDvs28CfyzU5Glz56xefxXn8V1biV8=;
        b=Sgkddmt0Rr3nLQSjgGcTswqrs2f2XWO8A25rewUrNN/0hAYSGkGOIMbPFNKLggrG9z
         IoQ4g9Ddvc8fhjMW6KHhRJxzaM5qAm0dpNK3p7xSxVqHZMIU4Ta1Us/6sy7QjztsAuHS
         DhmnKA/ouqV8fD5pABmI4p8Ni3TIPEXL7aqo4xSJnAELKrzN4Fbyr4rbnokLt0vxSORS
         Q1QsNMkAwmgXCbYNhYGfkEqXJlZWlf6KM7AS+mu9THqtlsDRM/BFJxQQl2cKTbFKdouc
         Uv/88vPZp7b5FWpTqdor1ZiZq/OHWCPdpyul03jaK3TomMPAp8F6/LAiLw0CD6pXrtux
         soKA==
X-Forwarded-Encrypted: i=1; AJvYcCVgeeOTjT05mON3RdC4jCFRo3ParkPdtt4Aswpekhtb0sd+lPm7gR8FsznmcXox6OvJPdqKdf3Emt4b@vger.kernel.org
X-Gm-Message-State: AOJu0YwprZj3ILpeq3QOW3Bk52gnam6ErTTmpTnM4SRfGqzpnAD/7I2G
	IG2ZzgZA6zpq6m104g34QxSAPXXExHh7jTwHJcvOzHwuK8HjnJ+qcmUQ2jggHuoVLvIc+QKAdIR
	SWgg62X8vu3SfH3UQmHnORBedINH1r2L8E1WCkaCjPy17ad1lMclEFRSSSFTZMRX5
X-Gm-Gg: ASbGncvmS+roHuODyKXVumqbqDIldzzkLio6EMpmFTFVOqyX+qfcSJ5J1vgoi4LH6Xk
	f/YtZUHXFfxwE4aKHT/qilqyA6LakNlooAzUcu3TvNS/Dbf/jwh962igfRXYfvKLeTRQ+HL3Mx/
	O8osDV4cofldA5Kdy9Buth1WjSXQW/zgNsM+ypzqiwOjzwsD9OQN3/PE/RrHyAkSC5Me1CiMGBJ
	hF4BglT5eEVvRu0aM+ZcN/3ewgV0w/iRmfmMBhgMKDtcxm9CnJTvNQkzvpZYGY0x6ey/r7lR2Yp
	BjtOkFB1t40q8yTUQlGUUrTK+jWgueIYycRzJncQHmAN10EqG2Nt7fghsnhkS0s9iFQsYvp+OMB
	NYhY=
X-Received: by 2002:a05:620a:2a04:b0:7d0:aafe:dd6 with SMTP id af79cd13be357-7d3a87d21afmr284959885a.1.1749674611695;
        Wed, 11 Jun 2025 13:43:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqjdJMZ/RTfJljLe8nIPKV0DFCWgHhDdsqtHHOy25gyr/Gl8/60xzpenmgHhiO9jZcC2dhrg==
X-Received: by 2002:a05:620a:2a04:b0:7d0:aafe:dd6 with SMTP id af79cd13be357-7d3a87d21afmr284957585a.1.1749674611217;
        Wed, 11 Jun 2025 13:43:31 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adeadb21656sm7425066b.108.2025.06.11.13.43.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jun 2025 13:43:30 -0700 (PDT)
Message-ID: <a47842eb-6d65-4928-8226-461ee36b480b@oss.qualcomm.com>
Date: Wed, 11 Jun 2025 22:43:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add missing OPP tables for Venus on qcom/arm64
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250531-topic-venus_opp_arm64-v1-0-54c6c417839f@oss.qualcomm.com>
 <aD1cUF56-IX_tSpp@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aD1cUF56-IX_tSpp@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=EovSrTcA c=1 sm=1 tr=0 ts=6849ea74 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=FvtShTKF05C0XPiHgVoA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: e74joo8cYWOEpFcgv32NKCNWV5639Wku
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDE3NCBTYWx0ZWRfX0phbct+AuGll
 9RBJIX/OE3024eVhnpT2YDHq9QUHOD9ltsKUXQ4qlL4dQKqEFlImDdQ8FvOl7kbFq1OL0XQogYV
 M/QKueCLDkaf40Mofim+vx1Ziv6Ln+szz+DGa3curuhV0XgTZ71jUsu8TkKvL90j4u2Jujn2Iq1
 AmvsBb4buW6XS5fw5rlp+xofCGJSgQbDcOypHFIeoCRwSiYVicN+nfpC/po5XCArvGDsJ1rvC+k
 UlbA6Lt9hFPl6rkiEYI4GNJuOADtxJr7zC1haJuBrKye/eGDtNjJ2QmNjRNRUOFN6/kgw/h9/SN
 BrYjy1wWv81iLqLGw5V3N3sWg86aW6vim4Gni0R4LUSpTSf7itQtxiA/yz8tEfIc9QXblGJCXc4
 1lDzMWNHyNqOXoqoa1jY+qogXx2DlCucAgUZS35S8ukmxocYr9Zev53Ki3fuSZxmrJ3rfxrQ
X-Proofpoint-GUID: e74joo8cYWOEpFcgv32NKCNWV5639Wku
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_09,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 suspectscore=0 priorityscore=1501 mlxlogscore=929
 mlxscore=0 clxscore=1015 malwarescore=0 adultscore=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506110174

On 6/2/25 10:09 AM, Stephan Gerhold wrote:
> On Sat, May 31, 2025 at 02:27:18PM +0200, Konrad Dybcio wrote:
>> Sparked by <20250530-add-venus-for-qcs615-v8-0-c0092ac616d0@quicinc.com>
>>
>> No external dependencies
>>
> 
> Are you sure?
> 
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>> Konrad Dybcio (5):
>>       arm64: dts: qcom: msm8916: Add Venus OPP table
>>       arm64: dts: qcom: msm8996: Add Venus OPP table
>>       arm64: dts: qcom: msm8998: Add Venus OPP table
>>       arm64: dts: qcom: sdm630: Add Venus OPP table
> 
> None of these platforms has a power domain that supports performance
> states specified in the venus node of the DT, and the venus GDSC does
> not have any parent either. I think you will need to update the venus
> bindings and add
> 
> 	.opp_pmdomain = (const char *[]) { "cx" /*???*/ },
> 
> for all these in the venus driver (plus backwards compat if not already
> there). And then add that power domain additionally in the DT.

Making use of these tables would certainly be welcome.. This patchset
was aimed at pushing them to fdt, so that we can debate dropping the
hardcoded values in the driver in the future.

> 
> This series is also introducing new dtbs_check failures :/
> 
> qcom/apq8016-sbc.dtb: video-codec@1d00000: Unevaluated properties are not allowed ('operating-points-v2', 'opp-table' were unexpected)                                               
>         from schema $id: http://devicetree.org/schemas/media/qcom,msm8916-venus.yaml#         
> qcom/apq8096-db820c.dtb: video-codec@c00000: Unevaluated properties are not allowed ('operating-points-v2', 'opp-table' were unexpected)                                             
>         from schema $id: http://devicetree.org/schemas/media/qcom,msm8996-venus.yaml#     
> qcom/msm8998-lenovo-miix-630.dtb: video-codec@cc00000: Unevaluated properties are not allowed ('operating-points-v2', 'opp-table' were unexpected)                                   
>         from schema $id: http://devicetree.org/schemas/media/qcom,msm8996-venus.yaml#       

Yikes, I didn't check as I assumed the bindings would be common - but
this always seems to bite.

> 
>>       arm64: dts: qcom: sdm845: Fix Venus OPP entries
> 
> This one has .opp_pmdomain and "cx" in the bindings, so it's probably
> fine (didn't check if the current OPPs are really wrong).
> 
> Thanks,
> Stephan

