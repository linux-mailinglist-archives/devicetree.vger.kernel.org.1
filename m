Return-Path: <devicetree+bounces-239737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B9807C68EAF
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:53:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 7122E2A640
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52688320CA4;
	Tue, 18 Nov 2025 10:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n85jVYcW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vc6l+VrE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BACF33093A8
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763463199; cv=none; b=dmiuv8SsQ/2DRakXl7vN460qXmTDXZp9Cvh9hQnApDaGaNl5t7bncG55k1V0Wy1iTSo0PCFKJ550uqYMb2v/qmytsZnoFX/mcXZR1HXs3XNFGiURUCgBvBeYdumH5YR39FISeUxE4YoyxxpOW31luyZqIP1q0HdQyyBuLOzCqCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763463199; c=relaxed/simple;
	bh=Je+uFR/gKcyEuTvfBH3qS0r6UZEWmtchEn4qD6chTo8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I2RePbBdzsyvL7HjlYkvQ4EQELfOpr9jknXpjz4wp48Ftl5LZmq2c0CimEK48hoD+Ptpj/iwBHSnyO86v7ZLOSO0I/bJjKfkNnCK3d+RGzlRKlp4L0T55v3wcQcQUizPh+t0c8fu7ghwpOY3rPBnrMelebA7tsSU19j3yvaI11g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n85jVYcW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vc6l+VrE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6Fmcd385449
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:53:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QOEpZdLwr23M5PcSgMSAlSqAB08Ao7RTKoVOZt6jIUw=; b=n85jVYcWd3bjuvGN
	+yUTyiO/HBV5tP3sXXa4QKWGsuuB9fDNEiH0fPpG5r8fFwPY+2CdwklNLw2wGb9k
	NFwMrSb8ypmv5ABE96j2XocHFtfadhiTLIjhRDsujTFw1UB7g5dknCvrP60aIFAb
	tKqgOOo84t0J6KwLGOLV2FXJr/HukPfIdr8FOOocAAJ+EjrywD7gctRi7zuYuCUf
	ul1hFSyKRuBqMW+4pV9kGvnaeSsfiqrEyoIYFdv6lqt6GsNthFn4g3XheT29Wvkw
	CkNKUx4pG94TGI9o0Mrlj/56nOTLT5X/ry8ep51yWpGeiGiwvPK+twrWBqpPwhfY
	yYzsEA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agag8j6nj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:53:17 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297dabf9fd0so70366285ad.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 02:53:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763463196; x=1764067996; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QOEpZdLwr23M5PcSgMSAlSqAB08Ao7RTKoVOZt6jIUw=;
        b=Vc6l+VrEfHfTmXZNRrsxVmp4BlAJNfYsvRrDu508KcHa4GD6u8Zo/LezH2DUUMGhay
         w/dI+PKm2I5ZKOG9vvDicE61nUOEPciT5e3VSCs1aMIpcZafUFC9wr5+rGUsV5IoOkdf
         FOFVhAONMEusm+Ibac5CNw3f8una02t9J4eZD5RAWLmsi0q9yVJ2nwxiOzYv8+0wRUyB
         QdaycsNe6wu6M5mxArWV3LYufNJt5W9zPNi6clSvOkl1SFwwNyufeKy485gihH/HE9CC
         NoNM8t+aylL+eiC3YWIenCf/p8xoe7RyQPPsNM6U5+ZMlm4Vs9/woioDxwg0geUMbL8W
         697w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763463196; x=1764067996;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QOEpZdLwr23M5PcSgMSAlSqAB08Ao7RTKoVOZt6jIUw=;
        b=fHS1qyiNHENukPfhjVzG4RSyKT5G97vsLGY4vLCkFPJk4iLZqIzQpvnsZlin9zfkPl
         I5a0bNNeP1dg8Jx4lV5rYrD+QRhgblD7wCn2XkXaluRaeEfwW3QP8ntPi1g4eJ5zsu+D
         eQaFvCK6y28cU+khwuDfdq83kJuRYxIkJbsXTmT46KRX4fq+Dw4itVtIVpkRP93wyPI/
         NLcNYm/xPwq1BrpPjphTYS0+SEV5j6301bnj2+fENAhh25e7OEyFcdcX+JsiKNYKLa9H
         r793QRxLq10JmQ/1P24lPhAV9RMsv7qZiS0RmNb2Kned2ZBKq/nGLt6/tsrPocx+zQa0
         K6VQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhmmps3TDpi/GVORApFal5ZilNV7MDW0MaUg7zfVpUkKZlLoD3Y9xP7xsmysYtDtoudyxyGRo4HSKE@vger.kernel.org
X-Gm-Message-State: AOJu0YygMoqmavdAfubQsyBtYEzlCFqRK9nXGbgFmtObXGY2M4168P3E
	Lzbkd4XN9PHzfvGB/8KwaomAs76bvrySQ6v3TbL6+wWReLDvu2oQtni8yiCfSxFMRERhzzDej6A
	7t6GIfaANbSjsANOX4lLvMmtBeGURxD2y4Jtn0qn/c1qq2CZJAgKVi7vNnQt/dXBI
X-Gm-Gg: ASbGncveCb87E8O6h2fErqz9J2nifIpQofCs+rd/ExiNNtYPa0m1LHWHjzo0uhqTspK
	+AtKVNGI0myuQZKaJb1b8hd7INmBbm6sQQgotc1BFgH1gAdfIOjYSVWYjx1IjZ1cYDxtWVk8nxe
	oGlNHR+6FfWwstI7feU7iqWkyZyo/TfdSQEAqlbPP5YpLiMWOvzUppc+P1OSdxm7F0xlOye2Wyo
	SZ7KYzGifHYxtBe2tI4NRLuDBW1fey6ENGkQQc8Wl76jOD76fDt4jhWH2ZZkpRGawdqQlj5EpwV
	aDddSycbFBSNexcRgyj2D+xaqwhdpo8G2rqGtnLar+lBAp4iy0id7AcSPFIJc/6C+jvnMMwLpDq
	J9YwPspxQaxKmhpkKlQIzVCYsiQ==
X-Received: by 2002:a17:903:2350:b0:298:616b:b2d with SMTP id d9443c01a7336-2986a75275fmr169692155ad.51.1763463196417;
        Tue, 18 Nov 2025 02:53:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEcvWmssKapPjaiv/k1PWZMgAUITJJJRwptMhWR/dTJczZEwt0nlVri40LH/mEvb1TLwTCuFg==
X-Received: by 2002:a17:903:2350:b0:298:616b:b2d with SMTP id d9443c01a7336-2986a75275fmr169691865ad.51.1763463195961;
        Tue, 18 Nov 2025 02:53:15 -0800 (PST)
Received: from [10.218.33.29] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2b0d91sm171022975ad.63.2025.11.18.02.53.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 02:53:15 -0800 (PST)
Message-ID: <430d8ec2-9dc0-4bca-9f8b-294d273af302@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 16:23:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] clk: qcom: videocc-sm8750: Add video clock
 controller driver for SM8750
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
 <20251118-sm8750-videocc-v2-v4-5-049882a70c9f@oss.qualcomm.com>
Content-Language: en-US
From: Imran Shaik <imran.shaik@oss.qualcomm.com>
In-Reply-To: <20251118-sm8750-videocc-v2-v4-5-049882a70c9f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: bRpIgyRwo_4V6KSY8vXhrUaXKT_q8CpO
X-Proofpoint-ORIG-GUID: bRpIgyRwo_4V6KSY8vXhrUaXKT_q8CpO
X-Authority-Analysis: v=2.4 cv=G6sR0tk5 c=1 sm=1 tr=0 ts=691c501d cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=d7ClhsmVZ3m4v3ji_18A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA4NiBTYWx0ZWRfX7y9O1pArkjXr
 e147FPg3dkSLDLj+TxxB2NllZ3tGnraWnTIrmF2HFg7S4pBk6dkeSGDOOTIxUcrwhB6py3EhGf1
 FQxEtYBLsDBBPwW9Ys2XWTGDkrfiEcoTNQ8iwCXAymopY3kRekmxoJGmk63xiZI2xLyKactF4wl
 LcdflPpefYBcmtyCEmgZjVsg7Xi+L+7/xjPNngmgxmfElyjA3/oJLhVO6fxdKZqEe65mjiMK6tt
 UuG36qiLy5j+ANJsd/bSiZNnadMAbpljjvv6Phq5lKCVU0QAuWDo60SI0cvHY9bBHqiMuIm1KV2
 u1j6IbFN2D2XBu7SpDszpSfvrfhljV/8yhEZy7vy/LJWWn9M+GHO4981NvNd+7RnldX7/cMsikn
 ps04kiHIt7yQ1zS7t9MaguTyN9Fghw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180086



On 11/18/2025 12:47 PM, Taniya Das wrote:
> Add support for the video clock controller for video clients to be able
> to request for videocc clocks on SM8750 platform.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig          |  11 +
>  drivers/clk/qcom/Makefile         |   1 +
>  drivers/clk/qcom/videocc-sm8750.c | 463 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 475 insertions(+)
> 

Reviewed-by: Imran Shaik <imran.shaik@oss.qualcomm.com>

Thanks,
Imran

