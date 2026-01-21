Return-Path: <devicetree+bounces-257850-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4OraDqqpcGnwYwAAu9opvQ
	(envelope-from <devicetree+bounces-257850-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:25:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EEF552B2
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:25:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 02FF68E6D62
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 10:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54089481FA4;
	Wed, 21 Jan 2026 10:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bo97j8qo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E4mydxHz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A8047DFB6
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 10:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768990125; cv=none; b=e59170iwpGWpl0LjZiiaUB3ppZKbsjefMe831/1J9CAwmQMlWCwJ6xWgJYt20/581tvFwDC/UK1sj7Su27UYLNpOOVqYuIl3EOHmA2St5z18J9wwF58jaeTxemWxqbt/NK/5iwPAYU3xg4m6kfWKS4/9ceXnKtQojD3/4rk/qqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768990125; c=relaxed/simple;
	bh=xHdnBIT5cVVjKBvOsaBlmEr3UWvl+I+sv5DFQkfJS4A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KE3X30dATqlf6uBWq8qT8tdIvG8bUWx1RNTwxhxUTNGK8nxkqZfjEhj/frJUsViNVa1TIaI+Iy8y685pT0ULf/mZ6OQ9NE4m6ieHtYEnMk8EWafan6BbztBa5qSMCETT7atuPpCLLt5A8gcFpVuTROob25DcatNojKpvdLsdvgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bo97j8qo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E4mydxHz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L8YY4n2065687
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 10:08:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R63zeNS1A4Z+sO68oWo8FrXbiTVs7VdMbMNjJB9iN1E=; b=bo97j8qoV8Eu4WJp
	LZfvBa2BNjPKS+Pi6Q6EzAAQs4uwvkIGPiaoKgyHQS6DRl2i/twapzEl0GULjGmr
	rmJaBFzgO/39uR502NWyiuN2kbuhxwQzdDqxKe1pKD9aNrtTjESXse9rgTuJkjV9
	qJZvEin5jY7rjKEVBi7H3FGe+cqyO3M6Ig5O7h9WpTxs/1BNNDm7Bm5Ss9r27JFB
	8RPUlqHPwCkPnuDJ5b5V4P7HyOPF3kldAvCrB4H6+iC1k3lTEEba93os2152WqPV
	OgiDenfeZznRRfeUFqrNazdn3160OPez5NggiSEG6EO8Y8IUN8quUW1RasM/uTcQ
	il9OWw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btudp0hkh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 10:08:42 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8887c0d3074so169386426d6.2
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 02:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768990122; x=1769594922; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R63zeNS1A4Z+sO68oWo8FrXbiTVs7VdMbMNjJB9iN1E=;
        b=E4mydxHzdBPWKi3xvIHZ2T/kBrjmWImpUnE/4XAGyBouCMbJRDPWF9SJC3G98zUtMs
         9x4ATWQWHc5P+Eu5mxwPEVUhdutLuJyCNyafA+NR5AkpIRtRfu1E+xrvTwdlwbcdt5q1
         6tKCEqTe9T6pmmL5m0hSDahlwiOHSbfpm8pFz7Zyq3zsW6VYYRvuP1YONI8MGYGg9lyT
         x2zT8fDVWbb7jMrMllFVLODDzpCcxjgdN0kqOIbJCQtUWckSmxanVP8AZkd46+XSoD3O
         Yb/Iccg56qrn37llyVeBgQ6H/2Ji4IxG/eUOxnbOWAJT/ZBEO9087GT5de1Nx5qsP5av
         YbiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768990122; x=1769594922;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R63zeNS1A4Z+sO68oWo8FrXbiTVs7VdMbMNjJB9iN1E=;
        b=heWGwFxLk4Ej0odzyI1xJ3KnZMoXsOfj1wPCcWMhaj7tfFVqcwewMbw4+zOwCIwhhS
         V/gL7TkmFnuj5ckOlwu+U0dyNOC/RCq8srVLsDg5t09sF0ibB2v0Bhhu6CRnwf4JapAT
         SF4hmiQU3MeXMbjs+Go/dBVealiCtTwk1tjgcN6w4jdieERWf2JAPA5297oktphkaiat
         vAd4x4jYN3ynpDbnVX6zahy67JiWZxDYES4lq4pHIW1L6oVC3qDvl8ZCkmjtn1kH5YTD
         /6YHyf/O3vfTP7nk7bzn4W8FH8Hj6t1VH6948rJejaJUO/36+y/M3L9FXxuaRVelorkW
         9TOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSwbyzIfbnRJ8JsT+lDUlCnR1GPt7yeDAWju59572nkcfNllC8b8ux+QVfYDhrM/tWXEmjaMuIuigW@vger.kernel.org
X-Gm-Message-State: AOJu0YyKStfN6WQEdrwDSIN9P3L0gHSRAhE3dhzp25PSBagkwZ8EKuM4
	s9mWfvqrgaQGNn+aBq5zS6FRyGWXZY2cI3KMQ73iLUew2MkxwazFOOelV3rG6dlXjgstYBn5LIG
	BepVg7IdvMLE13tVqyKe1m9PVMDwWlM+i2LjdJeeVPH24i1l3WMjMWLA6GfTex6+o
X-Gm-Gg: AZuq6aIuh1gVZ/aVmXNcmZ7IbFLV0g+NZ9OWR0aB291/Rx1XaoErm7jAWnghZ2C++Kf
	op/SfuM3sTCD2Apov+KLw5lEKnLwCIwKlS44ARdmuJf81g1J2sRMy72KwobgvJFR3OlrBEeQA4K
	OHKsJvPUXCu3hWExQm8YOnf3hD2qpzNxaF+A3ZZoA8fah4opMGHJR3jXuxfxO1Nfs3nexhhx+97
	hKqlqXiwR6IB6qHjGTpbHDuPAe7so7DwFqu+xdoHMxd8UFtOk8jGMqUubi3QsmHQWLrEGHwPdRR
	vJYU/kPkSEBg+0fdu7RS4ffyZ3JbCb5IWyxfzXlrd3hS1e8XeyUTDDB1djzm3V375L/97a1rTqN
	LRBq/8r1WC/M+yNERDV3gW1sutRQ+36quBfrP9IzEvClpntb9ngH1IBk57QxIjlMGpeWZks0z
X-Received: by 2002:a05:6214:230d:b0:87c:1d9a:d0c8 with SMTP id 6a1803df08f44-8946388844bmr62930176d6.27.1768990121782;
        Wed, 21 Jan 2026 02:08:41 -0800 (PST)
X-Received: by 2002:a05:6214:230d:b0:87c:1d9a:d0c8 with SMTP id 6a1803df08f44-8946388844bmr62929796d6.27.1768990121368;
        Wed, 21 Jan 2026 02:08:41 -0800 (PST)
Received: from [10.111.169.82] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1d9ee19sm103910141cf.14.2026.01.21.02.08.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 02:08:40 -0800 (PST)
Message-ID: <d15ec6f6-7978-4e6c-a752-ffa8a44a9e13@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 18:08:31 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Add CCI and imx577 sensor support for Talos evk
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux-i2c@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260115-sm6150_evk-v3-0-81526dd15543@oss.qualcomm.com>
 <aXCiEyyu7mcx0YhK@zenone.zhora.eu>
Content-Language: en-US
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <aXCiEyyu7mcx0YhK@zenone.zhora.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: bhCc3AJUXl1PqVtCEKtgZxKpIFCWIpjS
X-Authority-Analysis: v=2.4 cv=DJyCIiNb c=1 sm=1 tr=0 ts=6970a5aa cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=_YHlsWu5nELmUMumn10A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA4NCBTYWx0ZWRfX8umVoNrHOK0C
 ajyVTH6emPZWccmqwscVQr6u2MUsYuBAdRgsbR6xc6+mmtI2WcsrPwH+qbsfiRHSv+nIgn2bSV4
 i1U1vpv4bFej40SnaXWWprtAlCnXhVW8lli5qbLrt+MxmcLccR1yczpkZ3ib4MAnYRVskcPnlEm
 29r8wBtMrd8K0eY5l19+nWA2TfhllKV43LxzSExlksb3VWOMq+JqMw2Aa+OE9vYQiMxO0JJuTCv
 +gJq4sffI3CR+AWvgVFv0Cwnx1xyDknojZRin5C5Myic+/RX4AmEK6buTv+WAzS9/x2hKDaAkhq
 MBBcjNYxj3qe0QV+ZJjs73YZoP/ULu+axw0dKat9S4MKWK2KiqdhD31iL6p6MDso815pdZ4i2RG
 69DtnootsO0t4Sw+cmWtBHTJsT6yEZSJ0+N1K766b536ZRwfjRC7b2XLhyRS3Gnf/vHT15iqqt5
 p0h4MBiT0vumi21NlHQ==
X-Proofpoint-GUID: bhCc3AJUXl1PqVtCEKtgZxKpIFCWIpjS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601210084
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,gmail.com,linaro.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-257850-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenmeng.liu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 98EEF552B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Andi,

On 1/21/2026 5:54 PM, Andi Shyti wrote:
> Hi Wenmeng,
> 
>> Wenmeng Liu (5):
>>        arm64: dts: qcom: talos: Add camss node
>>        dt-bindings: i2c: qcom-cci: Document sm6150 compatible
> 
> I assume you are still going to address Krzysztof's concerns here
> before merging the whole thing, right?

yes,I will push next version to solve this problem.

Thanks.
Wenmeng

