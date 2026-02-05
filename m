Return-Path: <devicetree+bounces-262915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEhzO9pfhGng2gMAu9opvQ
	(envelope-from <devicetree+bounces-262915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:16:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C782F075C
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:16:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0748E30000B8
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 09:10:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FF8636EA83;
	Thu,  5 Feb 2026 09:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y+xHztOu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GjNz4igr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5355D334C04
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 09:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770282621; cv=none; b=OlrKNNDDdLIcEfwi1VVmUUZN4ijgeA0u7+ASLFc7FvBuqZ6hVRlV7/grCCxbTVXHK6KSGcQB4BOm+CTycMHoJYyvAiipvIia8shklJelcPdGbIQzPI7Q/TYAOplk0fyWMf0bFy9qnEZNcYvVaZyfnpv+Q0gYLng6w/PPA8mmY0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770282621; c=relaxed/simple;
	bh=J2fyxizp0gxgY9v25dFNE2aqa+rNAOoNMdBRDI/c57g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X/dx0Z5hiLMWDRAgqnfqqp9GSpSopfdPaqvbVyZt7D/LtIN398GRnDn/Kw6PmEcQPvQ5u+Bddz1bmjzdLH53pfslW9t4tYWMRRVLpa1YdW+b5hAtJkGT/rRZL3TgG+9QrFD5/zdW9S9RCyCxNP55gITmHALFmlcyPQGLgOYe8H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y+xHztOu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GjNz4igr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6157nIIM2946122
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 09:10:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OOBUWSZfBN3uTZONHP9txNcZM555pQKMxMWdmZy2n9o=; b=Y+xHztOu2Zemu8OJ
	Ge6MWc2V7DWtdaGQaPm9tIHZzIbu6pVHitwuckoJ1ZGkf+V0jSE3MFN9lYZ/ljwT
	P9MLCkTk+xWiZinZvPdz9h/DQlKBch1bLNArEqQZTeDmJpjM7JF48yI8OeKLgJuP
	4+Iq7y7Nf1/rSb+qEnEPMl9xCmNVHwewAMNg5bbqypzVKQ3catocBbPcNomNzre5
	XIluk2DajnX5hNZj+Phvs2Q3V1u5ZkP3xx6fMak51AMcQ3vuKqxZ+n/x2k6TOQid
	Ke2c6UB7QVdF2o6V9H8Degq/RQ5Zcn4N5+v5Jfrq9i1fmHVkvXAJikfiduU9SWu7
	SngJvQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4q55r86a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:10:20 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c709a3a56dso31730785a.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 01:10:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770282620; x=1770887420; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OOBUWSZfBN3uTZONHP9txNcZM555pQKMxMWdmZy2n9o=;
        b=GjNz4igrzdH8OXmHU5seivYKh+tAo3Q7LZQBo7SS8Q9oQE65cjf5W2kFyL1VK7Ij4t
         c4OWAk7HXBQs1QIuSp92lt+liwke9vI4G8S8isO+5+3hTMLqEnPQiILDXIcmoA+qfCOU
         8PqassCK/ChRsOGJK+1i9aIK7/sMWvlsihKeaqNu71NdbjeFiTKw54EjUWXIT2ILHql9
         BS671HX9pwYqeW8sqB7UHMacyXhVfT+be2Qnw0NWLKVXV9dK5rNAiNjaKhN3HL0DYKfU
         b5UXXMmmgLwWbYSl+qXAIin8wP7tggUVdrlvWD6CqnliqV9kDABe5Mqt8ktJfUZNJsEZ
         7nQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770282620; x=1770887420;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OOBUWSZfBN3uTZONHP9txNcZM555pQKMxMWdmZy2n9o=;
        b=AQDvRy7+gtmSNaiNsudSLu/daMewX1q0lbSKCKR53/BWe/BhA4CeE0XKxfdDXirFiM
         7DoaJ4LAUMU6gQ5hL+8fSLhHnda9GfO6EcEe66iqMiebLpicBqhI2NO9jZvIiKlrfcGi
         MHkbuXqtFFHVfGRbHsQFt0mHcUzMTyCTuc4uMX7SlWFSKX7N6S7GhDM57RQV/BlRZkc9
         Dyzl4E8UJxc7bpSDQTttaerJF5D8c7M14iw7FOiOZamsvsZUrWdDbeDWWW9VM7GCNUJb
         eucDQJu7SI7B+EBkhQmCgnmLheQBFF5rPiytt+bviUhqTNihLim+A6k7IndtSZNcBnm+
         eEag==
X-Forwarded-Encrypted: i=1; AJvYcCUtgi/5k91PSyYXtXavyyEAAbadVU+xEKpaIZQIPTNjnZpLXNbdZLsM5pUgkD58Y6Srh/XAVBQ/7Vaj@vger.kernel.org
X-Gm-Message-State: AOJu0YwMDl7jAQktS5mvbSOLT21qV3wntcae/lM4WR1wb4U6kh94awIz
	7pgo6ZeDR7OYFY6XsisSpxXDOUPio3LlJlsZfhC59j19sxvH4sltLTZFVsU6Kv7MG7ynq6PQ44I
	tHB1jGT68wzU6i8eQBKhFW2sQhlcpzwxk2NqaonPmCvAl+YKoHvnhQR6d8Q5/bSkB
X-Gm-Gg: AZuq6aJqVd1imZzFatrksszerb7J4WevcOboOLEuJ/EHjC9ltdMB2g5BqwTX3wmlUeL
	qVok+PBN9Oke8BeTIokyQC3MqW7p5oEn61+hr/aFrLfu4NEYxlx5oabxAbqpJKoXZ2sEyHJ6FKW
	vln6d7YYTDW4eZ54LyN39awXf9KAZM6EA78JCfhJaHSOsMZT0RjVyPENyD/jZ0K1u+gFoOx6kkk
	RNHHw9v2E8/v5JnDQFzvennCfncVYiuC60VNpbMz8eZny0ajIR1fdqefenFEH8IwjB/wjuGA+9M
	G+7o5TnI+W6mzAPBlS2IX208hwUyIT8dGFYk/jpD27qWR4hME3GHZ/DtziFScQA2+fpQxFthdve
	wIGq2Sd/Q82wzLHuhBop15AY+JNBkoylqW4VsgAi3X0upkUH3L4U7gMzXy00Q9BI+Mt0=
X-Received: by 2002:a05:620a:3193:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8ca2f9c4d4emr526862485a.9.1770282619726;
        Thu, 05 Feb 2026 01:10:19 -0800 (PST)
X-Received: by 2002:a05:620a:3193:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8ca2f9c4d4emr526860185a.9.1770282619268;
        Thu, 05 Feb 2026 01:10:19 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e9fcd75d2sm210270466b.3.2026.02.05.01.10.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Feb 2026 01:10:18 -0800 (PST)
Message-ID: <e8ee4123-b94b-4d7f-b7ae-55e02c18154f@oss.qualcomm.com>
Date: Thu, 5 Feb 2026 10:10:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] interconnect: qcom: qcs615: enable QoS configuration
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20260202070534.1281652-1-odelu.kukatla@oss.qualcomm.com>
 <20260202070534.1281652-3-odelu.kukatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260202070534.1281652-3-odelu.kukatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2NSBTYWx0ZWRfX+EkP4dA3ty+E
 I5rIyRYP8Nxzz8btwpdbnBQZkLeUX8iyqC/qOb0/WKYGmuuCMsqIM1ea4oTyaLgxzHEnhmIdYN7
 wpNJPajIiSdW5mO7c/M8kWaLdXdn3uP7mvwWvUHTlfgyPMDCfu4eJ37fr6kGEZ6LxZ4iVmYKASH
 GgWs9WOmMunL5acLIzxX/i6HgmaaJOCPxN2PXSDiXm/2gJq+78PNfrCSJN2HUf3bsk3LeIJg7RS
 dGzu+h4U9YrtP7EY8JCvEdN/RjkJ9o3yRK7amwAKWhRv9hzO354IciOZSIVA5fDT4zlL37z+0iQ
 vsNTYavhDlEvp0Rlk+MaOmtTy4Rt5HUKDjffwT6mXVceRlORslj3TCYvNFW7IU3U+9UaD8/ux4a
 HqApzSff1oOiiYPaPebGFPyWcmZf9I0iQxHycwtsBuPSExPOpL7VyES9AnBPe+XjzPau4c2HBsP
 WRxawTMGw7Lipk0403w==
X-Proofpoint-ORIG-GUID: 0vP6eTPwQWrt0lt1s1bx_jnMjsYnfoe-
X-Proofpoint-GUID: 0vP6eTPwQWrt0lt1s1bx_jnMjsYnfoe-
X-Authority-Analysis: v=2.4 cv=Z6zh3XRA c=1 sm=1 tr=0 ts=69845e7c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=WrDRg_0m88nTcLYVVW0A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 spamscore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050065
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262915-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8C782F075C
X-Rspamd-Action: no action

On 2/2/26 8:05 AM, Odelu Kukatla wrote:
> Enable QoS configuration for master ports with predefined priority
> and urgency forwarding.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

