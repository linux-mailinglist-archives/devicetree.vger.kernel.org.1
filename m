Return-Path: <devicetree+bounces-266139-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIaEN7xnlGlFDgIAu9opvQ
	(envelope-from <devicetree+bounces-266139-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:06:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DD09014C5A0
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:06:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 294A13006D79
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D71E5325700;
	Tue, 17 Feb 2026 13:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pqjub6dT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GPI195iF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A627223817F
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333382; cv=none; b=GEsmDdAqAP8RRkGeASlukmihboXsgPG9Tv8PMlJ6aovwltXt6+3VYPxKwEuSYR+h/Q14yNPZk90IL0OTZurJRbv6g87w8GDeXuGm8v56D2x9YGtFrZvrDLhbofP3MWe16cX9fRnV6ne4ZSIlA8gFqmoSbksuBgwDWwrEJhHF4nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333382; c=relaxed/simple;
	bh=6SgAWtQb8PX7DsmKfS1ar/bVGRlUSpjeBG8c8DPZxk0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=P2QnpOh66Mxxc3DsoJO5Df0chMPU8Re6qn9uon+F0gPPyM8kcAJDZIKvP61D12xix7ttcKmOXjLdXEHzhzTIG4viSM1Timn9itj/9++dbAUgzhBoA/Fsr6iLP7LCz32QTRNwTi00DaqsZ9oMDf6ojFxq+yhu62A3l8SUB7Oa5QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pqjub6dT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GPI195iF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HAvjDS850154
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:03:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	An9Vv1vqNs3nmIxOhXPvuWuNV5jNcLqHxON5vO95rRc=; b=pqjub6dT3JOUI6P3
	wc4MH7O+IKQiQYC/cVYHYH+MHZL/90CdVc3J6WCcSg1Zz51fh/6IFpCER7p3mSV8
	e5XdMWs/Ud/oAy7f8/Is2ECd+nZENAK9T8auz4y+A+gNl3LVey7Z940QrlEeP96k
	Zg2r4k+86LvBKU6Ivj0gdKKUZS9lxh8pdCYLpQUo4jxrkMtJ1gZpnjHjcnNiA/4D
	U+JiVs6msz+JLJfSY21PrtmTKu79/E3sNUBAo8PD7O00ZVS+YDshvO0XO3D1rddj
	X0xlVNGe1Y+s5fzRV3dw2ahUXhTE13v28GWUazROARARfL4JTk+M68dcIInmsc9d
	TaXDeg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6nrtd65-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:03:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5064fbe2babso31827861cf.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771333380; x=1771938180; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=An9Vv1vqNs3nmIxOhXPvuWuNV5jNcLqHxON5vO95rRc=;
        b=GPI195iFPAqMkXcaiJ6K0FcIuzx5eBDI1AB64UpxW6HsE69N2d+dsS/MKZoLWgBSo9
         C6Nah4Y4BP9oAMu/pTM9x+37cpvtCDC2dwrAw8BwcVSJ7pNQjWxlb4YlS8hS5gtgiyHR
         gS7bYzgz7E7BZENEm5VV9KmzC21KmrGrPk2iB25f+AxFBcxORt2nPjRmX01r0qA1H1Ts
         dBlSibBmSX6gDZGqnBpRNX9rBJS30B4ddA02/sV3NhI6VyULQXxoHIaDdiGcQNUFUTVx
         Gt9p7l6M57dJwZCMmvC+Pp4rjSBVC1Ylqo+h0mTmc3JGWkqb6+2uibt4bPGEwxgNKSkF
         N/EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771333380; x=1771938180;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=An9Vv1vqNs3nmIxOhXPvuWuNV5jNcLqHxON5vO95rRc=;
        b=gDhxOPko6G6lQMe32COZy0gHUrgaNSDG4cPBNYNpPVekUGGVw1ynSEsqfg4ERQCpaM
         yoRYFkc7exjLBwME9cLDbLQNnaIjhgjfkVQm4IfrO6xuB5yinX0Wg+85QkkvSUXv3vXK
         m6/oB/fUy0vi0clZu9JcBMM/aEzA1QfhAOUQVILdhTRu2VzQ0UZctqglkYX/eG8lUKY4
         ZWjSHJSSmJc0/d+yP37varzv3fZZfpyVBAnLf2lMpTLKBUxKUP7pCo5AWEUyOuww9w8C
         bWg503gFhxQYIiB60OjhBIt/W0l2nqGiGoOoRhOTop/7RJ8XEqoJdQFziQE/+86uebMp
         YC1g==
X-Forwarded-Encrypted: i=1; AJvYcCXBFjwXlijiU7EkDcHupiu/uE5Lqqg97KoZ4wPr3i4v1WoPuatVr0KloKn40SSSgBUGlnPF2yLMi1jC@vger.kernel.org
X-Gm-Message-State: AOJu0YyVMqcu8h/uW1f2svirVCPYPSs3Zt5m7pl5JNJJHK8uvp2vfZPz
	mE+TyQol4kruNVo84ouLikTsSXOlOxXsXwAESQ0YbkXnZzJWA15Waw+Bq1wYaR/zFcaIH4r/klN
	JEaKTAjN8aSp0NoAUld8iB9QpixdpdD5w6/26465H02l4bLMW7t7N3wOCjHJAmuH4
X-Gm-Gg: AZuq6aJqX89fKUzas9z/wW4igp2M3U+nvS79TlWc5b3BTDkX4LYGCxws0t+ATgBN5yZ
	VU5yDTTT/Ke/sV5kaKUZE9iC2o3Ug6cvM1IXpu/PEQXLfGRHbiHxD914m8C4cXqq0WMiWvaJQlm
	eR3mXSjkXpbY4CMtcBQ/hk2W+E+Kzqms+rcUuP2S6rIrcII9FNVWZd9078nt3R4rzEkuvr5avVs
	k7gjV6rFjkISdQFKUO6zMAkkpaV02DKM/0SHG3tQ5KJBKT1zdU8xPsF9pnS3EcYtsWWt4PdT1jJ
	lLab5ODK5fj9+Cz+RUR9vJ1bXlUw/UTlt/Y1/0TChbJpimJ5qYCwyNfoxaaSlE8upbK5rn8ocW6
	8mF2cyoMAHCIAgHOKMfcqern6pccGEoNTuuxzwPtvjAdXkMZ2SjlqeMpfOlV91P3R6ArRsNP/ef
	AbQQM=
X-Received: by 2002:a05:622a:1356:b0:501:5260:51e9 with SMTP id d75a77b69052e-506a6815affmr133019471cf.7.1771333380020;
        Tue, 17 Feb 2026 05:03:00 -0800 (PST)
X-Received: by 2002:a05:622a:1356:b0:501:5260:51e9 with SMTP id d75a77b69052e-506a6815affmr133019061cf.7.1771333379236;
        Tue, 17 Feb 2026 05:02:59 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f563564sm3980554e87.4.2026.02.17.05.02.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 05:02:58 -0800 (PST)
Message-ID: <0cc60cb9-5714-4128-8e41-cb62eef513fc@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 14:02:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] interconnect: qcom: De-acronymize SoC names
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260217130035.281752-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260217130035.281752-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260217130035.281752-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=XKo9iAhE c=1 sm=1 tr=0 ts=69946704 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=FlZS5g-ABFJi0eqNzBkA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEwNiBTYWx0ZWRfX/Xqmnqrn1I7S
 BiYAeo647w5n7TL0Fsvx+7giSMb9zDxzPTtynMTOp8gXkmkherTyhv7PY7otxfj5xsBReLDw9IB
 wbfpKzUDKTv1cTgajjOG55WlA5k6fD7CncHJ8fQucf++swGligN3hrzNhGxyf5NaQg/LsPGX/YL
 kD0cPT3oaLQX6VYyvqFK6IJZCwd9jWXovF3DA9hiAmvtIjZNnJLZLylT+3GSfcWo0DoogbmpKBq
 x1Lo0+PFnQwLXSB8c+5LHAmFrTKesQs7kjPlDWytliPQHDU2/4pEgjKHiOBmhX1Uczl9obavglg
 s45Qiyw3ecXvGRoUe4OTc7GsZUQRuNk4iQBaCXakphLNQCpAekRcan+eA1/tqqVDiVi34vhYi1y
 FX7koPPnXvkkND1Y/OIWBPzyDuje6cnKBn2Uj3mqbA0ri1JaEYWypIkE+x65q1oy8M+fDPyyXaw
 fkfuVKTaWkekfNC9BHw==
X-Proofpoint-ORIG-GUID: UoMl9BKYXvUrGqFdt-ucMyHKDJnU68aA
X-Proofpoint-GUID: UoMl9BKYXvUrGqFdt-ucMyHKDJnU68aA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170106
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-266139-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DD09014C5A0
X-Rspamd-Action: no action

On 2/17/26 2:00 PM, Krzysztof Kozlowski wrote:
> Glymur and Kaanapali are codenames of Qualcomm SoCs, not acronyms.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

