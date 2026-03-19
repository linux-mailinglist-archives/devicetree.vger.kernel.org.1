Return-Path: <devicetree+bounces-277778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFxRAKryu2nkqQIAu9opvQ
	(envelope-from <devicetree+bounces-277778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:57:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE9C2CB815
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:57:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C53DC30364CD
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBF023D3335;
	Thu, 19 Mar 2026 12:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WeFGKZvJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GFork7kq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95E513C3C01
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773924914; cv=none; b=kPowq17iW98hybS5uhWUGN05cxFNisLya4tjvVE62TiEB3oow3tJK2YkT3XqKOoK9+lFtJ8W9666msC50CkVnwjBM2ac+qrkaKu1mF/w+oK2DkvFNj/0ZoD4fOKPqSMaNAQgJlZG0xfSTpUG+eJ8bC+fB/+kC3xxTm5ChFNTYww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773924914; c=relaxed/simple;
	bh=RXlQm0efLSVgfVyWZEFRztm0W8BgSdJY0Xk+PC8y7RQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ENp/9JFW74rKfrElA4+pvOx6+8fziWquroTo3Hs6lWvu/xy7xK21gDmBNbkWLjplmJaBwmYtyhl5s63HwN9ZJ9S2qYm15WReKN23ISNBHn2nMEWpAZJhBa1sQgm7GvSsmdwSNf5Z3ghuxVTk8I9IVtVz9XbdqQExmFMgAfeKrEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WeFGKZvJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GFork7kq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J740YE770558
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:55:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xq8qSCuxSPb5ID8fPVBkFPObIcD/LQU/bYddZ14Kvyo=; b=WeFGKZvJNHRH2mpg
	CW7azge42SSmeF3rypJ0G3AlZIGINudzu3IvoLqoha94UeAKkg8SDvkgcLxVZ8X+
	YSkd7dD+aAhaExmLBbdI6KInbsv/6KTgH/CPqQRb67VYRup4osrtm13QSC9UpZEG
	QoEXKjI+Cvoci+LnBdvw9IkEdCpaEGZWl3Fetw0VAqOm8skak2ofgFwsBDUeuGix
	a1fZW3yIjUhFaK4nOc8EKYg67QJMnukjIyf5JmWAeMyB2DS+7i1ggokPdoahWd0U
	PNr4V6dcR+ALM3UzlJpUW66nxxKEwgaEx3FW6+zDqPbJPGZU2BWcTNSAmGAfNtnc
	2s/83w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d00egb5wx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:55:12 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50b2a1f123fso4041661cf.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 05:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773924912; x=1774529712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xq8qSCuxSPb5ID8fPVBkFPObIcD/LQU/bYddZ14Kvyo=;
        b=GFork7kqRpoUjOHM9JiuyFQM7hnLelgiORLGR8LLTWxcbfVvX3lXblGPmUL72uU7Da
         SVsm+MyqoWxQageal8vCIP9omY0sINTDacu1q9JP9xlBsk0bVgU5H3ApvHXxWEgiIjuH
         7iXcNu7yNUAaWPL5+efAx21vbE0UDp/XX+vXyQHtYAYzf1+k1WIjeFt2o5s1ffObhhL0
         nza/94pDs1OPzR9kMJo5XKjPmsUlfIl8TsjDpjzt1wkCP2oRcS53TauP1vSNJXMbFs/H
         W6swgz4WCAjli5nlA58OgC0YHZzdYxSS9SZjEK++XEP8b0vfqW/mG13wKVcwzRrledB2
         C8Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773924912; x=1774529712;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xq8qSCuxSPb5ID8fPVBkFPObIcD/LQU/bYddZ14Kvyo=;
        b=nREy3u78VccUih8b09Yf7QSN1zuHwNDLc/nLd0xbd1vp7PyKZB6WQLsm4HDcjJEnK/
         643FaLuN4BWyT6MYAETfVNH49x81h5VNzFXjo2NtPoQt6hiWT3lr27FnjQH7DOnUmWYR
         oxZfU6xPATpEYl9VVOSpgqLrsIvUMjs+KlqX6UkWcGe7FHk9Z8lcqTWrIJcp204kJV0G
         9b35kne2EpfKUMhdP38+wDiXUr3qiE9vLCgoOEZ64xof7sDcLmmfSlmM/ro2VPrwQ4UH
         80M2W9G2pcjtYFQ5pjB9dz/NjB+jkGDjD1Exxd4w9ROOp1nnGk4j9WaVuMbRgoBnMoYh
         QgWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtqAz+fM5RjmupmCtdK6/QaL1sPO/bDIZFsC0QK6mjZDbwCG5K8F/cfGUNP40g9KiDWAYiJVBYl74x@vger.kernel.org
X-Gm-Message-State: AOJu0YwP3usZpP1G9KvVvkh4mQ+9wMVWpNXmsVxC0NlHQNrkIbE0s08Z
	36DKPTKy2wCVTvuxCdRg3QZBpoIWsLTRIaorvvXOCw9rKBswitE3rcY4Dtmf9gQdrhqAaL8qEBl
	+DYynHc0t4gQ7l0AHTHDeqYo66ljywnaI5ylHuq/RfOEF1AziQ0yC5MDOpFbIBIgX
X-Gm-Gg: ATEYQzzAXpVMEHR/ZWGoVUSPwiO+LtttsW76+N2X2IuihePOEOBc8aMY0oypqbHZggL
	U1Q+BOlyuPVBDbkSziCvJMfM2QvulPnCj+flI5b5KC0tWMxlnSkXzEr0A8VbzAnwuTvM8OJrBUq
	nPrgXfdamYUa1iWRVVIbra5uPSu9UUflkH+KiBEDZB8DukBMHuHBH5/J0+9rlzduNUKgfcKh38k
	q8BcwH5VrkGNmZ+vOnAa58Z0Cjfh9lqbopoQcUFsYyVZpF0w80wFbiGPYgUvwKs+z1lNJ7ywIjf
	PYOVSco7Zls3iRQs6ROfuduJ4epyuh5S7bJTh1IZgeUhH/luPkHvTyh9x2pVZrUBqLP7FDtrh3T
	THEgsgYY36iZ6R/atRsUQACK++orIat3gIm+atBIcxKZVL3aOwNKfXav09cW2yxaKzTBEI7lmgf
	URkvk=
X-Received: by 2002:ac8:5f4c:0:b0:509:882:9e7b with SMTP id d75a77b69052e-50b148f4455mr72476001cf.8.1773924911858;
        Thu, 19 Mar 2026 05:55:11 -0700 (PDT)
X-Received: by 2002:ac8:5f4c:0:b0:509:882:9e7b with SMTP id d75a77b69052e-50b148f4455mr72475741cf.8.1773924911450;
        Thu, 19 Mar 2026 05:55:11 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f1452214sm428778166b.27.2026.03.19.05.55.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 05:55:10 -0700 (PDT)
Message-ID: <d97237a6-7f3b-4358-8972-5fd4b65d8f27@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 13:55:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] clk: qcom: gpucc: Add GPU Clock Controller driver for
 Eliza
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Akhil P Oommen <akhilpo@qti.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20260317-eliza_mm_clock_controllers_v1-v1-0-4696eeda8cfb@oss.qualcomm.com>
 <20260317-eliza_mm_clock_controllers_v1-v1-5-4696eeda8cfb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260317-eliza_mm_clock_controllers_v1-v1-5-4696eeda8cfb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=MMNtWcZl c=1 sm=1 tr=0 ts=69bbf230 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=KlJgg6mcpdonUnbyTwYA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: MvHFqxUJiT9oxOnSKLkkUd6reafMd-t0
X-Proofpoint-GUID: MvHFqxUJiT9oxOnSKLkkUd6reafMd-t0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDEwMSBTYWx0ZWRfX08pQYVGPKpub
 4ovxoumWlNX0izqUl+q2OUvAxf/FMDy98e+hB2mDnp0ED96SZCIMkUVHeeyraM5bFJryJpNSjKl
 lLPSOTgA6sDcHJRz7+b5I/JcfKbgDtsJYrnpIYZD+sI4xFDPLvNt8MfMiwoI6JxNAkA+VnDw7Dw
 iMMlJLxwFOp3SWtgr5BxmTZxutf0np7KyR1jDAeGcHoIK7+VYai3heWYFRQYpC1WeO0b5n19TqN
 DoVyjwpkPFUMdy9ysw8cDdixVEKgBdUnCmU8cUibB7qAmDMn/deaconMejJdsR4aNWGCrs7eM4c
 vuoYw1TIgLLXmW8e/iT4COWbjxKH4aqahAMh8SlsBO5W9tO6iIBPc30GCRETcynRoLwszvw50v6
 hjKIGHtABBGGrrUFlnMW4MhWihhazQ0v6DOBmJmEBBbcT5Fj7iQM8oCoT39VjlyXUDVQr8sO2kq
 cjsg2QZ/safebB6EV0g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190101
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277778-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6FE9C2CB815
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/17/26 6:14 PM, Taniya Das wrote:
> Add Graphics Clock Controller (GPUCC) support for Eliza platform.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

[...]

> +static const struct qcom_reset_map gpu_cc_eliza_resets[] = {
> +	[GPU_CC_ACD_BCR] = { 0x939c },
> +	[GPU_CC_CB_BCR] = { 0x93e4 },
> +	[GPU_CC_CX_BCR] = { 0x910c },
> +	[GPU_CC_FAST_HUB_BCR] = { 0x9428 },
> +	[GPU_CC_FF_BCR] = { 0x94b4 },
> +	[GPU_CC_GFX3D_AON_BCR] = { 0x91dc },
> +	[GPU_CC_GMU_BCR] = { 0x9358 },
> +	[GPU_CC_GX_BCR] = { 0x9058 },
> +	[GPU_CC_RBCPR_BCR] = { 0x9224 },
> +	[GPU_CC_XO_BCR] = { 0x9000 },
> +//	[GPU_CC_FREQUENCY_LIMITER_IRQ_CLEAR] = { 0x9538 },

dead code

+Akhil is that useful?

[...]

> +static void clk_eliza_regs_configure(struct device *dev, struct regmap *regmap)
> +{
> +	/* Enable frequency limiter irq */
> +	regmap_clear_bits(regmap, 0x9534, BIT(0));
> +}

..sounds like it

Konrad

