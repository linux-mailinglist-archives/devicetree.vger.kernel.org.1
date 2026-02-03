Return-Path: <devicetree+bounces-262100-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mA8OLGK2gWkrJAMAu9opvQ
	(envelope-from <devicetree+bounces-262100-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 09:48:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A20D65BD
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 09:48:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17769302797A
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 08:48:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E60C366834;
	Tue,  3 Feb 2026 08:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nm0f+GXF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L6IXmAsy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C16E42D060D
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 08:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770108491; cv=none; b=XXxBg6xLHto4Ry12yFb7qGj7pTJql5KMPT29cCUG4jUa33OVmU1qbhVTfHC3jhdeg5Ox1fOrw/aeRzfvPTwcvdsv2ESwCJquNhxENFqLjkco+hroMpU8gY+GBhUOInAfOuemdHKl9VcPHFq4pkdcnv8VppxKuA2et2/bFuZ//8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770108491; c=relaxed/simple;
	bh=eXUf02paY8VxjOp8VCHeexVt79gZ8wBAFPRTmTsO2cg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jjk+VexUvWAI1PVmpTbEPUYebjRhT0kvNaaTwPbQJ0jyDKAdzXu3XoZqKyQaDal8KRYN3plgTd7hgehSX56rYi6D5ET7f7xPsHw4ItKTr0Bg5r0tByjItE3u6/wXK7hyfPudkU1arUPe3Df2gEvk2doAWb+t9dKqGd8t1IOa3Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nm0f+GXF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L6IXmAsy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6135UEws2107174
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 08:48:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QQRx+7mNxFtpY4+Q9LFa83mI0dh37fZ2A7fbqFBPEZw=; b=nm0f+GXFAPrOMUUg
	0P9E1JhpOYuhKVLAZ4nVcsnVzA5FgGrR5ktvg/OqB/9Me7Ke7IRg2aeWtcsN+aiC
	FsUSmVJ1ZAU64v+CnlbQfWPTES9nMg8zQL+FsL20DGOWmRmuWoO6udr7MNZKq4bS
	Ul27jCcOufZTBTXPqxHVvPo8d2yRWmsexQVn4pBKpnsU5n2PExVxBp5WXJ9LDgtq
	lmyy08876OHMbVUu8e+THZBclXHyJ7z2V3SGOd7s41GrQjWKQZMDaz5tB+Faj/mo
	MINPLT40U+/8/2jiAE8Z8LvI5PAxrEiU1Rlg7Szx8JeeVZyEV7ZUA3q/kvVgK+lg
	44g84w==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2t5ebsas-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 08:48:10 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88882c9b4d0so13286346d6.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 00:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770108489; x=1770713289; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QQRx+7mNxFtpY4+Q9LFa83mI0dh37fZ2A7fbqFBPEZw=;
        b=L6IXmAsy+1cb+e933W2cCRes50btGfhij/tWHyFx1N+WPC73MuaoppWwgu0eUjBKJF
         Cnmh2fBlq6/ji0JyAyiAH8DTGbEXkhp2zeazMdFGEZqYLgYMPx7ztlQxR9jFCD9K/czm
         bnCl+y4KmFJx72Y10FbBMOjuFuWCxAPhMNgph3TYcS+xGcLdOWfnXDvn7dQ3rhwrfAvn
         hXA+3BaGCgt4iv+2Beyp/Vtqsms9LbBdaFTr79Wocdk7wxVBJbRA0q3FuftZ7bD+yHTe
         6XslTnLjoyWowGGR5xRdSKkj4eDhbFMNLFYAOHmmOgrOaOpd9eHbU2Ce1GtlRtdKPdDj
         fGWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770108489; x=1770713289;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QQRx+7mNxFtpY4+Q9LFa83mI0dh37fZ2A7fbqFBPEZw=;
        b=hEWXW+fzcldZwiaFYx533r91iBS6IIvKGxxoObVjDJBbQvshzl+0RlvwcS7qIAE1Y5
         glZ3qJQBo6ZL413l9lIw8xjm1nScXVDe3SQiZSVwR5D96WvPp5tLQpfvVIWKFaSIuMW8
         W7F7eFQIcpjNWYwpmMJJqnEf/UfRR+AhlVCfrn8C5XoomvG86EJL6p0+shKZ4N8OzlnT
         fRBlTjaYggiqI3lihr2cWHfgziiRHaGnKBREZwsLlrGAk7yMi3qIdCVJfK3aHCvvKyH9
         u6JuFdrOTC3ra7AYhAofx5mo9fVEcoL8gvhhNGlTNJ2R/1f4BGNSG0V6iezipMSiXwri
         Go8w==
X-Forwarded-Encrypted: i=1; AJvYcCVlG0xpf9A3ymyW0BYXFCuNLPiO3bU607dzSounMqRePgLbN6PMaZ+FiMgWnP5DLGpcDY0fMOLo4EwJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzhi/cRdVoNNvxIetiLnPKuhoxrccFQ5dsrZuUpa9DpUZ5WTYjQ
	Psb6wWwWWBKwD66psbgtNVICUFIh0OBmLjGS7qr1Q5ll57QctL3bSdr9YIGbCqLx0jSiV+PyP4x
	m1evFclFmHAF78fwu0LPievG+WMaR3oeHS66Ibvlsf3j1MaOaKRfAR2dXRMDrCApz
X-Gm-Gg: AZuq6aIuweYqp8IA6D2ECEvPdbVtTjBncVgnVOztyQxd0ZWgkZrMMhLuXmkhqlGx12q
	TJcnCxw4okq6yIuMqUdtk1SRKlAeesEnGg9/5T+xBX/8W+be1QSOS6wC610asNjyxKRq5JBkZgt
	xasipxnWDkKuJj0IgQrzyRZhgYjilZrNfgCRpQnzwo+te/VIxOoWZcMpC7d9FYP5c+SAoDrwfym
	p8Jsen4LQkN28mI0L3E86hrMbAyNuwZ1zFWnINqy0nOFI9bY5WDNPVuuTjCExv7AwlwNr6YI+nj
	cs/v+GmocBXpMQDoh7R3R8cVf/pI9sofiKLYeCuB+FkJGUgcax/JikQyt5EEgaPfSMcYRsVO0NC
	exCbQv5UXwP96n01u+W4ES+R8OcSRA70oEsWbJm8+4pZsgK1WfUfgIe3VVPsTJGJT+lI=
X-Received: by 2002:a0c:f099:0:b0:894:9671:7aca with SMTP id 6a1803df08f44-894e9db651bmr141552416d6.0.1770108489060;
        Tue, 03 Feb 2026 00:48:09 -0800 (PST)
X-Received: by 2002:a0c:f099:0:b0:894:9671:7aca with SMTP id 6a1803df08f44-894e9db651bmr141552246d6.0.1770108488688;
        Tue, 03 Feb 2026 00:48:08 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b4691e5esm8840359a12.16.2026.02.03.00.48.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 00:48:08 -0800 (PST)
Message-ID: <02a0287f-6508-4c40-bc60-0766f33ee720@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 09:48:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add TC9563 PCIe switch nodes
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260203-industrial-mezzanine-pcie-v2-0-8579ed6bf931@oss.qualcomm.com>
 <62860c39-18cc-4db7-89ab-f85a39e67974@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <62860c39-18cc-4db7-89ab-f85a39e67974@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA2OCBTYWx0ZWRfX2i4k4gEYpSeD
 W66sdQ+MM6uODrpNK4k2i47wsi7ZXgqDv7G3l6NsK0iRb/CnJ/iM9aWHgb8OtIcImOlqj5IFFGe
 g0awbuAnVjE0WkktXGAWevr92yTpT5TNToSAthwZAKVYgYMxmEAUqG2aTDaitnCVQ6jw91plZ8i
 sQjnDO8qXldz5JFLJ2OpnC0Jj8lD/OELBDP71WAlab3Rhxf8jyp4e2GigR1IgLmWOHcxuU9E22X
 YUAF0hfhFTeEf2b9/FqgCqnfjBz4ECVJ9hC7Na+9N9Fp1Pi3rbCybuqPZMR58WDYDsFNEUcQsCo
 m1WwD1xKDnrCEM3IHgbhedS2DwF3NQtheVULPELoL9rMD+yX6TN71UzRyiNtTUozHaw3ME7q/pP
 sHPqjouyC75mNkEpZRGmz0KtjeWEi6BBGWGvuJZawqQzhCqJO853ndkvccFbPWVVrDNei75EXoO
 fdYPGqvV+bsxOCAsr2w==
X-Proofpoint-GUID: JsEX5VOADWjgW726TaNnTPQWd57Nf3UR
X-Authority-Analysis: v=2.4 cv=NOfYOk6g c=1 sm=1 tr=0 ts=6981b64a cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=7lhRlkTmqxIpPjGlIAAA:9 a=QEXdDO2ut3YA:10
 a=Qzt0FRFQUfIA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: JsEX5VOADWjgW726TaNnTPQWd57Nf3UR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_02,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262100-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 21A20D65BD
X-Rspamd-Action: no action

On 2/3/26 5:37 AM, Sushrut Shree Trivedi wrote:
> Hi,
> 
> Apologies for the error, this is v1 series.

Please make sure to send the next revision as v3, so that the tools
don't get confused by seeing two 'v2's

Konrad

