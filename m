Return-Path: <devicetree+bounces-257297-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKsXJPdccWnLGAAAu9opvQ
	(envelope-from <devicetree+bounces-257297-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 00:10:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 446185F55F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 00:10:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D477C5CABE8
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:44:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF11740B6D1;
	Tue, 20 Jan 2026 10:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W2K0ZKEh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W7mIn5Pr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D9F3D3D06
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768905680; cv=none; b=cZTVlsjQgbfpG4+VAc6U/mflI6KT8LZXRJuVjTqHpwPxq0V78f78vvnApViiBwWO/YJXx3o3Zh0tBZkZSLHZXuSI2Ag7v0xuRgQTOyk58j2v7mSROPOe7lBwXxk87tCRZhHhIokFQOHa1KjdxwtAGhEVW4LtEt/IPp1TmUqReAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768905680; c=relaxed/simple;
	bh=6zLovzyGH1PU5jlqZN0tFJ3tckCwLjz4OErAb71FPBU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iAV9o+1drvoBtjVJGYUJ8IcEoY6ADHjoVhXm0K7pD8tgmXorH7LgVfv5ptD3wierX9y6tb5X2aSxc0/HoDCkaUVTE27mNxxTQyRtsi7UaptaoOmn6UcZSLZtEqIuSi6N2o6oMG1pUg85SGIcWUSH95DcqYe42jaYHTIyRReTI+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W2K0ZKEh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W7mIn5Pr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K71aHt1408494
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:41:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6zLovzyGH1PU5jlqZN0tFJ3tckCwLjz4OErAb71FPBU=; b=W2K0ZKEhpz9+4mx4
	wxkmTzaEDcVKHzh32YMVo6xuApFjPZZ5jN2FpGX5xuPCinvgA6qFJ0yfIuudwlzz
	MIuiSlyeUhBHeYzzd6H2WTCI3i7UyA8TBilLIejW8119ARCQ2ljF/p9jkAwCBxqR
	dQrw/6X5mvxozhvfDOyGsdxAVGnpbKVK9DrDjoBwYTxdXG2rmB3GF7LUxUojezw3
	k5SfusppAMLcS5ByD9zB1nmJcsIwFBp0tbzr+38FqyiGGru01hvgVEGMCd7pHKhd
	bv2Ldd3pN6zqfpTCcmFj1WTKpbbOBbEh4+lTFPkIJf1AUx2DxzheIE/waHgrbDwy
	UI0SYw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt4y2rnva-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:41:17 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8946c23cf90so216516d6.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:41:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768905677; x=1769510477; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6zLovzyGH1PU5jlqZN0tFJ3tckCwLjz4OErAb71FPBU=;
        b=W7mIn5Pr2jwOydkPqiofamBNIez5U/9/2zQttDuMZU9cFY8Q8zNpQpb7tvIfDD2IDC
         AGDIP/7WTwaZEc/xLveelbEuNqOSGXg+rcrjAgIFONswVAbkCOqgCRqae53fuGW0hwH5
         RGkAWOWdyQ/J7BDN1yJ2IjN6yCtscgZaZxCWljkkAnEbdTJzyXxPpUKL2vPBDZJiGkYi
         nhKNgla9g/dzgp4SxrIHL5LYLxUNiVPUKpFoJ0EmNyyJi+eAoxN9aV5+3BZQKwtzhBa3
         3ic+Zp/NfO2WOzlbQi8wUmUU/CjlAuEe+oretjlDLw+mxWmbpywlA2sP21BegrBmLg2W
         +AnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768905677; x=1769510477;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6zLovzyGH1PU5jlqZN0tFJ3tckCwLjz4OErAb71FPBU=;
        b=qboW4iUSX4gWFemzmmqioeAR00j0D8kjcCJmK/86P91xAvqyjZz0SWB1/3xrdqQd7M
         wuqoLhxlPzb3d2gkht8mMGF1TNs3sbEW9uk+8OgulfdnNraqw+wuJJn2ZWbQ+/W5uC1o
         hidu3Hi0cQunE4l6tPtWm5WIgCPbid5MOvBUb1YOnUIG243ytZjuKzcFURzClEsn08yP
         OHTsQ1agu2wlqstIWeF/Rq/JLiQhZWur1Ws9dDV2GzZcfu7U+zZ9wm2TrEpMQpHawTDn
         XTftDdIICF2BAaKKtqH13RRQDxrrpqX+bC3GPv8WDUub+ReJf7Kql1MrM+cmh/m1Kp/w
         TOJw==
X-Forwarded-Encrypted: i=1; AJvYcCXxXMsqhHrhAVa6/7S3tsJWdc6FyOIgiv/3tXjs46E4DzblLgIFLVC64Fp2f/MjutvLe873rXGZrrnA@vger.kernel.org
X-Gm-Message-State: AOJu0Ywsj9hIaVR5+vI8lCoICUlqHSWN7uYuPMA00uYjC/A3j8PavDiI
	k6auyzKraAb1MSYQG7uxOpnAteZtqaO7s2mTym6Xu0GglW6C8kqCrE7m4Nio6a3WcMe8I1fqER+
	wPWnpoFlCY8XJbZhAEcG2AwNVY1A5TBETBBkutCudgYJIPds8qMxzmXSOJOWhgSYW
X-Gm-Gg: AY/fxX7OwL+XqgJubKEbwN9nTjpLw6y12EsFViMHl0ZIkGhOb3Nz3W64Aj686higGYs
	nFIw8RQGr3Uy24SxptCdBqls8UwLFTRn3zC2vX5/+FkYdBTj5CfCbzZd86Di4lYr9K0YS6gMseM
	pmbinOYlKCj59M1I8wX7AWQjnGDDtjlnC5c8FzpHSmL7vKAhTGvzaiDSQ8Wmk4KrOFLeDv3YcT8
	PgFlKa5TYIwCc+NnijiJm6oJqYfdb2ccL04/eYUR6JIqLTgeiMOUpWiZ+XKcRE/HpHduj0TWY9T
	cTfcFhwrYAeBHrOd13Z6s6k5DnIhSHkcibRnheWFPzGy/uaWRzdLNQZkT0jjcwLMSYBPk3NYcUK
	BK7NJhdoswq7KRmp2N3g2jiJWwYCOVBeNuvCLPH0x9yfegqLma9vXMR+Iea46Ke++Zpo=
X-Received: by 2002:a05:620a:690e:b0:8c0:c999:df5a with SMTP id af79cd13be357-8c6ca431652mr251222085a.6.1768905676997;
        Tue, 20 Jan 2026 02:41:16 -0800 (PST)
X-Received: by 2002:a05:620a:690e:b0:8c0:c999:df5a with SMTP id af79cd13be357-8c6ca431652mr251220385a.6.1768905676562;
        Tue, 20 Jan 2026 02:41:16 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8794f93c34sm1415725166b.0.2026.01.20.02.41.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 02:41:15 -0800 (PST)
Message-ID: <947f59dc-4eda-406c-a82d-6b16fbbc9077@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 11:41:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: crypto: qcom,prng: Add SM8450
To: Om Prakash Singh <quic_omprsing@quicinc.com>
Cc: andersson@kernel.org, conor+dt@kernel.org, davem@davemloft.net,
        devicetree@vger.kernel.org, herbert@gondor.apana.org.au,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, marijn.suijten@somainline.org,
        robh+dt@kernel.org, vkoul@kernel.org,
        Harshal Dev <harshal.dev@oss.qualcomm.com>
References: <20230811-topic-8450_prng-v1-1-01becceeb1ee@linaro.org>
 <20230818161720.3644424-1-quic_omprsing@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20230818161720.3644424-1-quic_omprsing@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA4OSBTYWx0ZWRfX5mwGUD20OMgu
 /BLvjN7wbUl0OhMIvYqnuejAhufNpSHHAqKfnQKwPYd/BZHwKDy5yTWOR001e0LO0BO09Kbp6Qe
 vaR2Ik94LGU79Y2EDh/HGPZ8Wm1mybipuycpE93l6fr7bc8Cr3nN819qtRHlrpaTDW28QUSWOmb
 1dhEEPD6c//i3HBwdFpP75+ro5gnlpICOdSqeeC4yfgn6sdym6vZgS2gzrogdS3IlDk/CKLjXvH
 gQ8+xbJe+iPgp+LLpI7kzfg131EQMq4PnrRKi+hYQFMhW47oy8592fr4hVS15Wal+O84RWi8/uK
 tu+Vn2yKQKSZIrXTb01eWTxE1CutmqnkxUjeBq74hYoYbYCFBKD24couoU8o5SnV2jwNgy1CioW
 ulu2+UaK+U4rav3+cVmOTHz3i8LgWzO5S2GvsuUD6+7/RBnc0viZh4QGzVdOr3bq91nuMHOWpkj
 HSgisJ96maND8Nhq9KQ==
X-Authority-Analysis: v=2.4 cv=Ds1bOW/+ c=1 sm=1 tr=0 ts=696f5bce cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=5B3EobkcHC48zLS9OroA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: dgIVEmUqB9iNxCKlT59blue7nELSXJIh
X-Proofpoint-ORIG-GUID: dgIVEmUqB9iNxCKlT59blue7nELSXJIh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_02,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 clxscore=1015 impostorscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DATE_IN_PAST(1.00)[36];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257297-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 446185F55F
X-Rspamd-Action: no action

On 8/18/23 6:17 PM, Om Prakash Singh wrote:
> Instead of having SoC name "qcom,sm8450-prng-ee" we could use "qcom,rng-ee" as
> new IP core is not longer pseudo random number generator. so "prng" can be
> changed to "rng". Clock configuration is not needed on sm8550 as well. So it is
> better to use generic compatible string.

(updated the email addresses of various recipients)

Sorry for digging out this old thread, but I can't seem to find
supporting evidence for this, at least described in a in-your-face
way..

Can we determine whether the RNG generates pseudo-random numbers based
on a version number, or some other register? Would RNGv3.0 be a good
check?

I see that today we describe kodiak and talos marked as having a TRNG,
but they're much much older than 8450..

Konrad

