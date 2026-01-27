Return-Path: <devicetree+bounces-259840-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8G7IGaOieGmHrgEAu9opvQ
	(envelope-from <devicetree+bounces-259840-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:33:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DED8293A42
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:33:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1AA5730210DE
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47946346AD6;
	Tue, 27 Jan 2026 11:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Oz1MasjF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S7X5vMV5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA010346E58
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769513613; cv=none; b=QjooNkOyNS71iPKJsXVQt7rGbiord16Ti7iSmcHtQaY4QOS7sA8ACWeyk6/q31gGUQT7KfQGdDF0rbQVZ/BZQU2NOxLeGl26AOo4ZqqnderG35b4h0TQjcn0TRE1DzfTWkDgGAZ2kf645jx4V/7mD0p0+5UARLTt0kdOPe8q2/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769513613; c=relaxed/simple;
	bh=59jZC3zVM0ODzHrMCPvgBuMQDB3OwB67FU4fWRwKHGQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mPUxoFDClAOq1dVHaMQq7FsPrko7/GveZnQcjl9JCrDC5Hm07lrjDEHWZpcwLJyp3dl2uVCjt0Q7uODc8Xn7fcx6vUNQNz5sAlJh8s4x4Lul/eNDPylZgGLug6Xm2hVCiTGUpKiNeJWy8yZvC7xm8Hfayr0jiIsxBLm1VCjTego=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Oz1MasjF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S7X5vMV5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R9sjGP787073
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:33:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zoZb2MS7iH8UWFdtI0bG1tG2Hg+LVF5otZHfxHqr3mU=; b=Oz1MasjFcfJ+HzqG
	JG1N6hIvA9asjg/D/B7L6mjOg3AMtntgb3oEwn9VDRXly4Ny/TDS2XSWkENEPe/v
	K4k7KGYiwmp74ip9orB8XMwLYeTV4P0G3EhMLGL39jyFZn91pbEVk3wmBj3+r7i4
	hJrBOFN3+fudWQ5rO5sn6AhOCAyDpekr5w6YiejMDMJ2ZhpbadPyCNkw3IQWjn/J
	EC4GC2xP5cGSJFW3Jb6fVYqi7op29MT9guvx6Tc7mYSioYfl5FdPYYGrSuCh/YsO
	L5e91FpJkkw87U/G2phWnK/fBKtsGzbyo9ECOvhaEMoL++ostFSivf2AU3uH0KzU
	1NwtbQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxg93jd3p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:33:30 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c709a3a56dso24083185a.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769513610; x=1770118410; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zoZb2MS7iH8UWFdtI0bG1tG2Hg+LVF5otZHfxHqr3mU=;
        b=S7X5vMV5JW+zmClo8lQwHB4vfVeZlCiWoKZEylEeNjo54v1kH4VgmhQvB+Jd8CCNfz
         Ohe5BEFttEmJWngpeC3+UKC1zSFM/AMf6qvyetD7GPonlZhQD1oEJPjsX5cx8i3dRZfE
         jRPagXgsUX1NcMJJbOPN0VUpvOfoOs1yKCHG2C8Se3i44VY+E3c6quywGB8nIqbNTi+x
         axXwJVhQ7IPhChXHgKB2mgCe2L3HJybOlREgV4vmAxDGebVS0n06YpsZb9ieNfS/7W3y
         huZfVcOaI8soz3dWybVeQcn/ngG1JqIsBH8cZak2uai78YgL2QC58yOFdxrOhTM9b+bj
         5q4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769513610; x=1770118410;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zoZb2MS7iH8UWFdtI0bG1tG2Hg+LVF5otZHfxHqr3mU=;
        b=p2LCFuqTSD0YcemopZfmNyh8qS7k92tuPNpJcRLujQnMFWUv2LTdiwAI5561dZaMEZ
         QfUPCf3TRgAf6KpvDlvTLmEVvyVQyxh+XxG3rqlNnMKL1y5UYXgY3TqJJ+qIcclI1S7A
         ntGtOb1IYEPTc4LJJOF4Jtc5gfUykiJCFs8zOJSon0T9Sz1SQXeSxnbW+Gmh9LXdWPdp
         W/yYZKXwBlxGNdrc96z3jD3taNKlGJJwoMmYVw+T6P8JffLzpBWPYW+wQ8uLShWrLseG
         C4Smtsi4yznIjVrSIbifIzv4sZRJSa3yyyQl7LpebDc/Gjq5a5U8OutjaM80nrdmdGVV
         XTew==
X-Forwarded-Encrypted: i=1; AJvYcCVY3pp/g/Gn4ItxEgnXJhKumRfMwOIy8sv06NHdYRafoH0I3Pv0M6siG+EwVYAUEtcAAHifHA7fpVQA@vger.kernel.org
X-Gm-Message-State: AOJu0YwhFcRxxDBZ11TLJxT3/LUdO/T682ixPt7Ra37tYEN2IpyQmku4
	BSp7RhzbuT7uMLF58woJtrSEfvNGkjeHrmfN/DbO5/1iaPgyMCiW4KHQlZtpI38tNrmjE+yC+4k
	1j6rOBBDnS1Ad8jCGYW1P33Gf8lqsWqnZun44zWEg7RCH+KRBg2UNHTYIsHyyb8vR
X-Gm-Gg: AZuq6aIT5zHOiPJgc3CtBTEwQIKA4zReDwAjTusbCo9a+eBUeIBG4/bk6QCqu9P0XHA
	Aj//RGc0IqZ22qO8lZvQBnPya+e+zhin+VEbhhCofN8nKHwzJrCrKg8Pcb3vPvPQt3/+BbxZi4o
	/pUxcoi3gNHjsbYaY73Gw7NSo9b4KYFOYmE7GfClh48+7xP1nj+NYo/EBJICB7Qewtwkt7yO2+1
	DvnLr7qp/k7NDVrAzkDnmdsGxI52u4sWeqzQzCyfKngmsI0f0RYjKqnB3vpVIRaK2WAdTZj/Le0
	+3x05vmKfD/exUtRDjjWynF4GIWyiyE3BhTyl+YhtI/4Th4VunWbqtkprmz8/q7KrchvEUTzJkA
	ETNSski4d3FIQsabTPMZbxcC4uu+Lr/xpL4wruK72H+WRhs0EiSE6i6BpfrFWUzaFtM8=
X-Received: by 2002:a05:620a:2009:b0:8c7:eb2:1c3a with SMTP id af79cd13be357-8c70eb21d8amr34147685a.1.1769513610355;
        Tue, 27 Jan 2026 03:33:30 -0800 (PST)
X-Received: by 2002:a05:620a:2009:b0:8c7:eb2:1c3a with SMTP id af79cd13be357-8c70eb21d8amr34145585a.1.1769513609839;
        Tue, 27 Jan 2026 03:33:29 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658abcf999csm259777a12.2.2026.01.27.03.33.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 03:33:28 -0800 (PST)
Message-ID: <e9acad0b-6088-4564-9169-96ff2c453447@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 12:33:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] interconnect: qcom: glymur: Add Mahua SoC support
To: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
References: <20260127-mahua_icc-v2-0-f0d8ddf7afca@oss.qualcomm.com>
 <20260127-mahua_icc-v2-2-f0d8ddf7afca@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260127-mahua_icc-v2-2-f0d8ddf7afca@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5NCBTYWx0ZWRfX3cOhqApyLnPW
 AEsRsIix/ggXfGmFGp5tCfCVSISFSBGah2LgafIIrCD1Y/FelwIVuHSWfS8Sh/bjLWe2y75BhoL
 SeEhguIstTvMk/YiHTK4GuUKtFzHFj+E27nRcz17ZNVvsN2/24iU2yZ1BO3aRVKU2GQCP1zzP5a
 on4o72I/RrKFB+d/lUdk+8fjWwl2eNfSQ4zSIjkVp33EP8gHAeGGrNelYtKJks+uhPbUm4RBY6q
 VHbloFVJ+kLphG4rlchzz/pzdxbHs5owLG4pjf988ecMDeqZcPaS6mey+bT9zMCTx1kanFuAzZs
 r7eeFpQ74xIoGDmbA+ftcAtg6qJtEcsAtnVoT8V4lj0SBkIuej+kqLCHY73+hPHmouyWyoJ1u50
 PcFUJIi0QDUX07htlhM9k4CjPrSCxF93Z7bZX4ZDIjiCiIibRTApCP9E8rCe1lrwhmd9Ad/N3Fj
 lKVppVgz8FrkQ5lJ5kw==
X-Authority-Analysis: v=2.4 cv=Uc1ciaSN c=1 sm=1 tr=0 ts=6978a28a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GtF0_HNWVELJq49vNZ0A:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: FEyIQD1c7sc91Qn5hzHK3xr6_Eyvn4Ch
X-Proofpoint-GUID: FEyIQD1c7sc91Qn5hzHK3xr6_Eyvn4Ch
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270094
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259840-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DED8293A42
X-Rspamd-Action: no action

On 1/27/26 4:22 AM, Raviteja Laggyshetty wrote:
> Mahua is a derivative of the Glymur SoC. Extend the
> Glymur driver to support Mahua by:
> 
>   1. Adding new node definitions for interconnects that differ from Glymur
>      (Config NoC, High-Speed Coherent NoC, PCIe West ANOC/Slave NoC).
>   2. Reusing existing Glymur definitions for identical NoCs.
>   3. Overriding the channel and buswidth, with Mahua specific values for
>      the differing NoCs
> 
> Co-developed-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

