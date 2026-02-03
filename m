Return-Path: <devicetree+bounces-262173-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNi4EoHOgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262173-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:31:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E73F0D7B08
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:31:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0591F305A491
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57FDC326D5D;
	Tue,  3 Feb 2026 10:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YA7ac40v";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SjR5ZgIY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2D43191CA
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770114462; cv=none; b=rIJxKParoaA6sk+juZwmyAg+Xunr8IG6nB0nokajMiqox6tFOeWZHJ9TV9U8VfNEqV/UpKHgY7ERRJsdayMFB3OnNBqv0CrTsjklIMdNpgl3EYwpq9d5Hcz7/VX6u+8k0oRmuZfvM5HQPA7LxHFVvZ7gaVhnxA/s76aJwD26MpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770114462; c=relaxed/simple;
	bh=sm4swtLpp0jO+bGHfqAFqDfa5NvVIHR567Hm1/qVHSk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H73S+uJ/gRBzejmFED7yEnz1wQyW3+vVxS8E8hPeyYxV0Tvops4J+uLqopp6JT5sqkVmfqkc55ey/INXJwUODyI3i+CXE7FWQyQ2Y2GPQYfSbrNOap410AjpjJTkr7jSp1UiQ1pYgqLrnNTZEVn//pPXr5IH4WqnFwVex8Nrhtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YA7ac40v; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SjR5ZgIY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6139wLbM3388283
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 10:27:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sm4swtLpp0jO+bGHfqAFqDfa5NvVIHR567Hm1/qVHSk=; b=YA7ac40vZKveVnC0
	JIeKvKXMspHqquNAprDigZnWcQORD+nis84IpXb3tln0YfPA/Q7wpxLwmDA+mh1v
	8ZcmptC5NRwa0RKwoc/Lb5uo42p1IsFz11Fp40EzljsHCqzlqP68W+4A5G7J2OeW
	rdZJT8DjnxmId0wgXKyYNqXfN02d5FoPOfNDPRCoAxaPBdSrSK5H7pVDLFJF3+DE
	zJdZWD2L6rCYlKZNxO8c8OtzVRYzBWOqngwAaSnOgOwyal5oKkGaUV9Pjpj14TyS
	7fZKHG5bhlvOICGXYniKfqBAzEXT2EO2VTaRUuhOBGxFMC/LUG13te2QDrHvFsfJ
	HD4AUw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2xvbu3xm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 10:27:38 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6a182d4e1so102253685a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770114458; x=1770719258; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sm4swtLpp0jO+bGHfqAFqDfa5NvVIHR567Hm1/qVHSk=;
        b=SjR5ZgIYrY0hvlAXpI3nd6sW03dbAuQzOD/pevxv1IGp05mSiWb098mGvc9cbkH6rJ
         MByXCPTGNCrZQtsMehGeS5I9CwrZB2G9GOBYf1L87K3Ju2ocx7+516GatxYemEdDk3U+
         F6KTRDrlIWsftcZbOLdt6PV1Dh5lfXE/ejIWqBu2jIbzv9KzqnPzjq50BwYZBgh0YCga
         TOF+0SoBwYXjEcOQxlWlSfPweJFBirZPqqtRK+bSD6qvUqSlfCHAJLLFfMyU5sVHsUUm
         04yQgK5KYCKBBI+o3ln/E5SlbxrIKvjdyYH6GNeZNmIzNFgohu2MWlOcl9YCvva/TNmY
         4ABQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770114458; x=1770719258;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sm4swtLpp0jO+bGHfqAFqDfa5NvVIHR567Hm1/qVHSk=;
        b=qWJtklNTFoVqGXNA0ytrtdw8fkhDqcFcyM3fIGInOKtfKZ6yLGYdDb+Yi1i6PjhASC
         +gMODmGpaLddusM03a1ZoPAhMEQ1szTGzr7yafcKVji7smwNwq0u217D6ps6GMelWI0h
         cjpplolBb2hdxicpYZvazCu0O8Yqr3JkE1KU9/OuQEq6IKQcaIeAlD9miFO/GMosQL6s
         yP7mAJJ/Ov2KAkf4+o8QWbTckl4pFlwrHpnok01MwlFw5lUpI6RFdIOKEjQnbbd+GXMC
         uudpriF+Ad1hpr2oeNfZfjDmGwXHEH8KL+7i0d96/M0yS2RGNoPnqXpX3N1DcddEPccD
         584Q==
X-Forwarded-Encrypted: i=1; AJvYcCWZCwu6nSzFaGvFkbCbJwq8F3CxhfVOsoGVkTBmcajZN0dCfE9UqRvgXAzxRQ112JyxH2ObVWvor099@vger.kernel.org
X-Gm-Message-State: AOJu0YxVuLyJL6evSuo0BHTL4Aet6XfD0k0672QSF5GUYBzr9a+GMJWx
	ksuH4WmIoVFT/DKogYjpRH2vyoFYXt4pMtYygC9/y5yfuwceFXDVlR7jJMPQzle6pFIXDf61tE7
	KHI82JMxJwv6SaIk3OSF/BetmYXgAO1S50RfakjKFtRlHe+CPsJ/+ZmLRfteUkhXX
X-Gm-Gg: AZuq6aJUP4Fqt0r0A4If+teUFimVZ/0QbMqO/6N5MU641Volk5XERinS8BW4n07FyL7
	LDhQ9+7qgELkjwrk6fG4vLsB8Ism01N1jwc3OM2Urr24q6yCuO2FEDDmod4d+lQDlJoVsSBc/1b
	t5kjOnFI8SW+UAh2WIJZQY8N2VlMkjrenwcR/RWK9KdWB1wKdtt4k2zz0qJN74/995Gzfx2rmgH
	fusWhnst3cLABn1erByKHtsiTgllraHHXl8wn6QDfYEtDtSGTr5qRYs2Y4BgDrBgA/WCENb00TG
	JOAtaorusO/49UKi+i6gfNBRkfKtgTwwQJJyx1V5+R2e2it1LGskXUb0opVh+GETwtFQT2AQDNq
	1am06LGvR3+cNK7YPxhC83rfiOo/qtgwkB8nVr+Pe17vsCbqlqlHeVlIV28SwZMuaEQU=
X-Received: by 2002:a05:620a:a91:b0:8c9:ec71:b224 with SMTP id af79cd13be357-8c9ec71b47emr1064471485a.0.1770114458360;
        Tue, 03 Feb 2026 02:27:38 -0800 (PST)
X-Received: by 2002:a05:620a:a91:b0:8c9:ec71:b224 with SMTP id af79cd13be357-8c9ec71b47emr1064470685a.0.1770114457996;
        Tue, 03 Feb 2026 02:27:37 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b44530bbsm8663460a12.13.2026.02.03.02.27.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 02:27:36 -0800 (PST)
Message-ID: <c94f5bd9-07a5-494f-9924-cdc14eb3033d@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 11:27:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/9] remoteproc: qcom_q6v5_mss: Add MSM8917
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260107-mss-v4-0-9f4780345b6f@mainlining.org>
 <20260107-mss-v4-5-9f4780345b6f@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260107-mss-v4-5-9f4780345b6f@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 3J6wos7IZTtDci-_rS29pP4XTZIZn4Pk
X-Proofpoint-ORIG-GUID: 3J6wos7IZTtDci-_rS29pP4XTZIZn4Pk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA4MyBTYWx0ZWRfX3sfLlK8NPXSk
 6ObzRPVfuqlgJQAKSLmSVlytFPX0d2rvgHote7MQkI5ZE1vlIVV+OSzAvznTTO1AVWvBQ4H3niP
 C0u1unj180aqTu/5PP4R7mb1IJ6R2jMkSenAWrs3bmbo5lH6Jy7twSnV2bZBJz6DFvc18oKnWOM
 wU5p9toBNYkndn4WUqA08BIbKaW+Qa8ftmreME2dhMbqjQ3Xtty6CMzsBur0KfsVXIpiB9fBVmT
 AgGCiOIqsAPZZXlsdbeFK+pKw6sFOV/zxgbwx2q4Z4DxrjeLtZQAjfud41+R/wy7LvQtue1j5s8
 c8f0MTMuHpEtkEj/I8fbWiHEunu6lK3kei89MhHf6SJjnX/P9oc9vrowC1rShtWdRGK8zOU7q40
 P0/9BUOi7mKq51IvGeKgWMuU+8IfkOdPL7CunEnmGipMhKhnL9SEiArrMGuXMDQAOhEe9Fqis5w
 1dWWCA3nyX5GSoUbUrA==
X-Authority-Analysis: v=2.4 cv=AurjHe9P c=1 sm=1 tr=0 ts=6981cd9a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QzJuLQPmYQVcmAZsAwQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262173-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E73F0D7B08
X-Rspamd-Action: no action

On 1/7/26 12:34 PM, Barnabás Czémán wrote:
> Add support for MSM8917 MSS it is similar for MDM9607 MSS
> only difference is the mss supply.

Pity that we need to encode a whole separate config data struct
but it is what it is

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

