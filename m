Return-Path: <devicetree+bounces-260518-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8A60Hxs1eml+4gEAu9opvQ
	(envelope-from <devicetree+bounces-260518-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:11:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23749A53B1
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:11:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 06F193000FC9
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:09:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E999D30BBBC;
	Wed, 28 Jan 2026 16:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OkBobwmQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GtCP/RxM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7BF308F05
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769616552; cv=none; b=pg+HvVxfhxWBKZE/rBSmJZrlA2GZi36xbjnmg3kVOsXxg4j/pnq+LiPbi9+HlBPmrDmtv8HYiLTdDATCBkHGWvtahDG/lWP1XZYf56U3cT4etg6AF/x7Kol1ZaazQv1gZujZIZ/EMkdvHIPVU7FzNiF+5FTuLA819KZ4qpA43ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769616552; c=relaxed/simple;
	bh=v/AAnFBaLz8W76NNtzAgAljeodgHxKUAx1qI0i6IFYs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LX/OSSqy5zHB7rQjz2v2amXDVASABmLtKIy3dXqKHVu38AIIBqv9cG7d6mib2ej+3Aabw0c56TNKa101/yPpITbszlzdqWm5XslDiUVWeN/240NYAjQFc+iodoouH0c6hLg9KuH9buxCHpqtZ93S2IJL7nUQejfGZSk4NEh/TeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OkBobwmQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GtCP/RxM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SFlmCi041997
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:09:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dxbdgO5XaQIAG0/7RMvA7vsSLpOyTsZYiIdwwatHLdQ=; b=OkBobwmQYsDAkCPP
	fq6ICV5v5Tm3nXAWExo0Y3FwjLT3v+4Cigf75EXq0e9DmZ40M+BkyIV7okTG0jna
	J6BYfF9LGx9KQnpUwP9DEtJMgBEfeh2lTQnFqTya9OMSHCi+dtb7m3Q0vOD2VP6F
	MFlHggdaRxiL3x/Qxt6DpcfgR5Bumx/sU+lxoGDf3lgjKYqeoKoLvw3+d3OlLylD
	ImIRKmEM8F8AFV5pC8OxJHVRmRavNBo3c52zUh4Xvz8AfDYMhJC9JHp+pi8H+kTj
	a1WkPFbi/xEl2s86kSsQ+GWo4Midb1h4OUaPBBelEXJwO6chT16pLaFFBX2dj7CH
	8fpTkQ==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by355utu5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:09:10 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2b71d3ac508so14196eec.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:09:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769616550; x=1770221350; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dxbdgO5XaQIAG0/7RMvA7vsSLpOyTsZYiIdwwatHLdQ=;
        b=GtCP/RxM7ZNSUh9tqxzc952NVucLMkUBVRMegiVRCAAQ08XdK+rAcDjhYjOtTcCdTQ
         rw4de0N/QtvVJusPNglR+a6mGJeXMI9SLBmpm0MBFk8J2XKd1JKRyaR2P/1RbkDgjotv
         unRUFgtXojZDY771+E45UGlLr6or2LLyXJAnaLMXoFom0uDDHJXKT/gDuCNa1m0gKhXw
         7JVs/AJ7wM9GOF6A2v6HvesINJjXgdHR4ojiGCHeU9+r8RMfmNl4cNv7ZLYx8lvBVLkx
         td2D4nAXTaTQSmaLRu/lpGa6hpqhpdggIkt4dAyZjnrhjVKxBYrkHrq/NcdmmGQof18w
         5+6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769616550; x=1770221350;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dxbdgO5XaQIAG0/7RMvA7vsSLpOyTsZYiIdwwatHLdQ=;
        b=DuBEX4EzO2pzXe1uaqcR7ANfSXnhg+876u00MFfr1Q+81f6dLkTCRjQx5+AnYNfTkP
         SQFQQAFtr7ONNGSO0LLYa6Sc+BdhLB2vOXTcQdVJ84+PQTslb6wnE94UmzckxlnnVsG/
         GosBRpGTSk3erNFTddrW+lOLfPX01Jq4NDp+FlFbZMbqVvVkBtiNmQNm8yKTUNCZmF3/
         HBNL+WA8b8Kvwj7CaiR9pL9DqUIEE24Q5Y4ziUlifh3XfAmylshI8TV77ApltGuHA5aJ
         tb0ZUuRcFXqgiBWKifuP23bfWVqxpeJsy+z+lWxl1BL2cTmREYz7YdGsbr/PmXYk60lN
         J8sg==
X-Forwarded-Encrypted: i=1; AJvYcCWEiJ5ifwrEXJembzzl3v4DuAZGV+RB8nXxuZNjfs17oF4TA/XVOPNaoLDp5y+MFQ1E0kTz7cHqQh90@vger.kernel.org
X-Gm-Message-State: AOJu0YwKk9ZkBTo1EWflcc1EsmCdwguGJh36tKorv5M+X7FjzerG/46u
	5FctaxO7hrwyhq9IQQszDXiL3oaBpPgU4blZ7/aNBPMPTxEn9wUJHqTb0koDdhMA1NaMfMwxJ/5
	Fx48O5NEopTwaxevaDlu2Vj/sY+TnJu3KjNoyb5j1EK9Bt9nh+WxW8+f1E/cZL2Pz
X-Gm-Gg: AZuq6aLfyLKvFNXxmsSZT/cfRYi0L9qQCHHLGH70hFQHTCFZRGe5AEO2CoCs68K2Pj6
	bTbrx8Qp7lKyoveChp0vyo+AVtg34kBaMqYngYAnIzX+ATV4XgMoPOpt8neK4vj87V133M8Ucyv
	J2hhNmosqtHSmKvRkaqP2/MaPjXIYbM5GvCGKix32OW0tiM/uG8Cb4rnJIYsLdfpwxf+8INOh41
	1UQZTYsR+8s47wKg9cx0y581G2LnSGs0GaVl0fTFtj96silXgDHI7DsQ/6QufASgk5QFZrctUt0
	xfA1OjMP90Y8xyx53JxhP71N2zzZMnuTLSFw05rzlY0X/7R402Lm5oFaeS2FWlfPqL98EO+T5Cs
	vn1jDUw1Bb3ynzcQiucxKp/nVkjy7MLXejLL2TjVmDp1WHQ==
X-Received: by 2002:a05:7300:3707:b0:2ae:601f:f4f7 with SMTP id 5a478bee46e88-2b78da68e23mr3217852eec.40.1769616549939;
        Wed, 28 Jan 2026 08:09:09 -0800 (PST)
X-Received: by 2002:a05:7300:3707:b0:2ae:601f:f4f7 with SMTP id 5a478bee46e88-2b78da68e23mr3217827eec.40.1769616549271;
        Wed, 28 Jan 2026 08:09:09 -0800 (PST)
Received: from [192.168.1.3] ([122.177.244.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a1addafesm3208959eec.25.2026.01.28.08.09.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 08:09:08 -0800 (PST)
Message-ID: <f9f7514a-8841-43b8-b01e-aef4aceb8d3a@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 21:39:02 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: talos: Flatten usb controller
 nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260128062720.437712-1-krishna.kurapati@oss.qualcomm.com>
 <20260128062720.437712-2-krishna.kurapati@oss.qualcomm.com>
 <2324aa41-6b2a-41ca-9f97-7a5b5e0f575f@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <2324aa41-6b2a-41ca-9f97-7a5b5e0f575f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YNWSCBGx c=1 sm=1 tr=0 ts=697a34a6 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ni4xaUQv+UexsgkVNKbnGA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=AyQCSZuuk-tLLIqlLXYA:9 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-ORIG-GUID: gdWDnT223hVBkiSEP-dKkK071J53mnK7
X-Proofpoint-GUID: gdWDnT223hVBkiSEP-dKkK071J53mnK7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEzMyBTYWx0ZWRfXz76j1VCmJmhB
 kIqJzVc5IIq1zIGeMr9OPR19CVKKCZNDRkJFSz9IGQ2jILLhpaGB6VEJuxCEMyY7wojSbnxpktr
 sKLFVupH73ZTMfxMhG7DSstZoq6xpX2fY9ti8DaVv+qpJHAkxXr2FGd3Rdy9wOZX4mf7rsvm+gD
 zxmAZPtw6G1BFi3t3tEZHHgihs8DgF/Bo1SaAXXM2pN0jByXXn68paKOldoX6MpFztqju3yBPHE
 G/H7jDc0W6mXAo0PHpsX+yFt1XtA0b2Nt55boyTVBIARqiw9lUO7xyv1QfcabI/wpLBoMsXyjMt
 ihXAt6P/AaCAw+8bjrJCQei7G0rsB6marn4HSwOXmwkAHNAjqciIM/loOiDKfjkpYcwa2rKRV1V
 iGwsrY1HfDkbjS8vmbLmvHSt5EayHgHXMmpHDEZhRSxstRizK7zEu+6THv2t1Kk40ocXOGKsZJd
 X+5pHG7TJPiYY42cKbg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_03,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280133
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260518-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krishna.kurapati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 23749A53B1
X-Rspamd-Action: no action



On 1/28/2026 4:01 PM, Konrad Dybcio wrote:
> On 1/28/26 7:27 AM, Krishna Kurapati wrote:
>> Flatten usb controller nodes and update to using latest bindings
>> and flattened driver approach.
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
> 
> Have you checked whether this brings about the same crash-on-suspend
> issue as it does on Hamoa?
> 
> https://lore.kernel.org/linux-arm-msm/71c15a78-7a50-4913-b677-e5308fcabfad@packett.cool/
> 

Hi Konrad,

  Yes, I did check system suspend use case after flattening and there is 
no crash seen.

  The only issue I observed (both before and after flattening) is that 
waking up from bus suspend, there is an enumeration failure on second 
port in host mode, and an xHCI CMD_RUN timeout occurs. The issue is gone 
if we keep controller GDSC flags as RET_ON (not the right solution 
though). But this issue has nothing to do with flattening. I will sync 
up with clocks team and try to fix that host mode issue.

Regards,
Krishna,

