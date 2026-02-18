Return-Path: <devicetree+bounces-266487-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJ01Jl/4lWlMXgIAu9opvQ
	(envelope-from <devicetree+bounces-266487-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:35:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C0C15856A
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:35:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5CA843006399
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:35:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC42F32ED55;
	Wed, 18 Feb 2026 17:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vv488xVl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L/RXMCLv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2CC312828
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771436122; cv=none; b=FmRYUp7KWcotztEjSMW4PAFQ2cK8VJCMQdzvWW/2HFc+AQ+B9RBU6wyRhFlnahhqKTl8bbHYlf4HJO6cNWOnw8fjqVblkAcMdNQL9MAlMAkL9hbjgbo40+ev0hjixGFRWEUxXV5gRNzUlZ5KVrkCcRsxZv1OLkh5oRb+eYsz3jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771436122; c=relaxed/simple;
	bh=6ZpSzjQ2Q8cSDPJlsM2jP4pwKfvfayaWDf8EqYJEigg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=azED2Yi458asc7abHSBNXfBJivPBrmYrln5w0349/DuxoX/zLTNTn76MbFrg4mPnswcKaX4hqsZgx+NbCD9UIbPeUB3QXbYGwg4rgTaczDIhxSeVjwoQAQLIKKvt+TSQF7sTK171z9bpfs29o/3QuZaIc8hz0ftsLs/aQMpWs0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vv488xVl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L/RXMCLv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IFTvE2421980
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:35:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SNnZn+xmeWcZfBOU+WqjAArDp5I0MTFneEShOM7do4o=; b=Vv488xVla9u2cGG+
	vTx5gwQmmHE/WGrMERnpvZtpSev7T/yNIDGwqTtLfobF4GMtUww9e5/PI2xVALoe
	7N14JompQDiQ0ZtPlSi+wksqtS4gFdhqOAQ3hvbys1IQc9+DsQ7hi+7dpx8PjTc9
	Waa8ZC0TZsJfzmGADiQN0hpW2LDrXlZ/csQ/KGKf1lYCrB28AblTacxGwPKCcYKU
	ZjKDDdNvpjCpfUrIhHc6fQxNgkXblEJiYbnU7a3UrG1WluHA3cnKQHLdO4vi3q9r
	a08SooOTDBct1bBeb4fnzkQyha7ShkEZspzpvKXt4wpycV7in3oeJmQx/N+kMakS
	F8YTaQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd76e1waq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:35:20 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2aaf2f3bef6so300655ad.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771436119; x=1772040919; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SNnZn+xmeWcZfBOU+WqjAArDp5I0MTFneEShOM7do4o=;
        b=L/RXMCLvTjp2+1vK7SylmG80zl5vZzxs3qTSTSHAvH/s4bGQrqSIFU0jhuXcowr7ui
         Go97K/vKjVAGdGQ9bMfvH2zWJLXasrgE/QZke9mS/+xND9Y7bRQxMb+PTvs+I/DE7U70
         GxODrpmXEr1p0+SQDyyGIMYZ6wKwqUax6W4OU3QnOhu4epbvji1FtC0RqEkq2ta+jCRu
         rmRhcQ1Vs8kqeW1XNJj+Djwt4bqIvAYE/r+cWAqrmjO/WUZwWQmKV3cHawzhFg5Meaef
         SaPC5TXfwK+cxmxJcVEcOAScP1j3ww+KIPZfZ9FwZnh2Wi4RxOlqF+8R0SdunS+S1W8P
         drVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771436119; x=1772040919;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SNnZn+xmeWcZfBOU+WqjAArDp5I0MTFneEShOM7do4o=;
        b=PCiisW9VndC4YUpin7loYQUHvxiLMsX4kHMU0FeYdIUqwaseO8swuDBxbLOSWuSpdb
         PdBpPTG49FICVDV2gZyDJLdwjEEwrof2IJeJ2cNvnq14n3fFFdDiQEKCr4oh8BeW5+ty
         hH6EVusCpoi29ThLfK4H6h/h3K7H/bgBIHo8yPMF88Empf7gXPdU0KqAL6h9NaTrxMmk
         7TA773CBFTT/1/W825+D41Jy3vqkACK3gysEYe+t/221nNNSehZ+YmGHQSICf8XkGJec
         kwBP+ysFs7S/0MWo9oT92U0etv4meYdfH+oGeFEy05M6rAMHaCmJSSIPhEI28BXeJndE
         xhtA==
X-Forwarded-Encrypted: i=1; AJvYcCU+rou0NXuAgUO1aJnB87F5/BhTzJ0Z9V2kSv1WF495QKTHzOQ4xiVsbWVhTFPEs2Bnjy8YCWGRjjB8@vger.kernel.org
X-Gm-Message-State: AOJu0YzAm3YMKoxdHWL2ypADuQcF632tTyICP4wpUo9BxirIoXNbMYTM
	E0+dM8KMyS4BjrpV/8eqiFaEZVK5JnSUmNo8GtdJCzL46GPIhbd00IBpFRjRKyJogB68Vtt8u0q
	qXa9HLZa+MBqL13Ba/e/DA+UTZjLwNHDai2S4XHX95OYuAgjoHBc5EM/+c64g1dOY
X-Gm-Gg: AZuq6aJEk68aSMcVMnK5tqPGCwCqvZtlHOgZvHaaJNcmSutmj72GteF4UXrycPcQ7sJ
	3nS1fJVN/Z7YioZY1V3EYA8+NtaLuTP8JqXlXKVmksDTuOQ8VglimRfHxgMPuim4zes9f7FBecQ
	KFdfwPNQGdcFvfziqCJv1xxkR0ORPHMD9mG5vcewJlTv+YCmZZGWsbgNZcMmlRJnx45WIBAZknA
	kGNtkPYecFIqSNCMwFdsciIV7K0cxretH3m/Ve4TQrKTDkji9oHQ4PgRgYCUaVJoZbYwGHJ6SCe
	CvgfZSTVrdHQGEwsP8Me7YMjrfq9XbcT0uDgQ+yeF4EoPcY0fvptkqxwz/fn9kvZJCW2FZNRCiY
	OZA5K5uIqpxiTyu1h6NCyoDqL3PQOD3CrbTKci3glz/+Vy9sWew==
X-Received: by 2002:a17:903:2b10:b0:2aa:e843:ab11 with SMTP id d9443c01a7336-2ad174dd3c2mr126622675ad.28.1771436119444;
        Wed, 18 Feb 2026 09:35:19 -0800 (PST)
X-Received: by 2002:a17:903:2b10:b0:2aa:e843:ab11 with SMTP id d9443c01a7336-2ad174dd3c2mr126622325ad.28.1771436118678;
        Wed, 18 Feb 2026 09:35:18 -0800 (PST)
Received: from [192.168.0.195] ([49.204.28.145])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1aaf5506sm133262885ad.87.2026.02.18.09.35.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 09:35:18 -0800 (PST)
Message-ID: <6bbeaf2e-47a8-4e99-ab5b-71452f2cc9be@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 23:05:13 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: qcom,glymur-dispcc:
 De-acronymize SoC name
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260217130047.281813-3-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20260217130047.281813-3-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OKsqHCaB c=1 sm=1 tr=0 ts=6995f858 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=IXbkkVN8uJs8XsqYossUiQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=ZD5VXX6mDgfP9xSn57MA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDE1MCBTYWx0ZWRfX2mJAP1BFfbqJ
 ZxepFe4/UwrjWQCs86Inmldc1GHKRG9/1QbDQa/+iIW1xH1Ma4zJzDTH4ROHiEczDNjpOjHMvjs
 Z+uBDqDmrReR/LtYOp52q+Ddhl4J2wRAYRt+dkmbGmt1yY3ilQDAG9IjjCoGEW8NzF/SFzJfmTX
 T1Kjcn2gwZw3Lu7cKWzoK7YjMUkBIDv4Zqzmfj6ByYC66uZHDCvhETY9loa60A+6a2DJnfxdhCu
 5FLiic1UO6gFh2nhrphoLUpUDHodRJG5SBzs5G2wSArZ/sQRt0zoaR8MvlfTj2mWvj7vEA+dhUg
 91C8W2nKz0HD30mQLEO5o+dV5ZQmXNj8B3EfFqjf8W1mV5WMs0DoO1Rh/kVEIdmsLj1HyKHySIa
 Kakup85hfgkilUO19zuXbXTv3eiZoqvEBooRR/gqfghS83H0VERhsc/SQhgv/I0Qg+7woe9QTF8
 uT3VvTSa/qVBIrEnLXQ==
X-Proofpoint-GUID: uzPNHnBTbzWdWBIWP7SnyRLQI3e5HH_I
X-Proofpoint-ORIG-GUID: uzPNHnBTbzWdWBIWP7SnyRLQI3e5HH_I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_03,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 suspectscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180150
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266487-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F1C0C15856A
X-Rspamd-Action: no action



On 2/17/2026 6:30 PM, Krzysztof Kozlowski wrote:
> Glymur is a codename of Qualcomm SoC, not an acronym.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Changes in v2:
> Split from previous patchset, because I messed up commands and combined
> wrong patches together.
> ---
>  .../devicetree/bindings/clock/qcom,glymur-dispcc.yaml         | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,glymur-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,glymur-dispcc.yaml
> index 45f027c70e03..9de4ba71f1d9 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,glymur-dispcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,glymur-dispcc.yaml
> @@ -4,14 +4,14 @@
>  $id: http://devicetree.org/schemas/clock/qcom,glymur-dispcc.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: Qualcomm Display Clock & Reset Controller on GLYMUR
> +title: Qualcomm Display Clock & Reset Controller on Glymur SoC
>  
>  maintainers:
>    - Taniya Das <taniya.das@oss.qualcomm.com>
>  
>  description: |
>    Qualcomm display clock control module which supports the clocks, resets and
> -  power domains for the MDSS instances on GLYMUR SoC.
> +  power domains for the MDSS instances on Glymur SoC.
>  
>    See also:
>      include/dt-bindings/clock/qcom,dispcc-glymur.h

Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>

-- 
Thanks,
Taniya Das


