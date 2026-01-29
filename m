Return-Path: <devicetree+bounces-260854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAp4LvBBe2n6CwIAu9opvQ
	(envelope-from <devicetree+bounces-260854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:18:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5CFAF883
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:18:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1D4133006D5F
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE29E385EEE;
	Thu, 29 Jan 2026 11:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YoNbLz6/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LagcHihx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03975387349
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 11:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769685475; cv=none; b=CeOixkIsdqQGC+BTt8rRhbbhpUOXOq85UevDhZ6UQ1mkOly1kEHoIF2bxIabMMoiv2oJgzOCww+0VmtICZ121as8o35Q6DEe5VzzoKGqj5RmC2z3WJVJXi/DphoIeEbGikqBV7ks9s0li26Dg6sIgc4zQWx0qgwaSDOWa4EDsPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769685475; c=relaxed/simple;
	bh=dbHTz1D6Jlwf1wIyrQ/apXY4+TuUGkDmMmLYJHM3rQI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k/qFckMxoXJBpAea72s7r0pv5iTMWn229qsy0LRkVZssyVJ+NHDyqkoLXzYWYUOqVgVPx+L+FpFKV/ubvG2KWsBRe0QV8SubIKwGk9Ck2sTExlQvHoCkzA/B74d+l7rXdlzmILoYOTCP/WmMfauPy2WRu5GovMxMf00RNHH0Lvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YoNbLz6/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LagcHihx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TAPflD3642239
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 11:17:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	42D4Yqc3Zjl6wkobPB6JXQnteYWOrIpSff9Z6J5iluM=; b=YoNbLz6/fOuqh3kQ
	uw7DWabpo1ARyYCtEN7OOH7L1FjLx4SP42WgmB0FIM5js4/eHw3LSrHBiBE3UPM3
	ouVPYv6r8E1av3Npg5JikkRn5YKpyTf4/o+MW/n5co8qb4NFSOTlbV4K1KUme2tX
	SSvmXxQQLNffibRBIm3FqsLrFpZ9HhQIlcUZFh837otCakMiAKWuGb+l5x8V3nQr
	RC1+U2LMA5pQsRurkPmi47zPEgmUvPiSvifrxTkbWrulzyf/MrHQkQHo2OJghUAG
	2XenEdJBvBF/cjWAgGlQx8gzEMOUw/S83N1KV0A3fGNk21xd9T7L6pa4VxE0OY2m
	Ik5Nsg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c05sr04t7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 11:17:52 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34cc88eca7eso711079a91.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 03:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769685472; x=1770290272; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=42D4Yqc3Zjl6wkobPB6JXQnteYWOrIpSff9Z6J5iluM=;
        b=LagcHihxzLvJK/hABNchREA5hNG/cj6P9t3oUTbU10mP3B5g6OTeCrwQKrRLBLRJmq
         nltfDLSuehpcakGPO/QjTSraYA9nCnynkZx6u+HfwVdpZmreakY/oSAKfqltf2LHbfy1
         BHwj21fGO63vYQPvieotBoxKaE81NBwdIdUK4gtszv1e3WQpklRXrOwuzb4234pSRDiM
         BF1V68FMDGE1e+OwT5DGoyBZR7RL0tdLtX1A5SHyV5fcdgwESOqzNB8jK2zA9ep7BF7N
         5DJYwkFaZwwyltCu71HeOpU8tDu70PguBJGkojvi+lAcJa63K/XizJgCt7H/uDjFgGDc
         FsPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769685472; x=1770290272;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=42D4Yqc3Zjl6wkobPB6JXQnteYWOrIpSff9Z6J5iluM=;
        b=D2bqivXCqymD6tpFCYhifKHVkfLeQlJIFIb8yXDpj3z9+UBIIX1VXxI7TB9yFD4SkB
         CbXPD1jvAwTpGekYo14JcCppslgA+5aZ21NVIWkcjhU2jzMCsL5Sr4nmaH3qQsELucPv
         BLmWlLQCMAZ6jxn5Si/43SgYlNL0XUxwQIBVnZ4qDcpVAxmKU1pgagvONUZSWw9fSdTt
         3H5XLvz86qmBR70wFGJe83gXz7288f2BDG0WlHjRQmcYrXtERTEW29O/3VliOqk/hXv/
         u3IdFiTDf+LDBUWTpP1hDXeDn/jrOWNGVxQbA/ufjq7EpBkr64HiQu/kFAS2Zo1qx8Ap
         odfg==
X-Forwarded-Encrypted: i=1; AJvYcCXJNjmgfco8YNDT43OK0UjwV/Y3oVwkkvZ2rWHzDM/V1p5rif+aE7y+bDuvGWR45mjCzH9p51KPRo+z@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9IQnSb23Ek7NaPM4dxFdsAOGhtgqsJV3O9Wn9+C8r9Fi1kxGn
	DzxDIQcKzcKyeVfpee6iKnrkcs0hlliSXnVvCmCFcH47MfwprVVftNtyX99W7QfJeorwEOFjuYB
	itFTW9W3QvV9ylqiVn4aMkyGTTxlQ06QTHu8XtXF5U9m27R0CQve3db3augdx1402gVdedrbL
X-Gm-Gg: AZuq6aLz9k2eBTg4U8TiQUBvPAw5JOtNUmckz+Eq/P9ywOgZo5fJJcZ0MNSAnR0rC9p
	zEzoIbmnRItJxP2SuqbqvRaFhV+glNkId4RUQGkpN9VDDGkmXntM8Oi8f/q+ypOEK00aKxNyUAK
	YrZNZUgAbys5ffWoqXk7QdkC6Rx1GTHy3LUThWk1DlrTvqGM9AHjlYZNjI77wawoEvfFWpj0A4B
	cJqjUgLWdGkVP88xYmb/ye+pPDup4cZuEXwI1FfOvqCHdfRKDMYi7Lm2orO5b1ZfalZMs7m7SEb
	24h7jvCBpPoXNi0jA4L9CVK36OJvXaCKvU563g8lFwk1K/VMa4Ux7kByUSEYajll5cAisctqHEJ
	TT/JV3Q/dttZW1dl8wTc8uI6L8WJBKpoPBN+7ANZx26ndKnPu93jmueQ=
X-Received: by 2002:a17:90b:2d83:b0:34a:a1c1:90a0 with SMTP id 98e67ed59e1d1-353fed87a85mr6962686a91.28.1769685471363;
        Thu, 29 Jan 2026 03:17:51 -0800 (PST)
X-Received: by 2002:a17:90b:2d83:b0:34a:a1c1:90a0 with SMTP id 98e67ed59e1d1-353fed87a85mr6962659a91.28.1769685470908;
        Thu, 29 Jan 2026 03:17:50 -0800 (PST)
Received: from [10.152.204.0] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f6103e9fsm7934690a91.2.2026.01.29.03.17.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 03:17:50 -0800 (PST)
Message-ID: <f30be082-036b-4554-80b3-da1dd19d8caa@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 16:47:45 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] ath11k: support IPQ9574
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jjohnson@kernel.org,
        ath11k@lists.infradead.org
Cc: johannes@sipsolutions.net, linux-wireless@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260109044457.3074510-1-mr.nuke.me@gmail.com>
Content-Language: en-US
From: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
In-Reply-To: <20260109044457.3074510-1-mr.nuke.me@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA3NSBTYWx0ZWRfX5MBfFYGoGHET
 wf0RseCjxeOpcb4FsA8oYQtIPcWCsLiIxkfpHV5kdXzlOkhAId2Z8VfhSCtjkBZ4aSOzKuqTDNj
 1h5DZ91XoWBdpLoS10xN+L+ArjegVuzDevT7CQO3HmUEGfYudWsiPzRijHBz7jnsFZ1uKYsTHc6
 24RvdHd2rcl9IdSbcm/O7MUWBEPV2Is1E7O6bSG8KmQWBbITav+F8sKZyhVg6cmZ/jDYTcAXgbN
 GWl67YbW4DInlXt0C9ZW3n557hELzTg8ZL9ywU6UfhUuMjOoFJWidkIGQYCOt7Zay0IOLKpdUJE
 FDKiE0X4XHk7NpMh8ie3c7bdaGFs1pM9TgASdXDSHLJtSD/L3Wa6fc6pyi7/yaKmKlTjgFhqmNQ
 y75uYUa1ujsUu4lRmEFF3eO1qcCrLMd4tBLF9zErK8vdBV7mNMijor4IBn7UENfEoLQ2rraVxDS
 jLgdsj/seg0YRMksRmw==
X-Proofpoint-ORIG-GUID: U_-ejlH6b39seswMkZBs92_N4_g0TqO-
X-Authority-Analysis: v=2.4 cv=UsJu9uwB c=1 sm=1 tr=0 ts=697b41e0 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VFJI8iCbsL4109xkWtAA:9 a=QEXdDO2ut3YA:10
 a=ZXulRonScM0A:10 a=zZCYzV9kfG8A:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: U_-ejlH6b39seswMkZBs92_N4_g0TqO-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0 clxscore=1015
 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290075
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-260854-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vasanthakumar.thiagarajan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EA5CFAF883
X-Rspamd-Action: no action



On 1/9/2026 10:14 AM, Alexandru Gagniuc wrote:
> This is my attempt to make ath11k work on IPQ9574. IPQ9574 is intended
> for wifi-7 devices, so it seems the exception rather than the rule to
> pair it with a wifi-6 chip. That's exactly what my Archer BE550 does.
> 
> This consists of a wifi-6 (QCN5024) chip connected via PCIe to the
> SoC, but exposed to the OS via AHB.

Pls note that IPQ9574 has internal wifi-6 which is connected AHB
not PCIe. Also, host driver does not really need to worry about QCN5024
(that is not connected over PCIe either anyway). You may also want to change
the commit message of "[PATCH v2 2/2] wifi: ath11k: support ipq9574"
accordingly.

Vasanth

