Return-Path: <devicetree+bounces-247350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6EDCC71F1
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:38:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5680D3020582
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 10:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59348369221;
	Wed, 17 Dec 2025 10:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C5gf8bmM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JF87Y5dd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1054A389F65
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 10:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765967209; cv=none; b=eeAGBxWGvN/orfUDGJI7Ke+tf4SsebJxPk8SsWji2nIdhNdVIZkHsm9LxKqsYST0ycE3OPfyBq6ltgJIrQf6Ea49TCTuMR5Q3GIl0UODWsm5OuKTwCg07aewSKne6xPM/AvWtJfwuT1y1oC/RRQGN1tRVvIQAKpItoAO5CU1z5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765967209; c=relaxed/simple;
	bh=BbBdrPOTb3U8KSFm+OnYyyRLIiM6GcBcsEQ/6awetQc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uQXthEHZLU0zwPDPrxcvY8sAq7ISJaDmFkEIATSNy4YuU/TePLUcEdolp5yTg7FjU4Yh5ZsF3vIE8aaOPVhin14Vp07nLkM/aJCk0brtyqtcyKKeuZMEGQ7aRvVkn0lqPrcmSW55tEmBBGcvl69uQqOpoB1dEtHSjVmqiGhilzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C5gf8bmM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JF87Y5dd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BH4XW1A2316221
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 10:26:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZlmuHSKtzBBKyVJ4bvvOXP5ljFfHfrFz4FRDlTvdXi8=; b=C5gf8bmM5W7DUXY4
	BvYrWnXbTZG9mJbTPUF01ZjZ6In8dP2chJVKom6DoOpDLi9053yUM3d+2u8x9moo
	blY31kKSHFKWz6KtiYLWSxENdjSBetELKPM+0rEwkVMDN6IILPdchSXNSLgaod6P
	GG86iqXZrwAHNTQjYaj97RVOgpP018B7KDbmGT2gF20HdCK6oPguqPtHhHMienEK
	DiSi/Lolo1La6KJLvJio1rPmN6N33EGpEAwk3moevdZ+Z2HKppLP73VozDJ4cf8x
	wOITZSdFqIiybcxbTLcWDqa9A02h74+TCEGv15sKlBbG5zUcE7klZSD9DD1lo+RK
	x5chrw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3nkkh494-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 10:26:42 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88888e86e26so16338156d6.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765967202; x=1766572002; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZlmuHSKtzBBKyVJ4bvvOXP5ljFfHfrFz4FRDlTvdXi8=;
        b=JF87Y5ddI+UMU+tKxXuQ/pZaywrhaK0lHV+qVZ8ZN1dXSXbZWgqgAhcmTmkrtbBEhY
         cCkqkQi35QRwRimY6c8cexJQQQOOwaFAnvmbS4wK6ulqmml2iwKAAp991Rez5bnREqKr
         HwsiKKhuVD9nV/7veBKvS1NHs24Wqw63JRIGvBkg7C/BIaN5QrdwWl/+g1adVxDbFjqn
         CyUwU+11g1fLEBEt8no7wjCi94S4FOejG4vcWMkqmtVB+cu16r+ZNL7wiCahv5N76ocT
         CjtDo6q6wFg5VX8N28n56dht6XtwSepYPmMyaG33+Kx6I3v1GB/WTPV2TEM2Reeu8l1O
         7znw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765967202; x=1766572002;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZlmuHSKtzBBKyVJ4bvvOXP5ljFfHfrFz4FRDlTvdXi8=;
        b=XGIWk06mhPBZfMFakdRDRpwV5gikNZO+O9Zoi68fpwlW3Pa9Qo9DOpANggrP1dMeUA
         UgrhHPQeEYxuPYw6x0N7S44cRLp63NnRr28g+uuoum5/wixlDlBas8leyjGPDFcfFOEn
         EdV7ifHKVGMwYlJ4LCpChUZ5OOWmWYQudXbv88jgnc9RmMr/VFgfUO04f+iX4mjac79t
         cX/cDDGhVrXUi8OtWtrzLDY83w0ZGNeI7QxvDfRj0pa6453QIAuVZp2r23euxOmmk1S/
         YmpnFDE2tfySuxmys1Glj1yJ4Hzd99aWKnt53c7G1ULyNaW/PWvx5l8zxIbDuezeZafv
         EfCw==
X-Forwarded-Encrypted: i=1; AJvYcCVvA7XnnK1ztqNE+xHhXGsS1zxicVYhHlJi2+wS8KO5GY92wGmhGYkRJPcE3aaxV69ig0CBYLJucy1A@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+ZbzpDXDQK9jKypfqN/ApHurnWs0YoW4QmLUGtvtQ1uMRuVvC
	e6xiK2uCu5fKhV2d6UXxdR/YXMNLL9L9PBNXGKwrONa/ic6Z/e6FUmpP2J5W4hR7MIfi9Vfqn+/
	iDx5qhROj9JRF8kgcREXPO7KAP9ziBMk6VyV0TymJIIpskftjUs1PCX8R9Eq8It+4
X-Gm-Gg: AY/fxX5cCHp63femZ1d8i0BvWkWd/lf6K5lswr9qfj0N10kZZnWARVR22wezPQCrKfK
	U+azomWTDHoTfbChrUgfFNrsji2ore0jnBKsWi9rMNjMfdqN+nCw1QctQvTysGa9iUI5+zkHinx
	enQTlitwI2fB9Gp9P3eosmmJIaPrDWModyy1NIXYW4pevu2bFH16vEUwQHys+dMAJFu1NgI//1i
	uMVX66s8DnuRLvEPeY1EmLZ4SlRdZEH4+k89oku2jXq84v9a0ou93A8ARRUeg7+/8fCw0m37BVh
	a98lueCXsjJuo8EIa0OOSyaRzBlujblMLHtNhrq9TKFr6LHhFS4paCNYvujbEWVRQah+rR583Uf
	LUTEECwmhC0gqcdZEZlYj1pWhY1IPPwGan+JzLe+3IbeDzHJ6ZCyvlENXT4cBOpQqRA==
X-Received: by 2002:a05:620a:46a4:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8bb397d65aemr1826971885a.2.1765967201722;
        Wed, 17 Dec 2025 02:26:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEnNS9rlS0sf2cqkeL19rlfxmTX2ew5LuoOp3KqhGW4mJ+EUK0XOP5H7sc+68WgeBU5kegXDQ==
X-Received: by 2002:a05:620a:46a4:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8bb397d65aemr1826970185a.2.1765967201297;
        Wed, 17 Dec 2025 02:26:41 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b3f4f5a22sm2085241a12.9.2025.12.17.02.26.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 02:26:40 -0800 (PST)
Message-ID: <167af8ac-64c9-4add-834b-ac500dc3aef1@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 11:26:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] soc: qcom: pmic_glink: Add charger PDR service
 path and service name to client data
To: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251217055655.638594-1-anjelique.melendez@oss.qualcomm.com>
 <20251217055655.638594-3-anjelique.melendez@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251217055655.638594-3-anjelique.melendez@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ocLWXeU5NlgztOgqpVzUIBYDj_T9Jmg1
X-Proofpoint-ORIG-GUID: ocLWXeU5NlgztOgqpVzUIBYDj_T9Jmg1
X-Authority-Analysis: v=2.4 cv=f/RFxeyM c=1 sm=1 tr=0 ts=69428562 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ES-LWyGZB6HvuNGBYh8A:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA4MyBTYWx0ZWRfXwrpwERY+HjNJ
 3/jtox/KTKPhtC0OwH+ZQY2KEX2sZ34cvVKb+/eG3zXbx5wHO2lqJ1DMoga6/He1vsuR+XiHG0F
 cAFHVXp67Kg4HU12WqYQnqDHs12GD3UMNL9vV+9+jxgL1HpKGoEcN0BaxycMshJqjp2rTi0ACgO
 X88vKkmpVFfoqsQ46VAvlJlGHTBzZYw+wkZ6JFMoL6oC/8gr1pWOetM63FK5/G1NTk0yDditRFn
 sTekTsrt+lnX5n/EHW+NkzkWwXaUJM2f5uEfnZMqJXqfytDiReS8UREIU9jOLB+Lo0MZ+fD1KQ5
 m7wNx6mIBZn4Q25YHW4JFAi0qwxasB9UrhrIXL1Vzd/K9awHe2rOYQxaNrwE0uYuwoWEb4I7huB
 CX635f59l+K7NwLFc1SKb3FlPpy7Gg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 adultscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170083

On 12/17/25 6:56 AM, Anjelique Melendez wrote:
> Currently, the charger PD service path and service name are hard coded
> however these paths are not guaranteed to be the same between PMICs. For
> example, on Kaanapali and Glymur, Charger FW runs on SOCCP(another subsystem)
> which does not have any specific charger PDs defined.
> 
> Define charger PDR service path and service name as client data so that
> each PMIC generation can properly define these paths.
> 
> While at it, add the qcom,kaanapali-pmic-glink compatible string.
> 
> Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

