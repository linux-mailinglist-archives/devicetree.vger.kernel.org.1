Return-Path: <devicetree+bounces-218722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D505FB8379F
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 10:11:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 78EF44E3072
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 08:11:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F20F2EFD8C;
	Thu, 18 Sep 2025 08:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TNG14Fln"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB8C2ED853
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 08:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758182967; cv=none; b=qfGFF/mzA9od92eANjh/kb8fjNTsgUcwxVBsHQXs6Ypk8JyqPGdJTsBdENNXw/QQ+lIMHlqo8czHSqdXWBFlPEPu2Imwmz7jNvpYgQBxGXuTzyBsIXfvjgy5a3j5uLM+pO0oIQX98D0yFJ4hoxrUM9/SXCNozxqfhRdHGtwmJ3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758182967; c=relaxed/simple;
	bh=bNRSsVjHraTSifvRPC86WNSgH9qdAgtHsEY2HL8mCSE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rp0f3Sv/Z+uVQZxsY7EaH0tNcON/Lp4p2MNcHaIutHiNQPsJDIcEHOAH8WL18xQklkGzA7JJTf9+RdyQYw7Y/FBKJ5rbrKpvZe19+SIpjcnWQRBIn3l588yqafd2jpZzlvx+Sq5Fkf5ctcvAHA8haGdOR8lVZnNnUPZnnS6VqZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TNG14Fln; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I3ZRwf018260
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 08:09:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aJA7VAffYY4Y1JcP7y8dr3RF6SvDCYE2JBAiVTScq8s=; b=TNG14FlneGPjGZIk
	rU1SOrJfefZxLUAGSYR4v2EUICihsjWgtgRq2182wSyl47USJ6hjveBTdaX6pnn+
	bPGaBl25BHoc99wkkkqf3ZjvCumoDMf5JuzTg/AsRJvQ2oj/zNGxLkMR2FpqVzD1
	7SYgiNXfOcoeefrEFT6Sr8pwvbkOkD+0DouaEPckVl+yUqZPKHnroEAU4s5rMowp
	12EKJska/lmDEm0uCvEoiRIBJHY1gX/ebd1tth1n49PWFywSQI+DcLSNDpj65w7P
	k0TqzdyOAXGW8pdE9OFmkp9+bAgvSZY0v+TVXqBM3kT8cW9vcdDohRxgYaMudxgC
	X0tvKA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxwdfk4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 08:09:25 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70dca587837so1977506d6.3
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 01:09:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758182964; x=1758787764;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aJA7VAffYY4Y1JcP7y8dr3RF6SvDCYE2JBAiVTScq8s=;
        b=KF6qrAl5i1NjgAnX72bUPhDWYYmhQklNpyPbjWxsRkwlZaNIVL2Qhum5+MO7JZdHeU
         6Xgqt95Tng0wcOGazjpNDZM3uZpdjHmqhX8iKfHoXpRkze8J0brHQ3TefblwySYoMrMh
         24Y88xPqfP4/rgP/6oYnX2X6w43rKTb1d9gMOCrk0qZHwanHSmtBY9VbKQvGMHHAL/ak
         JgxchHLUdxhNWSOdLFKT80dspi08cwHTwB2//8mCUtzkbaQvChjEAtr2Zken5K0rpXs/
         2d5+tL/OhCQSKY8eMhRAD9O0XLL8sD4g8hJORZkwLBGARvveywTxbeykw91RydOr7JSZ
         HGsA==
X-Forwarded-Encrypted: i=1; AJvYcCXuhIB/qu4eVoKnd1LSMwZ5nAQn2xc8tGELI9LVUY/7ULSQPt5s4ywWxLHBvY8f9Sa/tY2AprnpDIJx@vger.kernel.org
X-Gm-Message-State: AOJu0YzEdDNeTgljS/uy68Q+YKn6aAvhkewiOPVrmgosHqH8hwV0/ZvP
	WSxVi2uifp/9JDrF5IPMdKgEbICk0bfLwmQVvLSqvfx6RAfdrNdrwSAzAnuZYUaIYebeRWRLJ1T
	W2Oi4cZHNEKCoUK4sj4MR/nUSmkxILIDUqS1mz2cq45fcEDFnRu3T5wbXjg8mJY5R
X-Gm-Gg: ASbGncsD4ighELcVuZJlsj3TSmeump9gYke3Kk7bXs3sLAWt64dlbhDYv1S1vwEVw2j
	h1jsxWUQmjkhJOOUoRfM2qwzWlBFvUjHkqDgA1Im3cqTDCwqZWMCbxT3Ntoty+oGPMrMWeIw0J5
	jEYEMYXP2tWjRPU3EZcDjFS/E3NJLMIF9BxfhemGytgCwRh8Guf/U981vYwfE5VWWAGPQAjXgco
	pg0QoOqbYzKluNu+z36uty79vIvDdxY1Orqto3+b/ZywWty2R5Jx0B0URH0oP4+yerwYj3SHcEz
	gaHwOn4K5sgHbjhLci6CPtF0ErLTpY+jA7snFl2TCtMzDGPwnAkY+TSqgoEXha+15lrGEBTzqsU
	iVgDnxaiHThL4QM+/a9CA4w==
X-Received: by 2002:a05:620a:4686:b0:82b:3e9d:cb4a with SMTP id af79cd13be357-83108b6a5e2mr366846785a.6.1758182963572;
        Thu, 18 Sep 2025 01:09:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4IK/Hv/LU0FDqkoYUbi5kVpSfI5NaF9URUEdirRjUipWlQyY+BY7AigUdhaAwEFPtoF+gSQ==
X-Received: by 2002:a05:620a:4686:b0:82b:3e9d:cb4a with SMTP id af79cd13be357-83108b6a5e2mr366844685a.6.1758182962991;
        Thu, 18 Sep 2025 01:09:22 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fc73ba1e8sm140635166b.31.2025.09.18.01.09.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 01:09:22 -0700 (PDT)
Message-ID: <c94f8c86-625a-4c88-be9b-b29ddb28aec1@oss.qualcomm.com>
Date: Thu, 18 Sep 2025 10:09:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qrb2210-rb1: Add PM8008 node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        krzk+dt@kernel.org
References: <20250917163534.832523-1-loic.poulain@oss.qualcomm.com>
 <a3fkaue7vbh36gtvofkuucop23spupytjwtsuh4yq6k2rznf4o@fyfw6mi6lqol>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a3fkaue7vbh36gtvofkuucop23spupytjwtsuh4yq6k2rznf4o@fyfw6mi6lqol>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=HbIUTjE8 c=1 sm=1 tr=0 ts=68cbbe35 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=yc5wwUi0_VSKho11VZ4A:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX8dn0qntf4ZRf
 kdUMngoZjGL6lKIRHB0oK2rceABwbXcnZUFoQlyrnM3lAAXS7Q1NPoBmSeURlxYm2ajOe+YQLK3
 kkfwL53n3a1bL3IPpVQenAORd4cNa+1wh0tFfHdGHFmS2i3kvfzGwEQ496FhovD7CVIKO1N2/dJ
 +r4K+6H23BXyrADIyU0awEu2g7FxhtVxDrDm7CjIOyM+o8jps6KODZxHy0hH4zvQVJ1eTyM5Xl0
 7zsQXNaKZZ8SoID2WONQizd3As93vaieGk1Dl0Y1AhMB8goDOC5V0R/Wgu+7WyNFBG04sHWlnXV
 7snUYQ8cdj6Z0/DzAmpfostDfIfhboIduz0K0xf8TfYXzMrRTAgou5OdZNWj5Fqa446umRHiWmX
 94/swbkS
X-Proofpoint-GUID: N0K64nkJFrzD7JBtxrvShXuYH9GfYYEi
X-Proofpoint-ORIG-GUID: N0K64nkJFrzD7JBtxrvShXuYH9GfYYEi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On 9/18/25 2:42 AM, Dmitry Baryshkov wrote:
> On Wed, Sep 17, 2025 at 06:35:33PM +0200, Loic Poulain wrote:
>> The PM8008 device is a dedicated camera PMIC integrating all the necessary
>> camera power management features.
> 
> 
> According to qcom_socinfo it's not present on my RB1 board. Are you sure
> that it's a part of the main board and not of the mezzanine?

I don't think socinfo is going to be aware of I2C PMICs

(except maybe cases where they're the PMIC_A/B.. and critical
for operation, like on certain IPQ SKUs)

Konrad

