Return-Path: <devicetree+bounces-277732-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4F7YLkHgu2lXpQIAu9opvQ
	(envelope-from <devicetree+bounces-277732-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:38:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CCF2CA69B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:38:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 695493229AF7
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64AF1341ACC;
	Thu, 19 Mar 2026 11:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EQnuvZo+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UsudQVHz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169893612EC
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773919954; cv=none; b=f8vlETxVAZTJi+TpFgeOyD9AWZrt9o38xRCDVX3sMPWm1+X8m7kfdw94KQfR5iJk1VhN1nnYp4gRS0PxEQ45zQaGTzfzzOjvvXnLFlcBvj/LXWILUv74vki7Xh+X8XVVq6PlU5oY551WTt8b7BYxpU0LPFmhvLPaYB/dJO2bKXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773919954; c=relaxed/simple;
	bh=MYg3uAjpZYWvQafvixW5nyeVNxNSEJmxZUP155E/WyM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VLWFYV7LFbXeLMkx0rTEo/A8GsN2ZLuF4pAs200KbdMqK+Gc4ZCHqHHPW5nXS/wz6tx8a81OaBuPMxt0F0xlTNSSOYO8vb0XlkGMjsy9Io/zeCIo2eLKzs0celUHWnJdUe2L+oYwsc5c4SrsS4xcpvun4/k0VG2fW+l6YxW1xo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EQnuvZo+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UsudQVHz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J73wXr2544614
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:32:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oU/Zlg7aVeW2oacg/0qW1aslWDjB9ZFqZQCV5J5anrE=; b=EQnuvZo+DmxxPbx/
	atBkiqV0Yu8WQZjPZm3jdBLxOzJQTi8U/ykPsaAsUA0uKjus8jtE+zAegsVFD4JW
	VvZ1zPauWvic8s4jgkuIKRQ4qhLGsVPNeWBJMRqHa7W5Q0OFflW5DTdybwxeFaMa
	NYdsEDuGFoT972GeGZNnKhQjhfvvPUgwd/IdN5e5ApW84vOzORSPf0p9/6B6IRlE
	FH+Mam9+iWDpZR4Ll0oMnjtJjwlRNXLttb5Lfh0puQIuCyn75YxYZ8LMFZ0SHOO4
	OrChsbSs2rLTsikCgnHPXn+sRgWfLp/DYBpCmkIYP0RI1JWCTlH3IniATYhkVA5x
	Awo7wQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0957sbng-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:32:31 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5ff9e60dd65so100449137.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773919950; x=1774524750; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oU/Zlg7aVeW2oacg/0qW1aslWDjB9ZFqZQCV5J5anrE=;
        b=UsudQVHztcs6d3OSMNtM7KlEjf1KqiGiiYiDRE/ZRCluNmOMPxTMFI3c545oJKwz14
         deH+Wa/aALjZagnvCfkRJi5fw70IzhY431MlWmGbcrFPg5+6GVnzpT3BB2W+NUFFEivA
         ZUZD4ZOBO89R/QFewAy21VcyTNtHBWX48UtrL6+zCamOXm1DodjblqQ2oVgzJf/gYri/
         eSDHRKBNEyTrwBhWPVDHKzS/g5zcpb6SCbMpsuSjUoaBw6mzyk/wMyRy6MeeNXGghc0U
         FsomP1Ab3QjkJkPupuef37dd3Py2VFpuGcOWtUNPayppuP8UqRLVQO7QMurdZQGSGqsW
         q1jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773919950; x=1774524750;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oU/Zlg7aVeW2oacg/0qW1aslWDjB9ZFqZQCV5J5anrE=;
        b=sOXPdiIhMVne8uQurty4zLJLoj5x91SaTXtOSKBIv1FBBsMJHBVyLaWOac9lMOWMCs
         6iNjizRNhAoHOZaG+I08Ew/smlvjQxL4lbClO2ed0rAP/SpRMymr3NEDMQSnnJQRMl4Z
         zcbdpfWE+OwyKwP7E9FbsbolK6db+6czKEs3DKe8Mg/edMmEJIG8jxMEoFY56KL2JpJA
         7uFiJDavmnVjjST4VxXLwcyZadm0kAJx2/qyhNmXISdpDQNNJ//LLDGGXeqppO8jGp3J
         GMCTGwdoEE4HOkTcWS1V53+akvnVtcH7Q3O2vaqT8bniN8Av51wLbWt+jXdIifXBqS3r
         VLmg==
X-Forwarded-Encrypted: i=1; AJvYcCXV0FjTPoyqMinT3GIFU/5P3pJbr5KUDlORQxlv6nD14GvXhXacGGNe0Kq8XYNoFzh+Uyk3CGz4gQoK@vger.kernel.org
X-Gm-Message-State: AOJu0YzXdmLog0CB6WhFQYzd6JTNk2oX+6ksvncfx3Z8Mb5RVRApA+Az
	fxE44qxBTglgkx5qjvyrsYdV/uSc6JYBxX9arrAcQGPuFOS2qHKSYxiXsC/PrmZ+cZ4pd6/EoHI
	et2T9EKjlUEoT48BNqwti6j0bOjiUA2JRWUl68va79r6evmHN2sr/9tUKdQkjlQ1o
X-Gm-Gg: ATEYQzyAForrB+IkMEdLZO6P9V3SGhIdVep9B/vXZuO66LOMEdC33LZN7KrxbOeEosv
	qN7MK0X4cfM1Ea7g5U2smNMEBWTmtgYwDBirRGppTQ7nGFyoEhVsvv4LtoCHUFBIfJnMKBkzNFy
	d91IbPTIlDG8N6ozL5JBb5erYkfvcDz+r+Fpt2PKugIBTDLG2DdX+O7n0oyU3bIR+WNE/hRz4zs
	cAL9ty9bUpU9EZDrKSMJJTlmvrjumikYUsjb8zmeVZRl+yJBbPOSJQwXtFuGglr1UkZwAbZQo3N
	udz2HSgOvSiqBvFCWr4MNvQw5L+/EKgfmtWJO4ZINlVXT+G3RZKnjwTRJXvxfmf+vxzKTJ+Ikqo
	39FKDub4PKD8pdwBArmxY7DOMCdDo+TdsfLxt4KcWMHpkJcKZm4Rkb+s1tChHFFclKnwIczlzqf
	dAiRg=
X-Received: by 2002:a05:6102:510b:b0:5ff:1cc2:aa9c with SMTP id ada2fe7eead31-6027d3ab5fcmr1592653137.5.1773919950208;
        Thu, 19 Mar 2026 04:32:30 -0700 (PDT)
X-Received: by 2002:a05:6102:510b:b0:5ff:1cc2:aa9c with SMTP id ada2fe7eead31-6027d3ab5fcmr1592647137.5.1773919949772;
        Thu, 19 Mar 2026 04:32:29 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-667afa57131sm3325879a12.12.2026.03.19.04.32.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 04:32:28 -0700 (PDT)
Message-ID: <16211bef-2360-4bbd-bd2f-72c1d6993a1b@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 12:32:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: Add AYN Thor
To: webgeek1234@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>
References: <20260311-ayn-qcs8550-v2-0-e66986e0f0cb@gmail.com>
 <20260311-ayn-qcs8550-v2-5-e66986e0f0cb@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260311-ayn-qcs8550-v2-5-e66986e0f0cb@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: rw2SYK692j5IW3JcHSL6wCQca-Tf61xO
X-Proofpoint-GUID: rw2SYK692j5IW3JcHSL6wCQca-Tf61xO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDA5MSBTYWx0ZWRfX+F/YOodDDgbn
 4QImbmqPOfkJKB9O+KdrGs9cA1Wev4OlDENqdnuUb86Uu9SnkctlcxVMzAGVbfpVhEzFUXl24GX
 PDi6f/cxeYqZbRLHQ3IzaZH0oUTq6PfqM8siNGa0sEPTt8NoM3G2mciZGyHAu9vl97263aneyx6
 kX45pHiRuSvJLWK2Ud6/JVekVjx7Eza8MNVRK6NU93fNGicJZyZh5Q2baZsS83UpB1M9u3CUjgM
 ORAZ4L3PtLLD6BlwAymZwoSwkCf4GJ0BTLb1WxzQF2jX/T1w3IguWBpkeWd9W8u27fVCMS+mBLM
 1n8IhrJMCxRx4nQA1efofnnmw3W3LG4mclyYjPepfYSbrIh4qQBOjH2E1sdZmO7pxWiEe6TgnKL
 JgZ+6028OO6Tml1pTqtC9JwOyWxKyMsKu/vQBoDK7phmNRJnqQOarXtNhxSYW7VhPTllaExEi8/
 X2A9GkyryQJpOBXvOQA==
X-Authority-Analysis: v=2.4 cv=RZedyltv c=1 sm=1 tr=0 ts=69bbdecf cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=pGLkceISAAAA:8 a=xCFUxe80Pqb2lvtIFvQA:9 a=QEXdDO2ut3YA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0 adultscore=0
 spamscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190091
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-277732-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sobir.in:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 18CCF2CA69B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/11/26 6:44 PM, Aaron Kling via B4 Relay wrote:
> From: Teguh Sobirin <teguh@sobir.in>
> 
> The AYN Thor is a high-performance Android-based handheld gaming console
> powered by the Qualcomm Snapdragon 8 Gen 2 processor featuring dual
> AMOLED touchscreens.
> 
> Signed-off-by: Teguh Sobirin <teguh@sobir.in>
> Co-developed-by: Aaron Kling <webgeek1234@gmail.com>
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---

[...]

> +&spk_amp_r {
> +	firmware-name = "qcom/sm8550/ayntec/thor/aw883xx_acf.bin";

That's perhaps a dumb question, but are they actually different between
the devices?

Konrad

