Return-Path: <devicetree+bounces-246780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F76DCBFDA5
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:55:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB77930285BA
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 20:52:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 283EB327BFC;
	Mon, 15 Dec 2025 20:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hihu+lLv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z5UPjn8X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4404E29B78F
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765831978; cv=none; b=sYWYjwZAchSb7Ygo+iys1NDSLFqKHz/sW7kO/Wt8w8c6q1sXv1CotfrbwJ3J/xkdrcGtzBkIUpTgMs8XG6XuonF/3jt2G3gCBFUTHtUT8aTrWzF3r2fAfZeK/fga/O7GsIsGcBR5Eg3PmyJAWQDBDdCneuMxECjrg0ZjvQnwtlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765831978; c=relaxed/simple;
	bh=tfRbP9KdmajMxqSGV91GQuzl+CkXtKAq7RGQnW0IhsA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xk5AeYPtQrG/Tre2XrnDmjWuPyijSeKSPWW6RT0jp11m0aJca3NTSRCRJ2YQDjnpWqaJ7f9j+jzbf/X9yfyWWhvLLIrvTJ/7JFgBxE4swa9f/dNy3DMreMzcNMONTEpYNg+7AzqrbHLcVLiNzDbaUkO1mn3n6mEnE5wh0H+wvjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hihu+lLv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z5UPjn8X; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFDsWQh175746
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:52:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2R38lttiEq6WU86Iby7CyCZn
	2ezRdPQ5ExKfjyNco0A=; b=hihu+lLv8zB4AOQgiA3+OP3NWv+X+X1wbr0BbVdC
	gLXE6hEDGOY2dk0frLcirUJ1kBE46UNIzF/dsor4YHLc7d/VZRo1TCttS1E9rJXV
	yiGGoCOBWSHx5rop+jqpZCWB/TZi5PTyMKIaDiTygkv4nEU2zIBXkbzHCqAqgJ99
	6bbS//Tj0El+GjxtmsQtyuLoxzl89VaxQ8F9OhGb4xmsAt2IzxJFDV6hGX0I7ON9
	bP4Zk03yDhOOrpNx+h5xnO8zuWqEnInR+W0sCuUBj2z/XyuRxnrczxXjDwfo77q6
	v5uDvZxJWlkvIVXPwDzgazVzOOvN9jbbJ251KFr5vzsf/Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2kmm17jx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:52:54 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed74ab4172so85763201cf.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 12:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765831974; x=1766436774; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2R38lttiEq6WU86Iby7CyCZn2ezRdPQ5ExKfjyNco0A=;
        b=Z5UPjn8XCmOnCchBuT73KvbjRIOK2qhZyTi2uk43g0NcmH5NYHHmOnMuMfNRJFWjFL
         qKy73sJgChuudU6Mq/2pVIlEoRygyteSkuo0DEPB4wV7Oo7wHiAbyhbNTqCZerf8cZsx
         Z5PrUURi0tQIYwgCANbn85xjUqginOeFCc8zd+IOxEMJBDuVJZ/O+jhzg3+yr/36FK9u
         izTL7S1HVQKr5cBSvzXaB241yqANWurhuzcjN4GHB88LPBb3EbVSsQ2JBpi4vN+tXKXT
         pBVSeOOlAgOy9iDYpjuogmbx7Anp4MmqAKLLXJZqVtWzWVvmWxRmu3dXXUDIKMEyisV+
         EKZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765831974; x=1766436774;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2R38lttiEq6WU86Iby7CyCZn2ezRdPQ5ExKfjyNco0A=;
        b=jIumwkeRf1CkkZMWsNl0vdEhOwFItn6ALzLPtTtZ8CncPqutKautDW1aYCXIzWkD79
         sK7fyESQ4AHIFE8UCSVVmnAbZikCGTwl4OIh7As1zNOKpWKclk6+m5sSdK/nnuMCqney
         9qxEPwi4Oo1gamu0nWztzDANzWtQf+RnlyOG7iG/WOH6HMteX8dx5QNHEoqp5HPtKLst
         2clYcAKg+QgVMmXMXjzHjLzj4ntUisM2jcuEr88b6Txx9aqrj84FhX2PDkwT1hBBInjN
         ssmvSoDYZBae/Tuvehyf6zBbUYAVBmtOswjQDuvb+SUap5vhodNBPYYtdQx8giECELyY
         r/Pw==
X-Forwarded-Encrypted: i=1; AJvYcCWGFtWlfxzePfHXxL49/HOp3upIercERrKiNrphIJO265na6JDlgn0EtvXbJPUw0Dhh/AiOmhyb70So@vger.kernel.org
X-Gm-Message-State: AOJu0YytIWk8BvyMeEUxyRug3G78X8YfkmJNn5A3DqJKPvQdetORhtn/
	jgxs8iwvFerXbpljepq5sSGWrIwOngBr80YnaBzFUmLX5ARyM2RBrkc2EoCb9TTQBvp1rVV/P4q
	YU2GEdwCLNe0ybVJqP1jRCR5RP5tfsPE0z9T6/9L9Ht2A1d4ZGATmN3dMqIFhP4K/
X-Gm-Gg: AY/fxX5t45pEcCrZVUfGAq8xGPIHkZtYyLJNJBztwFweUGTkHeqDplCO1dKwJVGWv1L
	mnQd9SiqFo5xyagl1iUqgn5ib+0z/cfKV+cRvLS7Ha933lg8EAasB8j0+W9YfNx1zASErA5NE00
	AzjzoCmkWzIu+aNTMJtY9qQL9QEfY3f4xcNhlQr2UWgSmv5Kn0cwan7LyUIFNFhf5jtcGlD3/Ln
	rw60ZMMsMzWxdw7jOrC6861soviUurlqPn/YULEW+nlB89KkmwYGfz02ham+VKiA788E04C8WmS
	TPldW66xd3fHr1LTdnZSl6OUte5Vx1+2mgE+kfdHBHS/BdHwQHIP/9s2kJ5QeIDyYZeK5F7Tlgo
	ri1THaf1+SZmnZeMj44ntT99O0pKQdF2RkzW2XYFM9LEfZCgSICYTP4Wov2OhuTej1Ax8/6V1G7
	1EXNY/m16xPkWvOhzVPQ5sVaM=
X-Received: by 2002:a05:622a:98b:b0:4f1:c64f:6b3b with SMTP id d75a77b69052e-4f1d0461bbdmr201676481cf.5.1765831973789;
        Mon, 15 Dec 2025 12:52:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEyAwCSrdmwwmYw+lHInHGkKPBa8kPA/9zj3rTu1YccRvKu4EOLr+mYMaxI65tqF6ZDppxwCA==
X-Received: by 2002:a05:622a:98b:b0:4f1:c64f:6b3b with SMTP id d75a77b69052e-4f1d0461bbdmr201676171cf.5.1765831973350;
        Mon, 15 Dec 2025 12:52:53 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5990da78a57sm131947e87.89.2025.12.15.12.52.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 12:52:52 -0800 (PST)
Date: Mon, 15 Dec 2025 22:52:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: george.moussalem@outlook.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org,
        Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
Subject: Re: [PATCH v7 8/8] arm64: dts: qcom: ipq9574: add nodes to bring up
 q6
Message-ID: <ht6otf3vw6buqetas7yvu7hem4cirkrzmavhtunkimnmuzg726@s4p3vmxpwu5j>
References: <20251215-ipq5018-wifi-v7-0-ec4adba941b5@outlook.com>
 <20251215-ipq5018-wifi-v7-8-ec4adba941b5@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215-ipq5018-wifi-v7-8-ec4adba941b5@outlook.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDE4MCBTYWx0ZWRfX3DB5xvICp/tD
 jLomm4/fc5tyz/Cadsgyn0/R2STNO3rrH68aiozN3BcqmrtGGQy4VZiA1PK5TypWIRmkxczpanD
 rekSBQ+eczKnTOziFnfE6cT9KmMNqXW7wyjWblYemDOaoCGwcrhvFjMX8ld5DfYCQa8aiziedP/
 ZhgHqwtKoBewvojfllFXLc+vdk2lR6am/BRYTRusmGA6VaMtJDKr+BinfpDNPdA3M0oXkjtb5In
 8h5kgvt+Tn0XZDkG8cUWD+pRaGX/K8p1GAS+3XlW9Wc3eVu6tQB5Yk4FaM3UE/Ob0yTRL6eZ680
 K7Om4LZgYaQkSKVX+KOYnOTrPKJNlFLYqx/nS3nRApfsNZD5fwXBh5HcScA9gD8NpNzqc/58uGY
 yEoVDYixg9moImETnCoXnG3acuoXXw==
X-Proofpoint-GUID: -OnAk7yInIPcESOei6yRHod5PSXjWKkf
X-Proofpoint-ORIG-GUID: -OnAk7yInIPcESOei6yRHod5PSXjWKkf
X-Authority-Analysis: v=2.4 cv=EcTFgfmC c=1 sm=1 tr=0 ts=69407526 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=UqCG9HQmAAAA:8 a=Dcr1xSJHMHOmOGMBEB8A:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_05,2025-12-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 suspectscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150180

On Mon, Dec 15, 2025 at 10:35:13AM +0400, George Moussalem via B4 Relay wrote:
> From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> 
> Enable nodes required for q6 remoteproc bring up.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 60 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 59 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

