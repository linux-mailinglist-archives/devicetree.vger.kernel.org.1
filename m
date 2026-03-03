Return-Path: <devicetree+bounces-270401-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INXaDEuxpmn9SgAAu9opvQ
	(envelope-from <devicetree+bounces-270401-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:00:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A28F91EC37D
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:00:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 51D4E305FC49
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 10:00:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF0C4390205;
	Tue,  3 Mar 2026 10:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bpmQbHdj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FxNS8FLc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D523538F958
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 10:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772532005; cv=none; b=M27M2QruMqukDL1iTSulSzRrrEXYk2vgNezsKfm5/Kg4y3ea1Qk1wUBnO9og9ek0EdBqVDl9irOR29HL8N0S98nXdOQmdHPKYByvl3dCdlHdtEPPY2afWCsAyp5L47jjYYZ5WPpsW+9nFZUJWRTy04M/WOmM6niY2ka3wW4JeMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772532005; c=relaxed/simple;
	bh=vZ6va53BKQGHpGNFBIeoZu7Y+fZK6wk7obb9rvhxuyE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZHQMa+CKjB+hmEDUH/mXe/5gUq7XrCOEO5gOR919KfPTiKgaF+Vlsd+2xIauBSiIC7boKUQT93TgPL3+ok+pP3ZVdPydtV0oHhKZmvdKLFevmtjK0xiRkfBXYJ0Vi8jW7tRALCi847zevuDv+aBMJ2LVQuKkJw4t7YR8NZcULGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bpmQbHdj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FxNS8FLc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239nGqP3349601
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 10:00:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nKxnX+39uKmiEJXyji36N/L6Q/VrrJGXVFS/Ho1WbB0=; b=bpmQbHdjLq4lF4Ou
	VMlW+bu0i7LkZG5Q/esFrKw1q2qXO4sd/hbKeJOulUPpq5JaEOVqCz8rgX2B4Pdy
	DxrJWARAXsi/OvtLr9bmkQzxYu3IdVfVlvIZiuS2UF8GycZLOUHYMfD8Vx6Hab0Q
	jm9A9+oTnk8HdsWHG00ajH2TkwJUizVkdHp3cKMm9/Hk/FRKsWoAyB72aRQIxAwQ
	atbo0SebNSgkrRZU+EvbKAZqac00aTSauAcz81RlJYjLIEgbre8S28BQvikwPMUI
	HpVcLCzjAtiZm6/jUuG0L4K1vbW8ol0Nif03kFklaiKxuFV+fy+ceWvcMR0anbmQ
	QBVF7g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnhxsaaat-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 10:00:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70c91c8b0so486433585a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 02:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772532003; x=1773136803; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nKxnX+39uKmiEJXyji36N/L6Q/VrrJGXVFS/Ho1WbB0=;
        b=FxNS8FLcCvXK1DfzNDZTDZjxFfwOu151yANt7uAWBa+qgdwQbvGeHZALjEtsDbgouY
         a4to0mx0cTaAkZh8ev6XVk9G6k6WGMTzKzv4Awe30To+mBl9/BWCJUO7T4m0ME+8tvdR
         5tVRO0IrFAcA+/P/kcyW/8MhWVEqA1flyMKkLDwYI1rAeH2IKPH05462bSv5G1qzYwTl
         aZPj8yKlVfu7OPBMVnF0AEoTDfVIUyMipcPBealCCC+quJUpi8ogpRX+iI2lR6qWyNwQ
         D+AMAecd7smu6/YFcUiLmm46VrXXDMWIzHxkCm7W5YOVKiAzxxR5NvIHLi9hGU7fMWCD
         IiTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772532003; x=1773136803;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nKxnX+39uKmiEJXyji36N/L6Q/VrrJGXVFS/Ho1WbB0=;
        b=sgF0RpQmye8w0XBB77PXRaFONpr49gykj8s8egC1jYwDTF2LeFvgUPnL3wVXkRJZdw
         lySAHkTzoCoq3Y9XnkZUVaLwXzT3WvZBgh2PF1+xoy/YIJ29MnLe9TGlpBfXFuWV6c5K
         1k0W0rjXLYoKkjEfVM+QJ87g/sum2vTX1ux4AcLDY2hJyxBpPRyeVeIDGy7xxVioAGr0
         Ag/hEtLiQFSVTyrlxfgUkcxAve4HPeQsMPUvL6246w5ZZ3+XydQVRe/p0aLULT9bvLYm
         m1LfIlSh6BY+158ww0jYTTlld1ekK6xdGoHS8MEaam1aYThIg1Cnm1a3sWATFCiGIFsC
         Rk1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUi4dNg//6hNtYIiSsnL8tq6Y8smAgAItHi0VsGtSbFIHvRHsUxYCMPH2FRCanfRQk15+PKvQHk7u5k@vger.kernel.org
X-Gm-Message-State: AOJu0YzkI8EcnEYSSdAdjVL/NXM4HupuC3xpwmMp3ckcM39/vd+B+UHN
	8wvISmiKQAYgqydbwrZrN1v74feztkDfxeUCKd4gVZMFEBcveuiYFI+BoXYAnLhhW/pFEpITvmT
	V8uh2cPWYFSq34UL3fhOl4XbblC72AGv2JmEZLMwvcDLTwp7Q7Gub2BMHBm68hDA5pDMfdTiv
X-Gm-Gg: ATEYQzwyT8YjNqTzsHfB4VQplqFbbAYk4QvMul6oal9360o8RQKxPgOGCd5Xn0C873+
	eNIEdA8eOaRtcI3Njzj5L10tvpnS8o+UWctXvt5Zqya4rO6GOBTMLLqlHXW9GHNCrj4CxndkeuY
	0W7VsfSOoQAX/9Dp7TQPsq0CYZ3VYU6CLKCjiu1c+JJD0hlfZx9ldHYQ4qBbBR1wRm59ObVw3oM
	hN8KJ48TMSeJbBcUOF1iM/eR08189IlOCm+zeJV3xkn4XXDNjFoc8lsCc4K203dtLmNSolEZLA9
	KY37PrAO4DBUS6P2A1jbKzuYmbsxv62I9NlN/D+s/067WvDIiofaOX4NJsUxsjizTY+snR0CjBy
	JQVErRBWFSKhdEWtlqPqISsHvWwEqBtefCVP3/U8ZVrUyI/c00dOxwQShcGga40b9QgP50pGE9e
	47B+g=
X-Received: by 2002:a05:620a:294b:b0:8cb:3a1d:79fc with SMTP id af79cd13be357-8cbc8e510bfmr1477404185a.2.1772532002990;
        Tue, 03 Mar 2026 02:00:02 -0800 (PST)
X-Received: by 2002:a05:620a:294b:b0:8cb:3a1d:79fc with SMTP id af79cd13be357-8cbc8e510bfmr1477402185a.2.1772532002538;
        Tue, 03 Mar 2026 02:00:02 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabd46753sm4203798a12.8.2026.03.03.02.00.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 02:00:02 -0800 (PST)
Message-ID: <3fa87895-99ce-47e3-8aa4-6d55a497530c@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 11:00:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: monaco: Add role-switch support
 and HS endpoint for secondary USB controller
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260303082157.523847-1-swati.agarwal@oss.qualcomm.com>
 <20260303082157.523847-3-swati.agarwal@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260303082157.523847-3-swati.agarwal@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Ifz8tEdEHcmbFPM0k8UYXt1c0IuxkHbc
X-Authority-Analysis: v=2.4 cv=dfmNHHXe c=1 sm=1 tr=0 ts=69a6b124 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=6Fmm3pkiqsXrxyeGFgkA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: Ifz8tEdEHcmbFPM0k8UYXt1c0IuxkHbc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA3NiBTYWx0ZWRfX/Hri6jO7krNe
 mn0n9+1CgzUAgCEVVwxSJ6uIEQ95aTy+dT6nh8erG3WcNiPyu9BNQDlfDF7GBgoQZkHj2+v+2YM
 NpDO3sLva/RWE9dzDgA3vQxMShWYAN5KE4YDwCX5PbXhF0b9kfAUq12zxxOrHPkd6aaO7MEwogk
 5vUC942cza3PG6upoK0T6Jl9wvZcqavqa8uJQinHVhVemcSoOB25uhOInFoBOAy1EUplicC91bR
 2sNKNUcve4BjYqPU2CcN9T8xd3UyyhtZpQ69/QKJNC5fNtjYfjPnAjCCVknQTb2uyCtZQyww7xX
 2ptcNgfJyQQToOrQfqDeqyk/etnRtYroh6YSQc889+VBpWZSacfYOyOiE+98SyoaYp11uI3SbPl
 Ho1xBD1bPCc8+77efUYvNDFo9mrVUAFHo6+1YD+kiDXZXsRQHHGgSn69fdkkj8aCnr/vluYxYhS
 j3G8UUSALkYLtV8DpJA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015
 spamscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030076
X-Rspamd-Queue-Id: A28F91EC37D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270401-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
X-Rspamd-Action: no action

On 3/3/26 9:21 AM, Swati Agarwal wrote:
> Enable usb-role-switch for the secondary HS USB controller on Monaco.
> 
> Additionally, add a port node with an HS endpoint so the controller can be
> linked through the DT graph to the corresponding connector.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

