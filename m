Return-Path: <devicetree+bounces-175835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF62AB2021
	for <lists+devicetree@lfdr.de>; Sat, 10 May 2025 00:56:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0C9367B69E5
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 22:55:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36868264625;
	Fri,  9 May 2025 22:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SGTKlO/f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9914A263F4E
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 22:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746831380; cv=none; b=AzucXTxhObPTVjI9K54nGsa11R89/jVKqfdbu0Jrx6+UUpYV1QlVIMMKUg5JsrMXp1qY5R0eSpE4+nmZyCP61kaOKVnxueL7rPRMA8dKsdxxAZSllX22cR9JKWHZOVCbYgT9ceqge5fRRn1fxg7TNq6Ljgnu8JqYijqwSoitQS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746831380; c=relaxed/simple;
	bh=M8ykDxNF0SaPPEMj71mFhnCi5xlu6Dp46bmYjYU3kNo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fL2Mti8yD7f9pZWDkIOfgVmdJ+6ss0nWaJoPkNTPt2N7SIERLkuglg6diJzpGuHUx+x3N+00SuJLVSfoAHmchsU8TCKs/Jq8m9dakZLghkLrus7fFBe8gRcSvr5AN81lmmQ+rY/695Hygxk3/pwa1xg29QbS5AWTQtzJKtK2AzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SGTKlO/f; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 549CVMSI009174
	for <devicetree@vger.kernel.org>; Fri, 9 May 2025 22:56:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4Qp1+5iTdYJmiqFoTnH+iBbZITewEjue+EqmZ+z2Viw=; b=SGTKlO/f3dTEr42C
	84dFkiZ0juK20gdHJPLkLMSir0t9j+staPftSLVJWZiVVpcyB7i72E+9ShH/SxMl
	UzUnlWWRl7ZBcRwF+eOnCTg4YD7uIWE2+tLdw273IzvxWd+gPxxfXOjQBjmsKGJY
	Va9vi6j6nuy3IrUFSyH8bpd/gJ/9PITaU2TSRqlDiUUj5SR3dkkJaJISsul12MoH
	fqXhm9j3dPY12Ajrw+j+f8aHgXWJ7uJfZQ5YsalO4zupJLKxHZiC2+Zg4WaaTo75
	hkdJIVpGspolJkIpe9TPP5Z6YtJsdQbeKVtgvTnjz9NKgMmrfC5dQoPKfW/EPs5f
	5yPn2Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnpewvad-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 May 2025 22:56:14 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-47ae9ed8511so5591901cf.3
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 15:56:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746831373; x=1747436173;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4Qp1+5iTdYJmiqFoTnH+iBbZITewEjue+EqmZ+z2Viw=;
        b=dr9q6zwBvIINfEFt1/HVApYEsBB0gTfpuWwFj8gxmhJ7j4nkmk/dlPNzw19o8azSXL
         sCu6L/SaSUZNozBaqMXZ/Lf9bEq/ipO9el4uq6okwb2yoxO4/e+baf7okMMEGVDzTLSe
         pCD07uAqn8gHz/3TcWkZQsuVgwP6ANX2CuXWcR9vASEnIoGs6almR1n160VchkhfcmgH
         5iMums21uqpqW12HI9j0TU7VHOx9YMX09/cFSH8ZZp+SMnKAU6fU58xg/zBifHs8NBxd
         11r/7GeiYFlyf/gLeL2oH+x8yvgEQbDSaiwIz8o47N3tRiyKcSdQXavg5KZq64teN3id
         Lwag==
X-Forwarded-Encrypted: i=1; AJvYcCUQwmk7RXvtNPCkkQyZVybOFnnNvhKzcPDn0wnchwJJqeyChXywp7jYEXWlpV4Ntc32zvTLGuqSUR7F@vger.kernel.org
X-Gm-Message-State: AOJu0Yzcq/MfmqHw+AU/l4EhrNCUpE9oFapZUGTUWmQTsa4ER66Cm2/d
	pgp2YfTHHuSDAtAHZErqz+U8O/EU4ySdigXnY3TgREssyOhRTaCBHZyaJ73c8GhR5qbETGqKAOi
	Y/1b8ET3D1rwFp6Ry7NRNAplm83K1z+qDAMCe7i2s4ueHkITl3wpU19OAGeAd
X-Gm-Gg: ASbGncutCePXHpG5Ppyri2t/5k3Z8mUbn+7kebdDkkHIwsurEUaZRO5tQ3F3/ccQky3
	ZOs/LVjmC52+0V9lq+tgUs8ibQgrEiR6XB0yXA499ga8xJIOlIwUR44rt/0Kp0uKF5DURFDrhFa
	1+yiXOoudZbQoilcgrtromINqys/hJlEYOmvGxxODG+IZJVYO8e1Pz4MlnYcYD4jRi8Y9wSHKk7
	N1gl5xr2GD2nimiVghncESC0dV/cDt/MyOGqssZaU7z3FPNzLXeKp5391wDT/tp9CbAId2qO1oi
	4nL5utyA17n1HgIlNrmgc5aDkNNR0O851KdyWpm2cp9tBh0EJOtqXh06kCMlltWTSzw=
X-Received: by 2002:a05:622a:14e:b0:477:5f29:dbc9 with SMTP id d75a77b69052e-4945280128emr26695251cf.13.1746831373250;
        Fri, 09 May 2025 15:56:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXVP/tivEEn1s6heCPquBwNxnD3dc35bG8Iyd1lz/IHTbO9GahzmvLPBbvd+/AL7RzsvleGA==
X-Received: by 2002:a05:622a:14e:b0:477:5f29:dbc9 with SMTP id d75a77b69052e-4945280128emr26695071cf.13.1746831372832;
        Fri, 09 May 2025 15:56:12 -0700 (PDT)
Received: from [192.168.65.158] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad2192cc449sm215873266b.20.2025.05.09.15.56.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 15:56:12 -0700 (PDT)
Message-ID: <5eb8fb45-eec9-4078-85ee-0cfd563e67eb@oss.qualcomm.com>
Date: Sat, 10 May 2025 00:56:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/6] arm64: dts: qcom: Add support for QCS9075 RB8
To: Wasim Nazir <quic_wasimn@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@quicinc.com, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20241229152332.3068172-1-quic_wasimn@quicinc.com>
 <20241229152332.3068172-5-quic_wasimn@quicinc.com>
 <vr3q2c47ht5iebf7nvy3qywoxlquwma3p2tffswrefpmxqy24h@wrfecu6mcqcn>
 <aBoAjaI6nDvSyM/v@hu-wasimn-hyd.qualcomm.com>
 <a100a875-4951-40e7-a516-59040649f218@oss.qualcomm.com>
 <aBoLIFCAjWM2QqpX@hu-wasimn-hyd.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aBoLIFCAjWM2QqpX@hu-wasimn-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDIzMSBTYWx0ZWRfX3O/DCTI6wJlX
 F+Euwm7JcNWtuhP1+1u1B7BQ9ILwViaM0xBALZylo5eFvpWwWW/Lw2ki6hTIdjXsmP/U1nWVBTF
 JpyNdyfsckDclUvMTiAsWoJ7ZFsHP1uMeXDYUay1mPh4jhKzJQNmPAOBDMrEJ2o9Y3Nkx/Nnc97
 v26J0RgHqWcJhUHRl/6eeb+XKs/UMEH5qs0HsJR6VshGULFPZitg7yfOfLqeukfvAOdPqFDkgP4
 57KWvlROBO8zEpBcRYEDQOs2hBqquPK+B/IaWg5iCf/XTjN/AFAcHG2HPd21hbXBeQYwq0AUItH
 wlNCl6gq17PTnyp2muXdzT2v+S5OAIEN0gA8HgnsGqe6ISK888mMTTByCFqwbldMeEy37UQVNpC
 mNrpOvD+k7NUd1PvpxcVxG9xkKdfwmtDRQTW+AQtXvlJYfNlDDuabKQ58xzgWIoRcfTU7HwQ
X-Proofpoint-ORIG-GUID: oQ1Kh38SDzujCAWtYVXkUuCfb-SbBh6f
X-Proofpoint-GUID: oQ1Kh38SDzujCAWtYVXkUuCfb-SbBh6f
X-Authority-Analysis: v=2.4 cv=Yt4PR5YX c=1 sm=1 tr=0 ts=681e880e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=i6E4GqrmrfKDrJ3Qr9QA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_09,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0 adultscore=0 spamscore=0 impostorscore=0
 phishscore=0 lowpriorityscore=0 mlxlogscore=758 suspectscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505090231

On 5/6/25 3:14 PM, Wasim Nazir wrote:
> On Tue, May 06, 2025 at 03:30:43PM +0300, Dmitry Baryshkov wrote:
>> On 06/05/2025 15:29, Wasim Nazir wrote:
>>> On Tue, May 06, 2025 at 03:08:17PM +0300, Dmitry Baryshkov wrote:
>>>> On Sun, Dec 29, 2024 at 08:53:30PM +0530, Wasim Nazir wrote:
>>>>> Add initial device tree support for the RB8 board
>>>>> based on Qualcomm's QCS9075 SoC.
>>>>>
>>>>> Basic changes are supported for boot to shell.
>>>>>
>>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
>>>>> ---
>>>>>   arch/arm64/boot/dts/qcom/Makefile        |   1 +
>>>>>   arch/arm64/boot/dts/qcom/qcs9075-rb8.dts | 281 +++++++++++++++++++++++
>>>>>   2 files changed, 282 insertions(+)
>>>>>   create mode 100644 arch/arm64/boot/dts/qcom/qcs9075-rb8.dts
>>>>>
>>>>
>>>> For the next submission please include at least the UFS support. The
>>>> board is pretty useless without the actual storage support.
>>>
>>> We will be adding UFS change once the basic boot-to-shell changes are in
>>> place.
>>> I have already pushed the next submission (v6) here [1].
>>>
>>> [1] https://lore.kernel.org/all/20250429054906.113317-1-quic_wasimn@quicinc.com/
>>
>> Sorry, I missed it because of the rename.
>>
>> If v6 gets resent for whatever reason, please include UFS into v7.
> 
> v6 is just split from v5 to separate out evk & ride changes.
> Currently it only supports boot to shell so UFS change is not added.
> UFS change will be added in incremental patch after boot to shell is
> approved.

Please take this as a general heuristic for the future - if a justified
change takes less time to perform than typing 3 emails to argue against
making it, it's not worth typing the emails

Konrad

