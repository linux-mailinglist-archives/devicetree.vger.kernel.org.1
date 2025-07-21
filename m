Return-Path: <devicetree+bounces-198338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEF5B0C6E6
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 16:51:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2009B3A235C
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 14:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05DBE288C0C;
	Mon, 21 Jul 2025 14:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="InnDm18Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98AEA18DB2A
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 14:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753109501; cv=none; b=VrkDKfSZMnmglT2/20vd2Brnil00NL+vsC/SGwS5rruGSRlZno5S6k26KVVHt0dfq99ysozQfJTjkqVIN9K6A+KfwigaEhqwK4jiqdpLN4nMzW10PQfIvNzz/nTMUuzGZvMkxt7fmQWLUvDa0UiWmfXNcxvPqW12OQyXZi1bH9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753109501; c=relaxed/simple;
	bh=2pvWMH07iqrBXEk2OWRv81HLnHYw7YmDApBoBqzjtKc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZbRn34kw+CfgLhpaiQj1qo4jBNxuzGwSV7IuomVZjpzpwshq9wbnP1TQe/9+I0AbI4ud+Tdtw9J2SnDUG1UvHxRzTIZAC5B7IuqRy6+zQzGmlCXvHdLwmYzQR8JSa+W1LjhaJ33KuklTJz3eE2XJnD7J3yND2EhoN/aUDM3CDaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=InnDm18Q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LEF2fs029374
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 14:51:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nMgkULWhFnNfv8reCcAzyxz1uD+6zucjoyW4qz2tQPU=; b=InnDm18QKyUuvqHl
	Jdk1ho/XBnLd4JMnlT4ifi3Zo+uNU29WAVqEvZTjgY2sfqNPG1vb8Yvl30w9SkJk
	6G4k8qy6ZJTMRPW7B33vmbJqh/GMelvuRlQNNO9ItELvZGB85WXP5vO1cCGG54Ji
	dfGEmJ0t6RNIyd3TyMt7HJ8dyQSnxgE5ENng0mlvr9knV5Er+Fbla4GuuDapmTvy
	S523aTo4lJ/44NS9XZY3uXU2NzMGiQqrAs3Uv4EVFH4C2WJczyMDN2akB2MEFGMi
	n9ScBSouhPqeXb7WnLgxppDaIbsLBQn3u9ldA9GjT0uzlVgLtpaqiG0EPIkDLW2L
	+F3m/Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4804n9w26v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 14:51:39 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7deca3ef277so62438185a.1
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 07:51:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753109498; x=1753714298;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nMgkULWhFnNfv8reCcAzyxz1uD+6zucjoyW4qz2tQPU=;
        b=IHWHaaBJJGKDCcnd+WK7PZk50ajQ9mreEjhdqNewJgga8w7JWHyklMStC53aHS4HRg
         D/LOGIiqG3Ks8ltB/afMveY/ADknSqYsdqNJc7X78HJCgJxieOlQrE96ImPAVqgBMCcM
         iV/6vN5jaLRPYO0xkZJoH2HZ7K3sM7NC/eu4hY2vxmLLwjfiTabbztgTRLwbLmgpBNGj
         tNCoRbtEKB3bgs3Jh7rDfnJNVe+KW7EdErHhku1rG9nKyRhxK1nGACJj+bkfIzFJ3Oai
         1uyNKXDotGa52CCems76U7U2Ron6YiGKqJpXmckAowyza6hoIKvAx93GiAT9fj/FjQIo
         Y9Gw==
X-Forwarded-Encrypted: i=1; AJvYcCXmaxhWoSxG0S5exLevl7nH7V8ylzD+4Hc9n1zuXJruDLRf30NRDjdIz3S9Rsi8RggHSDt1dmQiglWp@vger.kernel.org
X-Gm-Message-State: AOJu0YwRffIJWfg0IHICEUcsqRqDiE6CmkPU5ZF6OqIqDgff7G6VTGug
	fDbTPe93dzF3+0q5GVfjoOKGnhGqnrr9src4y83/xfYvCY/Oc1OByCDEuHM1pI4p9dQiYPlWHIT
	M30IdIzOeA7J8xlSNZffA/ctPiBFWwJaTsjtMede/KXFWp6JsRTgCh1QwTvRJ21st
X-Gm-Gg: ASbGncsIkol2BfGoGkqYgl9Gkbntz0I5naAptKI6VSZlnq4oNFeSf5w6m8AgNeuQ+GP
	E1kJax5qsnMD9w1GOrhpW7fwX8tP3o5YxCXQ5zfXla1Vj918Ib+9Q3COVR1LHmhPcO6KS20Dump
	OueL8GMdn+orO7XPdhqWCeWFANGZ8fvWVJb/Uy9G016Wn6Ltjj3Q103a5ON5XGVAgZl4Yx0mEN/
	4RhHiVST+/mMHQFHQbNI2BJJXcbqRfKC2R9rX2RUtC6fMH40favAXHhoUuFRV79pqzD1cUuBjaN
	8aQ3qhSBs+8h8SdqYdeEptHQo9aSGsiQS/7JNBFPYSkvUXCp6bAJl0JYf8CnjYqsrX9NvrshJuO
	7jgGkgS1WGh48Eermitdl
X-Received: by 2002:a05:620a:4014:b0:7e3:39d4:4286 with SMTP id af79cd13be357-7e342a8e398mr1151688285a.1.1753109498026;
        Mon, 21 Jul 2025 07:51:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSt5/RDO783Jsf0Dpjg6Xj5kzj9H3igzttfEVO974rPIh65MJIGlIMPiuiECbGupg7YZMCMg==
X-Received: by 2002:a05:620a:4014:b0:7e3:39d4:4286 with SMTP id af79cd13be357-7e342a8e398mr1151685785a.1.1753109497420;
        Mon, 21 Jul 2025 07:51:37 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6ca315d5sm693468166b.98.2025.07.21.07.51.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 07:51:36 -0700 (PDT)
Message-ID: <21c75060-eb8b-45f8-bddb-816fce787240@oss.qualcomm.com>
Date: Mon, 21 Jul 2025 16:51:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] pinctrl: qcom: Add glymur pinctrl driver
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250721143037.20983-1-pankaj.patil@oss.qualcomm.com>
 <20250721143037.20983-3-pankaj.patil@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250721143037.20983-3-pankaj.patil@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: HUq1B41Z09IqYRUvN5vVLcDlhNNhYnKW
X-Proofpoint-ORIG-GUID: HUq1B41Z09IqYRUvN5vVLcDlhNNhYnKW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIxMDEzMSBTYWx0ZWRfX9HXklqQNLJcf
 hTVKhOs3vJCjo0P6E4wpFgiExRt0rguJGWFOBqwnFtffGT4pMyqk4T+ud9y/YrW+v6HsvLbbnt4
 F8pxJ1tgTpzR6WaZDBS0FGpEdSAf7E2NkOWMpFVDV6nTxtq9MsOTQE97dTctbrvg7gzGN0tu9bQ
 090WYc24ZFVp3xJAkgpvgelDmX3QNOayLXNFezEkZ1FOohh4bSYnSLLDby9+TkhK7M7oyprLhku
 bPtpxhZdUNhb0XKKEcjeY5fNtFuhdyFG/ji31RXarwFAbSztno/yVHvAi/47reDJR7PAf4oyWCl
 HshGa1R88CV0WKKCKk/cHxF18oTc8S2jT4l+O6Mn9UX+uYWd7/k0d6u2HTsP71N3xGJ1hpnz51B
 Xl4PUH1eCnIqZrZprwyqlrumsKSXF+mCBDqJfAKEvZyFfG3n76XORy9pBch7VSSbP+l1OdkG
X-Authority-Analysis: v=2.4 cv=DoFW+H/+ c=1 sm=1 tr=0 ts=687e53fb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=PtIsU_pUeB5Sheknjl0A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_04,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 clxscore=1015 mlxscore=0 mlxlogscore=999
 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507210131

On 7/21/25 4:30 PM, Pankaj Patil wrote:
> Add TLMM pinctrl driver to support pin configuration with pinctrl
> framework for Glymur SoC.
> ---
> Changes in v2:
> UFS_RESET macro updated
> Removed obsolete comment for msm_pingroup glymur_groups
> Update gpio count in glymur_tlmm struct via .ngpio
> 
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---

As Krzysztof pointed out, your s-o-b is not part of the commit message
(include blurbs under the --- line, which Git will ignore)

[...]

> +static const struct of_device_id glymur_tlmm_of_match[] = {
> +	{ .compatible = "qcom,glymur-tlmm", .data = &glymur_tlmm },
> +	{},

Nit: "{ }"

(no comma, as this is the sentinel and we most definitely don't want
the list to grow beyond it)

Konrad

