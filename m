Return-Path: <devicetree+bounces-260301-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJGsMa7ieWm50gEAu9opvQ
	(envelope-from <devicetree+bounces-260301-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:19:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F299F5EA
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:19:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76625303B4DF
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 002B62EE607;
	Wed, 28 Jan 2026 10:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YKfkAlOd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Pr15GL2i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A652DA769
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769595481; cv=none; b=APO+Yag1lTxfSKfJuODoJHynsSz+Tdi6XcEdhOGGYtnwXfQ+GIBGPk+bB02Vp6kU8271SPJtfNlEe2b/bIrGBM9JsdDMddw4okhvOPZS3a+YkBQFj/Bw8sdfmMB5/rlFVjWBVPMOCbKstrxs6B5cx077hTLjdUND6466vC0REMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769595481; c=relaxed/simple;
	bh=O/9goh1xSkb+EelmdQyLMFXz3I6q3HEZ87LSkbwQDO8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PxWDC2NgEfCt/8pWE4wIW3piF/lJUlbHNyfXZq/rxc7Tepgn9aBGiPU2tVgUihJXckJYJnFUhyapn76CGLSJwaMOj0aby3OIXY4UjBp+xa5dqhXkG6H0QE6MNyj8nBlYs08I8f2dSEaIivoLLUp00Spj1AGyJZC9QAfnTwsWzmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YKfkAlOd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Pr15GL2i; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S928mT320313
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:17:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Tf6LbgXp6mx4YhJ03WWvmUBkFvoGm+ZEEuhHUmxDhQ0=; b=YKfkAlOdB4K4dkw/
	jQj0bvXGC+96ZvYcX3PmCzj4SDFe8SQ/jvEqUzlYKTZwZvcvlyfdK00EMm1CmGCA
	klByM14Dab+YvGD1C4W5iXLTS+70AAXqLnLaudSt6LGMq07ubvZbipzOBzgoA0vJ
	p4wHG/YWAT2HJPWF5OrwlQfuM43No8KwOI+WXS58nh5Fu8BEqp2OWPAaOgldN/aC
	gphSPvDsV8Co7dl+1STUPlbHTz3ZLrzUl5fypa78TrAG2lFUvdWzKyewI92f1gnH
	W4V+7aVHWRKpD0tmAkp9u3aVfYbxa5eL7fBZfI6RfLX+5seAAp2wu37ofc7MFkGE
	Yb99eQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by4sjt9td-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:17:57 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2e518fb75so99756485a.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 02:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769595477; x=1770200277; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tf6LbgXp6mx4YhJ03WWvmUBkFvoGm+ZEEuhHUmxDhQ0=;
        b=Pr15GL2iVNYwlA71Biu7Bqy16gUDHIAT+vri1sLwewxR/+2jYK05xdb2/KZZOmBj/H
         TFv96erADr49x8PE/CrLz7vcA45WSh+4GRuPRGMwRXTtvOFjnZXpayfY8b1ruClUYVIy
         7zipfZAZk8tWz8lh7stTAZi0bZdhVhhER0g5jKqbEC0zNg8PGqOn/Pdi3+82o8GBogqO
         L+NLSMWBHkqDBlNATz8S7A9PS3ko2YWjHaX8hE4bdCmMLFakoyuN8cYVK9TicpQUfO+V
         p0Tp9pcQzl/xvNpLFbdYB0VjgzaeS/Q0prcmE/GY1D7+duh9z8euhnsJ3OteXi8Z8LJx
         eRSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769595477; x=1770200277;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tf6LbgXp6mx4YhJ03WWvmUBkFvoGm+ZEEuhHUmxDhQ0=;
        b=gY8lelzSpzCT5W4jZ/uae+T/fSuhqs/oCjhl4jTDzclCMKkY1yLNmbSMB7WFfiDRlP
         0Yn/S0u07lm1kP7/hjppqB/wnvxaVg1mSEgWyiNCboqjExx7xWtLn7oKAbIF/NyA678j
         dpx/iZMJtG/vPh/8izzx595s3WVkbPalyQ6q7vDEfx7/QSPzYzcieEKdeo7riJWtwO4H
         9In+bcWXhs6vIuBbonAIJK9DrcLGLogVJ/D5JEOt04AM41cVIS40w/+e6ab9cYgBnaZy
         KwOlRVlg9aLDhEHdnzJ+FanVFWMg/rVTKBnvx+nsIwoyTT97x97Q22XKaYVZ2nJ5b2XZ
         XpYg==
X-Forwarded-Encrypted: i=1; AJvYcCX2bF5W0WA5zrfiurfizD+t+u/zlSJF4pSUXsnz0wmG3Ae2vAqfs1i0S0fUHDdo9X1nNs/tEbcvo2W9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7vP/DV1boroGulDFZ25dVyjOKuJpbeXkz5tnLwa1+a7Nwx7/s
	Ct+1tUZUZrNQyF6qfQ1njUdke0phCCnH/KlSvspElDpBgWdaWvE5SdmFeFR0Crxen+hQV72rTtB
	63nbdvCS+h6mDgPAzfZ9JxFZi02fKAakbi7AAD5f5ZS6s+ORSemBQgHReMPOOyy+Q
X-Gm-Gg: AZuq6aI9YeHofkEa7JPjWNLKw0GdDUszqhqxnrhkMBNGOfp1G7sddBKBVIha3GnHetM
	6hJccdtrvLNtg9mD/vpMRkRWW+uDar0s4PXFZADPti8AcDb7yIwAQ1K1WyaGYe8cklpigOFDpsZ
	eeH9YOnA/qM1KcMUKFvEwVgsM2TnhC1ReRViGPC8d4QVWItxoERN1jutLpW5XmDh7rVQgVohJnu
	3C0CK6z2JKp73F2G3+L44DaisDZnjsWfqb5hJJ2z6w2+Hch24kLqowLqrQbsrwyD0vD0IO0E9XP
	vejJjjpBKUDDmP6RnWBxqUb5AV0/OyN6JaPr+HG3KNi5wfgSl3/gt4guvRmsXm0ZGN/RfAwHaCZ
	9Sl/rBl/yLIWjWfM2hsqqw7DdV2hPpMOyl4Dea0/uqka8ODvzdK9HAbiqqRDcuZm26K0=
X-Received: by 2002:a05:620a:2982:b0:8c7:eb2:1c3a with SMTP id af79cd13be357-8c714b45365mr125363585a.1.1769595477529;
        Wed, 28 Jan 2026 02:17:57 -0800 (PST)
X-Received: by 2002:a05:620a:2982:b0:8c7:eb2:1c3a with SMTP id af79cd13be357-8c714b45365mr125361085a.1.1769595477011;
        Wed, 28 Jan 2026 02:17:57 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf185214sm111600266b.45.2026.01.28.02.17.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 02:17:55 -0800 (PST)
Message-ID: <76763847-e5f2-484a-9ff6-dab5906bdaaa@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 11:17:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] clk: qcom: camcc-x1p42100: Add support for camera
 clock controller
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-5-b23de57df5ba@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260128-purwa-videocc-camcc-v1-5-b23de57df5ba@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA4MyBTYWx0ZWRfX3T4Lf5JUOAcf
 /4mo0TvV9bolJusgvyN1OOgZaXArMiI4aMjESLaFjIOb4HhosJxIN/0G+M6bwxhfBR9hfMD75J9
 62R44MHnjtKiRnxMfMHVJZvoysiumrJFDwffodLDLsgxuSknSIb1dvg9l7CZ6zCLSc7wfDfMwkO
 frKQEV/Drbc+aIquvROscZfeACwKfUQ7HydhuvXrERM4Rc0y9y5iK3slNs5QH5qEKmWmeaLRrAT
 vIaw/2YEimIomxhA+Pa5bbnDoyuGgUD0JoLZuhqIZEh3OCtPx5t0ZZRFqOKDjRBT+RU97EGxqwl
 j5hR64MzS1tMAPC6DMg2TzetYkzhoMkCUuv68W4x7IEXjZfDYI7ri7OCI2Gmc3FTv9CyWka1ofj
 RKSOoqGf8QTW98ba/CLhf+/jM8viVZYwPW43IGwNi314Ddynm8OgA3sAyuQKP9UZYIQpfGLHErN
 Yzcteh5Rl4xwZByPcdA==
X-Proofpoint-ORIG-GUID: gfUrVubf_74bo_Y7rB27zzKbOcgBUHFs
X-Authority-Analysis: v=2.4 cv=KezfcAYD c=1 sm=1 tr=0 ts=6979e255 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=zb7rluFiWWGZWzxfGAMA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: gfUrVubf_74bo_Y7rB27zzKbOcgBUHFs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260301-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 29F299F5EA
X-Rspamd-Action: no action

On 1/27/26 8:26 PM, Jagadeesh Kona wrote:
> Add support for the camera clock controller for camera clients to
> be able to request for camcc clocks on X1P42100 platform.
> 
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---

[...]

> +#include <dt-bindings/clock/qcom,x1e80100-camcc.h>

I have mixed feelings.
 
Purwa lacks sfe_0, pll7, pll8, ife_1 clocks and all their supporting
infrastructure. All other clocks seem to indeed be common.

Perhaps it's not that bad given it's a strict subset and they have
a shared DT

The driver itself looks OK

So

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

