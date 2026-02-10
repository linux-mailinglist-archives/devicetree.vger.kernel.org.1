Return-Path: <devicetree+bounces-264313-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ofB8NOkAi2npPAAAu9opvQ
	(envelope-from <devicetree+bounces-264313-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:56:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CE31193DC
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:56:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8735C3015102
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:56:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89CED341AC5;
	Tue, 10 Feb 2026 09:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ODOcYK5b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a2oTzW0c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DAB0342CA2
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770717415; cv=none; b=q1KQZR5/n/fkUqgx8s+gv5gZa0Bj+v1H/vDhd9u7x2VSqZxJKF/wzd4604xlydOGBuBrGe/J5Nc1gHT2iijsXjAxzHxgyPTk7x53KWeTKQoDVoGVYEvw5i+3atPO0HLdtGjigT9adeskqeyJSO3icC0WjzWLpNeRtRdzYfqkx4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770717415; c=relaxed/simple;
	bh=sv+dnG3zrbqwAxnVlxZli2DpyFtrlVYKm/TvZD68Dqk=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=NmVtE5p/g17MYGWWUcbTg4COl0MTm69vKdDXyKawaSiVjevB/l4LEF5bXIKhycwal9M3yjdPjKEilxMCfSJGVxaXBLg26ZPQatnTBZlER1vZGIUmgzNTtmlHZ8f52PvwAIqu5c44ZsBJGO9nai0c6ovnqMqaLELzSKtL3Wbsnxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ODOcYK5b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a2oTzW0c; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A776ut1151832
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:56:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	whNOceZZd5faQiSJBPuPpUiY0cxwZFbeiwvoghwTez8=; b=ODOcYK5bvRx732Ie
	L/e3A27V6aPw9rP7bMQa0LnEPjJ8ndkSdU/Zxt7SxJGlwEIc9Lt6LM+8kalYaTBc
	pshZkVtUNG8s+p35IOZDyui2hRTohpT7dr8fMg9MFdoC5KeXs7ejEH9b7Ng7FRnX
	Q4yGTlgA+0F37jM5agkmMBUmIzqsHjmNFCMLZIIUvBa5V/QbhZO71DtAU5eUcrt8
	JcuAN0DHo6EeFBMspSJQHP2rPV9ltcw546U82qEnjp4FTheVbSly5oxKC4U6Dtgt
	hBnKwaaferAhvKzx5zNw3VOMMUqL+rcaQvQZcG8uDAWnJ1zXlQ5RSZYt8wzaSKSS
	uxXaGA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c800j8kyy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:56:52 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c522c44febso164570085a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770717412; x=1771322212; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=whNOceZZd5faQiSJBPuPpUiY0cxwZFbeiwvoghwTez8=;
        b=a2oTzW0cw+LZHxLl6mczhjPUCSiq0MsF3jhVcJ/dlUOHYTLgKsqf8M56wOppY2hJAA
         FLOhcs6rFDG9lMagLXNP5Ba7i4Hr0k5qGKyLUqu/ExeBSlfrjTkbXS+HXhCv7HvZS+ol
         hn/4pbKUxoJlpHQIgA0MWGvGdJJKA1Ap0H2Atbdh9wFfqXdcV57PZ5vRsgvFDWTABl7E
         BRnx83IceGjHO3OjPUYTrnFYqk/i6r1waNSOfAMWh7gc/fDdM4VmmOtDPwFTewj82zwU
         5240J+/9eY7DWTLJMES2MK7Kz9lySlfd0BPZGG/M/4SjrrDwc5vSoIPVOexY5b52W42D
         WVYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770717412; x=1771322212;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=whNOceZZd5faQiSJBPuPpUiY0cxwZFbeiwvoghwTez8=;
        b=jvpx3JWs0GmeQouKnQ2NtoGvo/INZ+Zc0wNdxDRwAbLMYeVLbOaog+5ckRqOruOyp7
         ZwbGciW+x2mh7KI/GouCdOGexS55rTR5j8T2xqMols+zMUaEV8Go8oOcfRAEcnu5h6lx
         dH44OytCsOMRmyKsEMVIs9rro2sSGJNpZfRxUVQvodfBryGx6w5ruOaAsTJp1CpzSvn6
         v7afM765dT0l/Uz6NbOHSte6HAPC8XXQLjh23jHm3xckg8sD7SvxLvEDtma3mN7pzZ11
         5T8Xfhl/8rPhpYbnUgd3Yj1BUVlb6OVhVCQHWpki2tOra9vOFnBfG3bF/TRauNGccj4z
         ytUg==
X-Forwarded-Encrypted: i=1; AJvYcCWVnID7NMYz5lx0gt5CbsWXyo1XlQ0XGvdMk5aPuWhdsXEMwVX1WPycCPbKXVuoN2wnVHugdOcJINCZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6coW9WttQjY/8+1QowZMyBkUTLo6HO/qbZhLB5LwzScCXtE2v
	p0s2HlzdZXSdLPK3Qm7hH2zgBPqhes26beDm19AUCK8dlceuNQxWtJ3uveFx3JuyLOVpeJfG0Hp
	cYVPXKrygp+RDwITfSOpU/ZVTYWNkulc7GIz4SQz2VaH9jyfGS0kZnsbeXFTMtfei
X-Gm-Gg: AZuq6aL0KeVO52lRBK6ykd1D8yk6qqz6EvCBPRZZYGYuVs9FxvgaWKLWg57+ZVcbADq
	5vytgeiFadGCTisNk5+GOKSUY24lqrBonu+1ATOB0bG+HhE7N3jSGUrDbjZprX9PXlumiWWlK1K
	DDLj3iv9FvIyqZv7GIbe/2Va5Wrv+JsgvasUUA08Ajw99Xl9RoNjNwdU4x81RW7s3Pp+MTVRarx
	0IO4bptiQCqFrE2kw9Dp5WrIiS46g5PMshc7TcgNpod/5lG6/KnjFyafFfMTvTx3KPtRAJGdDV0
	YGoYeUeGBrq2Lguv0tUxdQhn+sqYx5EZJfn9iaD2dbFEpJmQhu1bl/Xp1TpN4buej/NFlq+MkPw
	NiKbDuS97IBdo2Q74YjSG1n9aJG0h+pmkFDm/qX9U9+FHios1aGOclLWoxWnDF3wd3pZSKQ1PMN
	EKv6k=
X-Received: by 2002:a05:620a:29d0:b0:8b9:fa81:5282 with SMTP id af79cd13be357-8cb1fee5291mr108066785a.3.1770717412124;
        Tue, 10 Feb 2026 01:56:52 -0800 (PST)
X-Received: by 2002:a05:620a:29d0:b0:8b9:fa81:5282 with SMTP id af79cd13be357-8cb1fee5291mr108064485a.3.1770717411578;
        Tue, 10 Feb 2026 01:56:51 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edacf1564sm501975566b.52.2026.02.10.01.56.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 01:56:50 -0800 (PST)
Message-ID: <b91ea09a-8a3f-4acf-97f9-3ef7e1d35bea@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 10:56:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: mfd: qcom,spmi-pmic: Allow PMIC4 thermal
 monitor on pm660
To: Richard Acayan <mailingradian@gmail.com>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Stephen Boyd <sboyd@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20260210021819.12673-1-mailingradian@gmail.com>
 <20260210021819.12673-2-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260210021819.12673-2-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4MyBTYWx0ZWRfX7w/H0NrgqmwZ
 p0y8VhXD2p8ZtPfwcEuszBl4xqdLJwwLgrcGYIWZ9Mr/oG4VHkPFkT8HHGyrr1CLhXHry68zcYc
 JHTiiF4Oaon5eeK4j8mR6K8EdhCJyhXninRTGHj96R/BHqXdsa2V/yar53G0/Ir0E7P7DCJVZBC
 yp7o/61s3uJ4rz/8xzDLwbgdDlk5I+rRKCWMdOl/YPassSwBeG/XZ9DDNevYT5ZyQpn1zVQN/r1
 74sVj3jAKrD4TCsT5SxjzY8OMEFSgEqold8vR1fi3p0c4InbxcHqU/Bt3J2jMClLJXs6UBOkf3I
 kexiDYOtTDPqPBe/pdn9szfXLqUOzgTg8OdPGSHlk3GiLmSfIeVxAZk9i5hlXV1IjvRP32OQaLU
 ol0S+I0TE0aYQehGxocrvMoz8h6DwWSUO64zGVcOGDwg/XmlEc9aFNLOd2LoQ+yODUDzqxj/wfy
 MWclwfswbGU4vh8nS1g==
X-Proofpoint-GUID: I9m6WokdtzqPQjIwPq0WpMHE8uczJwqc
X-Proofpoint-ORIG-GUID: I9m6WokdtzqPQjIwPq0WpMHE8uczJwqc
X-Authority-Analysis: v=2.4 cv=b9u/I9Gx c=1 sm=1 tr=0 ts=698b00e4 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=HHRwIaEf9NpPtzNnbr4A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602100083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264313-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,intel.com,arm.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 53CE31193DC
X-Rspamd-Action: no action

On 2/10/26 3:18 AM, Richard Acayan wrote:
> While newer PMICs are compatible with PMIC5 drivers, the PM8998 and
> PM660 are both PMIC4. The PM8998 is allowed to use the PMIC4 thermal
> monitor. Allow it for PM660 as well.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

