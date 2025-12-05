Return-Path: <devicetree+bounces-244683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E20CA7CF2
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 14:43:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 75AF43125D0D
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 13:42:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C174332F765;
	Fri,  5 Dec 2025 13:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CNO5wwU9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MrHPDhlD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168F3290D81
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 13:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764942118; cv=none; b=peresrItUacEynv7/aTlIXxz85xjwto0gsfXm5+W6QFtnaZlUYxRWhLUtzPQnq5xA6vqcH2oLAmz0PVXL4+b460Br1mMZpKzt2c01ANmylOVZ6qo36AJx3RNw7LWrVR+kY1jc9cU03qWOu3a2Fgt/sv10IkhlnNIB77e+N/KPAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764942118; c=relaxed/simple;
	bh=WnfG4P6asrjkYgjJbPrvprJhZhIw2HsoyaoW/kVd1oA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TfFhluKNQi+yt8DN6ZV5pYyPH+UR7LkZVKWw09jq95h40ZANRDt1FMilC7HKK0P0oXZOWWJZzDy5cK8u/nVmEFg/3oB9KV0jxVL17jJ2l0A1/z9k3IYakll7OrwzfdQF1jU243xHIDB1pn9Jm6MMVw3naZgKUqNkpyW1RbuxQYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CNO5wwU9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MrHPDhlD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B597idR2896539
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 13:41:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n7/xg9hqfz7IojW9i45R+MaisCn64mYGvJ5VCnPDFQ8=; b=CNO5wwU9h2eskiEr
	vYWmoIAldICyZRL4DG/u3MZE5BGRA4jICxrdFat9ph96ZwMgxbM12v4gp/eELArN
	6v+XfzOkq3UnalVvZ8IcQqYWYeqreAYLhosJd3X75+nivy4KM3rsG5f4okUu0WBj
	HCrwrNdLol2bdS/ujyjdeNA2xgD1qJE0ed1F45mav+VJgoFan7MXz5SD1XVVAVOB
	H4/8/2xvJPzoYarf7Qh+5ImPxzHhp/3MvaLilU6yx3urj3CUHbt/z0PBaZVyZepW
	0AifDaNFRu4jP8bBA+I/KWPVeT2C2IlTUVRzfH6EMizfIF87FlzTh7WdirPl9zew
	PeG/Qg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aukmj24vf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 13:41:53 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-295fbc7d4abso30145855ad.1
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 05:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764942112; x=1765546912; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n7/xg9hqfz7IojW9i45R+MaisCn64mYGvJ5VCnPDFQ8=;
        b=MrHPDhlDXZXuXzm0AMWONdS6xeE/ho6MsPzWLx82EQdBP+F4hgX9BppYOmNwadTV6J
         oATzsK4FCIg2Mr60bQSjUdTD0EtuUYIYV64+6bCDt8dFdHVl/mBsqACQXPJOQO5A4hII
         fkbQBx/9Vv+AoHLqnc4Aa9ycSLTYiPCXkNWGA/uq867ES/F3U718aguKm6fUHJf4nf9k
         SRUtbi33EjhJqbCJ2kY864xxIiLworTXGC/dyzTkLh6w1MwaRZr2UYQwRK1X+E9BIcH/
         lfwgbakQ0U5NvOrjCiTp2X2vEIbE4v5L5ruwEevI6f7uEGjvOhh9VvH2Ru1UlpDsCPF4
         B6OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764942112; x=1765546912;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n7/xg9hqfz7IojW9i45R+MaisCn64mYGvJ5VCnPDFQ8=;
        b=OVClXI/lrzu45CHrdmyyS8EssP+UFmxKx8WxD/saoIly3MlbYVbgOYYIgHR5z6Ecg0
         OwmdeEvt+qCwQs9DcGP4TMuyYzD5axq8FeBhRGUizsn1uuQ3MXqMan72CqjdsuM+Clgv
         Y3IlLewqnwElbkEVUhIITVQQXmboLvHcEz40oM5p4vErAUcUXCwA7PkHEu51h54afN51
         Bwk0N56CpLDUV7IjTjC3G/+HjfeSDdx7eFedyp4GLM7RmEwHFMZNkIQzlU2OG/AkKj50
         iAayYA3g4va+aWtMspRfzFLQinKdAD8HcocwWGV49t2/6nZLQA8PhaanxPxyxrsZB8R6
         aOqw==
X-Forwarded-Encrypted: i=1; AJvYcCUzOzj1cHLp5kOdUDk0Q7BhizI5ctbAYVpeV+lmUX2hD48xBYSJV0Sdth8bfJHQXwmgFREGO4e9pCZ+@vger.kernel.org
X-Gm-Message-State: AOJu0YyG+zF0ycUCOenR2xXi0tZ20ZDYKRcXdIfH78radZyxBXGjMkiT
	XPp8LSdvinQ+N/sR55tim+C5ke0VNlI/WRpnRlnLMbc9kadWa+xg0PxfxSXP/lKpReHawEtYVY/
	OghBrAkc9xNVM5PQKhsDY6kyaP02+bh9vksMatQPBb5dMIMWl5Ij3e20PadJspth+
X-Gm-Gg: ASbGncta93E98QPVXa5SjChwM5tDax+CL4mAn+5qKWQyViblsefvXB82P9bLlgJQO3S
	Us22uIvRER/opZOXRDjdivaC5asD22VavDSPYf+16vQnpUSvU9XPZT2r6U7fL2ivirzkAlrczBr
	4wdgb9J/iQyhLhathqcDWbiAEEqSqEmWsOdT0owSj/2I6t6eNSrDdd5D5H7OrPaZLvfL61NsLec
	JlC7TL7PMh0J8otqS/hOZXvkJwff8pY56s9QdeMr5vA5jXjcMvYrGGnvDwYA9Wfy3sgRT2xgp2x
	bsrjMyUs4aTMTrPLL6QTuLOcrD+31nVnGfaUOb/j8YreWtQbLccnjuotNuccn7dPyKlwLSQj4ya
	eaBnRBgoakLLvPOWemAyIbAL8K+S8ewTspQ==
X-Received: by 2002:a17:903:3d0d:b0:29d:9755:9bd8 with SMTP id d9443c01a7336-29d9755a07bmr74505355ad.22.1764942112427;
        Fri, 05 Dec 2025 05:41:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHshUqyeSZa92V5Aaq1utR9alONTZF9h0tJSM8m55U93erdoJiSrDaKE4FgBRRU6fmmE70fbg==
X-Received: by 2002:a17:903:3d0d:b0:29d:9755:9bd8 with SMTP id d9443c01a7336-29d9755a07bmr74504875ad.22.1764942111841;
        Fri, 05 Dec 2025 05:41:51 -0800 (PST)
Received: from [192.168.1.4] ([106.222.235.197])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae49cbdfsm49762375ad.1.2025.12.05.05.41.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 05:41:51 -0800 (PST)
Message-ID: <d087dfbc-fcd9-4f01-8cc4-b206c2e87f28@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 19:11:43 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-5-9f4d4c87f51d@oss.qualcomm.com>
 <8560ad26-4756-4c2a-97c3-2c5c0695172c@oss.qualcomm.com>
 <z4gqro2bx6oq2ht75m2klogo5dsirb74tmc3u3shjyalxmaxil@5sy7ufmqhdgw>
 <6fa1da5d-9ea7-4d72-a03a-82edc4bef099@oss.qualcomm.com>
 <9141e67d-2837-4e73-bd3a-9a9c5b8f72f9@oss.qualcomm.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <9141e67d-2837-4e73-bd3a-9a9c5b8f72f9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bYtmkePB c=1 sm=1 tr=0 ts=6932e121 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=jBSxni06C9HboLYAjQ55wg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=PFMJV2I6qJKDnvYOCoAA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: qTPAI7Q9GYLU1-Fr7I0RT12gis8eIB0Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA5OCBTYWx0ZWRfX1Ixk7kvk+t2I
 BlNpHMppa4eyYcyXsyjAJ4gs27ktT4vqlRfx/eqzFqHu5DQ7+wDckUmmTkkrmyKBlpjw3W6m+2n
 mBE8xeMSzMD/0pn8+Ql5HPOArsfnWL9rV8fyXRlO6UE37JXSYQU51p65X+QdacvQtvJj1Q0kX0P
 01TisW066EuylKUQFiuhPn9xNsypbnbdnIKVUHx2/oTX72k/yRb6U5VV3a7E9oHi/3VTzotbfaI
 R0PcEnuwzzXPT96r/2IG5QwenRqykCUPpC4N1wA8JhP5A8G/BL7ZuQRZtkbC82OmZLS92Q5u+c0
 540wr1BQN6ja90Wqje068Cebd+rr79k0I90sMSmNEXyv/l8uzXzlb5kF35EgNY9OawdDoJU/uiy
 8dancVr1NXZ5bZly9wtdVdG9lPOY+Q==
X-Proofpoint-GUID: qTPAI7Q9GYLU1-Fr7I0RT12gis8eIB0Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_04,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050098

On 12/4/2025 7:01 PM, Konrad Dybcio wrote:
> On 12/4/25 11:13 AM, Akhil P Oommen wrote:
>> On 11/26/2025 6:12 AM, Dmitry Baryshkov wrote:
>>> On Sat, Nov 22, 2025 at 03:03:10PM +0100, Konrad Dybcio wrote:
>>>> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
>>>>> From: Jie Zhang <quic_jiezh@quicinc.com>
>>>>>
>>>>> Add gpu and rgmu nodes for qcs615 chipset.
>>>>>
>>>>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
>>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>>>> ---
>>>>
>>>> [...]
>>>>
>>>>> +			gpu_opp_table: opp-table {
>>>>> +				compatible = "operating-points-v2";
>>>>> +
>>>>> +				opp-845000000 {
>>>>> +					opp-hz = /bits/ 64 <845000000>;
>>>>> +					required-opps = <&rpmhpd_opp_turbo>;
>>>>> +					opp-peak-kBps = <7050000>;
>>>>> +				};
>>>>
>>>> I see another speed of 895 @ turbo_l1, perhaps that's for speedbins
>>>> or mobile parts specifically?
>>>
>>> msm-4.14 defines 7 speedbins for SM6150. Akhil, I don't see any of them
>>> here.
>>
>> The IoT/Auto variants have a different frequency plan compared to the
>> mobile variant. I reviewed the downstream code and this aligns with that
>> except the 290Mhz corner. We can remove that one.
>>
>> Here we are describing the IoT variant of Talos. So we can ignore the
>> speedbins from the mobile variant until that is supported.
> 
> Writing this reply took probably only slightly less time than fixing
> the issue.. I really see no point in kicking the can down the road

We don't know the speedbin fuse register and the values applicable for
this IoT chipset. Currently, there is only a single variant and no SKUs
for this chipset. We can add them when those decisions are taken by the
relevant folks from Product team.

-Akhil.

> 
> Konrad


