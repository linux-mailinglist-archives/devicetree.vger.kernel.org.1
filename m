Return-Path: <devicetree+bounces-261767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CG27KaeDgGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:59:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B586CB5EC
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:59:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 092ED3005A92
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 396DE35CB92;
	Mon,  2 Feb 2026 10:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WStFVmCN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y/rS5ek6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23822DC350
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770029956; cv=none; b=uCXdHIHFdvRZrYpceBWCsi72ZYMG1YnGNIGjDZ5OOy6sJw036lFGf28mSliDWoqSC4klv4ZecZeRoSA0M/Hef2/J5o1AzuIhda38SUVvfxAjLAELB4axH2zfB928wiyhBSCH6C868Bs5iqK9JWICWplE9NQyOGoMORIoTkyMh60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770029956; c=relaxed/simple;
	bh=Dl3BIQHNAZA9K8D96BWlluSdepdKUs7++yL69iWcfYs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nN86L1SMYONXs7Id1FVF86LLreu0hguwrKQtDAnF3lKtGhdzaG+8KpvRNi9OVhmHj+Oy//VTtyQeRx2mIwTrggOutB712e8KTnBRA97Pd4qmHrVb6E4rsl9YtJ8Vv3tBLPAuEU55/s++OR5zt8xcjec/DMohdqmjMBg/xqaSs88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WStFVmCN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y/rS5ek6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6127F5OL938812
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:59:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TfSoshNIZuoUQWdGf72ue86p/WcMY/Y5wpUVJbZySiQ=; b=WStFVmCNo3BWrXoL
	Amh3mV1I5frX/XLbKPIOi3XWVTDDEQloeny7cTZ4bs+HULUUvDd8BnLTesXgtjRK
	l5bJXksoaydEWmG55Lnk17DIl6r9tNet6R41HWxGP7sebyHMjh5+k8CWayapGAt8
	rTnzcD09JruggIysaoda0GFoqdaiKxh0Wyta6hy/03LCsWkGGKnobiHL7DDac+aE
	84Ch3mQqYtWcD4w/+GjxURopngRnYPptG5ItjDdVkezPd3jX9Saf+FwHva6+o9qm
	Y/W0mj2KVJ1m6J4BLKspEgw8CswbXUwZBnzZSTslfqDhyMCLEYMCoIjNsH3Zd/bT
	rFVUqQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1as4w5xg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:59:14 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70c91c8b0so113591585a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770029953; x=1770634753; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TfSoshNIZuoUQWdGf72ue86p/WcMY/Y5wpUVJbZySiQ=;
        b=Y/rS5ek627e82qHf+xez/xhEifbmq5CBpBmLHKhTMlYROXRbigokaQ1mDdgdVKTmUR
         b7edMeUaDiXqh+uym8pgAPgmDHY3QsmMTOknFsN4R1u2X74sTFCfvpwq4CBpECIANYmp
         yCIDxiv+EwwgBDnPdbBmykO0080hfmUYDHTrIqRFFG48M4O6Gc9CE3q2xBP+SWU6EKr0
         hJzmGaMerT82M6s+IQAT9FSDvrwVZePRZ/V3eFRvxLtxeDYsu084mnvB74MsaXQdqB2e
         lTjp+MvFPTIIFz6oe8odXewhZwNIka871GypVDT4Yi/Us1D+oNUln/ppTNeGPJ55FIrn
         2QsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770029953; x=1770634753;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TfSoshNIZuoUQWdGf72ue86p/WcMY/Y5wpUVJbZySiQ=;
        b=T4C6etgSXAFLlgfVDGbDfAzIBn9KnaluBj4pxRxqSA+O68olkU4G+YDLRj+Uj7ineF
         h5cJ3D+dNZvL5jQXqRqVtHzdopsaEVf2gi7aGIn7AlNJX5AooXLk7im7Qx62eym/kMaQ
         Hu67FR827mSUU7nS3uQ0VvbME9o3jGHydokSA2MV3tGG+52R1a2dxz24ItlF6gPBYGXP
         4r3GJAgPj/e+AsAB0UzD/YXbKPTOygl6F7OXflHNUiwJbqxxH66NlpVhhz25StAkL7vM
         TQnrZkHala661DVH8C5zL7BIPAcWR9O16X6gCbBWLKmoQC8IDnR3TDBP1SFF4okVdEks
         L12A==
X-Forwarded-Encrypted: i=1; AJvYcCWlgPR+5YxFS608Z2EibLWxu5IFOeNRIeTnZIdEn8waB453E01Acv6TfgOiuGW9UH6LfwHC1vA92buT@vger.kernel.org
X-Gm-Message-State: AOJu0YwyWsXCswjvKHmouWDV1ZXCDWCIeTwNpd+ciCDLcT/YrIrKwDmG
	zVvlq3jSztLnTAUMkotRPUSjI/cTlXtwZRcysMXWRLuD8+t7IOkYstO+uPvj4Hp3lrrd3/+HplE
	ZfRlmDxiOLNx9IOR8WIFva4yVWDoMbCk5xYDKJ5CeBCICoWHl5ggYDoCL3ggJwpV7
X-Gm-Gg: AZuq6aJ7lwJkoThNc19UIsbwVkP48WRdx7NGmWr70eDdgrAzZ9hDoTVkUsQEgRRnWcq
	5iQI9ow9mxbjGGS3Dz+jCsJCZ/Okp+I9/6cVZOxXvMjG3G/wA5ewy3Q3F9ajB/VIr8OfhC1wxjv
	x0zOje4Z5ZFiJ+kS0FnqG+cL+f3tW2+pBMqGIt8CCaOSUQnki07f34Ow8PChR3w44w1yeSvWTlP
	fMr/ODjwkEU2L54ZyTgcbchJsimIQVfBlBecR+v52UE6CzDkr+pIJOyil8tMSNvDe2vk/QmJt4E
	ySIi2lSTqOY5Dl411sAOOGT16RyUDb9FDJnJ2gOx7XtUd6BNfe+RfVVywXpI5ztsZf49/oBCt0T
	sUXPKoFrqboHZhhme8Rm0Kf9h1Dl+Hb8rgNFnkLu4kO+9R7ShDS7SP4pFaRMwM/SCzKs=
X-Received: by 2002:a05:620a:28d4:b0:8c7:f61:eff8 with SMTP id af79cd13be357-8c9eb34f249mr1055532485a.10.1770029953367;
        Mon, 02 Feb 2026 02:59:13 -0800 (PST)
X-Received: by 2002:a05:620a:28d4:b0:8c7:f61:eff8 with SMTP id af79cd13be357-8c9eb34f249mr1055530885a.10.1770029952939;
        Mon, 02 Feb 2026 02:59:12 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf2ecc73sm868627066b.62.2026.02.02.02.59.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 02:59:11 -0800 (PST)
Message-ID: <0bce6de3-9e3a-4a5c-b9cd-ec68096f9f1e@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 11:59:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] clk: qcom: gcc-glymur: Add video axi clock resets
 for glymur
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260202-glymur_videocc-v2-0-8f7d8b4d8edd@oss.qualcomm.com>
 <20260202-glymur_videocc-v2-3-8f7d8b4d8edd@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260202-glymur_videocc-v2-3-8f7d8b4d8edd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: qL1qqaWcyMGw3RdXhEU3hpoB2SbSOn-j
X-Proofpoint-GUID: qL1qqaWcyMGw3RdXhEU3hpoB2SbSOn-j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4OCBTYWx0ZWRfXwmKh/6f1PALu
 q6LXd7NxvJD6IqPWHXPUZ7zUKyvZsLXiyzMXq34VtFE8ymQUhHyEyrzhUHpirkujddnwVirSNnW
 E4zguHIygNWzpL4eYhJowti9rYFB5+H4lTYMUbKwbWpEOuYY91G4xp7+AWFMH8fyeEqGlmmQfbx
 uJdzBuzopsHSDp/h/LqCmS6mkwVuToArVVOceD6GsplozmSw+TaX2NvIWUnVV0a9sZ5YpqDMKM8
 kJjl64gajZt0GGcfwaghZfboBhcuuOq+xTXMEcAjy4BWUCwzy50S1jksye47YW1m0Y3bFXyNgzI
 0t+1XeA6SKf35Yi9bFklmqiLcsaW2wwoMQSsxdV7Uxkn3a0fIknkFLbdJqQ5hoDBXUIi78YgHfm
 yY88Hk1FatUunfDT0w4uFlBBP0+CJLzC3IoBuE8panxMjvSppxOsnGGeDI/TH2Z4bAxmw4mTSzn
 ARBivRRxWhQeJJfxP7Q==
X-Authority-Analysis: v=2.4 cv=bIEb4f+Z c=1 sm=1 tr=0 ts=69808382 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=-zE5Bsz_LXmV53O_SacA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020088
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
	TAGGED_FROM(0.00)[bounces-261767-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4B586CB5EC
X-Rspamd-Action: no action

On 2/2/26 11:56 AM, Taniya Das wrote:
> The global clock controller video axi reset clocks are required by
> the video SW driver to assert and deassert the clock resets during
> their power down sequence. Hence add these clock resets.
> 
> Fixes: efe504300a17 ("clk: qcom: gcc: Add support for Global Clock Controller")
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

