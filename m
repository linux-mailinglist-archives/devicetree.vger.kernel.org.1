Return-Path: <devicetree+bounces-230046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EE7BFF32E
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 06:59:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 528FE344B10
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 04:59:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C2602609CC;
	Thu, 23 Oct 2025 04:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iQ+U1uLq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871F7254AE4
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761195561; cv=none; b=KaHMc8+FQbUpqVt0+nShgFziv/Bk+MammSyc2FL4Yo7qNPAsOGe3g3NYun9CvFVptrDVxDrjah9NbxDSSBiWPTNEcHOjMkitZpqVNx0oyg9DNLyjLGkri7TPIgWju96Jkr+3555Hzd1sQum265iXoq164eNnKMPbwXTg4CBcpyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761195561; c=relaxed/simple;
	bh=SM9h3kuaENDN0+ivfV00f10xi80DzahDlkVNF7DAdBw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u/WDO5cYLbuGAdy0fOQJ/1tWStVn5a5TLYMrdsD4Uq5+H8CWXr2v1mGT7ghu6WpwyWp502kKBMuhQlst7qyC+fJuqR/HG0qDUDssT8AHobiLkNorYr5TizWj0jM0/9uHobGCvDOaMa8Dd9ujgOyu6g5kTPo86iQm1BMES1X94Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iQ+U1uLq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MIeqcH030315
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:59:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XQsBupsL/ZgYfSlapLK2m++RVhSfbnhRHhab9RRBi8E=; b=iQ+U1uLqYOp4Bu3s
	lJccRpzeSSbEFGG6YjQMr+6EpMj1ndegmHpI0LwFtUrfekBMj67QnC2Cxrx6Sf5P
	Zwcdh3t9u0VSQOtJ4m2X3uaRSJNTnUdITfFio2yrsFmgwpuIIxHzpaAED/sb33+V
	ehSlkH/g5RYfprMSNWkz9ay2vH4j5TjY52+2AISQgpZMeYrl1hP8HBgXcwNVKTuc
	yycoCkoYUJrYy78SBFaif0NsAfEJlcDE4XiqXugLxcigqX9iuD74uGbZauoW6GfY
	zVzQ3hDCWx7Pm1RFQxS+PfycskCOtZViHPHI/b915dJVrWtY9mJ9FyR/sIFtIZ/a
	Ry5Qbg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge714f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:59:18 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2813879844cso1067975ad.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 21:59:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761195557; x=1761800357;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XQsBupsL/ZgYfSlapLK2m++RVhSfbnhRHhab9RRBi8E=;
        b=WNqZ9U3Nxn9DqaKr5vm06PT/SoyDKwwYn99AUoetc5e4RDQybLNmXyigMwueYeE50Y
         pz1OK0xpIM2sDlrq11tzpcNZPJvzxscFUAZKxnd7vsuTs7/MQEz691rrft1j5QYvOBk6
         9GgGifWH7cETFDrXRqhcTTCXlIhQMXw4DSgBTeOV1UF7S6cb8iLV7fc1Y/iNH1zK3P/c
         ZX2a79epOnzhheXz9Q+NXOw/cswXNaB6K8UR+HYl6JAXfptGCCZP9LP7L0ha97O0hRRV
         3w3g+UNDJJI79PGZoNFi6mh6g6/xlzyDLP1/wruBu/Hz0ljXscNcETpMcZh9jXO1vcB5
         28Lw==
X-Forwarded-Encrypted: i=1; AJvYcCV0Jjud+C3hCRFRtrUebnpkNVbcBYKSDI9E/zjmEF8Zqw2Ey5sPcVWmI2YRu+GD8bG3DMZ6kmxUvySB@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb7FFTYMCx7p6UP3RIpy/mRC7SoKxgUvJoRzJxb4NmlWgRbA0e
	5L0uS+/dCNVhI+IB9Y9FjAxBlxlJETc0cQVq+v0q3ri+cxXfYT0Ts4zAJEfQ7JpwLBFm7alhaP+
	QvwI9x5F//b3bt0cvXcyYaLEzESm6UpWVIScZyFdV9jT3TM8AO3j9U3+Ne+86EsF1
X-Gm-Gg: ASbGncsFSzaNAan8RpVxCRWQ7Zy0ceAC/bEH0eE8wr3z+3S+0WdqpOFs6FfqyczOHg+
	e3d09sXkXJnHYhuLT3UvHVLNXDkWmZn9VngEBcq38+Vx0sCJCp7frQ1knY6PCuFu4+hYJfggrhD
	X8MaPU//RfCJ+yyG6YjCgBCWmhf6fAuwQgjcdEEqG4YP1h+sTj3TUB7DWojWZyiM7SiecUnSsGk
	Gk+aDujJFOQ0HBRDhQYZYa6srKaGZGAdQx/nn4SBQj/KPBMqHSaEmFUEheO6BmZWEd3OLeiboba
	G350ig1eiGBh7QePE443KLumN7E1dMbdoeP71H2afkGQr72wc6vxCWwbVjp1Id38ZdWvDQZcu5G
	oqabXjGFefA/q50kfkarAm7n6GCnSg6NGG+vs0Ujbz/xO1Dax6uNaxkYL9Ej1iFoKeLJ1PA==
X-Received: by 2002:a17:903:907:b0:26c:3c15:f780 with SMTP id d9443c01a7336-292d3fcc93amr66496685ad.8.1761195556921;
        Wed, 22 Oct 2025 21:59:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFUEUehRXXgzmp6ooEZeaoA5HTI7QxvGAGO0q2zfheB5V5ozk+j8iZVJGdKIenvQrC3QbtL8w==
X-Received: by 2002:a17:903:907:b0:26c:3c15:f780 with SMTP id d9443c01a7336-292d3fcc93amr66496355ad.8.1761195556486;
        Wed, 22 Oct 2025 21:59:16 -0700 (PDT)
Received: from [10.133.33.163] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e0f4283sm9389085ad.85.2025.10.22.21.59.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 21:59:16 -0700 (PDT)
Message-ID: <3050390c-3407-457f-b62c-7adee759a61f@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 12:59:07 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] arm64: dts: qcom: Add DisplayPort and QMP USB3DP
 PHY for SM6150
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251021-add-displayport-support-to-qcs615-devicetree-v5-0-92f0f3bf469f@oss.qualcomm.com>
 <20251021-add-displayport-support-to-qcs615-devicetree-v5-2-92f0f3bf469f@oss.qualcomm.com>
 <59592a3d-447a-4c99-8654-d3cb9b9f9a58@oss.qualcomm.com>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <59592a3d-447a-4c99-8654-d3cb9b9f9a58@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX+k9fZ27mt3ZO
 JIWddDiBle+/sOsZBC5koujS4iJuAHi/5wYFVjK2We6NSxQ/E53TyotOYwREofp6/ShI+hFPiLm
 Q0mviUwAhUVJbTG2Qjud6kcuhJLD6XC1ubZRbWliWd14xZTndbcwQt1Kj/waWwlYFMbupw56QsX
 7xzSjSCEvrCB4b7eYtQZpHinNlao5VkLCl7fDk7CqzAi9dl/1hqCFYyL2j3xEHKQcAXErUC33nZ
 uA8C/7HL98ghAPZrhildF0xHf/OgbFGHoqTcVhLdXKrJTVEj8FWE9tpze0PUQSbcEVHtei67Otr
 kp9mBmj2hkCGqI5xWU3s8cepLv0yoyFPTMzXfFvI5rcIZdLp72V6NKXUKUw6bxc8nMGeCr1FxfX
 q7hhjW22Jg2spqdsAXs1lCMApnI0bA==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f9b626 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Y0hPKdM277UiO7HlCU4A:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: -2ECMQCQ2dGtS429IAnyqQ7u24EDvIzT
X-Proofpoint-ORIG-GUID: -2ECMQCQ2dGtS429IAnyqQ7u24EDvIzT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020


On 10/22/2025 10:53 PM, Konrad Dybcio wrote:
> On 10/21/25 5:18 AM, Xiangxu Yin via B4 Relay wrote:
>> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>
>> Introduce DisplayPort controller node and associated QMP USB3-DP PHY
>> for SM6150 SoC. Add data-lanes property to the DP endpoint and update
>> clock assignments for proper DP integration.
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
> [...]
>
>> +				ports {
>> +					#address-cells = <1>;
>> +					#size-cells = <0>;
>> +
>> +					port@0 {
>> +						reg = <0>;
>> +						mdss_dp0_in: endpoint {
>> +							remote-endpoint = <&dpu_intf0_out>;
>> +						};
>> +					};
>> +
>> +					port@1 {
>> +						reg = <1>;
>> +						mdss_dp0_out: endpoint {
> Ideally there should be a \n between the last property and
> the following subnode


Ok, will update.


> other than that
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Konrad

