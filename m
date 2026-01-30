Return-Path: <devicetree+bounces-261209-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EPQL1agfGlSOAIAu9opvQ
	(envelope-from <devicetree+bounces-261209-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:13:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A7ABA5D0
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:13:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E550300C902
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9A7437473B;
	Fri, 30 Jan 2026 12:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NXZ+8b1J";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SsEJT7pn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A6C30FF3A
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769775186; cv=none; b=OcWWalsvpuiP9IxX9CcLOQnVlZgenpghLnNs9LVy66dtkxRr/IkwEI8anFVxfmrRHMa2ZzQVYqZuJc5gw1oOu3LMLSA2MlSETSfxS9bJ2M/ecWVt3Zk45OaJBu3+lWxprFxUKY0TEFbDcNMH8yDvprsZJ9353ga/rN39RheptN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769775186; c=relaxed/simple;
	bh=/ixdRevMqPEE1lODMPoaKQo9a9vLiHkiCmGYyHpvje8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VQKYM+urCk+x2csfcyRPy1dsd4dXbMqvCfQAKNKF1uMpgVV5CfTrSKx8zwckvwTjj7Cqv4tm45v44KDTOfUjp3whCZhuHA5nanJwzALCi88Y2vyx27gFNDKrgQULiKER7S6Kx4fCL8Yygc/j5uvbhAijl/v54/xFUtKrm6ZAwWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NXZ+8b1J; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SsEJT7pn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60U9UxSD2675371
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:13:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IFLpSlLM8Y/Fn7u02xJzrPAJxhRkRWQE0zeelLMBT8Y=; b=NXZ+8b1JtGFAdORp
	LqzyEhxdqF73+1fNJJqF6X2s/FLQWTFpR0tE1/Ap8pRShNcHf7tdgtPE/yLasjoW
	S0vRYA/9smM9kdaIZwe74haroBhbjsoGQqYA66qHUJmfJfWnjuA15PI0LhXS2/Kb
	UHj1eLJIX6mGNOjS09zCH4trvfzJVQyn5lvGpYaCS6Qo02Ijao4or3g0d3NembYz
	jU3mcOGBYJHRf/q1iOOqn2G9eXOUoj3rzGu6hrr3/iJ45+uFdvk9o7T7Larb9VBR
	fjJNVKhv9v6pVdn8bGid+j8j1xlUrbvkn5NJBSnICCWdSJCzRYBJBJKz/8fQlRkC
	D6v49g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0t340f3e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:13:04 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6d6b0f193so11147585a.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 04:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769775184; x=1770379984; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IFLpSlLM8Y/Fn7u02xJzrPAJxhRkRWQE0zeelLMBT8Y=;
        b=SsEJT7pnuig+PnfDPl0ZKUn0zLxkSnRYG6/LKRQyt2qVODI0vdgeMO3U8usCHpy5Ac
         mykNRpxclYuiZ4boJr3pjpBwpIRFLHo3dEi3aEb3PtbsJ1xLKMjXRkxAPMzyDRCJUqpM
         gVHzmIWwLY8yJbO2Vk0cfdeh3I7XYajZq4SnzvUSASrstsgZpfF79uosNx9lpZomxTHy
         WoM1xfM+OOV6jA2ilfJnOfaYayNl8OuB7BYitPcn/U/yGkFZZhCxOnybD7I1tMrcYM5p
         ddm0LrTNxuFX/VRRshqMnE33RHjRpvT7bZKY/lYZKZaxAgTlGuXvhDJIW9FuN6DYNazr
         1L6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769775184; x=1770379984;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IFLpSlLM8Y/Fn7u02xJzrPAJxhRkRWQE0zeelLMBT8Y=;
        b=t9E8RORCWOQlg0SBMfzyF1ViTBO0FaR2E/Znah5KaMkX1U0dpw3nVe+2hKXq44Exox
         EM6wwl4SGaHqtB3zSNG9zg8pX0bqeN5PCsUuNXChsCPjaV1zWpNPeYYMbMIvHhrDgwbN
         SDPEWWbxNxY460Z01+WXBSKSWF9qwqOY1Sb9c6KDO2guKxaLPsIgVavUD8ZerrCWttoX
         wrCc3fp0ySye7kVV8dg8hZV5ZudgRRZxIzma725NwbA+HB4OpqUCTwQIstVaZjC3P7uA
         e7XuHydsmW6H9JTzJizIb7OOrvttrRvxVXS/5Ra2iX41rqFkoxbJbmpeNvK22j/GF0cr
         yU0A==
X-Forwarded-Encrypted: i=1; AJvYcCXuvfmhvSylTVfZIysxV+4UT+ZISMmT/dzmJF83fr16L6NytmegHgHcX0eh7knOo8LtnbEVP3h+xbpM@vger.kernel.org
X-Gm-Message-State: AOJu0YyzWkWAu0gCpK7BhSujhAef2s1gzS0PDwlXzISnwdaB5WY9nFpL
	NmfRPAJilRMJB25bUC9/CMSnSIdtRGz2a/SRp0ZwUuldxZpsaKXdWHlrIQlaIVZiAvNfGP9gGuw
	kI/12BKTv5cbl19Tmnq5fQ/2r/gfFpN4nnC6nriXOkdZAh4wlhlHpd9DHMJ/GGXBg
X-Gm-Gg: AZuq6aJsnleXTFnaZL2mU0KbNyDH5u5B91wz8Js/wzYv2UIloXiD1u9ZQhIWtvlOzmO
	f0t9OVTnK0Q5/TwGeIYGa7xZjIXmJsxhT3msEbyFB1C0Q8ovcEt19nz6MY8QqV4uHcBU91nj5l1
	8sd4xwWmoeIol8+tgR0PJBlwgMCxGRiCcBrUedh7LNbkqu2UawtY/tkxDPQAkNG5n70quQ5n7+2
	sFgYPNja0kXN/TLfY9KrimcXB/lawtdUuH7EE7X0e4cjuNsv7ejGmz5Hzi2Ydef3Lv0e7DcCgGS
	J0r/gvOsOvWq70RhrD6MxT06ByXpOp8z5JktZ8f890MG/NPeElD6aAMCvx7XToJksKLEzTClN4c
	jfLwafwnZ5RFrJ8hJaYzS51g4cnBL78kIPmfS4bhpIMMj2rQIRfjmiVgH24ccGxYiPqs=
X-Received: by 2002:a05:620a:17a8:b0:8c6:a707:dae7 with SMTP id af79cd13be357-8c9eb265cedmr288082785a.1.1769775183755;
        Fri, 30 Jan 2026 04:13:03 -0800 (PST)
X-Received: by 2002:a05:620a:17a8:b0:8c6:a707:dae7 with SMTP id af79cd13be357-8c9eb265cedmr288079685a.1.1769775183346;
        Fri, 30 Jan 2026 04:13:03 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf2f3e33sm412879966b.71.2026.01.30.04.13.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 04:13:02 -0800 (PST)
Message-ID: <d13d1931-c6b2-4f4c-873e-efd45823fa89@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 13:12:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/12] soc: qcom: geni-se: Introduce helper API for
 attaching power domains
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
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
 <20260112104722.591521-6-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260112104722.591521-6-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDEwMCBTYWx0ZWRfX6cPSn8PGcMg4
 8l9FuUZlEzF68eCk3Q1Y52f5m0qEMCZ1JkvBvuf2fbRhewPtkG4JnvPUX25EKy5N9z59alRDOUf
 hEeFHqdbmgGb9dno6rNEyPhWLrnXQtlT0ooAVXwJ7NPfSbcMA6k+yUKIsEw2dDiEvL1mpAI+QEs
 aaCFUjmzFS0xuSfVldGb815GemKemfQR/cJEukUn4eaAXLda17mNlVVcSerdL2RD9PUg4aUmqwY
 RKxec4I58DKVnlBF2RZGwClff1iA+jTmlEC7G8g5mxSg58jBNc8+7h0ZI/aEj8EV3iqYUXMxKTT
 2HZerMujiIXbeSDc9vR93n8CTh881BSlFNbC5pFAW90542BBMq+GOwDZdxtfjIOoKaFiECu23Xb
 sL8e5qacTt0FgMMv9rNPX0Jx0wjBzaQX1QEv84GcvDdugNwkPmpRKX29xkWnD99BvJYeh5E6X8E
 UatFTGrEywz2BVkBx7w==
X-Proofpoint-ORIG-GUID: dPfkrPpRZVawNSI88zLgm02za3WiuyoD
X-Authority-Analysis: v=2.4 cv=QfFrf8bv c=1 sm=1 tr=0 ts=697ca050 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Wk3v8SmLDDZtl8l8IssA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: dPfkrPpRZVawNSI88zLgm02za3WiuyoD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300100
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261209-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 67A7ABA5D0
X-Rspamd-Action: no action

On 1/12/26 11:47 AM, Praveen Talari wrote:
> The GENI Serial Engine drivers (I2C, SPI, and SERIAL) currently handle
> the attachment of power domains. This often leads to duplicated code
> logic across different driver probe functions.
> 
> Introduce a new helper API, geni_se_domain_attach(), to centralize
> the logic for attaching "power" and "perf" domains to the GENI SE
> device.
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

[...]

> +/**
> + * geni_se_domain_attach() - Attach power domains to a GENI SE device.
> + * @se: Pointer to the geni_se structure representing the GENI SE device.
> + *
> + * This function attaches the necessary power domains ("power" and "perf")
> + * to the GENI Serial Engine device. It initializes `se->pd_list` with the
> + * attached domains.

Please sprinkle somewhere into this kerneldoc that this is specifically
for the SCMI-auto-VM setup, otherwise "the necessary power domains"
is at best confusing to an external reader

Konrad

