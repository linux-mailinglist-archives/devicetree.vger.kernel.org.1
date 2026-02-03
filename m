Return-Path: <devicetree+bounces-262174-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFmOIO3OgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262174-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:33:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 36775D7B90
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:33:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9FD453120441
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:28:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A6D63161B3;
	Tue,  3 Feb 2026 10:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f11luKFi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aG0gFpig"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B6C299AB4
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770114488; cv=none; b=T1Uwh/wvJoKRBm+a4MMhSzgRxd2ZxxW0LovMWZENzXFTs05qrLed9bEXmiDMB5tMkdSLuk0mgtpe5KZKbsqeywpeOgWY5wjOlL3dnOqPxHNTr9meaACSSYkg9z8JicbTRmuyqE8Q7p2m2YAA47cagA4YbkZ/sWTlZLgxWAKF5UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770114488; c=relaxed/simple;
	bh=IZmc3SEU+JXFNOUEdmhc7G7Tab94NNzU+1IrKz4cTcU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eQAD7IOHiB63IuOK8ixvajAfs+VqsTVIIOHdSuOMGOniiIW4KKU9WyMSgFvSPs3ennBLnS7xfwpWDpGzZsuQlANgCw0p6ytuW8EKYiiJO+QLaa4jwbmNqZB7lsX7aChs/LLBNnX+xtnLLdxvfsb51kEwCZYN6o75IR7sHDkroGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f11luKFi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aG0gFpig; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613A41TY915332
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 10:28:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8nfkg4EZOOFimmPNr6PidntjFMUeXDh3zAKFWUrfS+k=; b=f11luKFiYIsllRpG
	Y9gLiJfJ1j11qHcITK188CYdNxAQDH+C+CML4RLeFBWGpql//BZyF4xyPKv3M9L8
	2EtnzWaua21kpmWx6v2juIzTRaZ8Zpe4fxhGNbnspYwsBZrYypmofLjBqjGmRa57
	+mNQ+39AtQ+oWwsg+KYAJiljdJS5Bmt/N7iL64Os83ONCsJKRV9d8FdxPAR0Ve1c
	vIXNNskm5YlkAnd+F5whA3QdvKqxDtwoZtxb9ik7/RVZ+rzy+OQLcwsibmQYT08s
	S84gIuLWoGizmUQTXonO9e0d2/+fJIV3oWTa9Zmib1Vy0DCPwfzjQ5Si+d78yQOP
	ime1Yg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3exk82qv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 10:28:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6a182d4e1so102258885a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:28:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770114485; x=1770719285; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8nfkg4EZOOFimmPNr6PidntjFMUeXDh3zAKFWUrfS+k=;
        b=aG0gFpig/4HPWNcxGsIHPkVkd5V9CmQTaR9wzIthjgZ8zyk15Ac0aemkXOq0gUPtrL
         /tm3dGQPOJNciqCaM5TGyumnbZPJLXluoZ9t8/0FXQ6Np7hrj8boPXlsdCYmcXda/Gtu
         dOB9pgEh2In9HBH8O+4RqW2KGxBZlPpkRxmS/v4IrYxeyLxig6JHOyRbhhdsLwM68ZaP
         iI/szMg3FC04mvcJyAc5vp9LYLcFmxbq3alCIZOovVZqgHWEV7hKbkcKO9RaPW6E9Baz
         mGc22KRp4m8GKZCGB9Eh8QF5fsdOuNkTa0c0xB0e+WyJBKKUjIGVvGoVD0rhVgGp/pLz
         jZ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770114485; x=1770719285;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8nfkg4EZOOFimmPNr6PidntjFMUeXDh3zAKFWUrfS+k=;
        b=hQtlD9P0Ed8wPRIo3elPSr3TvcfqZIxehUpUlos2awxpGBHzXciZ51MVwhtxe2EuUN
         fOTAgiuumK1w+eZn6GtY7YSzJPuZNDidJUMlq+BIrA75ZQUAiKG0IyDTEgckWyaMgtGE
         YSDJvXXoowW9qROaxINgPy8mbuXLB1O6jTKZxhnhmXOvRWMt12SYVz04GYT4y4x2pn4B
         IMlK+kljHQwFqqrqeZZKCEVU0FBcdtLWMgAruVEEeV+EcYwF97SMAYkIjlas0vQqypAL
         7OqE1YQmtnYomWhXcH/RDHX6dA10jDTTSKvWMuMB/x1mltf7+woCnykDLyNKRpLNJTIO
         SGWg==
X-Forwarded-Encrypted: i=1; AJvYcCWVePhOztWURmBgC38ACJaANccyM1aDhafsJH466qPQpH37OsQdvu51IYj6kBOKlbskpJz2SWXAZ/d8@vger.kernel.org
X-Gm-Message-State: AOJu0YweRlYD4aQFYUo+Qbqx/ymwYiY+XEsAJKlvQu2VVb6u8pOoC2Km
	mS74VeUrxZXHffob79JJbLImodA+zrOMbMPFxvE53i7Eu5Mrjud//7X6GkR6kgTRuJwRW2OBhqG
	UWafOEgl+r9Prrbos465w81m7ze/8BESYHwbwICb8M9xKU0AFcvxgjasnkKrxZOC/
X-Gm-Gg: AZuq6aLG6T/ZIe2QrucaajHU1/NxNqboJFQ+T/vKkPbTo5Ut6jADqrzZUWjFYB3ey/m
	yq3lLrPQgYM+2W2wJe7rgkZTzc7rwSmXLZzTdmHg76JWQM5N/1Yap9eh0zIaf2glDX4zO+kpy2p
	zQl56THI2dKzQjjY4aY/9RyggeQmNFBNRXT4CIzQjXfM/N2U741Kzc3rVlXmiNxjQYn+ZdEfdQ6
	iFxhS9ZcNq+WxounT7VePj/w1fipCx9r6arqnTm2GETX+novprcu5G/LZY/DheRv19xgagNxBsN
	g/izBeY5p7gJZl5Z7VuRdY/N1exRKpjwC0Wki5lLw1NPNZTr3J5RE3aeDUATJeeVlIa8t9tVBOZ
	AGWZEOk2oyZSDLyJEOxT1FWul3fKCqUHOXRK7E3Cg+2n4y0LRd+Jvimqdp+SCvgcwXeU=
X-Received: by 2002:a05:620a:1a18:b0:8c6:f7ad:49b with SMTP id af79cd13be357-8c9eb29d0b9mr1488473285a.5.1770114485430;
        Tue, 03 Feb 2026 02:28:05 -0800 (PST)
X-Received: by 2002:a05:620a:1a18:b0:8c6:f7ad:49b with SMTP id af79cd13be357-8c9eb29d0b9mr1488471885a.5.1770114484980;
        Tue, 03 Feb 2026 02:28:04 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8de289bdf4sm875193666b.44.2026.02.03.02.28.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 02:28:04 -0800 (PST)
Message-ID: <7b5bb3cd-df26-48db-83c5-93718c5af165@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 11:28:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/9] remoteproc: qcom_q6v5_mss: Add MSM8937
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
 <20260107-mss-v4-7-9f4780345b6f@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260107-mss-v4-7-9f4780345b6f@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA4MyBTYWx0ZWRfX8jWZmZBbGwfQ
 z5fDTN/7XSVigT6dMJhrdQfF/Vx4BPOoxrhBqPvlmcgs55Z5+zpxJvlU2CZWEFTLvqF8j3oH4RF
 l/YE04QEWHOz2uh1XPAvATjR+W3HK/ozsRuuDNvsbykAqz/U3REDN0ZVHF5rH0OwK0kVpUF/vEv
 C2pFJhIIS2MjKKFD9ozANenlqWupy0YV4Yr/Nxg4d0zG94n42Do5j0P+uQYIt/mSemGxeAzVV8o
 oYNx0uRBtVewEs/eMzK38pl3/9CeXGswMlwDaAqZnXF/VvUeiEb0mKnmASP6iJrwTFR5EOQHxVg
 xbYPD4mcn/6vvzvcBel5eW7nagAuhwaE8MHGDYCfwOWOT2uDZxa8DTsDusEH9n3WNLcE0uEiKjT
 qi7IFAuRq1fj9cX8tnFQDCiy3xiO7cPUExWxFp3dhKhvzw3jF8vTfZiMYTYvKdH0HWjjHcHexBd
 LhOWAycm9Rjtur+Iumg==
X-Authority-Analysis: v=2.4 cv=XfOEDY55 c=1 sm=1 tr=0 ts=6981cdb6 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=hKB9LmFJ7bMJg5HKuG0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: 9jhxFaa00Fw6MdIVPYvM8zYfYM0mbw_j
X-Proofpoint-GUID: 9jhxFaa00Fw6MdIVPYvM8zYfYM0mbw_j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 phishscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,mainlining.org:email,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262174-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 36775D7B90
X-Rspamd-Action: no action

On 1/7/26 12:34 PM, Barnabás Czémán wrote:
> Add support for MSM8937 MSS it is similar to MSM8917 MSS.
> It differs primarily in that TZ needs to be informed of
> the modem start address and pas_id.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

