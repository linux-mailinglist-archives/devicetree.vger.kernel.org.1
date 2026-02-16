Return-Path: <devicetree+bounces-265849-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJF7FgQzk2lx2gEAu9opvQ
	(envelope-from <devicetree+bounces-265849-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 16:08:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2ECB145231
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 16:08:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 011CF300908A
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:08:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53BC0314B82;
	Mon, 16 Feb 2026 15:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I/DVcggG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jVUriIA3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C722313526
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 15:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771254529; cv=none; b=t7Qhmyn2XrX6/upQoF+1/bj/ocYCam9UxFWb2aMvcDMHbPMKFzJecMCVYp/tEnaW4YWNsU9HgihMVhgl6GqaMLbUmpCyrJhQUcUgEeZHjNjYH9V0jGgDFfiORcjJr1n/fpbFz5cH25Toq5ToYIS8XFbOIW+tPwKZb+CPVEwzwgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771254529; c=relaxed/simple;
	bh=4SoLAHTvcPqxmv0YowTSoM31RJjfqFp9kt3MUAd2TAQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DLMd/sJvfwM7AEv+TDUgYruZMKGKjOLrXIcNAKBeXvqrRAF6Y+dVr+aD9FAXMTQiMzJv4E1ZhkcbB1n+kuan1paqnopmlD1x0ldDUbKG05eFv0W4g1iGF4Spyy09qJmcmW3Srn2kfecclXiT9vDkSMRIxP3PNEIViWG/tyJvPfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I/DVcggG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jVUriIA3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GC0njZ2985684
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 15:08:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PhCX4b+SuO+iSEOO7ILdiZTUSuMVKlPQNNXw0P7RuA0=; b=I/DVcggGFuT8Qe20
	mXhYGh2IVQWR27rqQupqMXKjiXhGkscy7HYN1v4IPX0gqu4a5RlMQhXPNHT29R8u
	wy6b2tLxy3PAZIUb/3I3X1tXyfEaglN7BkIiInrdwzR8Kchh+BqnXQU95HEVJ/k2
	A2LAEptPllzf8yQ404qTbPAcNssRTalBUjTqT4/ndEsESb9sJ8ZsAzqOzu+R/T4H
	fDm56ywGDfCeqvfJv4ZNrXMsWuQjj/eN+I5UPJPnPoqx+Wa8b2cAsaOYkOkN/GOR
	ohAzVqmnmKDLbuik+o2xGxHNweQep2WdlXnrv2lKbNm2KVBdBmfYAG7FkW2CV/A/
	XOssfQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cbfuw2gq9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 15:08:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3978cdb2so220608785a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 07:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771254527; x=1771859327; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PhCX4b+SuO+iSEOO7ILdiZTUSuMVKlPQNNXw0P7RuA0=;
        b=jVUriIA3DlhMl9Sm863tSNKixNx4d8f8n7UHN3xWPjJTDLmWjZyckypPB3naXjq+/T
         QRBub64yiFXIyIPMibmrvIuwwQZGmfGQAh89jgfAkv0xvOi4uxgO0LGz8J7tTOtQGQl/
         wVWzOmS+sOJ1zGMkMUKeTovr3ES97d+OK9usoe7PZChQXvkd4kbUBh8PIXyA7++DYO4y
         o6tUjwUzuL5jUwQTnnpZKin03BWtgmA5uTkhUaXFH+HInykr3Wb3imqBEH95sqAPCqtm
         +kJogV+Os+XHnFS8t93+q4NB8AJtQcnG6mHfZzi9ZnVTKv9n4OQruFCBDZmDENQzkTq3
         /hKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771254527; x=1771859327;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PhCX4b+SuO+iSEOO7ILdiZTUSuMVKlPQNNXw0P7RuA0=;
        b=PBoNgneXpPszsqciraR1j9s7fpwfsZQvRttukYRQ/QLgQMtI1CaEwSaMrEEMvaT76W
         8Oe8N1wCI28m+DSEs7dg1jkfq6L0DhvnBv8sqVGkmdpVZqVBKSiRdG2ru66QL14nM3bP
         Uvg3BanVcnDrgf/G0pbDf2rY7VTPuTD1+q06jjGQs7/cgtNxOLWu2oUD2++gQA1VsWXw
         d4h02YWCdLEPMFNzkEYJq/GKUopknQJhSY/N28NcDNPwFCl9dPiffJw/H5+fvcIEMSnU
         6kUybLSHT8p27EvRc3rmEe5P3DVeKwcrEroR2tXAbGEy22kKIC/K5SQpR8EYkBmShNil
         WZaQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0/cdp0B56RrB1e9Ju/xRo3RSzQnPK3dItcWeiVM29UkLvmkxXGDnmnKCdbL2HOgpXSovS/wKQqjht@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf9SPoODqmaoGQhxMKCnv5tcsoRm4HqSJWqyt9vL3l9maqNp8v
	5f+e2TkOrRGNHJ6mFEfVPI8ROtOgyZbG5t5bP8o9qqIYzlv3sa0mDMUKP9pjTgb0Ks/YSDWaYUC
	Q+O/iOMvQljPPqCGtHNnpHeb3wBK8L2Qhj/HNb5aaspMfUVtutxMWWMYf8TO+Sqbq
X-Gm-Gg: AZuq6aJSegLVseHgv4beNqlXEmFIEO7ZF8/wavzYOSxzOnGFjd3bsrsCqKpyuozt5wL
	TeXRqIaWyJ0/3wCTIrQeV13YSCJTLg+x6zLDPhe/A3qOJ2MnVhCJdMqABZR8RSLErMBWxHfN9Po
	MOmzmyc9GKbNljXkVntsFIXG2+IQI9JWV0KEFKDiLuZghCFBTF3MRHstvpV7RM9w2/tYW7GFPiK
	sr7BoqYo/HR9j0GHDFzseXczjpsXQ6oe48TM8BlOag631qmSarOIdXmmZtGbiqgG//3EFI5goXh
	XQTfLE4eJQnr49ClwCp1p1z1jVR5Tk5zN4cj+4ap+OSxhKWkPZ8FkERutRnywEZqmp7wTRFaoYF
	bYnbD+txRWwpV5mFvkpNnC4lqCyCBqLwpyHDmTnQSyfYys5Q0fA8sLOls2IV1xrV+mvCBZe6SS/
	3PAwk=
X-Received: by 2002:a05:620a:460d:b0:896:ead2:a657 with SMTP id af79cd13be357-8cb4073e264mr1079997985a.0.1771254526589;
        Mon, 16 Feb 2026 07:08:46 -0800 (PST)
X-Received: by 2002:a05:620a:460d:b0:896:ead2:a657 with SMTP id af79cd13be357-8cb4073e264mr1079991685a.0.1771254525954;
        Mon, 16 Feb 2026 07:08:45 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fcaab2e0dsm253896566b.18.2026.02.16.07.08.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 07:08:45 -0800 (PST)
Message-ID: <5edcdb06-837d-42bc-9a5d-91b87e19715d@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 16:08:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/6] clk: qcom: Add TCSR clock driver for Eliza
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
 <20260216-eliza-clocks-v3-6-8afc5a7e3a98@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260216-eliza-clocks-v3-6-8afc5a7e3a98@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Jb+xbEKV c=1 sm=1 tr=0 ts=699332ff cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=z393bjM37XPXZEtfGisA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: elpWr8BEBpGffBAFyG_LDCJHP3p0WWI2
X-Proofpoint-GUID: elpWr8BEBpGffBAFyG_LDCJHP3p0WWI2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDEyOSBTYWx0ZWRfXx7wKaMpaZ9Dj
 xnNCyzo0THWOmrfzkP8F7wrJj3hGBuh/uNqo43yY/k0HMo92xXj3Bh/XD9I0uR+FhkEQqAtlNNo
 LvfDvFvU/clPGhKGOLPRC0NEgqn4J2nINN6ea6nSjrXSokRxOkGofTbWABM2WKXP2u50NB3phuq
 joGgLlYxoyfhK67xqYs6NJfIa3isfZJLTlhy3woqVnmg6ybqv7ucxW2KI2G82rdWdgL79KvY8fa
 rhilPASFKsDUc4Ja0lfAVj5dJvczxFh89EF32/UZXIH3Mcwc3Y52+8b7ziqoAqIqQV3Re7z6rVN
 sosmp1PbxtO22zMB3vugEHmwYhmWW+lQhfRAUIKKMtqkXYoKSM5wf7tlGHgwc67PPJ8/mwR1xTn
 W3wNNixDG8h5Kx1ByBfOBzI+cjacYNn5DfVIV94Aec9YbT408JWr1DpTqpNbJPJ5tRnc56r6SnB
 t6Vu4I8nO3as1HUVhOA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 adultscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602160129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265849-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C2ECB145231
X-Rspamd-Action: no action

On 2/16/26 2:43 PM, Abel Vesa wrote:
> Add the TCSR clock controller that provides the refclks on Eliza
> platform for PCIe, USB and UFS subsystems.
> 
> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

