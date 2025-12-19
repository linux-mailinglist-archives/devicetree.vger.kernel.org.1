Return-Path: <devicetree+bounces-248032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B30CCE31B
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 02:52:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D3C5305D438
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 01:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D1CF246766;
	Fri, 19 Dec 2025 01:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kXewOona";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c+AhjCe4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45CE1DDC2B
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 01:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766109031; cv=none; b=K6ITwEPv99+il0YyM9E6E1XR9j8VdgQvrcvyM2bk4YQiMULtV88iztTqUn0kWPI6kdEsjQolTbkDZTJjZkL4t7LH6Bv6OYg/ffOWzfjPRDguybUpm3VAbFcMeVEcM793nFk+rg4h/nPEfsBWDz3counu+eanxiGjvKqnYHn3LPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766109031; c=relaxed/simple;
	bh=MNAphZ9trmx3sx5L/qPBZYe+qprYs1ZjhbXycfXJC38=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Bqg7V31E2AwwtTHNEwpB76QUxCPTW+zv2eP3kTINHoch225NBGnWy7aN5C4EQCn8NYi4vgeRLhxMYJAtwE/AlHTGCzMpPDNe9l5mm4DnZTpTS8lrJhdDnea1YQCqOOghtc15B3ZaJu8Dn/luAOxYdE7JMgcAU9/5jHfKR/aVIwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kXewOona; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c+AhjCe4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BILlTlJ3290750
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 01:50:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0HQgQjmle1DtbIymifpD7qH0zWYdMBbbPWC8FYwX124=; b=kXewOonaKO6yCrcr
	7gAhuwJrSPaEY5iHJXkG1uxEPquBbWWxtXF1+UhF2Wx/EBq5wabqNgiw7maTMruA
	TAqp9mmjgRNaZ9J/NK+B6wwxKBfLUAodVtRUalwmatBoEuicSF4X4+NPHs9H2Xc2
	ksJDPZmPxQDibhHMorJqREK8aXJTjsvAp/fm2oSks17O0bAr6mrsiVT7HgYTtE+J
	2oXCiYohCH97MlJ2PXDcY16rcpUR7AomtTZih1+Lq0IrLsDo3f5QsDt3NRrcUM8G
	altotbF/7UEkUBdIuqHBYXO6FDwUSJsawsGgtKtQn8jAwtcLxM/8JYvGFvyM4BgR
	u/RvEA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2drt1m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 01:50:28 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b9ef46df43so1653101b3a.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 17:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766109027; x=1766713827; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0HQgQjmle1DtbIymifpD7qH0zWYdMBbbPWC8FYwX124=;
        b=c+AhjCe4D0FWE9ZfPDXLESGT244G7JiffLM2CniikYnMRxaUQ4iw1o4voY8Wiaa7GH
         96mY19/T1HEjntBPMOf0OngAJ+0PDf7q/Aj+Kbw5oJvoJ9bc6ewQfIbfGtG/Z77eXvyC
         VvnEEDAsoi1pdUqEsv0hknPDCgZOxCRT92pYyHZ2r3u0JwJi/4dH/Da2wnIVIuUD4+Da
         rnnXBzr1KUO6/QUNOT2i7iJrM31aseybJf98WW9SgZDLhcqZ3FkfP+Zux/MuEJUhvRRO
         PScnPv7sKhvYLCK7Hco+imw1PKepg4szIP32q0CG/A8IwrvX9+G88hau31anzc9R8J/m
         J6sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766109027; x=1766713827;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0HQgQjmle1DtbIymifpD7qH0zWYdMBbbPWC8FYwX124=;
        b=rYT509/4UW4IB6hysqt+K7IlWfvA/JuqwRq+tIZHUYcjabXNdCjc1RUVbMA0MAOKlG
         Bu3GaguNiCCj87mBUlCHlmjkVRKKOcQS6SNv2z7ykuJeR2hMc/sxazUesoU61TG4pj0x
         ud0IdaZYp5NKYk2B9d0lV5JjCtJFK876+ijHAKSrPbT7ak9VQeQiZwTnT88tadO7mETO
         NDQIrcRgZsdoR5q0GfCAyI/n0SNcuhjDGS8tILcNgRcTeipVIPnHFm2hptJgzZEqnOV9
         ZrzhvdQul5GVPHfxvDpy/9OyjP2qDOqRL91l0xMp6aSgP6K2rJ6Wz54Hc2RUW85/Oid3
         RCsA==
X-Forwarded-Encrypted: i=1; AJvYcCUbf8nVx4FXWdS2W/eZ6Ef1DjYMIGDqyyDwpoqb23OjGiHmqiduSVD1u5nhiYJQnZYDJdsKf4LIJH6T@vger.kernel.org
X-Gm-Message-State: AOJu0YypNiQe5pu6RlAOLhFdcUuVOwak7hOp9cY9QNU7D9+85SB3DrEs
	N1k0lzF9/wLElCs6furOJJCw0zxpqNcvV1uNUBPq9sKQZSj+L19Fw8VI36cUmYnEdGMtASIl+mI
	mdB+6rvKOIz942Kp9VNXbROLdd7CA5NQNKonKrP9W+RfZIGTE8U6rS3ASd/cbfP56
X-Gm-Gg: AY/fxX5KrAmf4xC8NY8eOVbsljUq7JlEZoL+djrv7UWMPyJm9rn2UKPLkLhWBHh+UAj
	RjLzEmwr8GoD3fhPJtzNebcUonQqs5YLGDZgiEcMGUfApVPB1ZsZ9zebZeATWOfOCe9Cmlj6Nxz
	LAJJcnMZnRT0CmYIQrHgI/myc0kHG7Mkx0vNvJFd439BOKj3uHZr9AYSCtTcfRNA+HfB0PmOUpJ
	HxtMuKb575Lmr6kX6bAiml9UTd9I2FbEp7RPfYdTO5B+n8NBt8u4uAiPvvn0m4o4aBLHuIeFny6
	LfIhe4vVNxGpP2tTzK4T1brkPOMKWJUpwxIobUhqdCsDIpR1pwoGmYihS7WE7rtj77xO/AOrGyA
	CcsdGE/w+UbQ0adCfXSV82Tb7nmoC0di3yZaScDC1QB2Ldb7suMUn1lJ90cBf5jjB9Oa7gW9vNF
	yPjLOahY6m
X-Received: by 2002:aa7:9301:0:b0:7e8:4587:e8b5 with SMTP id d2e1a72fcca58-7ff65f78aacmr1242194b3a.40.1766109027221;
        Thu, 18 Dec 2025 17:50:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH97khf7iYUM3NJRGaT7+S3mpVjpomkGCij9OOBYjEiHynxY+nzs5snhowicWJSLEzj+HtI2w==
X-Received: by 2002:aa7:9301:0:b0:7e8:4587:e8b5 with SMTP id d2e1a72fcca58-7ff65f78aacmr1242162b3a.40.1766109026671;
        Thu, 18 Dec 2025 17:50:26 -0800 (PST)
Received: from [10.133.33.101] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e0a19besm568706b3a.40.2025.12.18.17.50.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 17:50:26 -0800 (PST)
Message-ID: <927f15d5-da2a-4282-b80f-c1c7563a4367@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 09:50:18 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/12] coresight: Add CPU cluster funnel/replicator/tmc
 support
To: Leo Yan <leo.yan@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, kernel@oss.qualcomm.com,
        coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, maulik.shah@oss.qualcomm.com,
        Jie Gan <jie.gan@oss.qualcomm.com>
References: <20251218-cpu_cluster_component_pm-v2-0-2335a6ae62a0@oss.qualcomm.com>
 <20251218104027.GA1790402@e132581.arm.com>
Content-Language: en-US
From: yuanfang zhang <yuanfang.zhang@oss.qualcomm.com>
In-Reply-To: <20251218104027.GA1790402@e132581.arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: QSQ_vz_yWWx5nB02-I32HuB9kOq5464Y
X-Authority-Analysis: v=2.4 cv=A7ph/qWG c=1 sm=1 tr=0 ts=6944af64 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=CT3mT5stn3mpJVhV_EcA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: QSQ_vz_yWWx5nB02-I32HuB9kOq5464Y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDAxMyBTYWx0ZWRfXyk4vxFjQ7eWK
 Ix7Hl7PVcL7uuze2nyQAV1r1P2A5i5jYDj6Bd+iVzNRJgwr0y+AIlU7vU4TKgxaE6ierImpcgyR
 71LW2qGH1ojy+mR3ociBkRwUaj2oSmWWhVxcsuK//TlesyDSxKdEl7NVMNQEsLMPj5qmNh4xUz0
 rfAciGT0mu77t4WJbfvnU9arLriJlB+ymFqMUH8rB1OhhaXMQi+VEducA9k8t0CdIxMfFFqROOw
 gdrWEwIBSLtz67arQu5770j7MLUBkCmft0efrJNj033UkkNBdb/yoFWyV6unGhXSPe5r3G8qyyz
 EXyQuF4kD6hqagcsmc6sGD5iAHff1mq1esV+67uVsTTNiLrYiODiZN3m9GY7Dk0jdffkEJg6BQq
 Oq9UMYrSUUF/CydiZx+6yPI/YBJ+tFKfTAmnLReNa4F36JDCiLPN0FkzxG+lD+3d11HMatnU808
 pEQhilrJhS3bq8cpAjw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0 spamscore=0
 phishscore=0 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190013



On 12/18/2025 6:40 PM, Leo Yan wrote:
> Hi,
> 
> On Thu, Dec 18, 2025 at 12:09:40AM -0800, Coresight ML wrote:
> 
> [...]
> 
>> - Utilizing `smp_call_function_single()` to ensure register accesses
>>   (initialization, enablement, sysfs reads) are always executed on a
>>   powered CPU within the target cluster.
> 
> This is concerned as Mike suggested earlier.
> 
> Let me convert to a common question: how does the Linux kernel manage
> a power domain shared by multiple hardware modules?
> 
> A general solution is to bind a power domain (let's say PD1) to both
> module A (MOD_A) and module B (MOD_B).  Each time before accessing MOD_A
> or MOD_B, PD1 must be powered on first via the pm_runtime APIs, with
> its refcount increased accordingly.
> 
> My understanding is the problem in your case is that the driver fails to
> create a relationship between the funnel/replicator modules and the
> cluster power domain.  Instead, you are trying to use the CPUs in the
> same cluster as a delegate for power operations - when you want to
> access MOD_B, your wake up MOD_A which sharing the same power domain,
> only to turn on the PD_A in order to access MOD_B.
> 
> Have you discussed with the firmware and hardware engineers whether it
> is feasible to provide explicit power and clock control interfaces for
> the funnel and replicator modules?  I can imagine the cluster power
> domain's design might differ from other device power domains, but
> should not the hardware provide a sane design that allows software to
> control power for the access logic within it?
> 

It is due to the particular characteristics of the CPU cluster power domain.
Runtime PM for CPU devices works little different, it is mostly used to manage hierarchical
CPU topology (PSCI OSI mode) to talk with genpd framework to manage the last CPU handling in
cluster.
It doesn’t really send IPI to wakeup CPU device (It don’t have .power_on/.power_off) callback
implemented which gets invoked from .runtime_resume callback. This behavior is aligned with
the upstream Kernel.


> General speaking, using smp_call_function_single() makes sense if only
> when accessing logics within the CPU boundary.
> 
> P.s., currently you can use "taskset" as a temporary solution without
> any code change, something like:
> 
>   taskset -c 0 echo 1 > /sys/bus/coresight/devices/etm0/enable_source


This can address the runtime issue, but it does not resolve the problem during the probe phase.

thanks,
Yuanfang> 
> Thanks,
> Leo


