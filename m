Return-Path: <devicetree+bounces-200471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DB1B14D78
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 14:11:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 669CF16879C
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 12:11:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C6DD28FAA7;
	Tue, 29 Jul 2025 12:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AOR+HhHO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B44291E3DF2
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 12:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753791096; cv=none; b=J8gKoKwlkz3lbXSmrOWT4ZZKt/SmhCDuBafPdmNaDMM45KbrDayaGwsZaZe1qdknhrT0p+Iva6kb2rK5jL7pusKX8/D3Or5pZNkzg7s30wdVosSaDnmOwtBF01dClGjzB4gEFGf4Xpg6Cg0RULA19fFFcPpDP3PAodxcD7yyFI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753791096; c=relaxed/simple;
	bh=WtaahhtHI8wCSsflpowLiUT/PdVdKqZ4oKuS99Kip1g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HvN3zdEufXKJO//OXpOX+R+XlJ5f1a9is26B6IYte4JIA+p2IRqhmheBjSYAacAuVnnH0V8/nPo5ZqZi2UfI+/jiszXdxvmkp91zQaMpbDMsJ+rnyL0FaBge8KfzOBdb492gxZDJYkqLrMSjvP06FRnXa/zil2fVZKxFV/hj4f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AOR+HhHO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56T9A0Sw023465
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 12:11:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4QE9lOzTrqBaaFrVLkONL9bTvaiKUb2/mfEEdEROAZE=; b=AOR+HhHONlZuDO79
	/zflcFlSc2qIq20MTQp0NwDDW1zBi9VnW+ePX2OsI8OPmmEiG99pXmngTl7iwxMc
	soBxgKAHjqc3mNHqC1SosL56HyGtRkBgVLbJv/or5QuN872SroZFk/mpyCa6vU43
	2Q2j4n0dNqE+jnz5kz3CH1iahtjW/YFKTO1v51h4LLA9bN5r/a2wQ3Qdvl10iocT
	7/wUtfPBPa8rs4jAstx/PGhuPL/lHIv4jylWPGvdV4kHnFpvn2/k67oZro2hCKnv
	QKCYVcQN4bYKvLNyUyQmwZuAzSm++XZ4OygYNtAaL7EWMyXDgaSALDWb6g2UhXDx
	5nrdiw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484r6qqya9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 12:11:33 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-31f2dd307d4so931437a91.0
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:11:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753791093; x=1754395893;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4QE9lOzTrqBaaFrVLkONL9bTvaiKUb2/mfEEdEROAZE=;
        b=A8SQNNzq19KtrMsLqRbFbZbBbu7mRCA+kp82Zi3ovgbwrOO2Bqw6vYks0pl6Bxe7mx
         7fA20GfNsdPItFE+dI6JNBJSM6Y27AmUzdxUjrARBgVSnC3fmf48gJMCVieES7Y5mIqE
         PMPF4WUt9NKJDAofHeUROyZRNyf1+mLfelOB7uwlpgIncWNkwSTN5rw7jPb4eJEd2+ct
         C6AnRsZaOpKfvvnYR3pgZNTIaqviBtSNsRBrRBqtwSHCDIeRrXrNBpflkDIyhqh2VARk
         y4OD8/Qe9nSCX8s+t/ogD0dcTpSWHfA6D8gPdbuJFNldd4Sd/OAz0OWnYuH63it3AEpV
         Q0Mw==
X-Forwarded-Encrypted: i=1; AJvYcCV7agIqQxr0NLWuCJFkTRNHr9VkD/7TvnUMCm4zgTc9f+IWvXgiR9SAX7hMljTOImNG37EgWqxneHUH@vger.kernel.org
X-Gm-Message-State: AOJu0YzWRhnLQUSBaVvH3QCBgjpDtcivT0UnVnQry7DKjdDqYQ+1Yhku
	WLJ2slDWEPS95TkCNEWjYFuNJn2pxaaLqTQEnKsLDY4e5xMq2/eNyD++UDOO2IfnFWRjVTVgqYM
	aBG9cyZaj2SBezkAfFBOVxT/EXdJiUZmatCQ2oMLMe2niJ4EGDNhKivnYBz6c1ZOa
X-Gm-Gg: ASbGncs3QN6byLSF3u0ROKYxbn2JeXKOdXNxCR5wMlp+ByQ2EgMicfq9A48SUEsvaG1
	CJFRb77iNfq+Rb11U6x7tDQaQQX0VkMWL1KB6iAQdko9llO3Km6r8xpr8nVxb2pSPNFEDuB+Fxb
	hn1LSz4kyMyvCadsOmE2hyoLp8t7xqUj/iyBYv1tAiwU034k2ij42yzh+wwLeNL2AY3VjymU28Q
	MdpKUpTGCcGswR2zojDUiNSt2XZB6CyCYgPS/7D7H6v2eAazNdpZPiR0HS28g3cPm4g8/jVaCBR
	ENPZmY2wF3vkgusgAG3bX+PvZqJjSckLyWOO/oBbSL3CPzgnPh9aXXLL87H0cQmFj0lqdNjd
X-Received: by 2002:a17:90b:1809:b0:31f:42e8:a899 with SMTP id 98e67ed59e1d1-31f42e8ab21mr1328750a91.13.1753791092859;
        Tue, 29 Jul 2025 05:11:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsgLFy8b++ep6TqapChmczzcUReCy8+FTDkc9tnmCqFhUILVLHVWY3NjRVOTnzXnPonH4Baw==
X-Received: by 2002:a17:90b:1809:b0:31f:42e8:a899 with SMTP id 98e67ed59e1d1-31f42e8ab21mr1328707a91.13.1753791092318;
        Tue, 29 Jul 2025 05:11:32 -0700 (PDT)
Received: from [192.168.1.4] ([122.183.154.151])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31f5262aa05sm69491a91.32.2025.07.29.05.11.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 05:11:32 -0700 (PDT)
Message-ID: <8b7bc371-576b-4a4a-88a4-a4ed47d97778@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 17:41:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/2] arm64: dts: qcom: add initial support for Samsung
 Galaxy S22
To: Violet <violet@atl.tools>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20250729120331.287245-1-violet@atl.tools>
 <20250729120331.287245-3-violet@atl.tools>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <20250729120331.287245-3-violet@atl.tools>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA5NCBTYWx0ZWRfXwfQbqBT2WyLK
 565OsqlXWbewzVh/sbbOKvKYCqCm/HYBv1TYofWzEaKTVCZRjvMGE3deH7xFZRWlfzA++tYfaD5
 Kgj07DJBKfTeXKl/4S9T9TFTBprOQhYRzUzmA5DqNkRgXOXQ89UYELOeEhidNNzLrWD6rvdjgUn
 ihCFIRh9aZK+SvENqApja53dTfHry5xOlNa7nihbgrzDiRqsI2Mf3Po8MET3kJJuPUS0n5TM2xm
 FDnp9zyhDXik2/NS1mo/3RqQQ8XLaZGwnZ2OskkJPgPWbD4bYJ2SuIm07idB8FofMN3+aQ9Hcab
 IDrsB+hM4Jg9Uq+quTESh7qEtYyqY0UH6+RTwOMvIplUqygIG/6JnG1XcRVcT1E/krrY1Yv5Jua
 IQxKyOEUvwWYpD2lEpSii3jG05xj70PNchhfu8acNZlQjIb/zqk1vRDmt4VppGpngEfi52Qd
X-Proofpoint-ORIG-GUID: IFQH38pFcQyQ497X9yDk4WGzBeDQ6Mnn
X-Authority-Analysis: v=2.4 cv=ea89f6EH c=1 sm=1 tr=0 ts=6888ba75 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=A1H60L6fWQAu95VAuYzdKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=ZSXNc6tYleypp-tdgiEA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: IFQH38pFcQyQ497X9yDk4WGzBeDQ6Mnn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 spamscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507290094



On 7/29/2025 5:33 PM, Violet wrote:
> Add new device support for the Samsung Galaxy S22 (SM-S901E) phone
> 
> What works:
> - SimpleFB
> - USB
> 
> Signed-off-by: Violet <violet@atl.tools>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/Makefile             |   1 +
>   .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 147 ++++++++++++++++++
>   2 files changed, 148 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> 

[...]

> +
> +&tlmm {
> +	gpio-reserved-ranges = <36 4>; /* SPI (not linked to anything) */
> +};
> +
> +&usb_1 {
> +	/* Keep USB 2.0 only for now */
> +	qcom,select-utmi-as-pipe-clk;
> +
> +	status = "okay";
> +}; > +
> +&usb_1_dwc3 {
> +	dr_mode = "peripheral";
> +	maximum-speed = "high-speed";
> +	/* Remove USB3 phy */
> +	phys = <&usb_1_hsphy>;
> +	phy-names = "usb2-phy";
> +};
> +

Hi Violet,

  The usb node has been flattened recently. Its not merged yet, but it 
was acked: [1]. Can you rebase your changes on top of this patch [1].

[1]: 
https://lore.kernel.org/all/20250715052739.3831549-3-krishna.kurapati@oss.qualcomm.com/

Regards,
Krishna,

> +&usb_1_hsphy {
> +	vdda-pll-supply = <&vreg_l5b_0p88>;
> +	vdda18-supply = <&vreg_l1c_1p8>;
> +	vdda33-supply = <&vreg_l2b_3p07>;
> +
> +	status = "okay";
> +};

