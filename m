Return-Path: <devicetree+bounces-266617-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNDJLuDelml8qAIAu9opvQ
	(envelope-from <devicetree+bounces-266617-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:58:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 649A215D966
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:58:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C4520300B47C
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:58:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90FB6325488;
	Thu, 19 Feb 2026 09:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cWHA1eWy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Mmd2HkWw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591C430BBB0
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771495134; cv=none; b=W6pILapiZyKNz1EUHNWTOHEuBlZV5Tpgs7oqf8KXXKQFI1zlLrwsAJQj1PNUDoJukrl04ORTADjBNLbY+IT61+Vs3fHdEKilBk/BfxvFt+2gqOvkg3MpQ2QyN7hs8hF7ChLp93kVUmzAqz3P+2XS0vANfe7xwILt7Qdd0LM2HfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771495134; c=relaxed/simple;
	bh=pdfpoC3jVEsg2mTi9NV5+lcx/3u5nMQepBsWbZrdRTg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HHhJ4VBuH26RgVZZOkZtV9nbMkV0Rfi55siAD9y1ez5FR1Atki9umOBssHNk6ZJ+k45gwNu1T/E+RzriTF9/SB8yJlb9/RQq2Xz4MZiG0mQFepMvkUvsF71S/Te2UsLWm2N3lZubBo4MtL3mgqZEC+ghnGU2dngzRAc7/gfYMAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cWHA1eWy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Mmd2HkWw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61INqPHk2885457
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:58:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dp6lkKnOQAqyAsl7Ok59pbcSrf7YRsjhfIHiueCYf98=; b=cWHA1eWyOwzvfz6q
	lh3Fe1jp1wHjvxgNo4thGOeHAb7SY+jtYGMjmOhlojzUxWiTs0dJiBEvsBVAD4RG
	LKwZHoV7/fY/GnuuZsNzcl7SlPpPHgRzoeJauve8p7572GDz0jif9kpSds8NQ1hd
	zJcUmzRgeyuQV1eBSMdDBvfl5KsOJv9aE/w8oSvDeNn7wn7EdfOwgn7XjUMojSdX
	kRH4h+TNLkhPFSGUkmwO3kn6d/rahn2V8qpZTyAbI6VI/bm4M4j6F3jOx1BBYmC4
	z2ElB5xops+fmzVP6D0tknKHNFLt2rfMddWQ/52QkAuwYXWXRq3forJN6Rdgvks4
	KNdgAg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdqfg94jc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:58:52 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8954937be97so9000336d6.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 01:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771495131; x=1772099931; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dp6lkKnOQAqyAsl7Ok59pbcSrf7YRsjhfIHiueCYf98=;
        b=Mmd2HkWwsH79SojZ+NebTrIWywN61KmT+vfQ772WibbiBWyj/Sk2PvXqNokh278iZB
         4jo1IvHNDZq0E9LAMeqTLsq3nHzxeDNdRzgYQmbEZopyl7F+xPgF3/04Q3mKg57wqXjy
         /I23G5OeEifL9cDpZ9s9aA8C/T0TYV+gUSSfr7UOPfrihIs3Oe29w5aP/uuJCVMPMdz3
         sGDM5c4i09DXvWcMBGtymU0DPvmNK+J6fTCrvRsN7BSAvxqZBV1TphukWr2+Yz1XvAKa
         iEpV8vVu6myobirIZQhpRuP8/KKMFJ4YKeUALKf4kD2rnj5LNH21bIwlHAuRxRDqxbKl
         3NCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771495131; x=1772099931;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dp6lkKnOQAqyAsl7Ok59pbcSrf7YRsjhfIHiueCYf98=;
        b=QWn/iAf+KLdWfYJg5MHd18QHY7O+7nDt8ZC77r27VLVl80xdBJD9EDWgLIPVkWlFhL
         kV+vBt46LY9le9aipKXqDex3ud3+FSJoCAzwFo/OBo3H+mWcXI5D53MCAJJFDEd9rKj/
         D29nSXA5dHsmIJTi/mdP33QwKiI1l78mDpNV4bd9/xLOrP6A93u6XB99VL4VE/mHNeVH
         H/FsmNn11JrG7bhJqDZF1sGmJBbYHk801xNAy6F/u1gBLpkVIrqgIrivjnNIacvRQL5o
         oZZLTJ91hBNoeMj8No48E0zbq9gLjuP0rpK+j+JRMIEOVg7/zTBrZuSgq6bqTnn7RgaC
         kqlQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6zGAEreBRPkmw73Sk2s6n4iFd3tG0vjw/sJbPUjnsquDAxMuTZXrGdg+TJU2fo+hBsjmBw4XbJmxK@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwhc3wG8fOlsdHKnY1eLImV6+03sFj+KtuA5CBFfl1HKW2obw1
	flKAPPQcQvsQb3woUfUF847BKaLeQHaO6DhvVcmPzfFuGGYhL1gzLT3j4u+e+E5XznUaeqj8/U1
	QSc5s1b0hdqBFN7HU0NMf+AeBLrcXuMdwTog++OgyV3cOE42O/SmvwFbJVrnb8/lA
X-Gm-Gg: AZuq6aJXGqYzJ5txXXGqGqNd0Yc2BHIBjoxann+h2Q6nj5jdf1yVjB9o0mvZVymLX5n
	ZxG8bRanBqs3hWNl8WNtXBuoThh5BHSJAZHdxCNlSAxuDud/adWFqZrn/Q9s5GWrMAdiIb62Ts5
	DfTYILWiMd0+xkQZS+Dt5kgtOConwnewnrn37Y7XfyW99RjOIEy1ggZQPdrTCYprbdu9YiZAqlJ
	EoLORjKATQGKnlWrxAg0FF1EtknBw99OrMT0ZOf8CO7fHlPVpxdKj3TDzmuviBEw5d2raErBOnb
	5eHXlWpy2dEYglRLeGzZJ/nG+4gPNWjxzlszaAe17VEF36I3n2vyo15b2wfAVzHSd/HSGg1Lhbq
	J8NkAajJkst2QqjlVkdSlXMgYLmPJ4hqgxyT32cApwg+d8YVL62t7GHW7z0q0+02J2UtUx3c7wi
	o92Gw=
X-Received: by 2002:a05:6214:8095:b0:896:f9ed:bea1 with SMTP id 6a1803df08f44-8994ac78794mr89723326d6.7.1771495131477;
        Thu, 19 Feb 2026 01:58:51 -0800 (PST)
X-Received: by 2002:a05:6214:8095:b0:896:f9ed:bea1 with SMTP id 6a1803df08f44-8994ac78794mr89723176d6.7.1771495131050;
        Thu, 19 Feb 2026 01:58:51 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7627fa7sm562549666b.38.2026.02.19.01.58.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 01:58:50 -0800 (PST)
Message-ID: <1c43591f-ffc3-433e-94b2-8cc7bdb3ec62@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 10:58:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sm8550: add cpu OPP table with
 DDR, LLCC & L3 bandwidths
To: webgeek1234@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20260218-sm8550-ddr-bw-scaling-v2-0-43a2b6d47e70@gmail.com>
 <20260218-sm8550-ddr-bw-scaling-v2-3-43a2b6d47e70@gmail.com>
 <f8c2fe29-9e38-487c-b32e-7ce151403a7a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f8c2fe29-9e38-487c-b32e-7ce151403a7a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Rm9RXq1IseVNUOM40TaQ5Mhh92f62Orq
X-Proofpoint-ORIG-GUID: Rm9RXq1IseVNUOM40TaQ5Mhh92f62Orq
X-Authority-Analysis: v=2.4 cv=A6hh/qWG c=1 sm=1 tr=0 ts=6996dedc cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=XEhIh8xtOs_--jVvVqkA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA5MSBTYWx0ZWRfX6ecoxMtGRifh
 0z2MA/wnqnjrPGArBRNf7qEXPRwLpsIKgFqdC+WGQ5uMNxC2IO1D6bo9vWiJfjFHw5y5UgDguaY
 IVjjIMDxtAcva2nEes9+a74GZQvV26tlwmoXv7cqsiNqBeNANiwAS3OtLlSML0C5+ZnwR+63vZY
 0sqp627CCVc5F8MJB1lZA3KubO4+2FtDYSFCtPHiNu7ELlur9jgh9iVszDJ7wUIVaZyFGTsH5kE
 xRWKYZQFZpH1CzSE2s3qp1Kq2XGtKVg9Xnhl1/mDTlf92CZM+WSYq2VvGoVzj3oAxACbtnzGZSc
 9pjHpB8nIhOPuqlwpNkrr/8dAG8M7IvXxN0Ia6eFwFPZf4WLiltoIV8idXsP8RdDIKfM5nVLw1r
 xcXGzf7+kbo+vqlAGF7IPdd/NvBeqqVFojDfDsqOIV2UkmsB3XPH5b/uSG7WCHTheACXWxw2fW8
 z5BGoxrIdR4oseg6i/g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_03,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 adultscore=0 impostorscore=0 suspectscore=0
 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190091
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
	TAGGED_FROM(0.00)[bounces-266617-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 649A215D966
X-Rspamd-Action: no action

On 2/19/26 10:57 AM, Konrad Dybcio wrote:
> On 2/18/26 7:16 PM, Aaron Kling via B4 Relay wrote:
>> From: Aaron Kling <webgeek1234@gmail.com>
>>
>> Add the OPP tables for each CPU clusters (cpu0-1-2, cpu3-4-5-6 & cpu7)
>> to permit scaling the Last Level Cache Controller (LLCC), DDR and L3 cache
>> frequency by aggregating bandwidth requests of all CPU core with referenc
>> to the current OPP they are configured in by the LMH/EPSS hardware.
>>
>> The effect is a proper caches & DDR frequency scaling when CPU cores
>> changes frequency.
>>
>> The OPP tables were built using the downstream memlat ddr, llcc & l3
>> tables for each cluster types with the actual EPSS cpufreq LUT tables
>> from running a QCS8550 device.
>>
>> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
>> ---
> 
> Once squashed:
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

FYI I did notice a couple of "trip points" in the downstream DT that
refer to higher than described (i.e. >3 GHz) OPPs, but I can't find data
about them internally. Anyway, this is good and if someone has a "very
fast 8550", we can always extend that

Konrad

