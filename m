Return-Path: <devicetree+bounces-173022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C606FAA743C
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 15:54:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7239A1B687C9
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 13:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5706C255F35;
	Fri,  2 May 2025 13:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XFbdDlW2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7765255E23
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 13:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746194069; cv=none; b=t6nv88MK5xPPURwDcSVaotV7FBk40OcSXsfMsL7JQwthac4c7nmrhtSpyE6K8xhvXC1sx83Kb/IJdvE1rKPSfeucN5tRE9VCt9WTqyLHi0KTMzv+/sr3Ptci6Ncby5KVaWn6w9OxvAFoOzVWcsvgfvxg80TcBSfwUfXHNH7SgDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746194069; c=relaxed/simple;
	bh=SbYvC/lGbKbVig/CuUnTBRTVK/wus5dwp1Hyif8wsEI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OCzW5tsDcJyXLxmO9ksmy0nMQnqAo0Ubq09h78KWXiwy62sYR1+zHrOUi7e76/qxyFLg/czhTkUQyM3g5syaT7abMG4epbq8FAmTozLBVtuwMbykTmZCoet/LaPWXgx0hqWJA52s/N2BUuEmfSIjhqfLYGV2f9eLTK2zC+M5NaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XFbdDlW2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 542DaL3S017587
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 13:54:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yL9EoiyJnIJjcu+Ek4UoLm4TG9MKg3HqDNyWMAzlopo=; b=XFbdDlW2SNdvnijb
	SwJirOH4EhzEbnVzh94ePCGcYcLocIt6Blc4KWIkBqpseH7PBGBoHs8VBXDA2sdQ
	4AzG67qLT2mERYPYG8VYctHIJQ7ImJ5ir98vClgJ5sE7UB+jhbeVkQykxS1tBvXa
	56YGcBqASyd5fKM3AT4wbP3UsXKWApBFVdkbiiTcypeDZdrWlY/DB2EN3dGijGPJ
	qOW2In0WlOzw9IwwitrSlU4KSvkEzj3fuDRqG/evdbkATXC7IeIMko+3MYd6Kqb/
	d4qWpfjzy8ZVfUZmwAFwnZP5xQ0cu1xNeBXccBevlGhpCBoRpGiSk2bOhCM5VLuW
	ErD+aw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u78gdp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 13:54:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5ad42d6bcso48822985a.2
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 06:54:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746194065; x=1746798865;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yL9EoiyJnIJjcu+Ek4UoLm4TG9MKg3HqDNyWMAzlopo=;
        b=ZmpfmY8bPmDXpoEPb2KxtiQJUWtaQ5yxAXl0XGyHA8z6iOigDOf4XNMjvGM5d6FgIj
         aiSuYVsXVu14P1U/9FKtvLLDNjjtRXctOZdVnpyzI2SHQtCj40XH4afOhrGpeNOGJY9A
         d5jP+cqyCtu9aq1HdXxmgvvGNUWLz0jDRmT+5qpsZNcfgpX5weE+1LaUQJQ7+LHg53QI
         4YOBRNcVjIg7xTQ8rTCnwht+/VApmq5l4fKHTxFoztZzlOt8CdHuuU5dBFuhT9D+k8eR
         uN+rZ7lbcVFqWmBiDmHBHFwl9mCl6LPmAtF8P1qFFJsEuweAk9GLQddqD+Hws2SKHpr5
         LTcw==
X-Forwarded-Encrypted: i=1; AJvYcCVhlMnUIaI5ZMqwqSP+7//cOGkW2cZcmHxvtMl6npy8oY7MtPeUEouCOAZ7kWE0yqZ8EvUQCAd8kc7N@vger.kernel.org
X-Gm-Message-State: AOJu0YyeoERlnMwOFdPJf1KmXMaGcJro1cLAquWrzHt7gvM90ggdJPvn
	SWfy5N0/mlhV+w02AaxE1IhcQpEp4wAilAbdVSu5GWwIarRrLCrVfe9Lxws9vkI1wDxsxe9EP6Y
	i9qhHAcNj0dZ62c2gKMjUmLEPGIhYTsf5XcBdEEdAYu2yZWU7w2qAy+4YngvP
X-Gm-Gg: ASbGncsAuWvrmKveo/7GQPekcII0uy8d5bgLIk0TdikfrjjklmZo9L8ozl0l7CKyB3r
	YlYvvwWtMu41p9uGpzIiwfTHg4h/yHgCdYVIGB8dR01WzMsEqjgmkdqRh4YOd3Irt9IGREfjvJ7
	ZBQ/oOSnLabJqGVo+Vs7KWUc5h3p8w1cldz0AP2eJ7YUaT2yUXxZkkPF6qzfmXRjOv22VQuKMpW
	bUglWJ5VvA07ZhcPp8bU5LMfkTLoWUFfq2NJzw+7L1VaFwfhuxMHxt9QZxUF1ABiVaKGzrhCCIR
	JwcFQpnf+AhWL9+WnRN80vVTuPXpepDRXQtZZQGxsq/2gq8RRwC4+YckXQWhQ0Ba7D0=
X-Received: by 2002:a05:620a:4447:b0:7c3:d752:f256 with SMTP id af79cd13be357-7cad5b4f0f8mr152977985a.7.1746194065728;
        Fri, 02 May 2025 06:54:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwqDIQDynRQ/WTGlGryiob37MpltRCrA//d1qVHrqR2ToFyr62qtJV46XmvMEp/ixzQsjp0w==
X-Received: by 2002:a05:620a:4447:b0:7c3:d752:f256 with SMTP id af79cd13be357-7cad5b4f0f8mr152974685a.7.1746194065289;
        Fri, 02 May 2025 06:54:25 -0700 (PDT)
Received: from [192.168.65.113] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fa777c8b1dsm1262238a12.18.2025.05.02.06.54.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 06:54:23 -0700 (PDT)
Message-ID: <afd7c1c7-dade-4343-8e2f-1eea0e403c9c@oss.qualcomm.com>
Date: Fri, 2 May 2025 15:54:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/23] media: iris: Prevent HFI queue writes when core
 is in deinit state
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil
 <hverkuil@xs4all.nl>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        20250417-topic-sm8x50-iris-v10-v7-0-f020cb1d0e98@linaro.org,
        20250424-qcs8300_iris-v5-0-f118f505c300@quicinc.com,
        stable@vger.kernel.org
References: <20250502-qcom-iris-hevc-vp9-v3-0-552158a10a7d@quicinc.com>
 <20250502-qcom-iris-hevc-vp9-v3-5-552158a10a7d@quicinc.com>
 <250cdec3-1437-4c45-aab1-0428218b9437@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <250cdec3-1437-4c45-aab1-0428218b9437@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDExMCBTYWx0ZWRfX3MbD1uq7cDU/ Fl6xVaLNdO+QlGn37wAUeLUoIzEWUNoVtndIjLkJD5rGSnDeZ6lOoNItPnAcNAJhsV0Tp5bCg4l yq9zkE9pbHlQhWcv7Heq646I0LE4+hzH6fU9hKcozXgnoiXv7TJ3LJ/UgwyE5gp0lFmAVEeYVwK
 v1CT3eps7epGSOTnjOD2zZU011Dx6vok9hLsBqWINoRigsbSmLxQTDnjNsKr8txPGeHYN0S5uye 7Ymodm1vd/LKn/Y3k16FULQ7dT8BJFvHJujoLKeLiEM4IpyGeus320GGBeZCHNBSXtR8gS5ctrz 7a4fB2Eng7ZH7rL8DfbGdSlxGjayfts589TggHCGdGrEKMW9O+T6jBKz650baM2ZCLV//VcEKYy
 TRlfTbY55K5yDJHS5Mcvw1GT1QKhUMI7Gn61Ycqd5sKUCOFnMvpPwAgkfk/xOZpSkYyMJnDG
X-Proofpoint-GUID: fRfirZe-cFzm5D26pXc36vDbVeKyAlW9
X-Proofpoint-ORIG-GUID: fRfirZe-cFzm5D26pXc36vDbVeKyAlW9
X-Authority-Analysis: v=2.4 cv=b6Wy4sGx c=1 sm=1 tr=0 ts=6814ce93 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=AWkmbyHJa9485OIXA2sA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_02,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 impostorscore=0 bulkscore=0 phishscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 adultscore=0 suspectscore=0 mlxscore=0
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020110

On 5/2/25 2:22 PM, Bryan O'Donoghue wrote:
> On 01/05/2025 20:13, Dikshita Agarwal wrote:
>> -    if (core->state == IRIS_CORE_ERROR)
>> +    if (core->state == IRIS_CORE_ERROR || core->state == IRIS_CORE_DEINIT)
>>           return -EINVAL;
> 
> Instead of checking for 2/3 of the states why not just check for the 1/3 ?
> 
> enum iris_core_state {
>         IRIS_CORE_DEINIT,
>         IRIS_CORE_INIT,
>         IRIS_CORE_ERROR,
> };
> 
> if (core->state != IRIS_CORE_INIT)
>     return -EINVAL;
> 
> Cleaner and more explicit - declaring the state you must be in, as opposed to a list of states you should not be in.

Being explicit in state machines helps maintainability - if we get
e.g. IRIS_CORE_LIGHT_SLEEP down the line, this could easily fail

Konrad

