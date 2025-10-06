Return-Path: <devicetree+bounces-223779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA62EBBD72D
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 11:32:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 916A41888C1D
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 09:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE721E1DFC;
	Mon,  6 Oct 2025 09:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oInTrRKB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547B91C5F1B
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 09:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759743157; cv=none; b=b4FFSrHRe8EKeoxIa2PeM92QUh8gh01tzq6eng9ICdbF8e17RL7rDWUD6vbnt9Ae615CdvV4cWKjdjyCFRk8lgJ73+CFZ72N/gBTmPvLBJBBA9buBo7Wd0s0nhQiArecrAkKTnqrKEUxoNlZL14wZAOIe5LjvGSnfM7dGuRsTOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759743157; c=relaxed/simple;
	bh=tB+Uru/dAvMVfOcpQYEhFMJdqGVVV4C749bNoPxqYtE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FeS0UwTqv6oyoAt8SVmhMEGXPi6+ArLEmC/OFC4LlZqIvZhJX+DNZro3hSWo/BUQGpQXGEflOs7+34kyit8NGvtck2pm85s2bdZA/b8+Aj9+BrD5ssU2w8eFcazieKxJjwvGS3UJcqgrMO0IUNfskFvG6m5jZu+mETgxXISmsV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oInTrRKB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5960g8qs003690
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 09:32:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ge45rX4ZQ4bbj1NPjAF/iFrT28PFma9CTP8p/u9HCss=; b=oInTrRKBKZdcNK5h
	t3nkugxaV9xcCHYXagtH2zDLd0+saKH2kMkjx3uAvq3IVkuSGtn3VBE5hzLhPWYs
	9C8+Fui9EAuFYcHB8TCpM/kdaJpmtUjZX5JIQKKCmG9sifSUx+zuTW8ZQYYyyGhX
	ppE1ScUnV0XO01KGHbCgNrf7ENZ4H89Yv9rpcfhQ4/UUefhD6pUvl/We37arA3EY
	vcjSI0tY5O+dXI6fSHF5KCOJXpM4HXI2QH0t+qyRVKlLOM2NNwyHv7+KwxfJM3gv
	4O6+4hPUTu0IOj5tzVWbR9y9B5YItoZgFphzBC4VFhXOqBZ9aLiNbzw/dSN9n1B1
	K7TVvw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49ju5xbfg5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 09:32:35 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8247c6738edso12738506d6.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 02:32:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759743154; x=1760347954;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ge45rX4ZQ4bbj1NPjAF/iFrT28PFma9CTP8p/u9HCss=;
        b=GOKFBSgMCWD+kveR5mbGgqFPzm/OaeBX4USnLqw5BKwqiIfKhTSFfNGwrHGmBJCru2
         8WCpmFD3z7By+LZ8aXxUiVKao9IOMG5MV5B0F6ABH7CtSSB5aiWQPfUj665dc5edak/W
         GOYzfAGREmUT6ECE18JQXMZSBxmSgDNas1FVXmS0euqs2BORCTGs9e9sgStfhn7hVxkC
         oGLxfBtlN3GZNV0XeBXaVuNxooOjPaJjr5gACgsT1cnaleEvVK7HOS16p/wGLw8ZWCjO
         VsdrdyhC9MyXB3mGsi0dReneguToGqLO9I0K31V3xqFPoAMoErHYoVEO1tofZT/pXb9F
         qInQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxUKbu3J8Exp4YmwF4YWSeWzoleX+TrWE/I8WT7Hm/mPLY/AkxR+IXHdW4hoyfRzkTihvo/xaPIlnU@vger.kernel.org
X-Gm-Message-State: AOJu0YxSekihF6rc59im0tY9owCMrBRt5qRReDxJcQSieGNuedAMS+iX
	+4yVcautjJE1ZGwIVKBbwwjymJgcWXoPajCU73OIQBA9OHNEGtsNGTDgTRIgt5i73ujc67Xn+s1
	sU8nWRvfsfaVZ6oSXFDt/OmNxijICJUMMxJxDfh/zVaJy9UQR3+kJ1nxPSdKY58k2
X-Gm-Gg: ASbGncsMPvzf/2lKLcSvOSu3l5oLfu2DrM/E17a/idrUQKJyHkHVDrA+bMKaYfRkGx5
	ZVuthtnghVizdhGeAM+LuPzQsDGpnfUdxzyHY1Q5D9rp2WGYqs3G8EA2Hqv0oB9P5zg3cJRvscJ
	vfdbODp/DEZjU085UzZvsJB/0TxNYJpEaHUSsEXV3OO30HdI/yb0Zbc0iYJLLoHBJuAsVzC/tDe
	KuVIc3DZrdLgY+kxDJZeJMGOBlVVRagBWFKsoK3xU0SfCYEE8JCdCdvwomUFisLlX6lv5qffi6e
	uqopD2H5/D4QjNWW8Xyj1OQX4FLQUcddwPq6JPRT7tcb3+IZEzswQoHNd7t57qCQN6iU91gOxbQ
	61eRMukaVyfdXReGrs1mfZ8n+YIY=
X-Received: by 2002:a05:6214:486:b0:734:4ca1:1da3 with SMTP id 6a1803df08f44-879dc905700mr95241266d6.7.1759743154065;
        Mon, 06 Oct 2025 02:32:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnF5V/nkq9I9PQ4X8my1BbMWmwBxdKsXki8/F40pYfQruPRbvj92+LhaaEtdE6ptJf8GD5gA==
X-Received: by 2002:a05:6214:486:b0:734:4ca1:1da3 with SMTP id 6a1803df08f44-879dc905700mr95241056d6.7.1759743153476;
        Mon, 06 Oct 2025 02:32:33 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6376b3b74f1sm9949966a12.12.2025.10.06.02.32.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 02:32:32 -0700 (PDT)
Message-ID: <b27e238f-1457-454a-9192-6e74ec0cf00b@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 11:32:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8916-samsung-rossa: Move touchscreen
 to common device tree
To: Raymond Hackley <raymondhackley@protonmail.com>,
        linux-kernel@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20251004123907.84270-1-raymondhackley@protonmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251004123907.84270-1-raymondhackley@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=FooIPmrq c=1 sm=1 tr=0 ts=68e38cb3 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=sfOm8-O8AAAA:8 a=EUspDBNiAAAA:8
 a=Phi1zbya4mvnzrM-5qUA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: 7v78eUOIF3v_KuF5l9YDIMPLy5ai6P5D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMiBTYWx0ZWRfX4My+6LLU0DbN
 A9VByGJeIa/pJsszTtLs7D1UlWl6zx18QqKLdPQIDGyZr600p0JRdifC+ulyjOUKM4R6d5bdnev
 jZFDgmiDr73qBOPbOooNi2+8bwHAW8+fSVLub7YN/xH+YbQJIfaVkFj1+IqCuL2ZacYekD8c1K+
 z1vaWgImYEQwKOzyFERTEEKtwZYb7qmrx4vRaUR/l20nhsj/hjb+XAgadJd3c3Y7xDZNqNCYBEc
 xQQR1Z1R7hFjuqWnz2Q5D4OIaehZxFjjNvOhxbWVi3rYGiPvzFhn65Id4VX1K8vgoIkLsnYr7+R
 A2FoejWtspBbwETHI1nCRNpWVJ2ECUlJYHv61X8uzMDod4FK2lCEHfQM9Pg4JrJB9qLwUXOkNBh
 FqL+hc5zH9fcpBbMOKibymj8T6POcA==
X-Proofpoint-GUID: 7v78eUOIF3v_KuF5l9YDIMPLy5ai6P5D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040022

On 10/4/25 2:45 PM, Raymond Hackley wrote:
> Every Core Prime uses an Imagis IST3038 touchscreen that is connected to
> &blsp_i2c5. Move it to the common device tree.
> 
> Signed-off-by: Raymond Hackley <raymondhackley@protonmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

