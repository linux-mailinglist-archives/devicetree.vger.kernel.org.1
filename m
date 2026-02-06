Return-Path: <devicetree+bounces-263273-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +IHhIY6vhWkRFAQAu9opvQ
	(envelope-from <devicetree+bounces-263273-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:08:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A747FBD34
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:08:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7825B3003D17
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 09:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 514B0355800;
	Fri,  6 Feb 2026 09:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VQAvBaya";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bEofF3Xq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F150355023
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 09:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770368908; cv=none; b=ed/kgqLEuPuv+LbNjBC63V6q2Jf1j0qfWOd7DiQecYkHl5bb2B0Ixs6vlt6iI73p70S9SxStdwCGcjfKRajV9B6LznjddSVgZOQ43XB+uZYCJ8OdT5QFQqEqqsfA8jXTNQPjwkvnu6kYUg2xWYZdrc5yD80TLthm/41f4B6db7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770368908; c=relaxed/simple;
	bh=zBCqNZ+AuqWehphRfYE6MhxD6r8Q/yJ3qqNjiZFTg4U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=blhZDdLKMismvAXGvM7X/8gdMbV6wYLop7bmf7kwHH+3t8CZM+/Vvp36J3lLmpgBlCCpInV6dLIY5a0wvAsiJ8jh0rBp5osR8KbGvK5BuLu1BdpTL8b7XXive+Z7x5aJAVvT7CxRFeJ/Ob7YEw34O0kx1aSGLMCDSomvKcK+Ztc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VQAvBaya; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bEofF3Xq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6167bXPJ4041963
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 09:08:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZM0Bi7IxsuLghixrE73pIpbS66cYLzO9BRfLMvmPPAs=; b=VQAvBayalromAyok
	zTbafR775IsYzl5HQgkZm5QLIhi7VO5ZwEBHU4rkxSS1dgI3lxesMDBy65JA/J1s
	w56C48dCuUMB6sd0406OWmaVxLYTdRd6L4KHwgr8rKULkHXMPoPzJ/YN3lnr3IrO
	HywnY+wsnu0kLmjOnFInUJVz2psq9Kgz+/Zr/629MvCMTmnkIO8SSK93rcW6H5s0
	dHyK5BjRCZcSyloKhnOKKpmJYcH42UKz28EdCuJPk/Qkzv9MS+ykfPCVTkXZL1Z+
	DGhyMupBntBlFf2ZWpXEwBhQ7RQVm6iGp8QB4kV0XfddKU5HCRLB+FuBpHxhJ6P8
	AfdbiQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c2w09u1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:08:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6de73fab8so67208185a.3
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 01:08:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770368906; x=1770973706; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZM0Bi7IxsuLghixrE73pIpbS66cYLzO9BRfLMvmPPAs=;
        b=bEofF3XqYyIlin2QRh4up5envsbWAeL1cF+WM0bb1lLuizRjTcbN3HlNkt2UnF7nMB
         j5WkmwicV4e04pI9IleqxZ/V/aZX3Z2qTFZD3/OJdePEWOGyTHigQy4xmGbOyEiiKHY+
         lCV98N1bvKL0dPKHP7jVeeifk9ytQzzoBj3B8t2o/pe6/1bxCWONL7Unq5ELD4+FJLeU
         EFju36VTQ3n63IvtxvDPWbvWheTStrXEDbDEpvznUo5L/TdCJfEdUvvNQunUMifC+7nP
         iFPvwqQKNdxgVTAiyejHX03OgKULPxarlNs48IXM6PsMBBAusy9rdYxKT44Nz/gCJm5z
         B3wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770368906; x=1770973706;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZM0Bi7IxsuLghixrE73pIpbS66cYLzO9BRfLMvmPPAs=;
        b=S6rwX59n4dt+sfqNq6aLek/XywS4z/T6uYlwzuB6As8oKo0P+jbX/Of7SzP/2PTQkk
         RgdcPsGphGib+9E2HGCOwI/0aYsjdtpqEphX5CRjjmtqVQNBkpcKL6p6539EZgjrNrIp
         EveRerAC7p2rEFlISnatSClaHWykAokHgZHmWgWZQ2TmD+4mwNIeHu9dV58DSxN/k0Cy
         OJBt330pYsjMsscERmCEyp1iFKfMCRYNFNAHPG4Mytsf8f4MGtQkQ+bMnXOazg5X9GQb
         +fcNSAhp7rIV7tJvsqy9BOQ880txQrhHb8G7UnZsGo7JODu9pxQK4t481qp+CZFDGUoT
         8Xgg==
X-Forwarded-Encrypted: i=1; AJvYcCUTXWl5FAJTzlg0t9pJE29cLBxGrPeaWksf91KrrWVlEekYguukC75Y1Uceawf07ICWKh2izXW1DKSe@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+SpC7L/uVpFexGCUk6spD665A2K++0Z2Pq/A2uHrdeF5WmK/H
	ANIjNWDfZW5izY3XozNdscvTP4CZMPf1CLp09+kesKhSuG6pZbZMVG8Vek1mnubGoN6QtbI19Ot
	q/PiIauRU7rkmpmltuAXSuddsbhYbgBhTSqANe2qN7NoYaJi3rqFb0y8qH1jn9xSI
X-Gm-Gg: AZuq6aKi841x+byDkVdFeDFb9RvIDh+9Gm5I5s37qorlfRbz0n+b9gCcYCcj0xaoyYM
	c1naMT8HNRG3suiNqSv8oMfBFx79P7mMfZHy0vzkFiUEJ1/g/DsxH8zNNq3MEFRf0NyVcoqJHfT
	tfgrbAfOLguIPSPoFKse9rsdLq1hmILvX96eJrx0HgYHMhWjz9Ql54tguhJ1FhKM93Kp9SBO7Iw
	0m5xG6viPqHnnDBIGvIIhyyOuiuyfVqorQmXdKesSPa7rse0uVzEnFC8ZkUieA9VGNt1jcLdJlq
	/Fer2EhCMRJQF+R6fdZXI5LrFemh8qFoxM307Nn7t1o1AMymsY1f4653kDbP++wmF6N+QlUS0CE
	hAVB3EcuPm6MZys9jB9Kh1BIZJMekFmrDWCdDxHn7O5bCgeJxKKxMOgVubYRZhZnMiVLO518J/y
	Cy2yY=
X-Received: by 2002:a05:620a:3185:b0:8c9:eee0:dba6 with SMTP id af79cd13be357-8caf0e3369dmr187755685a.7.1770368906404;
        Fri, 06 Feb 2026 01:08:26 -0800 (PST)
X-Received: by 2002:a05:620a:3185:b0:8c9:eee0:dba6 with SMTP id af79cd13be357-8caf0e3369dmr187753585a.7.1770368906024;
        Fri, 06 Feb 2026 01:08:26 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edacb18d0sm65020466b.40.2026.02.06.01.08.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 01:08:25 -0800 (PST)
Message-ID: <ae2802d8-2eb4-4dcf-8212-d8f2a41a7185@oss.qualcomm.com>
Date: Fri, 6 Feb 2026 10:08:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: hwmon: Add qcom,bcl-hwmon yaml bindings
To: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, amit.kucheria@oss.qualcomm.com,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: linux-hwmon@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260206-qcom-bcl-hwmon-v1-0-7b426f0b77a1@oss.qualcomm.com>
 <20260206-qcom-bcl-hwmon-v1-1-7b426f0b77a1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260206-qcom-bcl-hwmon-v1-1-7b426f0b77a1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA2MCBTYWx0ZWRfX7admCrEqfLiQ
 vm9iEPsYgh9HZm2iueGg0fCfeyZht/cRuPCJ6deKbxRBvo+NW17dm6i58f2XC5xUrv9AecWBNJb
 xUP1U0Hd315Vv8SfIF5n8RvN+6oDgjeYMRshu/CWG76Pc7HystpbnUOXRB9NO3V7l7AmD66fDmQ
 jKpdtte4BpcGakBViJarKonrkBitgOqefW/ggK6pShvfph13fXnbeQHI9/9LwqNR1wED2/UcRoq
 AYqzFzmEgRi9N93U4QRaFT1igjnn6PThqTJhruRdLzLkXdZtsMReQ9pkH6zO8JGc6Pr9Gu8/Qu4
 ECp5XC5vBfbfayHv1R+mHLzo8FB7VKiFjWvD1wDu4h4ch0tNcwk02wLSdD/jVipubjv0VKWe2VZ
 GQuneFlObIkgk1ZWSmuV6XYkCTxXdZNw/TzhNFpKSdBfiGkXA4J3r/DoWptboBAJz8L+gOXZHzF
 QPaFJwO7TYxVGTXDCCQ==
X-Authority-Analysis: v=2.4 cv=Wtom8Nfv c=1 sm=1 tr=0 ts=6985af8b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=JYVwdDW7bhRS7TmuI-YA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: HOnpxSeKvuszDFvufeCOvN9bGv1o22Rz
X-Proofpoint-ORIG-GUID: HOnpxSeKvuszDFvufeCOvN9bGv1o22Rz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_02,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060060
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263273-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2A747FBD34
X-Rspamd-Action: no action

On 2/5/26 10:14 PM, Manaf Meethalavalappu Pallikunhi wrote:
> Add devicetree binding documentation for Qualcomm PMIC Battery Current
> Limiting (BCL) hardware monitor. The BCL hardware provides monitoring
> and alarm functionality for battery overcurrent and battery/system
> under voltage conditions.
> 
> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> ---

[...]

> +properties:
> +  compatible:
> +    oneOf:
> +      - description: v1 based BCL
> +        items:
> +          - enum:
> +              - qcom,pm7250b-bcl
> +              - qcom,pm8250b-bcl
> +          - const: qcom,bcl-v1

I see that e.g. PMI8998 has a BCL block, would that also be 'v1',
or something else?

Konrad

