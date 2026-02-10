Return-Path: <devicetree+bounces-264287-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIw8Nxn6imlBPAAAu9opvQ
	(envelope-from <devicetree+bounces-264287-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:27:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF46118DE2
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:27:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 26C9D3006237
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:27:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FB3D340D90;
	Tue, 10 Feb 2026 09:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q4HfFm6n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ial1hhCP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1306F340293
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770715668; cv=none; b=Zwc2RCz2n5ripeNv3FOvhLmfTwGStp1/1mTH+BP26HRSS+GZ0XSaLkZx4eZ1ExZAMf74cEU7xFC1aBke6WomzgoViF3rFye+a2qffe74BHi8XMQf4fM49GsXKCJaEqrIsNZuUw40hbRJwh1o0R7nnId1xtERVwhFdrRfCDNOAIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770715668; c=relaxed/simple;
	bh=8VakcWDVi7zIGTDVo5kETSCQEE20JVTwYSWcfemEPJ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=mWFz6cO8l7pdzUzkx43CoxM6wIeCiW0re/4Gxo+EI7HVHOjQy3eKZbpt7iO2GafXANva9u6NcnDuP2sBs2VSq3JK2TnejtHNIUPLWQ8/PI5B9RucaylRvrcXUGKhZw7hBBwcdEXanR2udkBI1PzgHC8JOSiCcjDUSXL9Sx1uxtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q4HfFm6n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ial1hhCP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A7YsGG1419700
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:27:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jeEebfFL4tWFiBv8fgLVar0877GIlm8tpODyhjaarbU=; b=Q4HfFm6niTIgzYlG
	m0ODJEX2qOatac1uSL+IU6WAygE4xjEgKrIH1WuZb9fIPOmcpV7D9Fn0A7jumIzt
	t5iE9BWPqQfO+bZPoRrdLXF2+FoctmP0neL4ylW7+TzWidr68+KlY2HoOE8zGvjV
	wSO6xoyjm3biVQ5lTQ7KpjwePEXtVXW5GDIy7/10XwUpRTZdxBo/3Tb+uRqmLvQA
	3ZWXQ6DJ3xTajInQynW3jA9xMLGstFaAQTYr18fWC06HPfnLmWJeklmDYLzZb2fa
	AStF+yTjAORA0XiZth+Ype7ttydfRiSJzkjg5hnV1NH0/sfsS7jSjHl9suZMnToS
	Xy3AXA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7rpvsvpr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:27:45 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8946c23cf90so19898776d6.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770715665; x=1771320465; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jeEebfFL4tWFiBv8fgLVar0877GIlm8tpODyhjaarbU=;
        b=Ial1hhCPAuvnxKEUn0GHWSEe+32mXh//JMjW+pPKECfFMjV+wRmBFXxO2UZcvq2KVM
         LRdriwCN99mTlYWtuPHqxUqBTSxwO2C9gX8fE0w7wPFbA3/IWgoslw/KdgogJb0hC2+/
         UsdLZPKrV1FsTwVp4Y4AZSTGbKR3kKf8GKp7FqJ6mR44X9Riam0sjqoeurQqsATEL0LE
         vZDfs9fXFd6PE1AWe8R+fem9MzNGE38CqWLQ8gyV3CLhYzqeD5LT83gx/HDVyxziG9sv
         dY6BiByIVJP+gKKjAs6YgIxpMWhLdK7uevw/OTOIbwmO9zWQypako89J4uzlUZJoFLvu
         VhRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770715665; x=1771320465;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jeEebfFL4tWFiBv8fgLVar0877GIlm8tpODyhjaarbU=;
        b=FndRc5zCPBzXh+wFtDdcP90i/KbfVHT8HAguPhy71cIwejopJMK/DdHhe89Y/HMOay
         EUWoxWJn+kcfcp1fEtJGrEdNsKwBXbYUtUBb2R40kyqiNEbsp1o75tT+W1n0Kl2baDnX
         fmyveV6/+hsIf1JikSlU1FRRgZVL70DCUPzu3vURsLZY8pPCjRkVcg16w9kQwOB2yyVc
         ej7FjIPJBKOBfizQQs1geaha6KrqkWYEMjb5WETwWPkzVb0dDqo5azgJTfZrEKSr5vbI
         x/nqPvTyqZcwlzX4X+bou7v1JiEAJvO1b29nT4jZRbbZfDmyknKNpdnt23A0CGt1gpIL
         RRaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqOSsbgsCcebqKolSY8vIjNeFDOVZiXunXukDQFM81iT9bvKZMZ8JEI6br2JTeQRmrv00R6YFJES43@vger.kernel.org
X-Gm-Message-State: AOJu0YwAtBDIpsQ0K1R92l96WUfrlSsWaNjoRIgOuY7DG3wK9dHOtTwv
	V5W/L8uVrE5l7T0VNOgLdjN4r5TocxrSi7fzB4A7H8OvKiQ7a8pw9732U5cRV9ty9v8on1Givmr
	152cuPJGiaRw/F2AvqCw5lfRX1Idg01kht6liDoQBN99i1kvd5U88UqNgm8RhIule
X-Gm-Gg: AZuq6aKXn/zn0eZGtCYonRQNfCLVvpAgacb0Nt0nXyoXnk/Aomu/HQcPseleI5uX/+Q
	/iRXVcQQ32UhZbpUGy8SKwrRG6P/jtUN8lhVTEJmoM/kG2Nv96KaQ17T8iHkXVjiFELiXhfZt8G
	K7oYZYV+ilOVJ8Or1LeI0cC/SGlapTFg3ah8RRiwsV4ru1P27jkHeFCHzrTSfoUs9NlaV5eWUlb
	/BD1GAOwIvhPUJVeCXd4hEFoVQ8zdcYb1dLuEkXz1VE4LqbO/QqYJAezns7UiRyIzOpy90LrYea
	CFjzF+YAPkHb3uGj2OSl4g7DotxOdNYIvSpPwSwAb4r9ZmLIcqUgkLKVeKOHvBgSWKyf/Ot0ZWE
	KnE+4Ddl7dTDomvRuVWR5RZvpOrfVHauhYcm5EKsjAzGCqZbUMeaMNiejHk21RC0hKBLHny5PGW
	zDVEE=
X-Received: by 2002:a05:6214:600d:b0:896:fc89:b21a with SMTP id 6a1803df08f44-8970fe835cemr8047786d6.4.1770715665474;
        Tue, 10 Feb 2026 01:27:45 -0800 (PST)
X-Received: by 2002:a05:6214:600d:b0:896:fc89:b21a with SMTP id 6a1803df08f44-8970fe835cemr8047676d6.4.1770715665103;
        Tue, 10 Feb 2026 01:27:45 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6598400f0f9sm3556135a12.16.2026.02.10.01.27.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 01:27:42 -0800 (PST)
Message-ID: <026ce34c-c880-4832-a791-656fb245a495@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 10:27:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] soc: qcom: llcc: Add configuration data for SDM670
To: Richard Acayan <mailingradian@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>,
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20260210021957.13357-1-mailingradian@gmail.com>
 <20260210021957.13357-3-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260210021957.13357-3-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA3OSBTYWx0ZWRfX2eirYU1h2xNt
 9uQ7GDZA63EQ2o3wWaGbu1Njy6y3pNpgq41YZdSrzy5Rery2PuSbJEf50VLQP4l6sjZln399mqR
 CefJWgAG4qoNDDfaU4BzEkMDu6V8oCYTrWNLE/ElCYrMG5v3acIVPGzvtBU8mueB1RdFW+cLhvU
 2Gnvbmntl68Rnu4Qntn/y/EvKqEf048HxWdT+EnAHFmPZWg+4VWzQD33ZsETzcVQqJ/zB1VAcyh
 yeKRrhZfnOSAVuPoPndtDsPsSc5IGwRuXdStSpO/n6Z5IvUkVQ5+he1KNJiKvia8cPSOALgCsA+
 nagN7F1Uro4X7xnGeLSzi69eKlmwZDiI0n6GCmoRwyeXhREX2Oic4xA8+0MyZu+H1s8KZR7gloD
 EB71FUJCtrl+z0o5DQO3I6DwfXo3EKjQPTFCAmExKoWd1GwsUlP3LszfHepti9YfnMH0u4S29+Q
 4oHWng6FlS1v7y3/82g==
X-Authority-Analysis: v=2.4 cv=KKZXzVFo c=1 sm=1 tr=0 ts=698afa11 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=z8cJk1-d-abATlfEAfoA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: YKe22BWGAgM1jZwfm8zy0U2xDcoGwJcW
X-Proofpoint-GUID: YKe22BWGAgM1jZwfm8zy0U2xDcoGwJcW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,huawei.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-264287-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EBF46118DE2
X-Rspamd-Action: no action

On 2/10/26 3:19 AM, Richard Acayan wrote:
> Add system cache table and configs for the SDM670 SoC.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

I have a clone of some msm-4.9 on my ssd and it roughly matches this
patch

However

In docs, I see a version with only CPU_SS, MODEM and MMUHWT left
(your settings here seem to match), dated later than the last commit
to llcc-sdm670.c in that downstream kernel clone..

Because this SoC seems to only have 512KiB of LLC in total, it may
be that it was found in testing for that configuration to have a
better perf profile

Could you please give it a shot and check if you see any immediate
gains/losses?

Konrad

