Return-Path: <devicetree+bounces-259895-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIEBBh25eGlzsQEAu9opvQ
	(envelope-from <devicetree+bounces-259895-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:09:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEB794B06
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:09:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F0483010156
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A64EC355024;
	Tue, 27 Jan 2026 13:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LM8ousV+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Sq32Ox90"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4865A3559F8
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769519386; cv=none; b=af+s0bD+UQYLtUym1NZWxN+y0UXF8ekzwStUtDxD0yLpo3TZTA579TLe74sUyvmy29ouhphHRgwgPgxs8+JwFftc67fsVAlnFYOZAnfbqs8YqwcO4EuIJk8T8GedQF0O0ZWWfCLlJAsWB0azb1ZMI6euaAUr505BrokpkHLPEZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769519386; c=relaxed/simple;
	bh=efnuRKhwzJZms3R2Iap4Z5vzHJ73VUnpIx1X7ssSD4s=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=dwdMrDWa81VgT4w0WQDDO/ztVxXGD07RdxNSJdNo8JxB0RHqL/c09M0mE5WJne79CfaDrR0y/8IIt50uq3Gf3/QedbsHNqTAdY2GSvcI6QIznUlBqIaR2YNKkzTL/Jr+2I7fIAMm3dU+Xnwu9QOc2E7PSwRntiiG/blwN9yybpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LM8ousV+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Sq32Ox90; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R9hPYN786325
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:09:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GUh+2wDwMu27bOWGCEtKXnkz40MhnfurqwVrLlqHxp0=; b=LM8ousV+vC6sax3P
	0VIk/mnDlS5cGZrb5EadMz1r09QNzb5EzLMiEjppDpVsrqjQF9Dam5dZ/OgGXDpD
	VqdXOH2ZsaD2z6XbZFKemU7ohFzopMxruMrHFfppmnfdK5qGBs2tKwgCCUacd21H
	uqiFH1IKNZ4jO4edmRnsu+t3cOGBT/P9YiPCBbsmqlj6MW56juyjkokBfO3SkC9r
	8USUFwsfoSXlUrPiuSMq89EeCqvCqJ9A83561DwSrii0W1Ux7IF/A6jhaXtIX9J/
	7s3cjN1VjbncSugUUQcE5sybJj/MvJwAdVZ2gMLt9eaS+W5SmulRn9qSNksI1IhK
	uUEhsw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxg93jn2u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:09:43 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c533f07450so155329785a.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 05:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769519383; x=1770124183; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GUh+2wDwMu27bOWGCEtKXnkz40MhnfurqwVrLlqHxp0=;
        b=Sq32Ox90zZsBrsOufOYez+st6UJjPjMjRtUUSFTkLjCK8z9Cwuon2gfGrpPOJrp/8q
         iWYbxpHcH5SsZHBj315MfjMU7nZztubYvQLwaC9byee1NzaqMoCZfflPA5s0WkcNBvWX
         oXuogovDIVwEJIlFj9q+QvCqRFajqho0r5R5HFuQo41kTfugJy+YPNlP72qScGlx60bS
         rMVJptHkmLbYfEe/+2yWg8L6N8/k4saKzzx4KtmQwz1RIJd+ljjyU3trIw1UITsvLexI
         5Pun9FTrlL3oQ761aR5xqdfCtZ5LvjeJxj2vh4Clp6lzWqqfkU8l5o6oFilQ4j71auLC
         4WNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769519383; x=1770124183;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GUh+2wDwMu27bOWGCEtKXnkz40MhnfurqwVrLlqHxp0=;
        b=gqkL7r4gtRm4Wj515D3EA4zNaMDcOewb261GiNsRmU/PebAW7SXnKuP/JiNsvaW2zE
         2gLXk4Tm6RN9kVRib8Dbb+OMBcPVyzUJw6qprwOn7HOZZ4EKeCzWl+YV0e+ojonMF7zf
         p32kSEOebafsVAJTFC+mDfTC6gBRdKJkC5Jv9CpQ4hlMRuYJx+ADGVGp+DLArltNLFX6
         gZmt/T9XD+4r2QYOMxkGrvAKl1Nm1y1eFpGIdL1FYn94qwpRot6uQ5vtIJPFNH/sQjB/
         zA4vNPQQtYMPvC1rM1SRdXeEQFtKTFIiC9cU764uI944HMWABiQOSGOoWLTcQ1pEYJ7g
         VpOw==
X-Forwarded-Encrypted: i=1; AJvYcCXr2/RuWhujZcjnNDJq40gnRh9QKA7FZKVx/C2/TjYBsc0JTZE9Neiybq2alig28HEJeNwwHeiyeKvc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4rT4+ymzEdYddNNN9CGAyApTXePjSXpq42WAjBSqNmUF1ATbz
	beUmh/VcHiQNbXvdVJjMSLw2pyyBvClvLp4ooy7IiFXT7MMDOcRD2GTZjk6FTUEFknySXDVaQFY
	Okyhw4D+ZtRYwl2ykc9gksU8J8u4eToGoTKcl3xCIUEO/O0OjgK+yBtWKoG3Pnmhg
X-Gm-Gg: AZuq6aJfZrOdirimKH8x1Fw5jaYn3S16ja6H/LaCUKd0kXtj4Ed+riXhvdUODKVD1Re
	mvbswwJ+JKsQZ7wb/Iq72CKcdv4QmzcdblRJ/AuygINIvD8fRHq8VoBZxTQ8CAkc0W7Jy5XrSpc
	GgfgM0asi4wjPfwEJcdPkuHfxpWFaiH1hras5xsw8V4E8t4TmGQwsmztMj4Qe/q87qcREJk2A9A
	CKNFCsrkA3540A7lrC6k8mZWHSxJrnVkoLlvnY6g/jq/0JMp43O+knlFvBbHA/lIqabdI9BrgAN
	awbVqG2UNQBvDphD5ULTt2lpAa48/kD1W5Bg4kH99R7yi+JHx0BODrAg57gYM9G1DyxoI5oWNa4
	fNzQZ269KIrqn6wd1HzNiEA41D4Y1eawt3Fi1hvb+mI3Mzc0rRLmFfr7YC6q9Oisr+H8=
X-Received: by 2002:a05:620a:4606:b0:8c5:340b:415f with SMTP id af79cd13be357-8c70b879418mr120554085a.4.1769519383382;
        Tue, 27 Jan 2026 05:09:43 -0800 (PST)
X-Received: by 2002:a05:620a:4606:b0:8c5:340b:415f with SMTP id af79cd13be357-8c70b879418mr120550185a.4.1769519382809;
        Tue, 27 Jan 2026 05:09:42 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b92b5d7sm6310264a12.17.2026.01.27.05.09.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 05:09:41 -0800 (PST)
Message-ID: <7d222bf9-12e7-4d14-837e-77e683cb7b25@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 14:09:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: ipq9574-rdp433: Reorganize DTS
 to introduce eMMC support
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260123120016.3671812-1-varadarajan.narayanan@oss.qualcomm.com>
 <20260123120016.3671812-3-varadarajan.narayanan@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260123120016.3671812-3-varadarajan.narayanan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEwOCBTYWx0ZWRfX9UtgOYYdSwty
 qqhhuupJqzHfuA3Qw4XdSY7aHFqxfI1vwnWoqsfAS8TE8sbLMMlt5jSrBgYEzwwmQj4JvySQKm2
 7QozUtMIf9KZbzPI3owuN/Pu384Nd07uU6DuoHU3ZtCtC5+cS8RLWUVWfX8CDwSbi9jgazCbZVp
 bKsRPhan+rjTdi/UKuRVkZgtLb7713Y/qUdS72pd6qEt/p+CeAxh+FDctnbMZvLmPEjoqnOkAu6
 7a+ygx85KCuNske1h48LGTFT5mqcV42weHRhHBTBhZcWIe94qous2Xsm3ocexiAzmJJ8c41FOH4
 zSv91XwGI9jksdC7gsmN8F64kWHeUVYfHGXAUMP25EEsJY5Zimkz788uxPygp2AtUaN/lG2+Gvf
 GoAm2kHSQ7JluGwcnplJKxkfJyT14vflKEpbIwdqzLoYpmEMGTFt9xXLerlUrEqGRfcPYThq+Ht
 Tpc+P1jMINNaTN/Eu6w==
X-Authority-Analysis: v=2.4 cv=Uc1ciaSN c=1 sm=1 tr=0 ts=6978b918 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=HyYZfqGJ5dFu0zQJZd4A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: cpNYG1Ro13jzGiejX2YbPtfV43Cglejv
X-Proofpoint-GUID: cpNYG1Ro13jzGiejX2YbPtfV43Cglejv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270108
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259895-lists,devicetree=lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6FEB794B06
X-Rspamd-Action: no action

On 1/23/26 1:00 PM, Varadarajan Narayanan wrote:
> The RDP433 has NAND and eMMC variants. Presently, only NAND variant is
> supported. To enable support for eMMC variant, move the common nodes from
> ipq9574-rdp433.dts to ipq9574-rdp433-common.dtsi. ipq9574-rdp433-common.dtsi
> will be included in rdp433 NAND and eMMC DT files.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
> v2: Move common nodes into ipq9574-rdp433-common.dtsi
>     Trim down ipq9574-rdp433.dts and #include rdp433-common.dtsi
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

