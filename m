Return-Path: <devicetree+bounces-250550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E008CE9EA5
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 15:20:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E81533022A89
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B9B1230BEC;
	Tue, 30 Dec 2025 14:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a6dhvq4v";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ea+HOBKz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36921D514E
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767104368; cv=none; b=eAOfJ7SlgGy2gCyFBDmRfQqHvtZM3SyqRxA1VS0CHQx9JnVBctxfj4l83iRw6tAUNCrVIDkLD1xq6qq8fOBvOWN/gDmMe51qhscPKRJHnir1nBh+R9BtWQedML2+ZKT0UfO1TAOQl8BcANQ1x2GyiB0JIXXzn03ri5ZM4DLvgIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767104368; c=relaxed/simple;
	bh=yNMRIHd/BkXo9jGKw4+k5G582exuDUZsMYg5DIWEM9g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uhFG3aSWFxVR4mQpopNVzQECXZx6tp6B9bB7ZQmqvwbzOSe5QfHaY7cysSGH3UX5n1HYZQmu5TzHBpjyy+mysGk0JCM5s4q8BDCWXNmORt3kQjA6YJzYYAUdoDAMjEibPTOM9bcS0vcqXQDWyfuwE5daZj/FOwFi08buO1jLrwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a6dhvq4v; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ea+HOBKz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BU5SV7O901151
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:19:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cPTeHY6D2tDelgP3xM1Pc/OjznKFogeL4V4q417yWBA=; b=a6dhvq4vwoL71RvO
	Xx16r31SQZltWRCLbLmFzf4JTNXca1MrLSxtJs9GMkwJ+CWc3kFIJoGSW4C9qrbo
	ED+bQo5ADE2GNta1CzaeO4E5D4sCcSlFi4sAg741QeUNXx6bNKteEPWCU7ESb6cx
	q3Dt3gVaFSiELxhw0xg0ZPN4ed+r8jIvqNWjL2Gc/MWiSmjOuQXnrS5jNjn6hyWG
	oSb3dGLWPDtaptw/TYaY6vVaEgobjh1c4zI/5z5uY0Ww/C0aJS4xY6REvJ56MnXd
	9DKB4WMsLaEu5QwxOOVsKNl5n4OjLSEatnL4kctfVtXYLH+qfbtp9xNpuRa0LD3R
	AueHrw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc8ky15xq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:19:26 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edaa289e0dso33658591cf.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 06:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767104365; x=1767709165; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cPTeHY6D2tDelgP3xM1Pc/OjznKFogeL4V4q417yWBA=;
        b=ea+HOBKzPuhQxNM2Vl7LR5LfqEkwydEASjUxbCcgMeMBmWx5ytqLAdrA8rbY41Nmgv
         QgqJsMzQdM9XpaZ1P/reKvfW8ZmPB8NsShr/+wxIvq59roEdm8tk0FnF2vuicPwBvYhE
         j6S3uzTl2E1oIUGYwf+TCpNDmhFO3SSa8X54UaeRA+xd/5Cfw0MHwGl0H8Wfwks18qRK
         eaKLpyOXV7Vl1M1iREs57UYlslhzASmpaKEUipTifowdGxd2YleoXKHeSym+eJ9wOLZ6
         Aljfw3KGts8quFZF7C+7R8Sopcmo8tJtb2Q9UpssmiGbpVyulkt2XbAwELDrH7PBM1Cu
         UIzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767104365; x=1767709165;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cPTeHY6D2tDelgP3xM1Pc/OjznKFogeL4V4q417yWBA=;
        b=bPXPf0hBABYMHu9TDX5VzHGG/jTc1DaQWRbCX+BHbzG+3IgMURpgX8iZ65L8ZT/pTj
         0uKLxrc/RI9PNwctO5bPbMVMsB/5qnzKxdwhAe2zjtvjkB+rqqQQ/KJTAtFRgRkQ3Xqz
         RufTcrS89uIR+KfD5/QO1BXtUnV1YVvH1zzlygFNUSCBVtxkxmT5scv7MDZdN4JuwjeC
         vUt4E8CGH9+0iyISWV3triElb+B0ofl/2MWvKF7iL9XBVPwJNXZiLm/TICBQ+8fs7re0
         FTNVo4hGA3jRpQgy7eObmiJr+0S/epMuPzoFZ+Hh7aiEjEgEE0nmJK30jgSbKImFS2nG
         O/Pw==
X-Forwarded-Encrypted: i=1; AJvYcCXE/GuKk9EXk2KQkWB4YDna750Zu4dWH0hm+hXpeqSJo7pFE0z1xVB2izTYaKgGI9ku0wvVRoUsM/tO@vger.kernel.org
X-Gm-Message-State: AOJu0YyCUd2frZ9Ops/en9fEKWQ7eIHpMB5Qk9+0UrwnzK9UNDgojL7w
	2PTROfKjVFvgIcHnjNbpRgM1qfXbNlnAblurYGGkV29hwf+Bu1QXRJb9zh/+OZ4H3l83Jx12Qh9
	ZsyNF5p2ehtYUvztOJzzfA9y9yUg1Fc4eWIngbGLvDxDm8VmGaUwnVwQF9tjFI4DglByMtDQg
X-Gm-Gg: AY/fxX4WMOJKc0AoYygIYsupYthbViIo2e1e+EHZ8dcqpWzMH/ZRM8OA7Faa9AxMqH/
	mpSzHNPud+6YMI7pqVPDZvfel8FWC4tDMFQ9Wz4OPC+iF68TreNVVVZv3t/vXuLNMPkAPlDOCK9
	9e9aPh6rqZ/PgBt5UOgUZBkn3yo7El0vgz5rcueet/Li30oUzeBnsAHQg8ImDjcIRpoWWoXf6HL
	d/4kpW4J3y16MY3xrXKSkQFeCInMTtEuIAdWtKIe7DeQYOfmgI5TNzdh6SfJLC3mPnbcZ3RhP15
	1Xd8skT91CoRwjwrq7lVQxn0trMFlaT4M05y1lVqptbL5E8J2zaB3DIXaDjFPiyrNDzaWoNft5+
	kvru7OBYMykqX+3S4A4LQfPH9s0zCcRsfOqvT/w9MbiQ+NKfMig9HmPLpL+vq3hQ2mQ==
X-Received: by 2002:a05:622a:6bc6:b0:4f4:b376:a689 with SMTP id d75a77b69052e-4f4b376a711mr273913561cf.4.1767104364793;
        Tue, 30 Dec 2025 06:19:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFx1y/8qUtGq6b+IQHmetUs2ly14xFse16BwCUC69fhJTx4dG27HSEMauwqQQpQxq7cqAa46Q==
X-Received: by 2002:a05:622a:6bc6:b0:4f4:b376:a689 with SMTP id d75a77b69052e-4f4b376a711mr273912991cf.4.1767104364135;
        Tue, 30 Dec 2025 06:19:24 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ddffd2sm3481865366b.33.2025.12.30.06.19.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 06:19:23 -0800 (PST)
Message-ID: <80529f8d-8db0-4b3c-b79e-8d5a3004241e@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 15:19:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
To: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-5-pradeep.pragallapati@oss.qualcomm.com>
 <a33f5b15-d574-47c7-985d-f181c4784b98@oss.qualcomm.com>
 <a64f088b-8509-40cc-9f01-23c8b87a8f3c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a64f088b-8509-40cc-9f01-23c8b87a8f3c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDEyOCBTYWx0ZWRfXym8+WpBW26bF
 XNcy1ZMNtBa2rxysqC6AqZvg2VN7HIlWkx2ZVFv/qCacGwbrOKXfBE2x2SzQY+Tu0bkvPmnO8Vb
 Rhm+a5pyu/c0GR+PP/HznNhL5vue1pTtL86+8ipjWLBAbazgcCDsaPuIMj9mltLs0/5KSQXKVxL
 KgBjgbBx4KGODahtQ2PvDc2lj00CkuFR/BH9lwzYSz54xS/81qVIeLxUVpA39M2GPR30TsDA37O
 6y/Up3SukvQNr5C+5JZoIp+/JqwinqwfTuVOiDHNpts8lp3QC4QNy+hYtWND0MIhV7TiyiLiOlR
 MSnuSGetCg6jtxaNfLy7SmC4ieD8w/GiO9KNjG2iXcN51j84P6uQYts0N6l5bg20M6IP68OdKEA
 eO2+VDcl36WuuxPzitZn2q3LlvrMncAwyNLMU7nMocicBQYQOdct/PkjcQSwLfcsBYU9W3N/hBO
 7ud2CtNDaajzlkrO5bQ==
X-Proofpoint-ORIG-GUID: Ix6EEfvRNeL1L3ie-ztBxcC640Hi02fQ
X-Authority-Analysis: v=2.4 cv=BuuQAIX5 c=1 sm=1 tr=0 ts=6953df6e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QZSmA9GrXdfeW22t9VgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: Ix6EEfvRNeL1L3ie-ztBxcC640Hi02fQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_01,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512300128

On 12/30/25 9:58 AM, Pradeep Pragallapati wrote:
> 
> On 12/29/2025 5:47 PM, Konrad Dybcio wrote:
>> On 12/29/25 7:06 AM, Pradeep P V K wrote:
>>> Enable UFS for HAMOA-IOT-EVK board.
>>>
>>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>>> ---
>> [...]
>>
>>> +&ufs_mem_hc {
>>> +    reset-gpios = <&tlmm 238 GPIO_ACTIVE_LOW>;
>>> +
>>> +    vcc-supply = <&vreg_l17b_2p5>;
>>> +    vcc-max-microamp = <1300000>;
>> I think they should both be 1.2 A peak
>>
>> Konrad
> This (1.3 A) is as per Hamoa power grid, which is same as SM8550.

Please check again, I opened the power grid tab in the internal
documentation source that shall remain nameless and it said 1200 mA
for both regulators

Konrad

