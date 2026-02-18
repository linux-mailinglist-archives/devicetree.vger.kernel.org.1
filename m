Return-Path: <devicetree+bounces-266491-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLyMH5L+lWkDYAIAu9opvQ
	(envelope-from <devicetree+bounces-266491-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:01:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB90B158786
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:01:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4990B300371A
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B857330665;
	Wed, 18 Feb 2026 18:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="awMQw61/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MwWIIj+r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8D232C323
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 18:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771437705; cv=none; b=dcOMvzkchCtuYDpxgr2lr+ptglvel3JQ0wLXOx30xtXRfJVkpuYTE4MIiS96X4eN4fapzVj2Nf3fIBI4qquXFjmTOwT/11s3E5IaYv1VS//7QmuPBURRbXXMZfsbby3K5vNIoEU5tO3+L+IZQ72XMJfsM7a7eQj9C27thJXI7t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771437705; c=relaxed/simple;
	bh=5Hjd/GgMWGq/1ik9LlAgdtTX4tFWBsFoKz5AYROBM9s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HAPt9WzsBQYBAeKtfCk6HcrKaQW9/I29SD+Ah1Om5FGgR1A25FDpQjeMEzts2pJQkAgeG0FgBZEUqU2q6ni2SHTlKr6X2QxlB6cceUMXndbZ8eCPrYc1GydxjhahodoiWDqoJacF3hbfXPYMNy7ERpbJouxNy+bj88hk8fxuCOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=awMQw61/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MwWIIj+r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IB4O0B1623780
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 18:01:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gCXvxDTFX2+zxnukyEGGjINVY8WETx03y3Q+tzTWJDs=; b=awMQw61/2orikPdc
	1qKADZHO+GezvXSQglAkmslDT7coV/Ntcy93Hk9SO96eR4hMmRI+XlJ0MkpHYAZs
	t9yJKJR2+HkgzMmBOhIA/OA8oqDmft1vMkK0eG2hvXdgJMt/iY1JaQ3DH0evCTVU
	1L52SmiC233GhtM6BQ+By6EWriCr85GljP6mE6DbngraLEK+I5M35NYVeuAoESHI
	h4JPVzzDJR2hfBGj5qosMn/TnRidc2qLCbRlvmhT+3sNrfcUIqTnm8DxIfuo20b+
	AC+q7QgxnLEUcGGyEWGwj2N0pt6GyKoj1sh9UXaI3YFqGaIGt0TEJAadxqCGJUlo
	h4g8tg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdc7u950r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 18:01:43 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a8c273332cso2911505ad.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771437703; x=1772042503; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gCXvxDTFX2+zxnukyEGGjINVY8WETx03y3Q+tzTWJDs=;
        b=MwWIIj+rruAnLOoCBstet+v5jDjgtCNUIcWWSGPgUlqbf5fB2x/3keYdUttFexrHww
         kOFv56oN25LwkCm0DKACAPx/uOTPa3xHqM/HS8D/10r2UNAfGwWucmjjuEm34/eTD87Z
         oOeZno0bt7xxfgw6E4LxXPVoQ4T6FBTMN2xgHF/LgfyajCXwYMJrxeM4LebO4gtOnaAr
         ffIf4NHq/1RHuyrMldJc26CuRIOxreh3roeBYm9zzCB5yqNOviPiv+blLZLWIu9A3Geu
         jZUsU+0QGav0KT5CELbD+wIVx9JWHZ7c2NW1nWg8gHEUplT1KRCFmeuv9TQN6ClbI/2h
         ilMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771437703; x=1772042503;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gCXvxDTFX2+zxnukyEGGjINVY8WETx03y3Q+tzTWJDs=;
        b=PQhXXC3VpIjkCEEwELztUrMTm5HEOTFgi/Jb/CutZY3DUeRa1ukRTIAUXAIEKDKjs1
         Mgzuvh8r927PB3+sLnqxu8KLCBRfxwpOOH5fgUZITdmNe3jQ/GYe154CpttN5Ythr3OS
         n0RE4wiliUi/yaF35DZ3iuE4Twqwiquxxtl1TB7pI95/b1uSuON2ZY4gLGT2MMQDthdf
         MJPjiB2/KDMom+DoB9S4MvM0TvLWuK/kqisgJRMPbz/+7AxCJy4+ApibAbAimUfAXElx
         T5ZWsiEhf9J206HQiKUKpJY9Qa6HwVatz2oT+kZ1pxBh9MfiLkl54zj+7/cFCzpv9GNJ
         WrtQ==
X-Forwarded-Encrypted: i=1; AJvYcCXs/oVhiNVvau2L9/FUZ9QycEnabbTvdkrXD5XCih8s3b7Ea/2LXVQA3LtjdBreYtmbY3arFH0Cq0xf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4y6IaCPvtGbLgTiGvIEj27bcg/0i5l1V5iaY/aGC2flZgyXG2
	roSKG6cX8YxyU/PQ1brR1vEgi5ZjnMuzbyCTLilxJZIpZhMlR+QH8qmTbQfR9lAhlauDI7ZQHhx
	E/IxSC6OdJqX0qS1te/tAWrqzTMQCHO65/mcphDIGg9l/VQudq+Q9pKw/nrLqh6S5
X-Gm-Gg: AZuq6aKsCq+pwuNWG5A1dZjr5lf5xKxf4jBuvDGI2iNVM2cfvqVgqAAJnKgj6sq+Vt4
	QeeFvojMp6hBLIfCIjppNFxCRsSNSMPc2KCH/tmOFXRdyf9P1cLwaNS0jLcOWB5SxHNtn+EBJ2f
	J/Du+IXc2oQQyI7T++l+aL7L/kEk0SiOnwdvafRlgrHDO6lUQDF1Tku5GwmaVAoHuEWiPr/7hAD
	/HPgCJiQALCQc2lLhSwo8wIWWsQ4QhNtvAt+NNAlrhPWZ62Q34iINy5v2nK0h4PywBCn7jar0FO
	j4bHsC90dsAuNoxTjE0UoM3vHYdhmV7BLeidGuFCz1h3XIH1i2sOBS+AoMRy9DNSxKOyC8O0z6Q
	SzKoDxtWis7aYB6gyHEDZvJsnfq2a1My/oLufNZZc/V+G7b22Gg==
X-Received: by 2002:a17:903:1b04:b0:2a0:9755:2e97 with SMTP id d9443c01a7336-2ad17461ef2mr159711965ad.15.1771437702402;
        Wed, 18 Feb 2026 10:01:42 -0800 (PST)
X-Received: by 2002:a17:903:1b04:b0:2a0:9755:2e97 with SMTP id d9443c01a7336-2ad17461ef2mr159711555ad.15.1771437701750;
        Wed, 18 Feb 2026 10:01:41 -0800 (PST)
Received: from [192.168.0.195] ([49.204.28.145])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a6fa229sm134974425ad.18.2026.02.18.10.01.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 10:01:41 -0800 (PST)
Message-ID: <0d105b2a-a32f-4d8e-b067-0adf7d4ccfee@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 23:31:36 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] pmdomain: qcom: rpmhpd: Add Eliza RPMh Power Domains
To: Abel Vesa <abel.vesa@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20260216-eliza-pmdomain-v1-0-c51260a47d6d@oss.qualcomm.com>
 <20260216-eliza-pmdomain-v1-2-c51260a47d6d@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20260216-eliza-pmdomain-v1-2-c51260a47d6d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: gDb5xYrH7PNl_ecvlJpV725U2Yjy90dN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDE1NCBTYWx0ZWRfX17SdH7pZYFKN
 MXDJWti6lqFWjm2tZeZRtr0entInMBtZ9lFAayeRUa4wVSfFWOxF3mnytVv/QhK4yktRiiR80JU
 b1rTxOJuQiFeaX8jS2wC0WttGevuk4GueOMcGNjyaG31d/eiSl6GYB64u4NtML/vTSRvcYPe8rO
 rqqO24vNmrCYHiHRBlgu6qH1vxKiYgCKaLiI/HiLbla5h1hxI4qQmM8fnpQY6YgHm75Gd6K479g
 KVizKDQzC/UxFyulN3Cx3qV5kh6t8wHya7uQW9qp0xY//MA21TfbPl5i0ymZXFLNqyqsMalcSGN
 ACocwtBbI3JuTSHEwZnUEJT2fGugedkYcunxfk+j6IpUnyLGarjJPQedM08B3QLxISMcxqYZ+cX
 fLgpO0UPn6Pcai1W+FoPUJ2+oLjNIU0SDdibrbPNpL6dD6dftTh7uDF6b6GSRd1T/w9457agj0l
 xZnyR6sWtp/sIQ4nTFw==
X-Proofpoint-GUID: gDb5xYrH7PNl_ecvlJpV725U2Yjy90dN
X-Authority-Analysis: v=2.4 cv=daCNHHXe c=1 sm=1 tr=0 ts=6995fe87 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=IXbkkVN8uJs8XsqYossUiQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=mLiumJ44E1THsQu98UAA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_03,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180154
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
	RSPAMD_URIBL_FAIL(0.00)[oss.qualcomm.com:query timed out];
	TAGGED_FROM(0.00)[bounces-266491-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DB90B158786
X-Rspamd-Action: no action



On 2/16/2026 7:53 PM, Abel Vesa wrote:
> +	[RPMHPD_LMX] = &lmx,
> +	[RPMHPD_MX] = &mx,
> +	[RPMHPD_MX_AO] = &mx_ao,
> +	[RPMHPD_MMCX] = &mmcx,
> +	[RPMHPD_MMCX_AO] = &mmcx_ao,
> +	[RPMHPD_MSS] = &mss,
> +	[RPMHPD_MXC] = &mxc,
> +	[RPMHPD_MXC_AO] = &mxc_ao,
> +	[RPMHPD_NSP] = &nsp,
> +	[RPMHPD_NSP2] = &nsp2,
> +};
> +
> +static const struct rpmhpd_desc eliza_desc = {
> +	.rpmhpds = eliza_rpmhpds,
> +	.num_pds = ARRAY_SIZE(eliza_rpmhpds),
> +};
> +
>  /* Milos RPMH powerdomains */
>  static struct rpmhpd *milos_rpmhpds[] = {
>  	[RPMHPD_CX] = &cx,
> @@ -795,6 +820,7 @@ static const struct rpmhpd_desc qcs615_desc = {
>  };
>  
>  static const struct of_device_id rpmhpd_match_table[] = {
> +	{ .compatible = "qcom,eliza-rpmhpd", .data = &eliza_desc },


Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>


-- 
Thanks,
Taniya Das


