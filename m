Return-Path: <devicetree+bounces-274546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOQtOXiosmnwOQAAu9opvQ
	(envelope-from <devicetree+bounces-274546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:50:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5348727148A
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:50:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2030313BC94
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B58B63BAD84;
	Thu, 12 Mar 2026 11:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HmaP0o5E";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K8qk0tGV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF713AD505
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773315779; cv=none; b=DYF/wTSv1SpuwRb6wXwWGRxgvQEbIBcWRZ9jaskGxurEMbwySjzDA17deQDz+xDRBs5prOdlsF8xY7AKA+TrpYIz7vbGgF0IX4XX4A0PYIguXXN7TZ5fs9k+KtE4rMtNPxr2l1UZ7oyV47+njwc0peF14molqFvDOF/EWCtHrBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773315779; c=relaxed/simple;
	bh=vuDtbFLrMiurzB2+xC/ot2IB+T1N8Hc0u2jO0iC2vG4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HzEp3oc5NDeDC82xkapXQ3kr0wne6Kw82SPcvLLbjVOQTvbgPg8mNoc+bKp+xktuPRmHKKvu+WHZwfTnd7q9QTbvUjAEy33VX9Gxf6K8O71TD3mRnx1M0NLmWJnUYlDd41y/wAi3CVesTSMPEjKfSAQ1lDZPJ0yzktTSEawnMyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HmaP0o5E; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K8qk0tGV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CALhtE4026710
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:42:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W9ejYWHNwRhjPiGAgnplcOS8lPIHbm/6D31/N+auTSw=; b=HmaP0o5E8kDigSFa
	alJVniCiNF7DjBpO3slqiNJ3tC/PYMDuDwHYrqAZ6m3faf3xBUSqMLfpUEiT0ME7
	uWWAeSVIZ60cNAHJhwuo6Vb8dOptnxFIZD2ZPlI6SJHGh0bEalGe5AilAQjBoaDU
	QZVlr/4PFlZA2kIerIpl0o8Gs05Rqi4LvYe2xoN8EAgrInA5+6ymKHj2jVoDFZlX
	twDN9GpYJxK9TErk0jdzr2qqWM7kBKQCbwArOlfCHOrYnIloY9u/so8cENTOFlPK
	42iYYDiTfRSrfY3aZO54lNm32900MmfmU17DmtlRZIiqhD4bfqXTlQnqegCK9Mod
	59ZCww==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh54swrs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:42:57 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ae50463ba8so80717505ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773315776; x=1773920576; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W9ejYWHNwRhjPiGAgnplcOS8lPIHbm/6D31/N+auTSw=;
        b=K8qk0tGV1VvYa8n6L4GNDEIrVk3ylGJtU1Tj0MngO4fgE7rkiOZpJOpDPwdgcPoHjJ
         3jIEz1gIIGqIPLX4PJGCOKffj5OQTnx6GRJBzh1lFqp2mUCvJ7h6vBtnh564Njc2SQRB
         UGFyJPwknQpbWPjrq3rug4F+SIFkArjit5lt7KxnrHmbZFMR0y3cXM336E7PHu499TRM
         NjQaydvCMaBmANW4iBaRhbkkUHEDZQ12jI7d+QyzAA/1Gx56toGvYf/Z4/d8M8mdw9mS
         tHe3dzN/bCwZPouSKY4/bHpknHsqRNbNxlcLgS+iLOCrzJMhrB2gm8vahNuVEa2njsM4
         OXOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773315776; x=1773920576;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W9ejYWHNwRhjPiGAgnplcOS8lPIHbm/6D31/N+auTSw=;
        b=R6uGhOKR1QZbD6Ge19Lxxyiv1llHO1AKoYUxCkmoKgP0qQMUp9Uk4HYpMKL/URs9jW
         EYVtezzDrgGVAXs0yY1TNoNoKlaTO0OWJwFoLp1T3O24Kbt0Qq2iUMRXi0+HFVbgrEBy
         dbk9JWyTKmXl+8m+rh4R8PJqB9263lNH7FQOczWEy77+EyZtaIPXCOAfkQETjCbtPxbr
         pFv9E2kQSOBXzB2buCGqeecyZEyXhqgBB6qrITb2jZC9A9k5hJVxSzsSerMbrqSm4zJm
         rMCyVfqX5OQ4ogPS1s7Nu/u+brsU2V/HPFmUGdlj9cSgwxrITAZi5e0gx5DilJTvf9zH
         JMng==
X-Forwarded-Encrypted: i=1; AJvYcCW3sIcx43C1J9k7C5yU5QkUMloV4+Ujg5Ll3ijl7Gu3XiGFl9LNIKjy5lyf9X/nJ5C4EZhUfvFXFtG2@vger.kernel.org
X-Gm-Message-State: AOJu0YxSAKWw70/cAfrYnBdSVYblNfLTMAWNXatEhAc9TTqFpuVCHDv1
	PpgUCTzSAGYN9cTgbMcz46DyKoxfXJYfqBpL7/9KS2m9T2dYQ/DVOZEhJeWYLyzBSIUtpn0ulPb
	AjfxT+ZwYvIxL0TdOCL7raKxuqnj3oMqXPqZKZ6kJQWy9K6odT/6tAPLcQpQP47Vj
X-Gm-Gg: ATEYQzxzOf/UXRevJuKa+eItivaEGFeEPs89bVi5F8W7pVzUvjVwJvkWrXnFcoUfqJO
	Rh6p0g0D1sr1I7XWkDV3dfKX/q2PdXH9sXd/V8eLShUdEpS7ryJYSNDzcq5ti/OuKXa7OGYxKkN
	nWS/tjnNraSqyzNfOGaHoJ6DHxrmTmJsmrAENVUKBvQ5iIfVf0kW6F+8/NJlL3y83xhbjSu1fN5
	h5s8gWgQ7xTJCNYLqRai5jKa50gzCPRYRMk2cKPkbznVe6GoPTcTNQVwjotfaITVWZnI0eAQUVT
	nBLQtQBqP3KseJYxrhI25HaANvDqX+ZbX8SP41bRH3qs2E3OHQJMZJK1Oif/+BOsb4e5JmqPUNe
	VY54YoylYWIo2uWkH1kXqoophPoK9xwW4aUoZqV95rErHrzQAYdWnhTNGeQ==
X-Received: by 2002:a17:902:db06:b0:2ae:3fb2:ec9a with SMTP id d9443c01a7336-2aeae7ad446mr64958595ad.16.1773315776330;
        Thu, 12 Mar 2026 04:42:56 -0700 (PDT)
X-Received: by 2002:a17:902:db06:b0:2ae:3fb2:ec9a with SMTP id d9443c01a7336-2aeae7ad446mr64958285ad.16.1773315775895;
        Thu, 12 Mar 2026 04:42:55 -0700 (PDT)
Received: from [192.168.1.10] ([38.254.186.229])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae25cd67sm56194955ad.38.2026.03.12.04.42.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 04:42:55 -0700 (PDT)
Message-ID: <04eabe08-f339-4d9c-8b61-184241d192a4@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 17:12:43 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 3/3] of: Respect #{iommu,msi}-cells in maps
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Nipun Gupta <nipun.gupta@amd.com>,
        Nikhil Agarwal
 <nikhil.agarwal@amd.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Thomas Gleixner <tglx@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Juergen Gross <jgross@suse.com>,
        Stefano Stabellini <sstabellini@kernel.org>,
        Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Prakash Gupta <prakash.gupta@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-pci@vger.kernel.org, imx@lists.linux.dev,
        xen-devel@lists.xenproject.org, linux-arm-msm@vger.kernel.org,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
References: <20260309210849.GA591344@bhelgaas>
Content-Language: en-US
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
In-Reply-To: <20260309210849.GA591344@bhelgaas>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: FSMjB7x8Z1pb0JRrfdfCtq17AA1vPUrC
X-Authority-Analysis: v=2.4 cv=BNG+bVQG c=1 sm=1 tr=0 ts=69b2a6c1 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=FuYIH7Xx0xzBSkYrynBYgw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=7CQSdrXTAAAA:8 a=2oAOsZZM3GA0Nya8fkwA:9 a=QEXdDO2ut3YA:10 a=d1F_yjlUjjEA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-ORIG-GUID: FSMjB7x8Z1pb0JRrfdfCtq17AA1vPUrC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDA5MiBTYWx0ZWRfX1ZPDl7P5fEMX
 k8LEwmS7nGd1vMwNrSjQajMOk1ljpTC8+DpPvpVxbsD2G0UXQSsGlazdIu/8QYDUn9jW/DyQW0S
 L9ZaMkcZIwSjZL2dMLhpAuruhGc1/ynVU0UXcbGIn50IePCFuN+Hol3zjAAu/yH6WWyklqCHDHz
 cKLCx+ES7C/zDVpM8hYEy1Swps5r+5/7vc1RuDwmsmvoH1fAP6xFFCBMeCg2T/DqRvPe5AXnfJv
 NvyiXzUDIbSnwYP7ywjoB2oHvlt+2oLOdGerosKI7Xuye64jaOBbMk/2ZRzb+xbmkumNPNlO6k2
 2zCN/5mDG1ekvX+FWhOWPZSTOk83IaSt4z8j3Sa0HEt+bhEMjGPOZkSiM/mQzoUFUMBpSjDU7LV
 b8aXK0cgQR0g22eZVS33DxeKkNB1f/l1VajrZBMyFRzh/sx83rdOUc2oO7cBOxeBMELp5OnRMuy
 0D3xhL4f1ISAyU6Qo+Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120092
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amd.com,8bytes.org,kernel.org,arm.com,nxp.com,pengutronix.de,google.com,gmail.com,suse.com,epam.com,oss.qualcomm.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.xenproject.org];
	TAGGED_FROM(0.00)[bounces-274546-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,arm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[39];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5348727148A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/10/2026 2:38 AM, Bjorn Helgaas wrote:
> On Mon, Mar 09, 2026 at 01:03:39AM +0530, Vijayanand Jitta wrote:
>> From: Robin Murphy <robin.murphy@arm.com>
>>
>> So far our parsing of {iommu,msi}-map properites has always blindly
> 
> s/properites/properties/

sure , will update.

Thanks,
Vijay

