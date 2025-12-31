Return-Path: <devicetree+bounces-250797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB94CEBE1C
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:55:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48F903019B9A
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:55:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D984F320A24;
	Wed, 31 Dec 2025 11:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eDCg2RiQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vn1TmqBy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAE731A54A
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767182133; cv=none; b=hBxmWX+OdKwQGYQb9WGHrCe1UGLoj7JavuAV0y03VcVJnfBMyMKAkNjijj91Qc0ZOkkCDbvAsZxsBY1gqj0CpQPESbSnaW0kIzOmAM0NJlItTDnRuCcAlWl+LIl9uEP75ch/BQ+zNv3mS/RslGPALhQ50A0vqkLyKNl2m7doEko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767182133; c=relaxed/simple;
	bh=YcnEwOIhio1pqk3VoTFvxX55HjCeJC0Ms1DLaK9GUv0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pEh9ghyA8D0H9u25BvEYVaiVlTzjh0PV2eL9lEq7se6U4NWoH7XBeg+VoOGUutiC+kNfGULcj4RtEepYEKxN5TdN2uX4KFH8WzGRzvVL8kDFNBXGpiPzlj8gjzDGvL3mzkPhpo/Y7LZp2x5rdxhHefiDWjUXNlhIK1yknaudtGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eDCg2RiQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vn1TmqBy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV4ocZK1429654
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:55:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aRgAS+XV4NGIbS5AlOxK3JgWg3/RW+6Jpy0ZJY+OBdY=; b=eDCg2RiQIPCiD4/r
	OZgu/lfRh9HRoEAx1zkNlebLqf8IxPXFNEktnbGD5a5L1knj1WrfBY+6V2Pq1Zsc
	bFtWQOz7ttYHRKT8iz7j8QiKTNZlz2lLg82tvlzoi8sodrVtW697pS0jJCX0k45P
	oPZmqjTpAbB2rZeAc//aX9q8Ch6tXSkq8DyHWl2NzkWtxsPpe8oZzRgyBozHYh4e
	kY40fRnxD6xZNzhX7YiIn5T7AsGLzGrnuOcr4cPYhh9tPPZbExchWzbzLLCirjY5
	1Fe+crApel5VBpL0Msr7YuhHW80l1iShUvj64kCUCHERyS+5UamdJa9eONpsObhl
	ovdP6w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcw5e0phe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:55:30 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2ea2b51cfso319437685a.0
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 03:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767182130; x=1767786930; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aRgAS+XV4NGIbS5AlOxK3JgWg3/RW+6Jpy0ZJY+OBdY=;
        b=Vn1TmqByj/rmQynNJY3nKrVuMmOVhDC/L1V4XZeCTCpXVeEoKFFJcke9K3oOGEwdaf
         0tkd3yVPWmb0L4TUW+iLwnP3xGA8MObrNZi52PfB1lf0o41Y07kpERJJb4pF26xOQlpr
         GUI2Zdacdlsyc1/QiX7NzsoHsmuZUbuPnC7xHs8ndbVBC8FVKbjfAgoRGwzjBXbcUlEb
         c3T6410EVhjPRFWDxE4KUpLDlKA5KdVtwScFwP1fEPaa0LbKH1wGehp1g4RCbI+Z/X7/
         aHI0UduL/rlj5V9Js5gTaK/8R6oBkyOWLdjguRneS2yxWOF8hVtpDh7NsRdeoVC08EmU
         u2xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767182130; x=1767786930;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aRgAS+XV4NGIbS5AlOxK3JgWg3/RW+6Jpy0ZJY+OBdY=;
        b=JVoxrFUYe92TE0urF78gtKkMR/0B8ScWtS9c+5YlD0UHf6R1qnsMY5Gj9orTTMM3cS
         mfLATZ7P4TeXDjEJnQmexhDTwO4+4DtyDoiOQDf1gLusekinQtddM6B7JhTIjvJtUF37
         JL70Dji+hdGilEhATqj17m+7l5m1sFpOvU9Do1xZczY84tQ7EBi4gH65JPAIC+6nxRqo
         Q5k6sFt0udOi09yngB/978kf3FfQKPqsQkImEfH/b826jWYj+GPsNOORyOpd5qchhltH
         +5tljQPqryqjzDobaYzl0UrfWobKdQuK4VFlBkobfKJrMefp/OxVDrZ246wmMhy/6VyF
         NjIg==
X-Forwarded-Encrypted: i=1; AJvYcCWIeRCYffADaJ/oCqJHNuVHz1Nab/C00CdOJ4MPD88BSy90mDtLiZh/tDsHym5PAi9Y5SJDB+fc4U5v@vger.kernel.org
X-Gm-Message-State: AOJu0YyLGeakelSJga1yfApLtbIkaJX8aqZs+Oa2/yU+Gpep/BCVVUtO
	wZiTfqga7aV6ohc6ACyZBnYIc6mt3BLIHDrdI/yQSagBsxBYZD/JxOloFyLUgYUbQkJYyHoMSUj
	6faayzFyyZytC0ZG8edaFlvFAnqGjvkoJ6T0coKqaTqMgxzOHuFh0up2akQPSd2Aw
X-Gm-Gg: AY/fxX6ANGkEXOcrDRVAqbP+RcSsuqXM7sjzX2gJZOEhxn1Hrx3qYjUKMFsSLNS36+p
	mlKpW7r7OD+zY5XCrFzm97eZbueF6KD4k7mlG3c4E32zAwXZRU13XfvOglQfZ4KufzYZjDFv37p
	u7GRsePJjkEeRJuoywKz69ZphQ4N/dCSgeerz2XoDdfz/KjVv3wa1iUrIzAbNMGA6M9X+JatsjI
	hE7RLiulYrx34TFzjfarGnPLDLxXjB9Bc6lM535F4C7lXmQXalzGnRSSmxEzXvlSPbnZSa39BuQ
	l0/WDWxoLrlYu9wU5ne1eiPxGYyFn/IpgvUcvMnFLAss3pchULOIQSYSlpMjiRDZRAJofY8TsDX
	po+OuJCrgi4L8/vovnfwbQx6G608KliPZjH1ZikmXLim886UXXHv5Zc0pfNQtEyJJlg==
X-Received: by 2002:a05:622a:110e:b0:4f1:ac43:8122 with SMTP id d75a77b69052e-4f4abcd2aa0mr417993601cf.1.1767182129667;
        Wed, 31 Dec 2025 03:55:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEUEj0uHQJWKcVrybQ4kVXd/G8cMAoL8phJ7s4l4QL/dkGOzS3sg17A+M/DrhwRiYE8vhnPzg==
X-Received: by 2002:a05:622a:110e:b0:4f1:ac43:8122 with SMTP id d75a77b69052e-4f4abcd2aa0mr417993341cf.1.1767182129315;
        Wed, 31 Dec 2025 03:55:29 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0b7bcsm4062214666b.49.2025.12.31.03.55.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 03:55:28 -0800 (PST)
Message-ID: <5490878e-8fe4-4493-bb57-e671ebd00318@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 12:55:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-5-pradeep.pragallapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251231101951.1026163-5-pradeep.pragallapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwNCBTYWx0ZWRfX0lGpTkmZ+aUb
 OckwfiHpPgOB0LCNZ3AsgMRmiHkK+5/6g9QZY7tdaPKfrS+tv7r0NHiRGo8B0WcYuoabgKHDVNk
 1hUslJG/XcjUC6O/guNRmZqhbfa0xGTQLDAYATw7YpDV3KxH1NkyOn/Tl8zU13mNiqj9NkIttW7
 8uZtysC0Q3Syyso9sFZvWzDOybc4XamAT1E50k6yYqtuWXwp1wN0y5i1ES5bY26MebnT0l8Qqhh
 pIkVHBXvm1EOrIAy2ioEELzytD78rm9IZCjZOTCLcExIT2AgelnghlrvqlIPobvZtBTnrdjPTxi
 9VCPLmpiSctAVOZycRfKU1BVRlntcdD8UakyQRPRg8BBOOIvpyjXSnXKqrQzPyPSeS+D0SKXPuu
 djLAwZn6hfc/Wfn5Q35ComKSixp5G+Oray34ONDGmZIu78R/3OM2Y/o+XDRZtYxNCTTA6SC40OP
 lT59sNUL/eLXRHe8AhQ==
X-Proofpoint-GUID: VZyN1dpe5d3j363hn5Sd8xYkOxkCxk6p
X-Proofpoint-ORIG-GUID: VZyN1dpe5d3j363hn5Sd8xYkOxkCxk6p
X-Authority-Analysis: v=2.4 cv=Mdxhep/f c=1 sm=1 tr=0 ts=69550f32 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=V-KO45gPXDKAuljG5boA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310104

On 12/31/25 11:19 AM, Pradeep P V K wrote:
> Enable UFS for HAMOA-IOT-EVK board.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

