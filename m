Return-Path: <devicetree+bounces-277567-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SL0+OdV9u2k2kwIAu9opvQ
	(envelope-from <devicetree+bounces-277567-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 05:38:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 627902C5EFE
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 05:38:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 37DD830166FD
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:38:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4832B369997;
	Thu, 19 Mar 2026 04:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mL8pd7oX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SUOP8IHn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2276835AC05
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773895123; cv=none; b=MqDiSmkTTIQlrSGDurgxBFUZZOU+Jg3LfdGAtHLn2Ton18iXrpkjJREc88QUQlvPm06BnK0SVN72whQH56dh0XPR/dHAq9ovAZb/4/+Kl7Y23xTqBOe3T/K20pvMbDJX7OPGlLAbHbDlTL8FMXXfdfxgA3vVTYcj5AcdXr2irB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773895123; c=relaxed/simple;
	bh=cLa4tjMnuA8vJNiGPqhNvqFBSbfaZqzIoq4g+cN66Ks=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T7rD/UnLbZ+Nu6RyiCKYY+Pkogi5aNJqV0kXc2iUSSKCxYAXnAWFP1QAmO6JsJCfalx61rUCfuX4Zcq244j/mszh8e4iLdwPufnsnUyxqIYWSIhSRXjRaSOFS210d/kt4T7L+4a2O3XgOMgauKldnIy0hEBwl11DjmwxmLzOlGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mL8pd7oX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SUOP8IHn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J43YKe3228098
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:38:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4Ymm6dgdy3CHuaaPho7qfx3fKRul46RC3INBMXWJLJM=; b=mL8pd7oXyLIq2zGS
	6o7v8mT+DolEt8pYRjAANB+K8IlE68gBVR55WUDA1hf4krpSUmr9tYi9NIGyv7IB
	g42nEHHhTY/Jy72wkBO3q2Tn157+CD+p5l/NAZzAFFZWc81Yb6mB9ceSvPfq/9Iy
	Cc0iNIxuIMRQB5K5o8+QqonsX0NhWNDPTHX4K96DrN3Q3LS4+ZUMGWioNoWnKNVn
	eoj1vUwdw9xHJa8c9F01Yi8kj17rf2+YeX4uXd/mt3CqTD6411Bxu/fAZkQmEii+
	zTvdiro2KzX+GiYibmnO5wrbndZCU2L0Np333DLnR1mTX/EirQyUFcITaJ/7RY01
	4ATfog==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d00eg9rtm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:38:41 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-35678f99c6eso604523a91.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 21:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773895121; x=1774499921; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Ymm6dgdy3CHuaaPho7qfx3fKRul46RC3INBMXWJLJM=;
        b=SUOP8IHnW2VVHf5fTawgyi5CTimp0PROXtkhKxunHFhEEaZEwTqcWGBmowVceQ36/a
         4JCmYITli4VW3tJvFKN0jpF4aYPdMzl8vH5wYWVbPMaMQnjphC+z5fcEpqdbuGW7NJD9
         O9N1tBTm8dAXKdHSZeoRwflt8u5jMLOcw87QD9SgQPmXy7e1jFqdzOyHlziFx1GStguW
         n+GTmI3nGaeUIJYSGRwXcUpgiH1Dr/TdsvxcTVBTKcXd2MlGcZxCGKpvSwDCKFFvCJZa
         fQD+3VcczCUokgu3W4E8vAYP/SNZS6Aknfy0g4wTOkOUAiHcqeMqmC6q7SFZFYqH3zNH
         omuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773895121; x=1774499921;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Ymm6dgdy3CHuaaPho7qfx3fKRul46RC3INBMXWJLJM=;
        b=Vt/I9pB67sLp65VOaWmVrqDDc0ldfn8J5chpEDse+dd++Zj4gjSeon1KMgLowwlh/x
         XasmkZD5OqkvN3RnR9Aw6tKvsn2dMK73NLsp9i+fS3X0RmPNVVW/4MRYZ38wtSqEdXiQ
         iHG8QWr8mLDPUzsAH4KKij1CUIjmekUXKtJN4/5rkf2F2tyZJv+OCqdCnRHnWowqV452
         D3C4nYa+1ugpQ5ha1Ts4z+gSFbfam4Ac/373VyzmrrlOOR/7AocJXZkebyqYLN8cfhWU
         BlzqkZBVXCwnHrz3hnZrdbNxkG9aqNtdDaOc7V17gnIqqQqWwN/PTV/mP98pkccHgEVJ
         nD9g==
X-Forwarded-Encrypted: i=1; AJvYcCWj8zi8dFZvoHq3b5qyf2EqWiPz+B82IFBkYsAUoOLMgjiRKpSh/4sUcy0p7qEJVNbPX1R3VdFVKB14@vger.kernel.org
X-Gm-Message-State: AOJu0YwgMEqK6VKGIy42Kru/f0b9MF95wRryfHUGrxJz/+YSaOBkO73Q
	SG4SoAKmt/N5SSrPIkFAeD1jxvR4oS0fW5gQ24xlmd61CB6bvky4Tp5aPZRp92HAbCjJs/Huh/l
	tUFxg7NoMJBws/Ka/yIQqPnU8S3Ot9ATltrvm7raK9kPy+TyGA2rug0B7eA0EvBT2
X-Gm-Gg: ATEYQzyhfI5FlkSrc6A0DpcnmqtNIGao9oQexa2+CmBCJXL0uCu4lUDf8mRLMMdYvSZ
	jGfwoTqHo3bvLWbWz1tS8VK0ngR7RNU1WhfMZzHEzlet7vg/pL/0hOuBHTCw3OuhwFkOo/sd6tQ
	0VvW0JDol6a3LHTgOKeyNr/5lzaZDTzajuFpYZaHvtfM7Y8UzaPkVsa4fHE8T3O5o/QB/a9WnUy
	j/59OczRK7AZWtdKvclrh3x+5XGP97Jg4+nMVQQRidyw3CDaxTo/scSS9/R+a5lv1kpI4PbvU6k
	9soztM6PlOnsCZwnpskSKgeZ1P2bc5c8KRHfUfoNiVGRLFjrX6JSfqBXVxXToYqotJhLs2kXl8f
	MWmVdhyX3doXUVtUWxGZbLEqsgYgoFGMsQSG7GeJfgyZHW04OARpqTXRkRMMph8QD2qRDD/b80y
	9RAe8UHdguh/WnJOPT
X-Received: by 2002:a17:90b:50cb:b0:35b:8d89:7198 with SMTP id 98e67ed59e1d1-35bb9e5d7b1mr5100866a91.11.1773895120681;
        Wed, 18 Mar 2026 21:38:40 -0700 (PDT)
X-Received: by 2002:a17:90b:50cb:b0:35b:8d89:7198 with SMTP id 98e67ed59e1d1-35bb9e5d7b1mr5100842a91.11.1773895120106;
        Wed, 18 Mar 2026 21:38:40 -0700 (PDT)
Received: from [10.133.33.168] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c741e577c1esm4479559a12.28.2026.03.18.21.38.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 21:38:39 -0700 (PDT)
Message-ID: <69596c84-9588-4f35-8208-9f1a17297a1b@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 12:38:34 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/7] remoteproc: core: set recovery_disabled when doing
 rproc_add()
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bartosz Golaszewski
 <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com>
 <20260310-knp-soccp-v4-5-0a91575e0e7e@oss.qualcomm.com>
 <20260311-glaring-belligerent-nuthatch-2e8ef3@quoll>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <20260311-glaring-belligerent-nuthatch-2e8ef3@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=MMNtWcZl c=1 sm=1 tr=0 ts=69bb7dd1 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=tOLLlezhPP0Qspwkp2sA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: 9WyupzYxgFhlrNvwwIexvYprC-CJagpg
X-Proofpoint-GUID: 9WyupzYxgFhlrNvwwIexvYprC-CJagpg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDAzMyBTYWx0ZWRfX8Agg6CWLFIbO
 uYcXknERM0p7PlGUQvQ35mkHjGUNmehXVGt1z3TcVRigmap6Y0UHOSi5UoDRTE/+mXvqYXt3t9e
 B2waUwoSoZJG9Mm/yskDI2hmoM0G9KV7tYLmkrfsJePQqjw+QTWmSZwImHTCW30EH4Bx97paaHQ
 xSIA+Rn8TYvB8c3aIy0slyhcAwqjPao1TPVovsnsX3uU4j8GQRkgJvsrtbX42leDrMR1MLPWuE+
 CVYlTQ+kT6dUXEvsbuT+dbinjLUeuHusgKSYDbumrEVa9fuvlBfCK5LrFdxObkGw57AJ55oTf9Y
 ttoMu7y5MNIluA5ZhdN8x2hcO39X/+D4PhHGMfnIjlM918ygx095QeSsM4OhpWtBtwFqjDzEEux
 jirk18HaeguqFXT2wrHHRZ0zidj5mO/uFr2A2+x295AE4qeqgR5z1ayxwm5tbo6wHcDdP7qB4Q2
 6zRz4KKXRs0kjhnrwTQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_02,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190033
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277567-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 627902C5EFE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/11/2026 2:20 PM, Krzysztof Kozlowski wrote:
> On Tue, Mar 10, 2026 at 03:03:21AM -0700, Jingyi Wang wrote:
>> rproc_add() called by rproc probe function failure will tear down all
>> the resources including do device_del() and remove subdev etc. If
>> rproc_report_crash() is called in this path, the rproc_crash_handler_work
>> could be excuted asynchronously, rproc_boot_recovery()->rproc_stop() will
>> be called with recovery enabled, which may cause NULL pointer dereference
>> if the resource has already been cleaned up.
>>
>> [    5.251483] Unable to handle kernel NULL pointer dereference at virtual address 0000000000000300
>> [    5.260499] Mem abort info:
>> [    5.263384]   ESR = 0x0000000096000006
>> [    5.267248]   EC = 0x25: DABT (current EL), IL = 32 bits
>> [    5.272711]   SET = 0, FnV = 0
>> [    5.275865]   EA = 0, S1PTW = 0
>> [    5.279106]   FSC = 0x06: level 2 translation fault
>> [    5.284125] Data abort info:
>> [    5.287101]   ISV = 0, ISS = 0x00000006, ISS2 = 0x00000000
>> [    5.292742]   CM = 0, WnR = 0, TnD = 0, TagAccess = 0
>> [    5.297939]   GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
>> [    5.303400] user pgtable: 4k pages, 48-bit VAs, pgdp=000000089e086000
>> [    5.310022] [0000000000000300] pgd=080000089e087403, p4d=080000089e087403, pud=080000089e088403, pmd=0000000000000000
>> [    5.320917] Internal error: Oops: 0000000096000006 [#1]  SMP
>> [    5.392494] Hardware name: Qualcomm Technologies, Inc. Kaanapali QRD (DT)
>> [    5.399466] Workqueue: rproc_recovery_wq rproc_crash_handler_work
>> [    5.405729] pstate: 23400005 (nzCv daif +PAN -UAO +TCO +DIT -SSBS BTYPE=--)
>> [    5.412879] pc : qcom_glink_smem_unregister+0x14/0x48 [qcom_glink_smem]
>> [    5.419674] lr : glink_subdev_stop+0x1c/0x30 [qcom_common]
>> [    5.425308] sp : ffff800080ffbc90
>> [    5.428724] x29: ffff800080ffbc90 x28: ffff00081be833f0 x27: ffff000800059c00
>> [    5.436053] x26: 0000000000000000 x25: ffff000800a56f80 x24: 61c8864680b583eb
>> [    5.443384] x23: ffff00081be83038 x22: 0000000000000001 x21: ffff00081be83000
>> [    5.450714] x20: ffff00081be833c0 x19: 0000000000000000 x18: 0000000000000010
>> [    5.458043] x17: 0000000000000000 x16: 0000000000000000 x15: ffff0008042684f8
>> [    5.465374] x14: 00000000000002dd x13: ffff0008042684f8 x12: ffffd37f69f967a0
>> [    5.472705] x11: ffffd37f6a006800 x10: ffffd37f69fee7c0 x9 : ffffd37f69fee818
>> [    5.480036] x8 : 0000000000017fe8 x7 : c0000000ffffefff x6 : 0000000000000001
>> [    5.487366] x5 : ffff000d6536d408 x4 : 0000000000000001 x3 : 0000000000000000
>> [    5.494697] x2 : ffffd37f5703c18c x1 : 0000000000000001 x0 : 0000000000000000
> 
> Please trim your commit msg from irrelevant data, so this will be easier
> to read.
> 
> Best regards,
> Krzysztof
> 

Well noted.

Thanks,
Jingyi

