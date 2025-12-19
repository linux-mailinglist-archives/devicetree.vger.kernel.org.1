Return-Path: <devicetree+bounces-248037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC54CCE3F4
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 03:14:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 81A0030336B9
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 02:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20D4F22F77B;
	Fri, 19 Dec 2025 02:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N3raqkUu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QqEacUs/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FFC22AD37
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 02:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766110404; cv=none; b=lBI3Qc64vNHN1+56JFNcjQjyttdlKEmc4qhOlf3OT8DM2XW/Iu5B9zjjUG59mAKbCjjrj43ylIr0g9oTDI1tqfzvsHkBe6odzHEpe4gLrPiJf8beUi6vrR9FfSlyHL449pzg0EfkMC72HMW49wCbDAanQvyJB7DQL25xSkxmB+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766110404; c=relaxed/simple;
	bh=mNVwS8VjcbX036J8wm0sy9Bt9cLrAxyp/MxKXuK85RQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MXeSzeLou0HBoDZ8Ew4BGVbHAfSO8HWsVVp8kw+54XkS2ShIvdtuIqt8ediHssoPxQCEEc1Z3YOFCUFt7GJF7QwjD4LrtnKhQxR0Ec6ovfzk3HYirGLZ16PVCUx5+rTekrgmjUYvfRj/yILQBlRJRmp6Eo0X5WIa03weE4Vcti4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N3raqkUu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QqEacUs/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BILleOf3245310
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 02:13:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	16ovI8pMht01ezaAZgV+v2nnSYU+P3k1sfkFnw9Mj3s=; b=N3raqkUumOrBOlJc
	vb/WQs97857J12OF/bj9uK5pkZ3gvSke+WQZkK+mh0AtHzR+5kxjAcEaW+PHiLrZ
	ldzPWWYlS34US6qFFLuhupF5EB1qa+bj6a1P+nMLYdh6NzBjd0pACVwUH6oSiJUS
	W749lWVItShft5/J1eldPagOgoF4Tti5WPgDiTBmZPrrskAIp4AkeK/k4ogk8eGz
	NJB/3INZBkgbPU3yUm6ZnNQrBz4UsfOOLd2ZMIi+FUzvWcwNE5AP3R3ngXCpzsiL
	wXCvCuRA2k1ThUipOj7Rhs26MEVQLvXZ4jOhMtwNQ6uXm0Vvy9NbXAnHB0i6EhKO
	Nxkq1Q==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2c0v58-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 02:13:21 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b89ee2c1a4so2506232b3a.2
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 18:13:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766110401; x=1766715201; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=16ovI8pMht01ezaAZgV+v2nnSYU+P3k1sfkFnw9Mj3s=;
        b=QqEacUs/kLEWInnSLXKJsGQzJlHykh2DOsWVOLL2DLvnM3u6TU5rzd89dbrogbvv5M
         4sHLGKOYFaFukq+M/A1HJH09x2B9y5dPca7X17ICzN63OF96Ll/JIdeUBEpdTIp9zAWb
         yyCDC2bzsJISjhb6TCuUFkEDQEnFdN5HBGuldCinZWEbVRVd/bu77smuHF2NmNAyGeWp
         qPA1YqG+5TMaSLwgXNad8FkI0xoLp3lrtuc5H8bjOGEPNXHr+BvULAXfndW+rM3hPT7h
         0b+EY4B0s81W8IIe+5VFq36sSAvkis+/1d9dCbtoQfhlVl5iyPh0s22+7753VEBB7FJh
         8IGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766110401; x=1766715201;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=16ovI8pMht01ezaAZgV+v2nnSYU+P3k1sfkFnw9Mj3s=;
        b=WWMzXxL+HH5HhJZ4fguBsjfN1NwgBKiB27Z8F11lInmm80aLwfDU7aL4R4+n7mrxdk
         AKnbYeQZlBTNBgvmvTTmzbHknwvJMinC01l1/9FyzDKz4HoY6pnF5sNWUQguDleJyWmR
         26B9HUneIFTwL6cAARY6EGar4263j3fA66YiUhACq8a9c6nWLG++s2R3lSyj1aE8Ro++
         FIiOW9oZwZF2Tw0v6L1UC9PHuurbV3DL/JFwaj4E3AQJVtb9GpXGEQtp6tSTi6zxzjSu
         JJQMtcV9TpdeNg6M4oX+nOIYzCLHa2Es+qWB0Ui/9S7xWtPp4tmpdJUppSRSMsOjYgFp
         Z6eQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5ozpGxO5qmgbXI6YF4N/1MY/ejw3GOyfl95nviuZTs9u/fyzZ/c5zuzUjChHpKbaNNuUfZvkAKa1a@vger.kernel.org
X-Gm-Message-State: AOJu0YwD7zkBCYucSyghinP5Ijqm9FtBmsQ9aXWfG/aQu0XTCflovBEs
	4cWpN3AtIZngusoQOAM7rCIIh/7aJv1Semuq4IvAM87I9nNhjyOSfCdGmr1HxiU5+mAYWjCo8+S
	0Qklw+WyLc951ZKzPzo/MKnbocG5TWPFuPQvhyVW9APwBgzV8i0xGeLFV2t+BW8QI
X-Gm-Gg: AY/fxX4irhYapncn0y0ZC1R2SoPlxS5jlyWRvzk0BcIOx0DlrixTf4KKrjTia38cNQf
	sAEUSzsdQOlo2Y48sMwS/eKGtTMz24L671mbVOrYWW7LfkqL1VT6BrRlomv/pI0npS0ieKvc+pf
	6imNo5vPspXpiAD1g/jqOqJ6XeNANLSn9quBu5B3QtfMY6FeYv6O+I6eZJDbtfWER6rjJAIFSqf
	7whKi/pF9yhC0Tkkhu065twHgsvIQre2lOupw/zhJMduvdrR5sfTEazxeTO0MGe2AJv/VUz0JkD
	qbNOyamKQkK94XCnA7owStPgtUcz+m+ZtIM00N5fvphmA0PgQjcndTMTuOCDeLUmgiJ5aMPJyx5
	dmrall+CuLy2MMhs/97bMFB6nfugmoJ8KCKHfz0oCUcvoOvBDMHMFwnFh00QweOcN4dr12Yb9z7
	OOOTzwD4wW
X-Received: by 2002:a05:6a00:1d19:b0:7e8:4471:ae6a with SMTP id d2e1a72fcca58-7ff679667e9mr1077685b3a.54.1766110400978;
        Thu, 18 Dec 2025 18:13:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHHj4prRSbH160/aJGzDoFo6VmuuN2fLZoLpUaumhyOLK22Xm1CdCkuX3d0mKzGcORsKkZMfQ==
X-Received: by 2002:a05:6a00:1d19:b0:7e8:4471:ae6a with SMTP id d2e1a72fcca58-7ff679667e9mr1077661b3a.54.1766110400490;
        Thu, 18 Dec 2025 18:13:20 -0800 (PST)
Received: from [10.133.33.101] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7af2b537sm623722b3a.20.2025.12.18.18.13.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 18:13:20 -0800 (PST)
Message-ID: <d0ce8306-84e0-4940-98aa-dbc356d87593@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 10:13:14 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/12] coresight: Add CPU cluster funnel/replicator/tmc
 support
To: Sudeep Holla <sudeep.holla@arm.com>
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
 <20251218-careful-ruby-wildebeest-a8babd@sudeepholla>
Content-Language: en-US
From: yuanfang zhang <yuanfang.zhang@oss.qualcomm.com>
In-Reply-To: <20251218-careful-ruby-wildebeest-a8babd@sudeepholla>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDAxNiBTYWx0ZWRfX6hkIDZld4E2m
 yt3hPRC3TJvFgSmA7v7r49PKRQNECQOjOf0rgDOJjcTiUnZkNFfeTRWWjIC3ZhX55mQJWkoLuXz
 CVhMIjuBsmokjO/2An430lZgBjl+fRgz7fZ/CFNahWTzGT0eXa4GizHlDuqwha5dQteEqwmtwU5
 DwipiJaFdoUB48kfiDZV/N0KcomRYV/M1EVqea/US4ZaCA2P8NNTb2yLntERz1Q6O0O2Lq7k1/k
 B+dzQ8aYarzwVxESg7//tz9ZfqZ1X/tTB46RSxXzGdVKMcIEteanpXDpyWjr/JXB/JiCllk49Uq
 Iy3p2EklqF2htQMC/ksAVr0n3trhbA5Q9tRhxImCytZLMhRgBOFe6f98Wx5NkO6xi/+i9sv1fwf
 1bnKQw7DfaUqVhg3bLWejSPdcDcA+K6LckRwd0qYhtV6H60ePIDSh8EYfR7x0TLS6pxZRisdHKy
 kibmNmLS4kq2Y8l2ANg==
X-Authority-Analysis: v=2.4 cv=dOmrWeZb c=1 sm=1 tr=0 ts=6944b4c1 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=CT3mT5stn3mpJVhV_EcA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: uUZ2I2z0uAq5sevtgiwO74z79UVQp15l
X-Proofpoint-GUID: uUZ2I2z0uAq5sevtgiwO74z79UVQp15l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512190016



On 12/18/2025 7:33 PM, Sudeep Holla wrote:
> On Thu, Dec 18, 2025 at 12:09:40AM -0800, Yuanfang Zhang wrote:
>> This patch series adds support for CoreSight components local to CPU clusters,
>> including funnel, replicator, and TMC, which reside within CPU cluster power
>> domains. These components require special handling due to power domain
>> constraints.
>>
> 
> Could you clarify why PSCI-based power domains associated with clusters in
> domain-idle-states cannot address these requirements, given that PSCI CPU-idle
> OSI mode was originally intended to support them? My understanding of this
> patch series is that OSI mode is unable to do so, which, if accurate, appears
> to be a flaw that should be corrected.

It is due to the particular characteristics of the CPU cluster power domain.Runtime PM for CPU devices works little different, it is mostly used to manage hierarchical
CPU topology (PSCI OSI mode) to talk with genpd framework to manage the last CPU handling in
cluster.
It doesn’t really send IPI to wakeup CPU device (It don’t have .power_on/.power_off) callback
implemented which gets invoked from .runtime_resume callback. This behavior is aligned with
the upstream Kernel.

> 
>> Unlike system-level CoreSight devices, these components share the CPU cluster's
>> power domain. When the cluster enters low-power mode (LPM), their registers
>> become inaccessible. Notably, `pm_runtime_get` alone cannot bring the cluster
>> out of LPM, making standard register access unreliable.
>>
> 
> Are these devices the only ones on the system that are uniquely bound to
> cluster-level power domains? If not, what additional devices share this
> dependency so that we can understand how they are managed in comparison?
> 

Yes, devices like ETM and TRBE also share this power domain and access constraint.
Their drivers naturally handle enablement/disablement on the specific CPU they
belong to (e.g., via hotplug callbacks or existing smp_call_function paths).
>> To address this, the series introduces:
>> - Identifying cluster-bound devices via a new `qcom,cpu-bound-components`
>>   device tree property.
> 
> Really, no please.
> 

Our objective is to determine which CoreSight components are physically locate
within the CPU cluster power domain. 
Would it be acceptable to derive this relationship from the existing power-domains binding?
For example, if a Funnel or Replicator node is linked to a power-domains entry that specifies a cpumask,
the driver could recognize this shared dependency and automatically apply the appropriate cluster-aware behavior.

thanks,
yuanfang.

