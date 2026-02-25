Return-Path: <devicetree+bounces-268403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMGZIyAHn2neYgQAu9opvQ
	(envelope-from <devicetree+bounces-268403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:28:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2E3198BE2
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:28:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B34033024B21
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:28:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C6B53D34A9;
	Wed, 25 Feb 2026 14:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KWOISrIl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="brYC2NBQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0973D348D
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772029725; cv=none; b=RJ8wEExmfyEBiX2OMaGUeL0gwXWjjAaVvNdL+gQe4m4SdORIUFstFvPi5o9HNxMyrvZwFn009zvfQ+KUefA0G843eOhW4lbVu0+1WV4WbW+mYVn3OdlzgUdivDAF4GyN5ud4saILygy3AfNytS6/EdkxyKqkjKIPLvFtGDCF6J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772029725; c=relaxed/simple;
	bh=AULsyK6QnjWs4F4LCW08KjpiOXM6EU826reVsXkv+Go=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cdfj0i2ceLKpzu92k/QASVNudhhf/G9zgmWf+0MY3LSG0uca0CplFjGYLlOja61MCNgssvAU85gVLBy17ssVLXJ862qVWIapNx50UFBW9ILWfMSwq9WJRFMGfXC6/DHaxiYwwj4psg6Cw2XVt3j22O8wAh5K+Q7qs46eV3pDHFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KWOISrIl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=brYC2NBQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9SIfC1363583
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:28:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zQmCtuOcHIia8KQum6i+PSa+8224BgJXHMjC5fyWebQ=; b=KWOISrIlUVSyrFWa
	QTRCag2nm+6GjYlPMM1upa1ZeWYHl2BqYM74aQ6cyhr4I8aVmNJGFuMv+d8ORH0S
	77XGdHumt5ycaN3ZuWl5M6y6IhESbsxxeW5tmSMh2RmVVubR0uhhBNsoDsU64Ey5
	tRZVaMSggTLOi3x/i+5FVf+57XV6dsC11Tdn+FyjhUYKVayEl+t90HQMYQ2wHAqk
	fraFIwRjHW4nBRQ/9T45cN/FWKwxcYonCf7dGp102/23LF3i7h85bwT87XWcTDmO
	MRRUmH+ZHk0KnSlsCi4ZmkY/AlLuEyAzlcvgIPPJc6Q0FZ3LzMaOCvyj8IrY1q+1
	IjYR3A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chp15a8ux-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:28:41 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb50fb0abdso656703685a.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:28:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772029721; x=1772634521; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zQmCtuOcHIia8KQum6i+PSa+8224BgJXHMjC5fyWebQ=;
        b=brYC2NBQD74Fu8FCvgi8muF2+RxORVhFsoh5EAoomqzhaUmchyJC2fyrxDqj/RNgkP
         fnEr1U4OSiQEFjCkHJxXXHEWjUuLmlWmWoerMQTfHIj9ahm0DDTpmFUIALC0PT0dREyG
         UTC9T46WgOlLNDQrmz7K48no+Ni2SH+O5yN7uX/Q0fXbOw3Pz+yUHz9LWTR/VslNhUcD
         pUvB0gkf6TseUsnfiXqUx1H40et8WiZEB5xW4a5gzPyOWY9EWFf+zPTlXbN+LmxfgM9t
         YoQ/6Z5mw5pJzvx6SDLwXArBKj+mmfUDPSqEuNB7rmgPrF09rH6is9RIGoeJyFMT4ut2
         Q4ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772029721; x=1772634521;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zQmCtuOcHIia8KQum6i+PSa+8224BgJXHMjC5fyWebQ=;
        b=qJZTy/8/WSdmkZ64MgTihct0BCZxGYmx6FaWIQYdBjLne/tPovGrjhudAW49C8UDVu
         lUxgeLdibmf7HsFeuKiCdPRKRjfyS4BNzl4xCkZUtITXCgPI1DHrL3KW3B2Uuez2DCsG
         nSYY7DHPkBB6neZQx4VVo7vDf8ZVnjjcd67czYYG3SwbnpB8qySIv78IUkAbLCG1fuFG
         kpHkCT1BAfdgo/eC/3nzKGakkXmiPr8rUiMyucmZAoO0Cxf/gHg8qOydv1Oa++buFp3e
         W7fhE7ssgOmmgaYq2pTA4JLHNk+ittP/Rh//D4ZV+/LrDzysw1+b69KQrrJDwtRgxslk
         Eshw==
X-Forwarded-Encrypted: i=1; AJvYcCWDt1Ed51KNvfSjhdpy4xzuQArWsZG7ngJ0chXoOYFK1TbkzYUFHi5wX5PNYz/IRgaDViLk/vLmavet@vger.kernel.org
X-Gm-Message-State: AOJu0YxGoyo2juz08/7HkfKn5leZkH1uwmJAXzoQyseevMHrbgodBB5E
	dR204TEd+OqiH96ZQ4WeyAuhI+mfMlU1k3JKPKl/Cqs7KiCk1X85JlE+Nuys+xgNX5nyENyyxJe
	3Mw8OmFaDdwJsAL8IONEo2DJGOleqOwOd6rwaLI7/+I3qfpLmTh/a7oA/c3bJuiOb
X-Gm-Gg: ATEYQzxrUImGpWLF/96w5hzTwGn6ZWOGly1PMGBJCsdwJjF0gPzCbpZthoHGm+ACUOM
	DacceS0V1OhgIzkGf7HYwS2W/Fx/CC5ZRP5j26y383h9F7ZQs9+ss2s48qnL8bhQjKOKCo60UIg
	5iZbeYQgR4YzTbsT9wBU283VkK5mpSfbgHxREsWp/43Q7in0iuYpEK0gImtXmbl8g+eHQYvXcGQ
	f/dh+iA4wPUkjheOo2ledzXrwnIpcGCsZhKrw1QoDJtcm9DvwTSZ8Bs34OAsCDM8WvFuIoByyTM
	Pdia6WIyLC5vbYnHoea7TJgepdOkJWY56LpbMuf59OEXNaiBpqQgStiCsiKOgAvaqdOPGEuj3Sb
	M2l3Xwk8yCBG3/Yued9dNQ0rd5MUvvxiDoXGzbJ5aOg5BqVJeKgxUpRN4XD+yCPxSclW6efs+h6
	Q2fII=
X-Received: by 2002:a05:620a:400d:b0:8c5:3892:a554 with SMTP id af79cd13be357-8cb8c9dffcdmr1658341385a.3.1772029721088;
        Wed, 25 Feb 2026 06:28:41 -0800 (PST)
X-Received: by 2002:a05:620a:400d:b0:8c5:3892:a554 with SMTP id af79cd13be357-8cb8c9dffcdmr1658336885a.3.1772029720467;
        Wed, 25 Feb 2026 06:28:40 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65eab9a077asm4444053a12.4.2026.02.25.06.28.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 06:28:38 -0800 (PST)
Message-ID: <0b969abe-d9ce-4a87-be61-212a1b8cc8a9@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 15:28:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 07/13] soc: qcom: geni-se: Introduce helper APIs for
 performance control
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
 <20260206174112.4149893-8-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260206174112.4149893-8-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDEzOCBTYWx0ZWRfX56eVBYyoGiZQ
 VBlHmtMVkAMvLBHsZPqfPhTvkJ81DZLU3RyheWeud0bzQVDXf/LU09F83j1t0VvPPtQ97vC9sP6
 i+D2s7idGlmkgqwIr6UuPkdJ2NOV0H5T4LUgLbiuB+2lFswWEo/aB1kWKLy9NcxbvC73UDZxkyL
 XJdQMx1NtAPuEwzQ1Poz4UiP4laOk6svoueadXF0nG7g6vAT/OMGi1EPiglibV2b2N71qqc1/wd
 yypAdp6ThhTvFBWHek7pH7rZpjFlZd6sDL8jWFw5l1lc1HbN5IYSnkXPM9oWM3S8t1OsoDoVt2a
 jYKydE8xXI9nTmtAYGS0KifEUKqDgvoYG4FD5TxBoD1QTaiolDQ3Pd5EvnZNaINXLgZhr6FYyvF
 Kwi8YbKEXAFUJ6JlLhOW3kSpFQW6sUpinL7PShWHHMKWUMYsGmI+4Z3/U2GBZaUCSir0J5Dr1NY
 M5vru+fkNQgwEKwCZCw==
X-Proofpoint-GUID: RmFQsIW0fJV2Wc_CsDuhGz2_shteR-IG
X-Proofpoint-ORIG-GUID: RmFQsIW0fJV2Wc_CsDuhGz2_shteR-IG
X-Authority-Analysis: v=2.4 cv=etXSD4pX c=1 sm=1 tr=0 ts=699f0719 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=_nBXEjQIeNtNfcHD0-QA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_01,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 adultscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 phishscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250138
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-268403-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2D2E3198BE2
X-Rspamd-Action: no action

On 2/6/26 6:41 PM, Praveen Talari wrote:
> The GENI Serial Engine (SE) drivers (I2C, SPI, and SERIAL) currently
> manage performance levels and operating points directly. This resulting
> in code duplication across drivers. such as configuring a specific level
> or find and apply an OPP based on a clock frequency.
> 
> Introduce two new helper APIs, geni_se_set_perf_level() and
> geni_se_set_perf_opp(), addresses this issue by providing a streamlined
> method for the GENI Serial Engine (SE) drivers to find and set the OPP
> based on the desired performance level, thereby eliminating redundancy.
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

[...]

> +/**
> + * geni_se_set_perf_level() - Set performance level for GENI SE.
> + * @se: Pointer to the struct geni_se instance.
> + * @level: The desired performance level.
> + *
> + * Sets the performance level by directly calling dev_pm_opp_set_level
> + * on the performance device associated with the SE.
> + *
> + * Return: 0 on success, or a negative error code on failure.
> + */
> +int geni_se_set_perf_level(struct geni_se *se, unsigned long level)
> +{
> +	return dev_pm_opp_set_level(se->pd_list->pd_devs[DOMAIN_IDX_PERF], level);
> +}

My only remaining concern with this patch is this export - on v3 you
mentioned that it'd be used in the UART driver (which currently does
more or less the same thing, open-coded) - are we unable to leverage
dev_pm_opp_set_rate there too? i.e. are the OPP tables produced by the
SCMI servers not populating the rate field for UART specifically?

Konrad

