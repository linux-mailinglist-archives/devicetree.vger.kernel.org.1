Return-Path: <devicetree+bounces-277425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMw1IqruumkBdQIAu9opvQ
	(envelope-from <devicetree+bounces-277425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:27:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6CD2C1415
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:27:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A4B43269A5B
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 18:10:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D13113BBA01;
	Wed, 18 Mar 2026 18:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZBFP3vc6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AInr9AS6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1CF03B8BA7
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 18:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773857439; cv=none; b=dqRw0nt2GW9ShoWI+M7yh6xpS5R7igL2B5Bm/aw9QOWuU7+HJaqDqBddZXFAoWnMnG7CzSO8urAxWmcc5cLQHpb6wrX3HkWNxynEkybxiTVqxSaTneA5iPv0NwnvFjKtcIzROVoYz4r2cHOufXjdnXq43TAVDS9LZj/BagNXZgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773857439; c=relaxed/simple;
	bh=vn+oWzRBR71bCUcOpe5Nu5JI0f76Lr2gKOyqbevVBwk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YPx9alXbsgBwZDAmZrzxNG27a+WwGPDR9Cwaj/duRQOIMYHzHqEhdFCvm0ar57V7WFrx3RgjmlhuFHyco8jX8YbR1j364GCHGECKvFTotS0t3m6SDTaTs6uInv7yVi4FqHUuOqWydzuHXmVQKXDC2GrxMyfLfeua9MyebttIe6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZBFP3vc6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AInr9AS6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IFgas31788280
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 18:10:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DjCYLt7leHZbX1HbcJ180OFpa3N1f/youpCd77UGEnY=; b=ZBFP3vc6PqenvtzP
	pex8qj43KpN66046/d6p3gchVhLQeht/ARYcA6OAZpvQr60nVI/SG7WOg4dvs94t
	xmgHsulG4g3+1mUUP3B+/7wqtm7VFWOrBbRXm5eH2d55uoQYCdBc7UDqaSDneYHK
	Ef3jopkP53G/MPA6w+cn1U/4ZSiyjSkuFUF9GQ3f5ikuCxOamMosgtnYoHAbCjwM
	z8UYydF6sWjOfPqOiNnFcb7vbeRrbiWlrD9gSeJCTR3CJVljXKSqIEVptA0iCMD1
	20E9lM7KhQM+BJSpLyI/i8TbKusQ6/lxDodjxsfYrv1xACMfckba2tsGaCm6bFuV
	lWfVFg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cykqeuje5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 18:10:37 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5091f12ed3bso3204831cf.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773857437; x=1774462237; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=DjCYLt7leHZbX1HbcJ180OFpa3N1f/youpCd77UGEnY=;
        b=AInr9AS6qv81997pkt04OFpzEc62uUGKNIwYDZY6ZmC2GGA6yca5loTOKpCzyjnv7a
         TfkVPMLScOJ87v40aof6j5Fgo4KYj51M3/40RKAh94wmOIk1Zbkg0x9X8acrfg2gk7nS
         fNaxcpSfzaf7YjoAa7pGtTzLH11Sqs2WC8azf5OvKIB+C40j6NGi0DpoQJ4ra+CluEQP
         5YcuGvtKgNIbplRWcDgh+ZwI9+WNEVmE9v7cVsAtUPxQe9/ZPd98EP9pIDA62BtInk4n
         LVcIR6VvwCFXTeWup9ny1n0EyYA1W9oYp+iQSryIqmSgRbtLgshZt4IM0Qfhur1ALbVy
         rGzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773857437; x=1774462237;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DjCYLt7leHZbX1HbcJ180OFpa3N1f/youpCd77UGEnY=;
        b=DvmzDf4ll7Fb5dNT3BxgNMo8sXLBp3gmYUIWjloljpE9En4RoFw9PqBbOMUDJgRwvC
         pQdi0497QN2VHx7HHJVOc//xVWzT7SYE1xLYe02t+pCCOiPMItrn2VEVZhdfjkV8yVkZ
         dCouAfAMPFkAg2WfW7kU/9eDT0PAmaYmXtn2FG3cho2KkQamR8P7DJ8cp73RcRj7a1ka
         JvIoJglpjk5LlTzrPjWvZ8wyOrqG/rQo/aM7PA2hk8sOxG4KCq43L3coA4weB5AnE3rE
         3uRVFQDuuZfh3zxcjCBxe2IG89JESNbWsDGQ/0vrvbd9zO/xXH8cLsjEo9a7qyHPwjbY
         CWNg==
X-Forwarded-Encrypted: i=1; AJvYcCXAtKl0qa4YDv2F6wv4zCqxIBPmaLpry1i7UJ8iyNfZfBlaLhfMjRWzEp94P46SFr8YslKIjl2eUTjZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzmKWt4N4OZf7Y01ExSg/588hFk/vSkQWJce0WciyBP60xaX8ld
	QpbNf/bFEv6QpILACDDwJXHv375tqDEcRdDj8tT35CqJa0ini31uGY9cB6pw8A0q1hSeOCkokrY
	3Vq0XpyJPDMjSVlNTr+LYZKqcJDkA0sd4jdGck2LAn4nylSuJ6V2fE3+Hki2/Phjx
X-Gm-Gg: ATEYQzwc5g+1WxYWI5WKKuIa0uPQou4LQDU5TmPTLVog2mc3NA0oMfGvGHZr80L9L32
	8KgKS3v9zHpNbw0iq1dRMN8x+LJrpJFc2F2Mx3ZceTUV8pHW7J8AYDTGKDIlkk9tMuPFevwc4Qz
	h00IUmanj740zU4oap9PbIsyuNLKIToV34HM0/MwwGhVWcDt8Md8BaDJHzxvJPKVuFNlRD2NICo
	OGCxEjyuuD55+6yJeL2/7OXsx5g4og+/7EHWjbHOaU2tGv0gF1nedOiTuFaCkXnze6TR/NhPVGY
	eTnJ9c4aB5BsqR+WBhmCk7PO1iU9IHZjwc7w52RGvh7PZ/OONCSpDej1JS59qV3S0f0mlH9diuc
	LpNQgc0jC1LNMS+Yocj1LV1GMpFdm5ZE5R+G1gDRL0BaKuF+A
X-Received: by 2002:a05:622a:245:b0:509:58d1:71fc with SMTP id d75a77b69052e-50b148e28ddmr53738571cf.69.1773857436783;
        Wed, 18 Mar 2026 11:10:36 -0700 (PDT)
X-Received: by 2002:a05:622a:245:b0:509:58d1:71fc with SMTP id d75a77b69052e-50b148e28ddmr53737931cf.69.1773857436192;
        Wed, 18 Mar 2026 11:10:36 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8c351f8sm6931945e9.6.2026.03.18.11.10.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 11:10:35 -0700 (PDT)
Message-ID: <1e46f412-aedf-488a-993c-3470ad50aa92@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 19:10:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: qcom,eliza-dispcc: Add Eliza
 SoC display CC
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260318-clk-qcom-dispcc-eliza-v2-0-8c05581168d1@oss.qualcomm.com>
 <20260318-clk-qcom-dispcc-eliza-v2-1-8c05581168d1@oss.qualcomm.com>
 <cd63e6e4-e8c5-4c26-b929-cf47e9b58250@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <cd63e6e4-e8c5-4c26-b929-cf47e9b58250@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDE1NSBTYWx0ZWRfX73fkvw3tyG9q
 zveSN2Xhr7mf0B4OYRBfbEIftMqew2w7ZQmuL6X44butsi5mVUnlzsjK1dB22YSeK7wb2DLhSd+
 +GapLJ5TVvzq2Ld1Lz04wTHJFYHiWmelQ/rRu8mJvXEjB0Qdu/j2TlOC26gVlMh9peqvbnouD1N
 2fE5Z68uVv+Ufk89oOqYCdSOlgfwZ4cTQ6P+LVjk4ysYNGkAK5UxxY7mtgme19dqTrS0wRAPnrj
 xWRJ7nN1o4D4BY1eURF7ra+TDH08klwZHlxQyyjDxs39DJiNNAN1meuFIh0LUf/F7CXeKgsxv2H
 wrf6ufSREgmxUKl/wuCI09/dQgf8LDDKQRzZe+DdRB+0lO8EOLV1XYWHwf8lakr5YIDdrpdrvGz
 dozca9lIES8ot9yqke3K6+lD2QVdc3ge9s4IrIQlfroG2vpDJlC4WJAWdB0gNeQVlAvvBMk+1Zu
 C4Km9Vs/UBljaD+zG6w==
X-Authority-Analysis: v=2.4 cv=Cd4FJbrl c=1 sm=1 tr=0 ts=69baea9e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=TTr5Q89pcBQJHB5qYo0A:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: o3xhtznjSflR9m8F2PjdNmHNBX7PJgZS
X-Proofpoint-GUID: o3xhtznjSflR9m8F2PjdNmHNBX7PJgZS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180155
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277425-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2C6CD2C1415
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 18/03/2026 18:09, Taniya Das wrote:
> 
> 
> On 3/18/2026 4:09 PM, Krzysztof Kozlowski wrote:
>> +  power-domains:
>> +    items:
>> +      - description: MMCX power domain
>> +
>> +  required-opps:
>> +    items:
>> +      - description: MMCX performance point
>> +
> 
> Eliza, does not have MMCX rail, it is all connected to CX.
> 

I will just drop the comments then, it's pointless to list single entry
regardless which domain it is and it only stalls patch acceptance.

Best regards,
Krzysztof

