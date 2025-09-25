Return-Path: <devicetree+bounces-221354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E94FB9ED6D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:59:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E3E11639F0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EB352F49E3;
	Thu, 25 Sep 2025 10:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G24+X3dk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9936522D7A5
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758797968; cv=none; b=pCDFW6XM80hXGiOqUpiHGx8ZwHqYXyVSr5qmnV5tL37qGXlmc4ZKwfYm4FW7jRz6ArvXljMOvr7RlFCwJazzGE24PmSLD2YGSj1xVl1Tc5G2FkmhhHxt90jKH/yNZ2x4JSEoultDLfYu4rAYlvEcy/kc0sREQT+zQMt10RqGcTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758797968; c=relaxed/simple;
	bh=R5x3h0495DdIrVSN5lvm9yHguCQJl5KmFHn9n/Zq1YQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k3JT8L9Z0SaCyetS0sD8zkKWdH9lD4mfa5mKf/X48vEKDkqu4+g8IiwzAD3XVje2rBGkfWEIJzVf5KSTpaukxTbJM4+uSMhycCo5Q0c8MVamCuf80eTPMO1dEFfU5fU1QaQHEZc23CC5psebXC9yGCi0tXQAOPZL9X74bmWRKRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G24+X3dk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9W4b3017434
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:59:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	thyQ4gLxv6irxf9BVNUnhB21i9mNFbZtzkVAtGKuDN8=; b=G24+X3dkpPLPETW3
	lNXQi06gBKqb7BM9awdovx+GQh5ttHiUwf0Q5RmLjs7RdkAQec7sLVMpU7zCQrfw
	n9SuNrgWJGDuQgawngH0ZXEbjKzYIMebjYJZt/E4sYlYRxj4IKIhOa3EEAAHa0LW
	oID29d8dMKPy32hZTgELHaDa62iw7KpHSqBpXuzt3ixPc/b/Ge9Y7shG9bh5WaZz
	xIKmbHjEIIbxYk5yfJR9Yg+cKY/DCArKPNSzzMb+zTUZmXlSYHhG/LAc54zBX9k0
	PTIg+zaEKDE0sqooUpIfz7DPFnVxm9qhk4vmTLd9ZZaW1KyYGtcOrcKKa1Tw8fn1
	4TB8kA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvk1586-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:59:25 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d88b669938so1759201cf.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:59:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758797964; x=1759402764;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=thyQ4gLxv6irxf9BVNUnhB21i9mNFbZtzkVAtGKuDN8=;
        b=dlBRiHz8Zev3mwTLXd2v3GTIf9K6rHNlpZE9SlPvFvhjo7nFkPV6F/Zr8f/cXfd5CD
         fMyJz6WVmJE/NQ4NG/tnyv6AmeHUu/2MrK59e7uLoxeQ0iTtbtPuIZrKXaKyM1bb1mJG
         3qeo885mwOCNKLNmmi8JEsOr2VDxSvo2iVISUQgyUvqSU3GcxVf5XHhn5nWRmpYd5GEv
         x+Um0Iz3sdUKgjG7yESs+dLrs05sKikdi/dI0YfBz2lQJB2yjlP0gixWVTee94LiRy0c
         XrbPkl7ZP0Jq5cUmCXJ73stzMDEi/MWU9xriZoftUDprB55SLQ3LijstpCGPp3r4XT99
         kePQ==
X-Forwarded-Encrypted: i=1; AJvYcCUoDi/G3urAQuwBK2d1oH5VcsE0R8L/RDuP1DF55tcpIDCSDtbnpELnzLK5pDjuANmqlb67kDfS39hH@vger.kernel.org
X-Gm-Message-State: AOJu0YwR71dZ6qCC2YovckYssBb5eLDxBuEiZNN1TKUTKpHI//00A/cs
	DDp+JYqYvPW7+11tpQVbyd+bu3a9feVFL0EU/klqczYBiB3+u0CGrDVWN16ZHuRqajKH4alpNXp
	SCJ04cwtIGAKChGe2cQriWs3OvWPj6HpVP1shPq0gWRrXWwJLfERNmKG4iBrn9tsw
X-Gm-Gg: ASbGncta4ZAcCQclZR/U34j4XO/j/aO47iIqYbc4ZWdKI+uN61Fof4+1UIEHJH2O1tr
	HrP2v9HShKzzjubMgANJtXgFZt/Kqn4Dr3eTbNMMMNbIcjcne2RaKqtt+sIct6Gsfzc4xVNlEQQ
	nR6N3+VVNsg1p4Z47e/AGOJkMMEgL90ImfNM1LW+5Ipi7HiWKRqfXjhzh+xUlHn6NNsL/xuzSzN
	KvthHb1g1LwBGl3vflcxx5pLRwBHAEdmtlyMdG9jlKTQKImORfARWp2eoSgS9k6J5fjftTb19V2
	+DVk6rBaC1Y0IFBGkCgGdCDhtMIGpzYisqAL3nbky5DYgQjqqdQP8e+yYB/BVq/23nFmCoLcXIk
	akXipL8kyu11XjBb9OmzlIA==
X-Received: by 2002:a05:622a:11c7:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4da47c0d937mr22146841cf.2.1758797964365;
        Thu, 25 Sep 2025 03:59:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUVWdEjYs2bkzwUN/xuc5Wz72tF6RLq4Ho16B1AXq/HlO2v38RaPGkkTGGDSOB2UYbs7/jDQ==
X-Received: by 2002:a05:622a:11c7:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4da47c0d937mr22146681cf.2.1758797963760;
        Thu, 25 Sep 2025 03:59:23 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b35446f7806sm146672166b.70.2025.09.25.03.59.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 03:59:23 -0700 (PDT)
Message-ID: <66a5084e-3f7a-452d-ad5b-5867528f57a5@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:59:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 23/24] arm64: dts: qcom: glymur: Add USB support
To: Abel Vesa <abel.vesa@linaro.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v2-23-8e1533a58d2d@oss.qualcomm.com>
 <dzjj344c6zlkg4rvi455xoedhd4d2kjvodi6yftv7svhvvmxbz@kwq7rkq45tms>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <dzjj344c6zlkg4rvi455xoedhd4d2kjvodi6yftv7svhvvmxbz@kwq7rkq45tms>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: TSqxiTMp3vkK917psjzjspyopEx-q0Ug
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfXzVGyuDIF1wzO
 5vcHRo2C11IdfkEXlhfk/W5BHjKZObWk2YVQjsXokr0zeB4WAm3ojHLT1MyxdZtVmSIIo3qogla
 jtNNU7s2yzTMjg8UOfS23fA6HetF7VXXgzrf47e88TJiVimu2C2cZ7Jz0Ei7l/T1HyZYjyWqTF3
 t8AVq+XZcpWgdnin/KQ+9ElzmSHz6XoHXeFsJn64FfxxGcev5x9E5DEAiwrvZsS+qj6Ma1HKc36
 NW4gJp6P1oUJ6sekdeafSvmD5AofweYiLSYGjF4B9QMSJOVG/xdzv1a2YBl7CidhyipyHNSYtoH
 aJ+rBL+tKWVETlc2EUvQKAkd7j5OW+MO+RI+oWNbksGaFDtqgWOy6spjI+74PKmJnqDudz6KPO1
 gjwdJvEo
X-Proofpoint-GUID: TSqxiTMp3vkK917psjzjspyopEx-q0Ug
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d5208d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ekqebYJK4Q4syn5Z_ywA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

On 9/25/25 12:54 PM, Abel Vesa wrote:
> On 25-09-25 11:58:29, Pankaj Patil wrote:
>> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>
>> The Glymur USB system contains 3 USB type C ports, and 1 USB multiport
>> controller.  This encompasses 5 SS USB QMP PHYs (3 combo and 2 uni) and 5
>> M31 eUSB2 PHYs.  The controllers are SNPS DWC3 based, and will use the
>> flattened DWC3 QCOM design.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---

[...]

>> +
>> +		usb_1_ss0: usb@a600000 {
> 
> This is usb_1_ss0, but then you have usb1_ss1 ? 

I'm in favor of just calling it USB0/1/2/MP/HS because that's what it is..

[...]

>> +			dr_mode = "peripheral";
>> +
>> +			status = "disabled";
> 
> So you have the glue defined above, but not the actual controller (compatible snps,dwc3) ?
> 
> I don't see how this would work.
> 
> Same for all other controllers.

good morning!

6e762f7b8edc ("dt-bindings: usb: Introduce qcom,snps-dwc3")

Konrad

