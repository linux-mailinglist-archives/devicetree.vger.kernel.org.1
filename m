Return-Path: <devicetree+bounces-271421-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cK91CzxCqWkt3gAAu9opvQ
	(envelope-from <devicetree+bounces-271421-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:43:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A29D20DA42
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:43:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 01107308C2FB
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 08:41:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61AEA372EFA;
	Thu,  5 Mar 2026 08:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PV1zd67S";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a5JH6qXA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACB72EB87E
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 08:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772700070; cv=none; b=Ta9T6tnM0lMGlmRX9KDVk9DdPMkMJ4KFmnHXezCPEFypErpwmI9YqWiA2c5ZVXD+3JpSoKyX56Zbe/3h6krad14GiAR4+UqL9P/cd+08DZH3Sz04ImOojaJgSH/WFnSgTx+nLksDlWa44utMj3I19GSuu0pdcSHtRQvztw7qqb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772700070; c=relaxed/simple;
	bh=2XfN1IUdVDHXRnPcZX29DDqK+fygGtG7P2u+RJeGQZg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BUi/1HLq0k9u7Gbt+/XfAE5lfDjUE6JuSlRZW6pkLu3duKktnE/B8NaLu/70QO5xX3x+BMPgT37OqJDX1Htk971XCTft1jaLz2+g4+qInY6HwrlMe2489hUL5UrR7aTTlglmyslIGU9oBSRvmBcCAz8vYkZSUbkFLJ0nWCeibOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PV1zd67S; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a5JH6qXA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6254tdbX218566
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 08:41:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	piRd4pArnPlFES3z5bGfGAc7MxY7XKet73f1XaOJtCE=; b=PV1zd67SOSKF+UZR
	V5fdwqbyUucXumd06BZ/oAA37dUEl5vML5IHmI3mnn4Bmki8QO3evnkI46yjxxGS
	m45CAGu5eBDMw2YB/8jIWojxuj4hFNgf0+OtRvrgxln0h4SEUJdTQ/aCob5K6Yy2
	yldtosQxZLDKpCc9FgtsieLz7R7I4Tsoz3rcYZinQF78wsrB238y/92ii5jn51JZ
	AwdA78m4ieR/9zsGxFByvyfoHc/1zatdcLsswZYA8mS6Zh9fYsgTO7KlJNmfRS3/
	p0NvKqVEk2wjuYVZ4VzeLo6dqMWQINNS4A0/DL8PndXOf5bZqmgVdZBfNE0dCkLb
	DG+FPg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq380rpye-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 08:41:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb50dfd542so577220085a.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 00:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772700068; x=1773304868; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=piRd4pArnPlFES3z5bGfGAc7MxY7XKet73f1XaOJtCE=;
        b=a5JH6qXAIYQbBP3toEITk7g6kbpqSzscG77TURVQ9U2/jL36f4jpwDQoAcWZFEM0Z9
         Mg5AxbLtj9EKsG0r8IfgiJinwa2IvcqNxk4GdebnFnkfZD94CtU1g8epiy9nCpGcOIN2
         CX0tC2AJNXPLqeAb1c2neyq0FkS3kH2H07txuMK6lbIQHmEYLh+M0TBTlMgVUxJiXS1Q
         5ply5XADtcdcMt7taIZtXqXfBU5lU+1sSPt46Zp0nJx6mPFfHXKIb+Eikz9DhM192i65
         mrKJizymYToQSpQarX/PU+WiwNSguLDmCohA+pBBK+4lV+HN8lGyByTx4pfaMZ95LJ/S
         RDag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772700068; x=1773304868;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=piRd4pArnPlFES3z5bGfGAc7MxY7XKet73f1XaOJtCE=;
        b=ERwIGxEgZGpSF+Df/ER32mAdC32N7qlJHX6CAE3U8cx7efMOApP7soGjUil0pMWLsb
         uHBVJEBkIAtVRnhxNEY4w1zdZRSZieqmQ2QuUVzgMc2Sfda/dUzIt/4pMDztvs0XX5IX
         hyURPeRqqzMSAxxW3slILMug6hjxedfarXQ3rvJuKIXlUetZmnjKImsBin27ICAoog8S
         4kVk3CBqPuh279g7mrrpPVQNOM1Us8/jt0wK7MefkTqODFDIcPT+IL6NzqJKQxuU211u
         ZCipOLjXJJ1eqmnHdTMwLWY3AvKG1c+4fNAaqo6nrsxoI9XNLt4qMvT8oWxxWyb4l/+x
         YXYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaab61bpRyu3IahUXDcsNo412PfpeN6SUugLqSOt1hUtv9ixrPg0Pq3RJwSguqheoi5ac72Neb4eIl@vger.kernel.org
X-Gm-Message-State: AOJu0YyXhylkGroiK4FxCpKih73bfsBhk9brLyquV/c4hOlB8A6QenyF
	EsV9oXeEPA7Dn+2JuRKzTkPg6YnDhCSkfaLSGHzRAcpQHO0rGqmsfD2dWnEXdqd4pkh3TQdWguN
	iozL+VkjeSWhD6CGbvVp+Ihpn48nvYakYRE841LzU1Kw2VsiopTjPO2qGcXnNCM6M
X-Gm-Gg: ATEYQzy7n9y3RAnbwxVdteCuSaztjFrpQvgvDE2eEBRkFhT/mhum2Y8ggDsvh65+oxy
	8iTPlC/sDY+1gZw96ulVUq+jqJ3KIFWaBQvacEFQrkAmnnnFPxva4huNIF4qOOgtNmUUbMHhBYb
	rLMXQtFhR+galO6ljvhJ+hhNKzObZi20L/QM+54yG20CiR3rfjQE+mvXZTZKWPL+NVmRmjkLTNt
	h4OysT4SzXI5Xj/PA3HAUsXUgMQ5MMo+rKAHjikia62LcCTYSVQ5FHqhrjp7F6o9QEjpPdmmLLZ
	6UXHMXqMEMxiCcr7pzZDYtuKt15ZE1lM7EDY8Nywe6xqjjGlVtrZQWOl4JUqJM6qJdgvEh3CvUw
	LhyyifyGrrrvqcPluACfOfvdjpI5e4qLp0PbFuYYTKhPJ7vuV5Df0r88RXCdi+OBDC2BRWEpFKK
	Gnt6w=
X-Received: by 2002:a05:620a:28c7:b0:8cb:3872:bd62 with SMTP id af79cd13be357-8cd5aee64f2mr442982285a.1.1772700067631;
        Thu, 05 Mar 2026 00:41:07 -0800 (PST)
X-Received: by 2002:a05:620a:28c7:b0:8cb:3872:bd62 with SMTP id af79cd13be357-8cd5aee64f2mr442980385a.1.1772700067211;
        Thu, 05 Mar 2026 00:41:07 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-66157d35cfcsm394173a12.22.2026.03.05.00.41.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 00:41:05 -0800 (PST)
Message-ID: <dea45e4e-aebc-46e4-a245-3603da1779f3@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 09:41:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] wifi: wcn36xx: add support for WCN3610
To: Kerigan Creighton <kerigancreighton@gmail.com>,
        linux-wireless@vger.kernel.org
Cc: loic.poulain@oss.qualcomm.com, wcn36xx@lists.infradead.org,
        andersson@kernel.org, mathieu.poirier@linaro.org,
        linux-remoteproc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260305003253.1022386-1-kerigancreighton@gmail.com>
 <20260305003253.1022386-4-kerigancreighton@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260305003253.1022386-4-kerigancreighton@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=I5Johdgg c=1 sm=1 tr=0 ts=69a941a4 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=teg4DUnw7xCSCHTInWMA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: CBC-yhr84MsvrfO6agJNon5Azl5kfFN5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA2OCBTYWx0ZWRfX3qMj/7G66Fk6
 0au5Okcoe7Pfhbd3pfbPhs+lFDfQLXW6eUFzcyQiMwQQ/na7v33M2GSOKvdrpSVqcgB9Cw06l17
 yeiQYaRf3sdLRZge+D9cEhRpBb+lSa3YNopjJ8fbdrMN17+sQxvmOUV/Xsfri0H2h8znrvbRZHY
 VnjVdudZwq1RQ1Jm7RO1dNJZsddcDf9bzTodBFbdn3S+A+lo4gUvJYRm9il6UEg3is9LMs97jng
 t2OqLpqoBOoryUEgQSkrUFkaS9FiVzB6Ac2ZXWBAED+7DMI+CaYcCX3NDQCCIhdS4R1ZTYG2GGc
 cinsnZL/5y3kd+TPppslbP4icALZSl8E4iK0oJpnfiNvEdTZ2kEFt85luPAhBWbj9jN0oY2OC+0
 XYUfmHfihSxXYrWuypHodHh8Gg1NiGsjdmy5e8YFCvt44bedySz6P6n6p3pd7uf0t2xxU5ctstM
 moveXpXVXlE9HPfN08A==
X-Proofpoint-GUID: CBC-yhr84MsvrfO6agJNon5Azl5kfFN5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 malwarescore=0 suspectscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050068
X-Rspamd-Queue-Id: 8A29D20DA42
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271421-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/5/26 1:32 AM, Kerigan Creighton wrote:
> The WCN3610 has a lot in common with the WCN3620, so much
> of that code was reused.
> 
> Tested on an Anki Vector 1.0 and 2.0 robot. Support for other
> WCN36xx chips has not been affected.
> 
> The WCN3610 requires specific BTC configuration values for
> stable Wi-Fi. Without these values, there's some packet loss.
> An extra CFG table was made so other chips are not affected.
> 
> STA_POWERSAVE causes firmware bugs (long hangs) with the
> WCN3610, thus it has been disabled just for this chip.

Is that something you've observed, or does the downstream kernel
mention these issues?

Konrad

