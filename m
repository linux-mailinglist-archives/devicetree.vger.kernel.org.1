Return-Path: <devicetree+bounces-274094-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ARLFTpssWlVvAIAu9opvQ
	(envelope-from <devicetree+bounces-274094-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:20:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDD5264599
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:20:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0FA51304D37B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D25EB30594F;
	Wed, 11 Mar 2026 13:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ixIc2u6y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LdDJUyCn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7332FB969
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773234941; cv=none; b=Fulq9zOdLODYM+2zbNt0XxtyIMaEFS25Dsz5mtaZNgeJhw+stYyVHwPasrJllNFlZ1jRewsej0t5x8os14iCzL6UKIwd1q8jaM0b1HvmD7upIKObOsLZbeT5HKk9e6oj/fIULMSXHDaRr6VHzBdp6D0EAqo2eAB0XE4nvyybm+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773234941; c=relaxed/simple;
	bh=NTBADCB6TF2ojV/t7asSFmFixT+L0BNlMfiH+NGGoz4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q4KBAr8uu6foNxzl1pZqnBfLCLhGp6L42pZuROAinQIcDwIMDgvtwmKKNRlJHFzrFo81rCIFsFQ+seALBJh2CBS2L0hr2SD0N53oGO6n8APkjg7F6Vprn7YvYWY5PdcUq+QyM9oT3DHC2DEJnf+lQNcS4aqiATe/X2oBV79Dy6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ixIc2u6y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LdDJUyCn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B9x4Eh2179348
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:15:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4qFLr+olHEtGQdnQxnwdiXdFDDRGupqHLezcuLy1Qfc=; b=ixIc2u6y7rkovZzb
	xDaStPworBb+GxcndGrpE+Htf2OYnCmAIb5H7LWC9drSqdinQG+5zOVdIfDIqArJ
	TRdztz6c9Z9sJiiQHxUbRgg847Sv5Q0K+WNRwLEZdxkXxOhxcBu4AVUa84EtYLKq
	GDJQz8rvSyM84F/jHna1icL5+krPCoI4DMSLAvMiqMSXb8df/Hwf6nR9XXrnfmNP
	WHW4UBbMxJUGiO1b4IpsE7CF7qraAZp7GS4AZfJWwMKWK1Ze8bABUHkROsxq2+4z
	aSmnkSkin+aTKVqLVoNARZy7ZzyNWyNf6TO4K37UtWRZK7XGRdaJafVaSnRB5WhY
	aqMH1g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqvsunwb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:15:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd7a2c535eso91243485a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773234938; x=1773839738; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4qFLr+olHEtGQdnQxnwdiXdFDDRGupqHLezcuLy1Qfc=;
        b=LdDJUyCn/cRaejJkF98kDiaJMCsq+5jRdki5JZirYW0edUeoRXzQR65kcZi080MIhk
         hkHrjVOSeu9dXLMaISN4G2pS7+Z2kriCo+nKsoTEu/w/0f1NAtmVeNqiebHMa99wOBzZ
         S9cCGt9/AwnCJXE4SzXy4KGjrZG9UsFdWIzely6lmahwPDeasMv58chM9JF6HMb9DImP
         6MEWMpQwJLFyiKEhaIAvGrRePzHlOZ3DS+5W8GbkhbUOX6EmY9FCy3DLCpvpitj7TMqO
         +5NZny2pVAnZ3LdSIz4YgUoFglSsuAeE6oZcKeIz7uL2kcWiBl5KBFnB+/syUwuY3H17
         Dh0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773234938; x=1773839738;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4qFLr+olHEtGQdnQxnwdiXdFDDRGupqHLezcuLy1Qfc=;
        b=BstHtmbYWvQErD+TccDy+MUtcgWa1hEhszfrinf1cAb/zX4tGvcUXJ7vxhIrbmaf8w
         J+sbg0yvgi3ee8s+LtyPY/J2/6SuIlZcwiuhUO7DYrhx6BVQSKUVMwcLKiEKskaxnT89
         xaEZlKAjN4xXFIWiu+adzt0R1MDxTfCpXdzdG02o8Xg7Gsu3kIshNryk4FJvlx70DSLN
         fg59SjnTclN5jIYnx/vWhFtbU2jxV4bHVZSqbWd8BjRzMzeofsIQgKgrW9JBC/8hqPXI
         OxSzBhar25dl2sboF14bUG9HDN+5txc/wG9nBb6xoqMrb2oI92hy0ezTD1R0bgNA3TFI
         Ci9g==
X-Forwarded-Encrypted: i=1; AJvYcCWhR8KAuY0nbLa59/eauoBb3SE5RQKcoMPpHpK6W5QiTfzkL3843nVkTS6ZQ/SGsWjb+k6c8IA2YGoD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7FRXOPzLXA0xq+y/jtuV4TVnE3Byt+7scrHKDV1vmdzGUwk9T
	aNsIAFB+RAO2gQinldUQZ3NwIMqJS7Qqq9eLi85LgtGmzEjzP6yfmsXPk04lcN6B7nIeFov9HOu
	taWeB4Y2sNnGBiTZzk7E9Wk4Lg47TRMw38wScB2v/05WDIZprKTLRGUOqXDRj6NiM
X-Gm-Gg: ATEYQzwGolYnehc40JL/2U772EG1P59flgapz6VPUaBOheOua8Av9xhws1jkRdgliXM
	KGC2lSytKIKaII87aIUGKWT58BeSHoVJbIqDuLpR3jzySqRwnH2hZVaRKVUlZCkaEzJj12LU3Z5
	3cNorNDnyVJ5qJaaLbeZlWOX6XkLgTeh6v8q2K8jlCxBRnY/n5Pk2jXqu8hYuJU23SW3Sd+gBC5
	oOc1bu8cS6F3HWNEreS+BE1sM874eKj6g484ratYH6goJG53zbN6kYU64wlSoBNBPSFCJyqJ17T
	dZTzsArlEo0U8y+l/6lBNAemxGyCb0rO+H3L2xh6FmZVWZ4m+iEDxa5QsQZh1UuMkxJrU4TzolF
	yf+QsUfYe4sKcxPMNBNuWC45YSBvkJdm6FACKMy1qGAw87X+traAwLq4x7kBC0B2dqg51K9F6cU
	wrSuU=
X-Received: by 2002:a05:620a:4487:b0:8c0:c999:df5a with SMTP id af79cd13be357-8cda19ee32amr237422885a.6.1773234938346;
        Wed, 11 Mar 2026 06:15:38 -0700 (PDT)
X-Received: by 2002:a05:620a:4487:b0:8c0:c999:df5a with SMTP id af79cd13be357-8cda19ee32amr237417685a.6.1773234937687;
        Wed, 11 Mar 2026 06:15:37 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b972de8556esm53621766b.30.2026.03.11.06.15.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 06:15:36 -0700 (PDT)
Message-ID: <9666df8e-eb80-4665-a393-8cfcd7182446@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 14:15:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: glymur-crd: add Audio sound card
 node
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        andersson@kernel.org, linusw@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org
Cc: srini@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibi.sankar@oss.qualcomm.com,
        mohammad.rafi.shaik@oss.qualcomm.com
References: <20260311124230.2241781-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260311124230.2241781-4-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260311124230.2241781-4-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDExMiBTYWx0ZWRfX21KBybv/zbEX
 ZXXrkdLvNZSvsZVIr71gnSkLvH8Tucy6c/jodvSZnRPBtFzjPYI4UrETGz0Nuf1cHVivw9Srz01
 PFFVNaR1/saz4ivFQJ7MnEsmtTntWm2ek+OK6qflLDb4iCRuhPnslyvyCi/eWpLDfALKOKQpmBY
 PCftgyjOjKKOpuagZRNbYweFzplO+kAMZEqj2YJQPOs5QDuKOZQW3T099w5wvqE/dP/2V1JB4AB
 1bRKf5VstaelQ03SUmM/aOPMJcUpAi9kPPz3/djyzkmzpxpCYveQ8+jKa5afRWi88Kpd44Up/AT
 G5XY+0zbknteYH3TBZP/JocnZIJi+f58FIdSBpjoyKZbqN9nan2PmX/PgJg6+xwmt7lzY2y8aMC
 rsEbWdcj/G4HaHkQVoHTsKdjP+pq8yM+Yky9NeHhCuJBNIouJw2xUfCNm+jfj+0P36wv81aANhm
 +dEVmL1g5VD26MQSSsg==
X-Proofpoint-ORIG-GUID: Z26MI3wHoghMBD-Ok6yxe_-09EmrbOZK
X-Authority-Analysis: v=2.4 cv=Lo2fC3dc c=1 sm=1 tr=0 ts=69b16afa cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=mRWUlT_zmqOSk2Bp5cYA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: Z26MI3wHoghMBD-Ok6yxe_-09EmrbOZK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 bulkscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110112
X-Rspamd-Queue-Id: EEDD5264599
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-274094-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/11/26 1:42 PM, Srinivas Kandagatla wrote:
> Add the sound card of Glymur-crd board with the routing for Speakers.
> 
> Add device nodes for the sound support with WSA884x smart speakers

Smart speaker amps?

[...]

> +		wsa-dai-link {
> +			link-name = "WSA Playback";
> +
> +			cpu {

'co'dec < 'cp'u, the other node is correct

Other than that

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

