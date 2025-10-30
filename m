Return-Path: <devicetree+bounces-233184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 95340C1FC39
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:16:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C08A01A210AC
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:13:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB78A354ACF;
	Thu, 30 Oct 2025 11:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VLC2u/lP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S2IKZK9D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BA5330313
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761822695; cv=none; b=bt929iAwjrHO8xTdV7xbw9LERcLyMgs7Qg1oZjnVmVFZF9o+Ehy5D906HsX/MyJ4hJNUrzZUbGx04M8+eXZaIoIFU6wSBU9YtmdWAPXSetycCFPiZU5cfjWl6GEPIeo3I1FX1vPt0V0LWN4XQXuJvAgeiLi0M22n+Zi7YFMWCY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761822695; c=relaxed/simple;
	bh=ctUO0h3bkvxYBr86tkrbliK/doG84nCjqEI/sOZ4WH8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DyuJxhPZSTTARevtBkmJZK9uIRN9qyMjt6ZoaZuxqcpuQkT1H0/bILfaqlFD1MbreD6KzQFLWgxypGVIjsaAgyBtR+/AwANX2fnbx612peNeT14k8BoamT6wxrsd/5pjLSxjvy45KrFqM5OvyiudNfNEXhEy41/rUhamMeFFj5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VLC2u/lP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S2IKZK9D; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U7kunB1655576
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:11:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PDon4uLNy2yUeectcUHOsh5oGOg/cnHyQWjexZNhfK4=; b=VLC2u/lPXur0GJob
	17hFFVud8/MEeNG4GKJpWn+gH05lfyd/Gy46armaOCxDcp+LqPvaj3FNxJ8tfmrP
	b0SUPi5B4bsNWzdvGKFBzP0Pzxb+RzMzj22DcpCVwGG2J0TfXUrY+KFVFUOvg5Qk
	TJCkSt7k2pawd6KnJeJClPQVMj8JvaHWl57T4JnOaW70J5SNLZN75TFJYgjH5hqW
	E3ZMVIcCsRtcd5r+YJnr4QsALrlKbaRnn4Ln8aE3trdCXKWpXCL4CUTkM4dk3qnT
	8ohXE6L/f6JUsLzaXmy0/quOcXG4egL4NLmHL3OssZ7IGN/CqOiHOD38C7SAlOGj
	EDW0mg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3tptt3pp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:11:33 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e887bef16aso1459651cf.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 04:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761822692; x=1762427492; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PDon4uLNy2yUeectcUHOsh5oGOg/cnHyQWjexZNhfK4=;
        b=S2IKZK9Dm5xw77lsoQej5qWokCxjgHtf0RNJw/Y+xxw3oslVvBNejLDogyaEuKgz+t
         cJwcmyc6ahTj24ZJ7zpaG0rVFElygB5+UhHomhQ8+BRGSqI1/+CVZE/BBpDMlqYyhU90
         eaYaXe+pKKVP8+ut+wLEVGe62YmMcQ+ePkZHUqmfB6DWLfAwGBkAzN0wBmo6hZS9viKF
         g4v1p1jCjHMFNe/oeFs5+K5ulCcyEfF0DYEHgnvAJR9y1HiGxLDSdEKQMjPW1mVJHbQm
         TV/V5OxuNpIaxcW+GMdnDvP5YmbgiK4v0IvORXQJvKcf4LDHbMHMJAn/RLhW7ItR2kpo
         eU5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761822692; x=1762427492;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PDon4uLNy2yUeectcUHOsh5oGOg/cnHyQWjexZNhfK4=;
        b=aqVnHNmzUouIbPA46nau0K7PJiU2LrpAREuqd+wFp7MAk6JOOXYh1MNkI7OvaHKZnJ
         a/0iPuJeyEFveSLCexJa+56AmPK01q7lswjiJNhl9gf4Vw4aFnvxGbtlIjG4fE7Xs7aI
         ZENSWRVqGG3iuq1rpsr4JXIIeiWj+2byW2J22pCAfxeMbOOWutVVOa9Nu0I6XCslJM/h
         dEAPSAWifAC9JPERD28KxoGjJHwyXQPlV4WCq0zgnEnCbgbT2mu/phosz0SEGFkSx5aG
         WVTW0lxFPruq+cd5DEupqk3emVvbCe93P2TtHRvSqggdp2HU3ocytJ17MQ93cowIhp0G
         hUvA==
X-Forwarded-Encrypted: i=1; AJvYcCVSr5aEZmB85eioYnOkKvYQYM0za3TwNNNRPd3FsM1TiSw8AsFKO7l4R2wAPuIVPl73PglhmCNh2KMY@vger.kernel.org
X-Gm-Message-State: AOJu0YyelT1KR0piysRr+s5TVBFBnb7ObIUySsJ11cIom8tlZq1vEyiQ
	3youyiYHsf8vEX5jscZergYXLDiTrsR4S0MGfu2dsLmKrd7tOcvnLTSwKNM5NAXs9Jnl828AhTI
	Ua/taQb3mdBxC5EorPIr+4oLwzXpRvcHr4/io8weC0ytAbxse9qkDAOaAmoiSzw+m
X-Gm-Gg: ASbGncth1fMaVXS9v7rTd+FV6mK5xVbFpfre6ooPylnFl9u/b37WBHwzyUqr4Eik4kq
	z+HmWBthDHxE08V462qJTcRYyYHcTSvMSq4eWYnCuYxkYstkCqMH3HZXLB6RswUey1zVqIH1bfl
	QLgSFIBOdqgmEP57JhV9C763U3uC6pIi20Pf263l8gXPw8sAzYYcAuSfrlLHK4Z0blGNdg00FWB
	h7crkbV/R43BNv/IAYVt06//3a/9yEFrOcUxvbNSzyqmRoZLpPHmEcyQBcEbPgBLp6iuaNUKsHg
	a4R8+E+YidNOqzVPdh3GlLk9XlN2OMlwU/Se/zEI5AYBdmW+pfydI4ZLP8TmZt/OmekdfCdxkR2
	6f6SccKM7rrtlf3zRTYrPkHv8bxuB7haDdfDDxSbWl6CcFBtYsSn4oBJy
X-Received: by 2002:a05:622a:54c:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4ed15b4b304mr59170361cf.2.1761822692444;
        Thu, 30 Oct 2025 04:11:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUeZyE7zsL9Ndn5kVCCm7WCbI+wxddHa4VCy1ePFSnHykBK9zYrDXNkInOEGWmaNKPC/788g==
X-Received: by 2002:a05:622a:54c:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4ed15b4b304mr59170111cf.2.1761822691954;
        Thu, 30 Oct 2025 04:11:31 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7efb97b3sm14460770a12.30.2025.10.30.04.11.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 04:11:31 -0700 (PDT)
Message-ID: <d001f158-008e-4aa2-9f30-a06d314377e0@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 12:11:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] clk: qcom: videocc-sm8750: Add video clock
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
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
References: <20251024-sm8750-videocc-v2-v3-0-6286bbda3c8e@oss.qualcomm.com>
 <20251024-sm8750-videocc-v2-v3-4-6286bbda3c8e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251024-sm8750-videocc-v2-v3-4-6286bbda3c8e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA5MCBTYWx0ZWRfX8vQfcU9Jx6Ea
 HncM/6bk1M2LD2jV9X4Gg3HtCc2eBXBHt6ASFLgJnMgW8P5prgTSS/0oj4lAzKKQiULqSzlORCQ
 iYm7UuF398PB7hixQH5fnq1keaiqHwD2vpmUc87vaFV9jWTHNveFDZ5qkmvV1CzNV1dT1GepZAp
 nR/O5sAYKT0sQGOvaE2iJEN9HW1cNU0hnhnYEfTmzuH9ru5zZB9GvrqWbrbSf6IVEaaPI2ZPXXc
 Iy6sTzFRGXKORzZnvXSZc9i8+pqqBMqNa8r4eLnWYwcgSSrfnnHyA/FsDGK+RHg4kh20iH/QlWF
 1vVDXpIv9IcartDqPNR6w9iXM32IknPSwpGJoL+TQzDV5Kpclii7ePc9krIkAk+wVhDeDhQu80G
 EeLz6g4gfWWJOqrxCpkqOQ2MnvFM9w==
X-Proofpoint-GUID: MF8aAZ_-7dhUn1q8htlXzmzMU5_ux5cp
X-Authority-Analysis: v=2.4 cv=MuRfKmae c=1 sm=1 tr=0 ts=690347e5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=d7ClhsmVZ3m4v3ji_18A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: MF8aAZ_-7dhUn1q8htlXzmzMU5_ux5cp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 phishscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300090

On 10/24/25 6:24 AM, Taniya Das wrote:
> Add support for the video clock controller for video clients to be able
> to request for videocc clocks on SM8750 platform.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

[...]
> +static struct clk_mem_branch video_cc_mvs0_freerun_clk = {
> +	.mem_enable_reg = 0x8090,
> +	.mem_ack_reg =  0x8090,
> +	.mem_enable_mask = BIT(3),
> +	.mem_enable_ack_mask = 0xc00,

GENMASK(11, 10)

Konrad

