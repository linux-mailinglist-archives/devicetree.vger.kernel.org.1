Return-Path: <devicetree+bounces-217650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D18B58BFA
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 04:40:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D5C183207F7
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 02:40:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A06F92472BB;
	Tue, 16 Sep 2025 02:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pax8MzK9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F8B239E91
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757990416; cv=none; b=Z9X3xjjwAPsdoMknwpAmGyOt7sJnK5l74AJ50fHdGZlU8FVj+FxgTcUqRRuvNTVDL1kTJrrH53kyFx/I4b9bmjKOduJPKozabD2dbigCxr/fHscisTT5uS/5ufvx21BvNuH1PPSK+yuRBiVF92g0Y5aSvGZ3uwmgQC2vtFr7740=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757990416; c=relaxed/simple;
	bh=sw3T+Yf7rRxGoEHikzqSJtqsISrkBdzL4ry7W6NjCME=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CCDiKpxMLQvwSk8u1d2t0IixBrYhhVdeJ1S9eR+RPcF5fNoC7AR1chPv3zSlrAN1fnSEjJ7PpcBx6HfhW4KXVpy2BFvjJ/NmaYF8yptZg5WD21inEL4IY4f5gVfoHJRcWNco4llrXkDyM+RUvvGrcIrQi4vBghXTjakWWJWYgsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pax8MzK9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58FGZ2hL021984
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:40:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ALKBbxJKWhBYDEwvuuS6efzqtoWF3Q6y4KRex8tFebc=; b=Pax8MzK9tDYbi4Wi
	Ua6hvVsXPpOHAhwBypsMIc9+z4o6lY/oYAjB83+3hbB+EwhrKjBydKQAtUqlD/M8
	eVsqnkaGkJzDxO+RjNwvZLqBHAj6rkTSL2N7BF4N3MNpXPvWGKl+z+kmmgOSP2RK
	99dQKfqF/K+g7XKOMTUe+kxakNT6FGXjMoqlsMgu9iLXOvyoqtY7/uMZ88IZKoM/
	uKlha3oiUB6s19t7AWs457xcN5xpTZfKY2MI9xbAFDyEylwNgYhILNcCuNnHQkNd
	opNG3nl8dWny9qc48KNuQeoGhTTfqThLp8b3exkw1BvCmq3mEe2/Ui3/Jv0rc25T
	NnbHdw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496g5n2r73-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:40:14 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-263d67851edso43968605ad.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 19:40:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757990410; x=1758595210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ALKBbxJKWhBYDEwvuuS6efzqtoWF3Q6y4KRex8tFebc=;
        b=Zo46k8fN7aJQ5n8B3udxUhq3MAizdbDasuIyXM3LeVvo3Dk3QdA36EOSG0prjKE/kR
         lAd29nM7iDokMMs8Pf6sVR6OlSvf2GcVT9byXTKmSbEpa48IuuVXYel+nYNeFt7grLLC
         YpSfbaKz0jM07bBEqUcxA0Fy/PTNDQjm9WQYQVLKKgDlU9NRqmY19aw3+I/CaVVxnr9F
         0Dh1/BLWMdr9S3enraZ7igJXFbyOWLeFI5c3w3x687Oxe7JxzldQ6eX7cDmKXtWJjej+
         PIzrSYV6N1iAd0NC5DRGVyvexB0KZZDLf1dY2LzeSEsWLWrdPsG7oD/I7dSCe7M/u4MJ
         UvDQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1DpgylyHVsJ4mbBI+80nEfTc2F2WIFE6496schMkFpehG4KqSubntWofVALdrSi+/EPAJabG+lXb9@vger.kernel.org
X-Gm-Message-State: AOJu0YyFVYySRAiid633fPnTLnmHHXBJ/09rNzDf7z6n1G4gNmSRkKRz
	P0g/TKW9NNxEuZEcxFaTq4yebIiSS0Ch+tZq0i7W4MSOxgx/u7IZSPEQUCbjetk4/pTufPONaU4
	DPFhMp8la1dRaK1gVcn0b9hBFFxNRIGsN53EO8bgQ1uagnwD2ywfvtB1CD9imEHxl
X-Gm-Gg: ASbGnct9xU8g3k26q44nmlHM+pQ3Qo3/ytVq/TrjVaBwJWuSMT+b+qBKKkbugqRfIWa
	/gz+cuoh3Ygvm0sIkxHbzSCSnK2mTeM7jfiKP7lsWAadk04ldKUx1I4G7i4m0mC/uKMVJHUtQBY
	g3xIg6tFjNG7SRZgIVXr2VsKgPLM480QMr60ECJdI3TbQ+dXqPSGwlpk2GSj7a77ApbJPW0xh3y
	vrqMHfxt39vRpCcuPsNleeU0Zg9nrrX+p0XvfevZEoj+GOCa3VXfX+RgOArjRgb047yNQVeY/ek
	S4iA6CjpzsCJUs19jE3kt62YFiXfprpUF2oSPFw/hAo20tBFMmZaMHSnV5ApAt0+bijTSAhMOUD
	T/ApCLQivMH2roT95BNDOOAelkGWiNQn0Pw==
X-Received: by 2002:a17:903:1aa3:b0:246:2b29:71c7 with SMTP id d9443c01a7336-25d2607a10amr176506575ad.25.1757990409789;
        Mon, 15 Sep 2025 19:40:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHutrm0VahgASYcAGOWnnFZbZG2dQel55GBh/Zu5/ngeQI/Oxmg11OWKXNdJCX6YG0DD91+/A==
X-Received: by 2002:a17:903:1aa3:b0:246:2b29:71c7 with SMTP id d9443c01a7336-25d2607a10amr176506265ad.25.1757990409367;
        Mon, 15 Sep 2025 19:40:09 -0700 (PDT)
Received: from [10.133.33.240] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25e2fb546f9sm109794985ad.127.2025.09.15.19.40.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 19:40:08 -0700 (PDT)
Message-ID: <c5e3ac07-e91e-4c9f-9256-497991b75200@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 10:40:03 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/8] power: supply: qcom_battmgr: update compats for
 SM8550 and X1E80100
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Sebastian Reichel <sre@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        =?UTF-8?Q?Gy=C3=B6rgy_Kurucz?= <me@kuruczgy.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250915-qcom_battmgr_update-v4-0-6f6464a41afe@oss.qualcomm.com>
 <20250915-qcom_battmgr_update-v4-5-6f6464a41afe@oss.qualcomm.com>
 <f3s2srlmvuj7wmh4rndffmbfrzylbuq4rsu7pqqrnqa5fgsmch@t5f4dgmqtgys>
Content-Language: en-US
From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
In-Reply-To: <f3s2srlmvuj7wmh4rndffmbfrzylbuq4rsu7pqqrnqa5fgsmch@t5f4dgmqtgys>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: n5fRfDCNbe2IFem8Mf6YrU9pBerO1rNs
X-Proofpoint-ORIG-GUID: n5fRfDCNbe2IFem8Mf6YrU9pBerO1rNs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA4NyBTYWx0ZWRfX2O40dGYtr1jU
 hsyuwGGN9++Ke9hDX/QrgAIf/9DDxKvpoOnM9mzsl/xXw7j62cCdWq8cEOzcodBevbC9x829zVm
 FWUkBDX1czkY28wuDl7SLF3DwdTaiUABgxRpQGIYJUAOacuD2z6V8NtghjLazuN9kSHBQ8Q3LCF
 aLo/DG4WXWTI5jwiHzAadTxMT+717cf82uu2erXB/OWA9hyyhqc3gcUN83Xodvc6wvY+tS0g38c
 CHbzOJ06GdgVd2RHvyb7iUCJJd2fk3T2oNKHJVKvvB/q5CvYrEKTCzUzBC1t946ApwGF4Xbld22
 TggvPHBbnaPZ8uyl6mJOu91z7biaNu4C8SLqhqqWENyhO001azV8KM0ONVtaJ/vPmrJNdWUArQc
 EOHmzkFD
X-Authority-Analysis: v=2.4 cv=SaD3duRu c=1 sm=1 tr=0 ts=68c8ce0e cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=lkjHs5G_WC6zgKVeVEUA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_01,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150087


On 9/15/2025 6:19 PM, Dmitry Baryshkov wrote:
> On Mon, Sep 15, 2025 at 04:49:57PM +0800, Fenglin Wu via B4 Relay wrote:
>> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
>>
>> Add variant definitions for SM8550 and X1E80100 platforms. Add a compat
>> for SM8550 and update match data for X1E80100 specifically so that they
>> could be handled differently in supporting charge control functionality.
> Why?
Is the question about why this was submitted as a separate patch, or 
about the need for the change itself? The reason for the change is 
explained in the commit text. As for submitting it separately, that was 
done to address Bryan's comments to split out the compats changes. 
Anyway, I will address the further comments from Stephen to make the 
change bisectable.
>
>> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Thinkpad T14S OLED
>> Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
>> ---
>>   drivers/power/supply/qcom_battmgr.c | 7 +++++--
>>   1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/power/supply/qcom_battmgr.c b/drivers/power/supply/qcom_battmgr.c
>> index 008e241e3eac3574a78459a2256e006e48c9f508..174d3f83ac2b070bb90c21a498686e91cc629ebe 100644
>> --- a/drivers/power/supply/qcom_battmgr.c
>> +++ b/drivers/power/supply/qcom_battmgr.c
>> @@ -19,8 +19,10 @@
>>   #define BATTMGR_STRING_LEN	128
>>   
>>   enum qcom_battmgr_variant {
>> -	QCOM_BATTMGR_SM8350,
>>   	QCOM_BATTMGR_SC8280XP,
>> +	QCOM_BATTMGR_SM8350,
>> +	QCOM_BATTMGR_SM8550,
>> +	QCOM_BATTMGR_X1E80100,
>>   };
>>   
>>   #define BATTMGR_BAT_STATUS		0x1
>> @@ -1333,7 +1335,8 @@ static void qcom_battmgr_pdr_notify(void *priv, int state)
>>   static const struct of_device_id qcom_battmgr_of_variants[] = {
>>   	{ .compatible = "qcom,sc8180x-pmic-glink", .data = (void *)QCOM_BATTMGR_SC8280XP },
>>   	{ .compatible = "qcom,sc8280xp-pmic-glink", .data = (void *)QCOM_BATTMGR_SC8280XP },
>> -	{ .compatible = "qcom,x1e80100-pmic-glink", .data = (void *)QCOM_BATTMGR_SC8280XP },
>> +	{ .compatible = "qcom,sm8550-pmic-glink", .data = (void *)QCOM_BATTMGR_SM8550 },
>> +	{ .compatible = "qcom,x1e80100-pmic-glink", .data = (void *)QCOM_BATTMGR_X1E80100 },
>>   	/* Unmatched devices falls back to QCOM_BATTMGR_SM8350 */
>>   	{}
>>   };
>>
>> -- 
>> 2.34.1
>>
>>

