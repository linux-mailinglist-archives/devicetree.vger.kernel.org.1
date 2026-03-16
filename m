Return-Path: <devicetree+bounces-276117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCRNJ1Lnt2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:19:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AE229897F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:19:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1BC1F30053DA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:16:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6626F2609E3;
	Mon, 16 Mar 2026 11:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cT9zdv3/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="He/rN9Hj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02E4286D5D
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 11:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773659794; cv=none; b=bMu+tDzIkHmxZwPfsTaXP7TGVAYbFMltqyvzhBoABqOZO3Cqvla2Ui+ITA1w6a8/gMjgqTBX4GH3v/fjBg0pR5BArdvmSd6JivHQZ1r14ysELd9XmrPMKWC2wXhKYC+ufjsyPjdH7oWAgPAC6UhNJn6eS2nK4twQaZAgXApWu1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773659794; c=relaxed/simple;
	bh=xG/QaDUSOhesRdmqYi6i+Ld8v3fKnFkYqZVWHVNXY3Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hOP2mrtrJk3y//cLvaIDcMXZ7v/kiHZLUkUfTnW1NkD7KvV2iVCCLiWaeoE0h2GN88/pc8YDWFDr2h2y+HNccDagh8vRb5wX31gF41bIOeIHM1u1VGqBzfAE4rMgG64Bqo30asPDEYghl9+0vpUVEjc8AIDej/gJ3HE0alBasn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cT9zdv3/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=He/rN9Hj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64rPF323839
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 11:16:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/YDE7D97huJARZebmKe+OloJlAk/ia60u5iSeajG+rk=; b=cT9zdv3/LsiK0XOn
	e7DvD3I6uHY3osqlO3yW4WM1DNHhrt9ivqErNILqLdqrcc3HlbpYqebd1yyDxoDw
	thmpW5OA+Kcp1XdQJwWEp996Eg9qFvPF6uF//ba2oOmk/pEKkJIpgp80QR4O9CAy
	J2aHLoEYQLli9hhzamv8mK43lNUrS3PBDOgyresS23A0sgqL+0Fzd/sVPr96gMJa
	yunxfvbJ43lwyHlqAL92D+0LlTaUbEiuJaxpJ3q39Ji7W+HjbLnBaR/GbGdfnpFm
	Xl9m/2CpJzA+wdVPTJ6CcBVjuU7m8BCeuf1EwUXRz4dyr1geJ9DbDT77Mdliw3Bn
	MNvdGQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw03qngb0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 11:16:30 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89c4cde1f02so9848916d6.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 04:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773659790; x=1774264590; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/YDE7D97huJARZebmKe+OloJlAk/ia60u5iSeajG+rk=;
        b=He/rN9HjRVo1ipfxWsY/CryucRe9OCq50Q1yo8It//Nq8jIWcHQ5Bol0HOx4pEzKHx
         UTgxkh0ys5EIOKsrq/mtzIexk2eIrkm/GgGqAU2ntYAkSKAA3ewcexF7rL20ku6JmzVA
         IbFHHAaQZXVWoXpcPsu3N+Hisn/Zx64Fnn/L0pFHH4Ld+g62mZooZhrdIC7aH5nArxz7
         sp5WsOUKe2zDwJ0CKa7Vr1Dg4ZOE5kRsSCmHxJzTZcghBrd8m7KZRfHBLaE8CDzGinYE
         zfBnPThx/19hYJcBdEVVv41Nornopw0UYZaa9Co610ADneRvL0AGnPoHf3Ivc/dvk/nq
         YEMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773659790; x=1774264590;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/YDE7D97huJARZebmKe+OloJlAk/ia60u5iSeajG+rk=;
        b=jJujSs2jVvoUgcMaTXt9gjcRE8SiYXavy0m+R2B0Xnl5HQo1V9rlICBLTPTJL4hTmZ
         NwUCNJsbEHIjW1d4fG9CBTPt5WD88KYh9jPSrQYP5fjQ3/nCfDe34+Q1mi/MMPVK1Y3I
         zCGhCaVoGVe9QSjhmL1jAETU1Ss+HuA1vPxLef9ACIigrJ5nSNFlykmKRRO/sLWG+ksc
         kwc6Q9vBUg3qfXzmtutwsRQ7hzKW9ES7HZVw6MoG3uRkIWepzniqmDTpviXHO6vK9iXF
         VOuMEzSRykMYGuw3kMmrQ1GFsXfoqjBzvu00xxcHJ+5puTUGSGxjMKcZRLGBFCCkdi0F
         DFEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSwenmaf3LnjBEc/kIArZKfmz4AGRwkeGbcHVHkOiT5vnA1ADZ1PuHOqC03fXuyE2bUIu69ID6dbcb@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu9JizV8LObMw+t5Q9GQBL+GlsWUVNeeZ2nc5N6yhwnPW69Faf
	fxdnKVDKpZ7OHPBuBqBBf67VEPqUCIGU/aw8OgPnP40DzECPwk7J6X7B9uFwl6wVUC5YezhMRyq
	zEcQ836v+Sj5JXF/6QY0TI4NlUcvV6OOX2WY8rfXhSD2zxS94CB4h9sJh8xrU87AgtTTSXWEm
X-Gm-Gg: ATEYQzzk1rCStybOhjk0s/At+u/u0grFnAjlOc9SuQQZ4O7KPstnAlXw96zzZlAh/0V
	gYd8mXGHzmkrgfi/WVu4q+XrOa4tCqPy0XsAVXtbUAFy8qOleEU9K0asNr7oURFeGm4c3zoO469
	yyLibhC315tbiZAnFBomkQakczwkjHdBkDEjCTi1xcsfKv2ix4W1ztTIjg4a0mwoLhEI337C+Q9
	8+DIYqqZsQHgVahXuDpQRx59l+Yg/El0RkMTiyyCCUYPllfL9rnJ5QR8Ky+1iR8yHwE6Ao/+Xjf
	NwEDaPiM7BCqH93gIKu9/YcNfoiEfOGTSejX7ZjiYC4KCFz6ZqSJSyInIo1VwqNRtvn/7mmHt+G
	VyAuk+KVjMzN7LT+eY8T8mijvKlxRzFp/TRkmVrZd/x/mLLtar1eDueiGqGH+s2hXguD/KoZQCi
	lPf6M=
X-Received: by 2002:a05:620a:bc4:b0:8cd:8751:2b19 with SMTP id af79cd13be357-8cdb5b8cb21mr1296898385a.7.1773659790153;
        Mon, 16 Mar 2026 04:16:30 -0700 (PDT)
X-Received: by 2002:a05:620a:bc4:b0:8cd:8751:2b19 with SMTP id af79cd13be357-8cdb5b8cb21mr1296894485a.7.1773659789695;
        Mon, 16 Mar 2026 04:16:29 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cdb47fasm520697266b.43.2026.03.16.04.16.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 04:16:28 -0700 (PDT)
Message-ID: <c404887b-ccc2-4731-a7fb-2e37ffbbaf3f@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 12:16:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: hamoa: Move PCIe PERST and Wake
 GPIOs to port nodes
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20260313094618.1361418-1-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260313094618.1361418-1-ziyue.zhang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 2CePYnMb6LUOGCKsyuzddOliEWrEsMgT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA4NiBTYWx0ZWRfX1oEHXqwgK0Y7
 0ruqQyNOhmX5fJatTSm0ujskhlZchQ2gCrgs9lw1mk32sjcP9n5yUyarcoW3qKf9w1J6e58xsUD
 usQSQHrhM9D7Xjgs68UtM5e8k29xuqI6OTV36qxD7IPEmGBxHLihnTaV2fW0NF+2SYW+m7lsccF
 pqQnwTb829l7d9VuCD/o1GlpwYCFTvHs8k9PIBbjF9VYMxIqR/Yy22kbFFoM+qb9hv/xmGIJf3g
 KYqLa8pwwRwM6cq/W/duRmVVhfValxUR3v++XhsWu89EAHLZY/6k9jMImzBtPoO92L/B/YQHCbH
 LKblWqXsK7NKlS0Ra6NiT+I2n3L2si72VRQ8IYA9YDPOtO8eu5JRRlQLBl8OPO2e7CvK5bLpQ53
 9Ehh2lfG20ZdAS0K1xpZ6VLDAO2iZSPr7nq4tUyL+2Gx1j8L6uSOcKXPoMu0DQrwrkEBK+bLpKW
 j87/LT/NHyEBdrXwXxQ==
X-Proofpoint-ORIG-GUID: 2CePYnMb6LUOGCKsyuzddOliEWrEsMgT
X-Authority-Analysis: v=2.4 cv=ZbQQ98VA c=1 sm=1 tr=0 ts=69b7e68e cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=hNqFj29UGYf0a7zNkJMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603160086
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276117-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com,google.com,linaro.org,linux.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E6AE229897F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 10:46 AM, Ziyue Zhang wrote:
> Commit 960609b22be5 ("arm64: dts: qcom: hamoa: Move PHY, PERST, and Wake
> GPIOs to PCIe port nodes and add port Nodes for all PCIe ports") did not
> convert all Hamoa‑based platforms to the new method of defining PERST and
> Wake GPIOs in the PCIe root port nodes.
> 
> Without the change PCIe probe will fail. The probe failure happens because
> the PHY stays in the controller node while the PERST/Wake GPIOs were moved
> to the port nodes.
> 
> This fixes probe failures seen on the following platforms:
>  - x1-hp-omnibook-x14
>  - x1-microsoft-denali
>  - x1e80100-lenovo-yoga-slim7x
>  - x1e80100-medion-sprchrgd-14-s1
>  - x1p42100-lenovo-thinkbook-16
>  - x1-asus-zenbook-a14
>  - x1-crd
>  - x1-dell-thena
> 
> Fixes: 960609b22be5 ("arm64: dts: qcom: hamoa: Move PHY, PERST, and Wake GPIOs to PCIe port nodes and add port Nodes for all PCIe ports")
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

