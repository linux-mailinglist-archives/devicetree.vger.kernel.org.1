Return-Path: <devicetree+bounces-261888-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0IIkASfQgGlBBwMAu9opvQ
	(envelope-from <devicetree+bounces-261888-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 17:26:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3792CEF04
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 17:26:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 15FF530C0327
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 16:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 319D9281370;
	Mon,  2 Feb 2026 16:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G/okN7sT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LKJh3JWc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BEC284670
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 16:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770049221; cv=none; b=THU88aGZVXh1vbWlfZAeZsKVm/FH6kbD+EWLKn1e+Uex60vD0evX9v3hHaj6RdbGfExSpCbyJf/cQmK1TSd8ZWsQszBHf++K7wbpTU6cKMlagaymVbGtJqQvjjJdGimwDYl9Nmxz+VfTl0kWzgXGDHc2EMGs5fC0kHN/aW4zQYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770049221; c=relaxed/simple;
	bh=qQCeI19q43zhf52hQ/Lsl1XTZ3EmXNqwVHsbKSSnuf4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eM8rC5i8n+cBJ9UIzDo+WFSpFyPXXg+RzAmDlpIDCdMMjLJDIH765Rf5H+W/DNoCbYm0Ni08adBbZUym2tUzKKyWChMIkUjN9+eP+sgHGPXWM52/NQEreFgxYYNK/pjuAocSxD25E8pmqBq7VTDON7ys9O349xLGoloH++sW/rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G/okN7sT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LKJh3JWc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612FkxpJ3386926
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 16:20:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GN/RhHJOU3ALzGvjR26VdLNF/dFbKvBucXPsymijr7g=; b=G/okN7sTS/snq5ho
	wVV9102D2DlV4tNBPq+y+cm7ptgjxo6LFimX2Hk3jwnHObtFLVP4P/Ir0V8Ra2Nv
	KnTIrc82O35MAgXLTT6n0y6xhxXpih/Vb7IXRE6o3mZpvxgyg0kHwrUAAyDMMyhK
	3uvnPoi1DcS142IfdI+fpwyiblKlZOM3EtzWfcsSYKK6Zb9TsWoyG0J5+f93hzny
	jjpJCoRRDDAJWZtWxA7obgnEuvGJExMGhFjsLDgQkzNGOMvZtZAxxmzIj4bozYT5
	v3rhCpRNQsXb1TtnU3Vf76zZhmRF6gDxYViPpxqnLWM1KnnObAEscfbTGsKeHiCQ
	ZQN0bQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2xvbr3nv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 16:20:18 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f1f69eec6so50551585ad.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 08:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770049217; x=1770654017; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GN/RhHJOU3ALzGvjR26VdLNF/dFbKvBucXPsymijr7g=;
        b=LKJh3JWcVTsOtV9ewHMnMgRC2ytkbolgpqIojC+tBGvSpLl8QqYHXgXvePV5JhYFDH
         T2qLhFTvwRW4oYFa3QbzDpYyu1aNMDLzPbn6F69QvQ8J24rMe8QbOQ9OgDheRdZppwtB
         TOD4+TAbWqAOKXHxA8kPqxyHicEyCge9MqR88n5aegWE/A1OdBYHXj/IPZw6Lz/U6K/e
         bL8NI1gYCsGu2jiHljcsdUTB3jSEYrstxDXTRLUNR6QicyyWERuONRuTo8HOmGR246mZ
         fy9NKxCgW72u0KvQcoCDb4xCGHglyBqUTGMyzdKFTrE9DnL2l9+3x0+VuK38eqJVU/E1
         OIFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770049217; x=1770654017;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GN/RhHJOU3ALzGvjR26VdLNF/dFbKvBucXPsymijr7g=;
        b=CJhcOV47vVa/nHTT6s1LK7tqJb2qQ4vBK7WC/Q85mu63Qvx5pzftkNvXLNrDhL7FN8
         e3ie+5K2y1y7Gx4PpaYgUh+vfopNMsnEZ537GXCaizhWG4KQHDCPY76qSAAYmoMPFoui
         HJS5R6WA4/e6TiFIc6nwbML+qKti9FnnZtCXLW91MgE8q/2aFBd2avZHDUBUY6qDR/IT
         qmxV7pIATe5K+KaEl1O6yOUdMeWrmzof54FCsVhxMzennIzTlZ99nLyaYir1AokiEtxX
         bPi5UysfK7VGqg1nRsTg75MrH7UOah4c+v14dbaYKLur4bmpcmJOjV0pFglzcUxsO6Pm
         Rc9w==
X-Forwarded-Encrypted: i=1; AJvYcCXmmJxr2BmNTqwY8bXkzj6bwF5hPsZKWiCRdnfM/V6xR2ylRVGPc/JgEIboSS5kF/Ijdvz9NmWt2JeW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5QJpw6WaNWg8x4cOTXvDKGX63wXMLvq1X2VAp9riUjU9e1DU9
	LCducATrFf5eYmXLdR7DvSGtnUsK1r6EQYVG+cxj0Lt4ttYieDR2SN29sHf0T+hs1Xe/+3ehfNr
	Om9tcCgc3XW5cM9Durj84aJiuIt7Tooo+A3k8hfGYEkwXNpHUoCria9Z48A7aSeRg
X-Gm-Gg: AZuq6aJyFfd92DKlCXQx3OXNLa9AHAMx5yFcfWOnsCUsbHHrFWc9j6ISFuZ/+Guduty
	64OM/m+M7Yt+LnxS2FcQec8VDh3qmWK5uy+dWpkcDb83UW7yx0bG6PHrnPatpNR7m1hm6hzpjbC
	w+0DWeHN4nMUH2nfjcxVZxjX9lofkYgAukofbSlnJCiBC0/Q5pclf5lrjdM6ZSXOsIMiAMe1+0/
	13g9MGBXMX3e6dB+eTHJJWcyY8m08dtghgKsxmp11oM5uSpq8+nA2P1AD3F2sisuBWA9vDiy789
	YVB8NulqVTBgTFBZ2yx2jcwsUkyBWivNQgn8XSpbajpYev5jxqCKklWzVfLhFS/85v+3BhRPDHY
	g/Rn2X6y5kcjeykjPlGP3+G9IQxBUz2/iL2eXGb2O
X-Received: by 2002:a17:902:e551:b0:2a7:cb46:706e with SMTP id d9443c01a7336-2a8d990ab01mr122086315ad.35.1770049217070;
        Mon, 02 Feb 2026 08:20:17 -0800 (PST)
X-Received: by 2002:a17:902:e551:b0:2a7:cb46:706e with SMTP id d9443c01a7336-2a8d990ab01mr122086095ad.35.1770049216518;
        Mon, 02 Feb 2026 08:20:16 -0800 (PST)
Received: from [192.168.1.4] ([49.204.107.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a8980c8623sm139237175ad.94.2026.02.02.08.20.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 08:20:16 -0800 (PST)
Message-ID: <4e6ad74b-a717-4283-afdf-90301e63832b@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 21:50:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/12] soc: qcom: geni-se: Add resources
 activation/deactivation helpers
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
 <20260112104722.591521-5-praveen.talari@oss.qualcomm.com>
 <ae4eeac9-701e-4697-9d76-931a6659e7d5@oss.qualcomm.com>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <ae4eeac9-701e-4697-9d76-931a6659e7d5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ylzQEBh1SxhY5mnWYEty3Z_Bm04FVT2B
X-Proofpoint-ORIG-GUID: ylzQEBh1SxhY5mnWYEty3Z_Bm04FVT2B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDEyOCBTYWx0ZWRfXwf+crAN1cFOK
 eU/F+eCkez4g+xNO84fZ7bojbRwWdcqXfDPvlmYoTm8RVkF/63ZE8M6LGY7kl4eGW1QGromSBPQ
 VIwGebBlEJ0CyKqfmBf+LnzkzRfmsFUtcQFwQesrjcE/YiECG7ez8qq4/BZ8ocHWxXRb044+ubY
 zevxXCcGhchuQI7oTBkdY8jOOB2vasa08pauMV6wb0KPmRG2YO53x4dDLS+VoactX83hecR6OEz
 Vwr8rzcEox55xBiYCr3vHCE9WO6zXf3YmTXfYVs1fO2JRa0Pgs29mYkD+maFowqsGgv+1RX0UWw
 9riecEkUNzp8HqFGMiy1B9V+Fng8HpTc1AdZ5r+KAhTi9K2i9vyM/slnBbMvjDd0T1y4nWXVoTl
 /bQkdtHBx/f0H1yf6E//3emDIhrkQrlyHVTybw9dKdpstyHn4KuiGBGHHFeIqbhIDHIV1HdObwY
 eTE+LZV/nGwv2HR145A==
X-Authority-Analysis: v=2.4 cv=AurjHe9P c=1 sm=1 tr=0 ts=6980cec2 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=JMgISmeAsz0pT9/O8qDBbw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=zS6uJyjHEOQbzLCDLTgA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_04,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020128
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261888-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B3792CEF04
X-Rspamd-Action: no action

Hi

On 1/30/2026 5:41 PM, Konrad Dybcio wrote:
> On 1/12/26 11:47 AM, Praveen Talari wrote:
>> The GENI SE protocol drivers (I2C, SPI, UART) implement similar resource
>> activation/deactivation sequences independently, leading to code
>> duplication.
>>
>> Introduce geni_se_resources_activate()/geni_se_resources_deactivate() to
>> power on/off resources.The activate function enables ICC, clocks, and TLMM
>> whereas the deactivate function disables resources in reverse order
>> including OPP rate reset, clocks, ICC and TLMM.
>>
>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +int geni_se_resources_deactivate(struct geni_se *se)
>> +{
>> +	int ret;
>> +
>> +	if (has_acpi_companion(se->dev))
>> +		return 0;
>> +
>> +	if (se->has_opp)
>> +		dev_pm_opp_set_rate(se->dev, 0);
>> +
>> +	ret = pinctrl_pm_select_sleep_state(se->dev);
>> +	if (ret)
>> +		return ret;
>> +
>> +	geni_se_clks_off(se);
>> +
>> +	if (se->core_clk)
>> +		clk_disable_unprepare(se->core_clk);
> 
> All clk APIs already perform a null-check internally, perhaps this call
> could be merged into geni_se_clks_off()?

Sure, will do in next patch.

Thanks,
Praveen

> 
> Konrad


