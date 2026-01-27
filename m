Return-Path: <devicetree+bounces-259894-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCUlA/O4eGlzsQEAu9opvQ
	(envelope-from <devicetree+bounces-259894-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:09:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 762A794AC1
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:09:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6E67B3019834
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A942C35581A;
	Tue, 27 Jan 2026 13:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H4OF6gzX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JX0qkgnU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D38F346AC5
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769519342; cv=none; b=ISrrv5eYGYQ4mITOQR2OiN5MM00fdVrd3BLY9XQK5rVfan3FKBCoElPm730oflvXd/ZtVvYjln/ZYspuDwAWjJcq0KhcdprEWEeMZURo0ph6XbFWVw8r8AfcPWyMQmLyfVUIAEStvMhoiGqQHO2ux/wenmVPAYs6HTioMt/Cbn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769519342; c=relaxed/simple;
	bh=KeoZK08wHG9nZHjMFX8xz2O7SQBptswqoTkNA5e6PfM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=j+nYaB6fmv1dA/T8E/2h19pin3Qp1dhrF0A9Q4afL+F0o0IXlhZKysXTl2koD15gy2ruJsx1rebXTB7rDrwQRO8st+8hHS7zy2v6CkOVUZB6ou10CW/rZAskFth7Z7mFxV+x0H93YTkoUBbi9tUW03l76DV2No6lCnp1mgBQ4sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H4OF6gzX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JX0qkgnU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RBwos81136098
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:09:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	blhG5kN+w8fw3+doSwjHXi9gQvdJRFmf89fw9pjZiGs=; b=H4OF6gzXHj7acKhZ
	izQpQ0ZkkX3DDWWBTVY71g37A14H+R04CL7j2mR1xYRcTl2UuXZHpLLo6H3LpJ4K
	qDmFMRYd0UHSFb99SiPuEMSWBumZSPE4+dUgwB7Xf6n+2mIql8PskhHPq4y2EiF7
	MsKCC6Cgm6ZJdKBMe2v1el2chT9drKXHKu8Idvknv06nGODmdj7zbWzaZAZgc/w7
	Lto+/pvt+vB4wIBT/We8qV9nKAV7I9sxlBXhUb6aPfdHFAIq6GMdXVwiyKeLLYI8
	jSBA3tJTq8JwpjNfxo8IiPV6DvJdedemSCtAP2es0e4XTutfcYlCsAIj+CPGuBx7
	ZdiIvw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxsjegwsm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:09:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c709a3a56dso27453785a.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 05:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769519340; x=1770124140; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=blhG5kN+w8fw3+doSwjHXi9gQvdJRFmf89fw9pjZiGs=;
        b=JX0qkgnUMM9J/V6sPncZDEuuFEvdKdccHlr+/5a31JD3Wpx2CcYm48fHPMt0gHrHe5
         4N63a6L9li1fAryjAtg78MXOQTKxcCAmejVz6Laf+5vVX8Ol6l3vND2W4djX39piGJzm
         YGpyUqFZlfRe7gNhP+823f75Ny5lih4peFTvIZG1M+kHP2JqweottA5xuOw/PX2rGrCB
         o21qEsds8/Ujuq2f+7V243alO0Hl6U5+u+9GdHHXUPV2nYX+2COMHmA0xUUfTWJVleUy
         D4LAQKBaVRZJc2dVyanNPFC+Atpcb1JlkfxsFca1EMOoTCItIx5+bk17WbVio/ABWQTo
         Mwqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769519340; x=1770124140;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=blhG5kN+w8fw3+doSwjHXi9gQvdJRFmf89fw9pjZiGs=;
        b=a3muNcmA65Y6LLm+n29RpyYWrXgaiFdrBszeGEZZqsfs5TuTWOKSyO89TkywumSWIR
         Q+wTrGvILfMDmqbsmTcX+1FSbiGdBg+GxXCTf9L4A7FVVBDsylWKsrUvPvzrw1nyg59c
         e61a+aikVxnEDtUDSHX14ALAhIqRhQWXVGIM9yU9x6tChU17nqDMC8CbcU62Lxk74l0y
         /FbAMtyzl2cmNxawZvWVZCZ/U82iilhlCPIaEY5+D2POMOQR8UWqX9fC0v98239ScZCs
         IKrL3V6yp93NCXsnzqPiZYuldDEO8RJtdebKuiuazltJHu4R1d2gsk9a3TwyLU0CzOH5
         dT6g==
X-Forwarded-Encrypted: i=1; AJvYcCVha5IJyQCQwoFG8uAVwUpfTfPSUoykH0WhTn8D3oD6Xab9wlrG4Z5/2vzH1rkZsDEI4BRb2/Q/3cuc@vger.kernel.org
X-Gm-Message-State: AOJu0YwkGmaLa9rOL/uLXL5nRfKeBHo+1KvQ8b6cNSzD8AIC+hNzlz8H
	GYg2ZROWulCek7KbzXOqSR4KnuBEYHunJe55Hep/k4b04lAUV0Wr4QFf8v0bQJH55oOD0C4XVSG
	W2DUBF1TGu9i9p3VU2C48ukLhQZL7fol66vY7m1RnIgruSZQvrDfOU6anY1S8dtez
X-Gm-Gg: AZuq6aK4ElUDMgl/V6zUbVB/mKYZwvsIxxwvWvSK6TCpQcBHyhMyaSY9kelC7l0SZEX
	62UNxjmoS5lCp9X8Dr0qUfQ9CbJCy18MbPPZ7PxpGk6Lj6qv0tsCt0szg58QR4bUeJ+XwqWHPeq
	3dgOnaZ9RfkoqNlVAJMkmvajyHBE7mZIuZZrDi3iYeH6Po4TgkywA6epq0jdLpLdbJuBDnmkjBM
	pcT1FACZBVoLml+K0e2KXO7t7J1Jyq23uVpRwtaQl+QmGICWfomQfBZeps1svcKV6T8DColSCaZ
	HV6EdVs4JcLZwSij7F5xh8GqQokokw1dxOyQWzstWm+ojVXCehQbZIU/eFqthGNnaBHvdhjzNE7
	XvOEQRS5LGx7oKAOTGzCNQiAEIIyyniiTEykV5RvxDnA+BmRAuHicrmWhmS/Y3rhBUWM=
X-Received: by 2002:a05:620a:4694:b0:8c5:3699:97d9 with SMTP id af79cd13be357-8c70b8ebc55mr123920685a.7.1769519339675;
        Tue, 27 Jan 2026 05:08:59 -0800 (PST)
X-Received: by 2002:a05:620a:4694:b0:8c5:3699:97d9 with SMTP id af79cd13be357-8c70b8ebc55mr123917485a.7.1769519339165;
        Tue, 27 Jan 2026 05:08:59 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b411de7sm790211966b.19.2026.01.27.05.08.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 05:08:58 -0800 (PST)
Message-ID: <d33d426c-3208-4ddb-adea-8bd1274d6873@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 14:08:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] arm64: dts: qcom: ipq9574: Add gpio details for
 eMMC
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260123120016.3671812-1-varadarajan.narayanan@oss.qualcomm.com>
 <20260123120016.3671812-2-varadarajan.narayanan@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260123120016.3671812-2-varadarajan.narayanan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEwOCBTYWx0ZWRfX5dkGDQapuKeR
 HI4jnWzKZuDD6gc9eVvoBlQr/04ZuEWKXEMtyDG0R1/VupPWkC6gj0Uh7pICQ9ryw8L4kWxGM1B
 HLh6k8treizFN06oZUjg3qqekYuLH9KBksJC9ggdDLyWRS1fPIk0uYYG4Mvimd66r54Tx0SjfxT
 rSd58gciFmyl1Hc8j8iB8PDJZuwOxd0G+Z0Zgqbl1hAL7GWrT4Cyu7pbv8cP/cT4pLqmY0fL9of
 ZBG0hpXjS66H+GVzXrvDhdZTPzZIBTAyXYd7yl1RPd+9jsZYHyGB72r0PaZ+ZZkoUDGaa2dSM3w
 0Al47EYeXVT+bTVeIugGlrpqQ9N4vSumUrEcWOt1X93AeMhKymlsO1Z4XA4Pw285cML2ZxoBJMR
 ts2f7XNGXxm/zAI3cC6NEHOlY2tkhkqSUSiWi8i6BsxCTwT81ShICSWim5XbatphYVEOh7xcxbm
 ZZ4xe3zMgW0JiRyYdZQ==
X-Authority-Analysis: v=2.4 cv=Qelrf8bv c=1 sm=1 tr=0 ts=6978b8ec cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=MuMiuFh-OEQEkM8H1wUA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 7Sz-EBzKzBm2IlML8YhutXhkO70jmxsK
X-Proofpoint-GUID: 7Sz-EBzKzBm2IlML8YhutXhkO70jmxsK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270108
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259894-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 762A794AC1
X-Rspamd-Action: no action

On 1/23/26 1:00 PM, Varadarajan Narayanan wrote:
> The RDP433 has NAND and eMMC variants. Presently, only NAND variant is
> supported. To enable support for eMMC variant, add the relevant GPIO
> related information.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
>  .../boot/dts/qcom/ipq9574-rdp-common.dtsi     | 32 +++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> index bdb396afb992..e4ae79b2fcd9 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> @@ -169,6 +169,38 @@ data-pins {
>  			bias-disable;
>  		};
>  	};
> +
> +	sdc_default_state: sdc-default-state {

This could live in the SoC DTSI, as it describes a generic configuration
referencing a SoC-defined pin function (which is also going to be
probably mimicked in reference-based (almost all) designs)

The config matches what I see in docs

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

