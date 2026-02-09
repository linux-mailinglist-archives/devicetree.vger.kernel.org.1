Return-Path: <devicetree+bounces-263901-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PKWJzykiWlU/wQAu9opvQ
	(envelope-from <devicetree+bounces-263901-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:09:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 496E510D5DD
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:09:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9077D3025910
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 09:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7500A32C306;
	Mon,  9 Feb 2026 09:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iqF+90O7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C7JifUiC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C36A32BF21
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 09:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770628111; cv=none; b=Pj3ZHohR0gA63dvo/UmegzewlyjxeR2H5CyqpAfZgs09OQg4KON3QtK9NFEij131kKIAdQ6oaoXci5Ir+lf+9boyKLnUARLsU/6bB2SsrY9ggtbBV09xoqsJF9EEvwxxGdA1K+VxQAYN5rNFTo3AVr4QF9q2P2RvRg4lAxQUtjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770628111; c=relaxed/simple;
	bh=4Rhsh6LojiFyg8Rau11C5F7DIsAM6PH4ccfEBuvwkwQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NOZtMfiqHxH6zCbAbjHjJttRlI9uV+pY4vU/BSDclMZ8Wp7mxFZfd+faM/m6Ea67u4/O5JGJhBCcDOnmjxM6dg20BUFkKthY5vPC5X/WvfPyF6eFujdR+D/MRhxuC93g9YvAicvzqMEVOYWB+wI0P7f1+wE3yYlBGf89Et5xx9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iqF+90O7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C7JifUiC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6198D9Hv3111687
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 09:08:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hk8fYkuUoHknrIu/NgYRvkc9CW3n5Rh9qvEE9VShHE0=; b=iqF+90O7QbUy/aWu
	ufwNOnjZZGGcuK6xVUzx8MM/bza76/JE1QmNGWKvHGDNgdRT5kYv03aip0TwfWHH
	wDNn5pjbExhFe+aV94aomKVB6wquMllHmgwnr3bDux2y/69C3C3j4cibx47+M3L+
	drTw+rGXrumldEj11fSgKoFc//KkDNfFFKZWuL7aG8p2ZdK+AgntrMJzCFavUlpU
	wY3ILdYDbBZnf+48GlVe+t5Pcj14nFGLIV3cG/EwKdLgFZQQpOhr68EXdteOEVad
	XnALN+q5kHqVSxa9KI/Vz3dsU1v/yAKu4M7rPGpgyshylXqvzUI93WI31EXKVu4Z
	6tNitA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c6g65aubk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 09:08:30 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c533f07450so132518085a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 01:08:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770628109; x=1771232909; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hk8fYkuUoHknrIu/NgYRvkc9CW3n5Rh9qvEE9VShHE0=;
        b=C7JifUiCwCJ+SeBKDPixPVO05RO18ZdVkRwadvO/5wyDQdcwKhFn//V8/SZLv2P+Nt
         TIb87Yr1JcAupYc3OC4mZYhCc/xO8ZbwZkVW8XtNMEB/hlNR/oo8TLRRc9EPTtpkJCfm
         MLV0JA7l5+Jv5iGrGe2UiCZLFLizo3cpqMBMnGuMBjnC50mnojNdP04d1OLPWUiYgCj4
         vBHYHm3PdBOqwjNPFEYKtJTrnOoRJMBZjt8XU7erBTaKwc/74tzCnQZ6DN1/gyw9yfk+
         v7Coaea4batkKUAhgatoqxmwUCmNNQbIlOTDJxOyA5Ecd3+3tznGj37PGObiz+h1BgCL
         x4mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770628109; x=1771232909;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hk8fYkuUoHknrIu/NgYRvkc9CW3n5Rh9qvEE9VShHE0=;
        b=qDNIRmdRfPg2IVWsT+pFv79Ft+upoI/ilr+4njOuIFkxH4slMitqpyLk1rxGmmY21k
         lNYvpgW/p58uGVsKOMmMeprfzOP34HVocFAg0Fjxb/8k0taA3JM/RyORhs52px0KGj3V
         y+p7gpEUBhhmj6ah9U5ClaegKgTTJYNGKKpco0Zu0mwvw/0XGpRz6L0O988ez7JpiRPZ
         xsLn7laHzxp/GaYPACFr2woYpQdeRaEZAvIvHlvGlL7h6uBfwI7i0kzAWn8CJs3jjtfE
         T2EFPPpYFrhlqR4fSJuv+IYvWjmkLJswTwd5Ysgp7z5ES/TpSoHx4q9aHdt7uUS8Gj6S
         XDYw==
X-Forwarded-Encrypted: i=1; AJvYcCWct8IlXWL4ABcVMjbXcToMjMUOCILZuxQzF9JJ6bti1tLf4zRqzCiduso1xi15BncKE3yvk1jDAJRd@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9Yi6E401Vvv/LNnQvQl1TI1r8Kr7lve/evVljCM9JgDeIvBlL
	hYxMYIvfqy8Dhm2wWxd1zgrQnwJlj4SrWIIZoBzKiydQBV7rBSqY6DhAK80RBTv454jBGvqSfNQ
	vaSunXEtE/xCqFQSJDOQHmGZnr+m91og0E6X7+YqCgAqzhcSZ9ZqfbO99ALiEEdXKXuKEdhZV
X-Gm-Gg: AZuq6aKIZR8YiWOHVZoJejvdwkJtTQLd/FpHrzBjvL/G3DqsS+wRxDXYUsV8bwB9kT+
	XwE5hReBndPMIwunjPZpdGJ8Qod4nTA72I9rA9sXc7jXoXrEWFtTgYRk1QOAxphD4rhZdzbVhXD
	8eToQUU/6PXzkFN4ey1r4tV5UrtD+tLf9Uz9ADP1p6tnudtc6Hlaek9CkqPBuAh3JRgzjItAoGJ
	DKw2AdQ64SW3r/kmxYXxN7YL6bat7P/Xxf2BoeqfAzG+HD9ensFIhhsbva9GjFUEpO7Ne1oTqOo
	8YhMz/ejE3YOww5Fe95u3ZJxFkfnO2zpqi2f7TepWzUr+5fJ7qlMUkAMr6H6FM2TgMU1LIX9e/g
	IMssc2Azdh78PYlw+q8wQvLYrf5zNpt3FyvjBv6+joCN083egjf2SG45DiWjj+S+2Gl0=
X-Received: by 2002:a05:620a:3f97:b0:8a3:d644:6930 with SMTP id af79cd13be357-8caefbca249mr1139500985a.5.1770628109388;
        Mon, 09 Feb 2026 01:08:29 -0800 (PST)
X-Received: by 2002:a05:620a:3f97:b0:8a3:d644:6930 with SMTP id af79cd13be357-8caefbca249mr1139499185a.5.1770628108989;
        Mon, 09 Feb 2026 01:08:28 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edacb387esm364095966b.37.2026.02.09.01.08.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 01:08:28 -0800 (PST)
Message-ID: <0fab4382-3e0e-4c60-a989-232c86d9f599@oss.qualcomm.com>
Date: Mon, 9 Feb 2026 10:08:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: qcs6490: Add Thundercomm AI Mini
 PC G1 IoT
To: Roger Shimizu <rosh@debian.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260207-next-20260130_rosh-v2-0-548bbe0c7742@debian.org>
 <20260207-next-20260130_rosh-v2-3-548bbe0c7742@debian.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260207-next-20260130_rosh-v2-3-548bbe0c7742@debian.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GqNPO01C c=1 sm=1 tr=0 ts=6989a40e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=xNf9USuDAAAA:8 a=EUspDBNiAAAA:8 a=Cbt6pUXtrrIW9gUSVFIA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: 6i5t37mOeUmBrjQhWln3uf0wnrHWCuiX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA3NSBTYWx0ZWRfX92rKQOaFTTcz
 HL9GdZGskJmEaHinXReYOce+24r2vMqJvUA9bRoAIPNAlPNaBtx/kmjX4Z9oHRJSa6o6mpUqiv5
 xvKOZMyzUy90K7OLOqqxVysgR9ivpLINV3ikIzuvkox+NDn4wz2DO480D+1WKF3CE2ffOF20i0g
 RNdz4grxcg+gvnOiRgSoTXbOOegbU2wJuItTkgYOprljvhZn1jD9O1jecEDv1/wk0dP6IXqRJy8
 w4D+IVwYqnH9y6NcG4K3DujqXzu1gmBoQAQlTfoyvKnK7v4Gdw/jiX4QYcMxfq/wzz9Ni9uqTTi
 IbVZiMLwpMqXbwpwd3Ox4s+ONovNbxfHIXKiEY8GZ+wirsGzEf4Z30GhgV86aWEdq83pOki1IvK
 BCAzIikU5JVK5KEvqOcw69kbAU9YYUhEBgOHBZaeZ8+XaXYfRjTZGImX61rGADA7TnDxqlFWcv3
 NT0rNjuboayP6dEqZpQ==
X-Proofpoint-GUID: 6i5t37mOeUmBrjQhWln3uf0wnrHWCuiX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 adultscore=0 spamscore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090075
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263901-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 496E510D5DD
X-Rspamd-Action: no action

On 2/7/26 11:45 AM, Roger Shimizu wrote:
> Thundercomm AI MiniPC G1 IoT is single board computer with
> AI capability based on Qualcomm QCS6490 platform.
> 
> This device tree is confirmed to work as below:
> - GPU
> - HDMI output port
> - PCIe M.2 port (for external Wi-Fi or 5G connectivity)
> - UART / serial console port
> - UFS
> - USB Type-C port, with Display Port
> 
> Signed-off-by: Roger Shimizu <rosh@debian.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

