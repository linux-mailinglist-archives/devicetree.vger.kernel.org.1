Return-Path: <devicetree+bounces-224531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FBBBC4CE3
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:32:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C96D91899CC2
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:32:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 271A9243956;
	Wed,  8 Oct 2025 12:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WC0Ya4SP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF4BD13957E
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759926694; cv=none; b=EcuINRMHO5bXv5W7Xm6+t02WX/Lej1v12PvsElg9Ml0kdv41tKVL3Y80tgRkqRVl7cL/6OVl1qldAP2q+/fpXePUjz2Ggjaiddb20YxgSVBLZTzVi9xW6DiEn27UPFJqlHE5/nG8YN9S+ivU6Y46M3QfGDhLCv+GovXVGaOhYfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759926694; c=relaxed/simple;
	bh=ATHazlMaG3uXrz/8bapVZ0QyRnQ3LTj31ll9TPp9054=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qqa0BewV7iqJwMXEilRQAuOpG+ba28/5n3MDT1D1egWKKQY7LZ8Fz8/+r1amlOUVEQCLq/wphhrn2NomhhMItrfiQkc58H4oT6d+dS+61tOpeyXxWW7FOZA1NEQdfVPI+f5cdsCpOpyVGBlcLXddTVMgTwPf4rbrwEtAGryueOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WC0Ya4SP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890NOk031338
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 12:31:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W2xJeI3OG9l4i5P/NiO0E6EXHSuabja0k88qJFuiXuE=; b=WC0Ya4SPaTu0KwZ4
	FTweXLcB3jSodnqWhwuo5dwMkiTuAC6SVx+mwi+wZSrgekVIlCtrtSFEyPbhtMCO
	Y2KvqLuxIORVAk0BD8Q2XrumwCGcLhnV25TSVTlXEYMXk/TyA30NjQOwigqUVkta
	J0Cxq0q/CIG1Eyq2/yRzt8Ofam48l/FZ9oI9dMibVVwthHrOLplHhvXrMgm2ayW1
	quAGp42uoohAm4tr253GOnYYtpXouyojAkFnqMii4Tkrf63WPd+M+XtDugY2ctPO
	kdXQeOMKlzNHXCaBufK4GxLuJMVDKfUbZHq18ZyMj6MwXP7WrZ/xaHNBMZHrzmvd
	Oe2TYA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jvv7tbjy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:31:32 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e0f9bedf1aso22872431cf.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:31:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759926691; x=1760531491;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W2xJeI3OG9l4i5P/NiO0E6EXHSuabja0k88qJFuiXuE=;
        b=gJqY1RmGfGwaaq66/7a60BB9eMHaBApWhduWidvjMnRdxfPN1qxlG+GdC33tqibI7u
         U/s3+BCpx5xufL2l0SQkg0YVCzbZU+xlK1RPjaa34rIAP89pfp45RpsLcZWfN5X7emFv
         IEqMmqtOJJf3DfKmvNWeJXV8wip/XHDDYZNED2TjTXd7asfUkWmjmABnu3mKijz4GrJE
         oklfzSdsKvQujgufOh2UpH6YWRt+YwudWl63bhV/B0f1R+02HOaVP1/t1Vc528PX9DQ6
         91C42BfIXo8brFd5Ru1TBG/MLB3pQn3Xvy0E2RlycpquKhBp84lqSrqQMeeyG1xpKlDx
         Aa7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVMANfxdjt0fm0VfjBdnyLm2aUCsSY1U1pDwdiIKABx2nyNxd9tPDduYKagpmZTJJyemNTyf+1rMZ2s@vger.kernel.org
X-Gm-Message-State: AOJu0YwlGNQFYM3lskU0ESe8vRfvKl6NT5RDnUQgl0NqXKF7vDugFp07
	anGDv3fis1ofQsRwVUe0BxzsWMeN+YhieqIq00ZOrmh4homqLMgWBUxFDVyS3eFi2WCe4XRod98
	E9nqQOalJJPk2aIugjrH5lPkZvdps1Rn7iJ1/clb8EK+nMCcgrv4vKEkVXV7QYnOy
X-Gm-Gg: ASbGncs6+oZ5MDNm1TTx0+dmN71KoTqvHBpAIF9426YjQqxGd5kSgMzLHAse3uW3l96
	xwlQfNiv3+VhGE9Ma5r6VDS5VfG/6tb+2we1siarflUeILQZn/HJnw8Q5rOtdNrvIHDFc/DCJZK
	HtD/1cBcATsIlhxZFCuzPxPPtBj7ex4kz9I6qXRpRSuROoP5aoN2qQhc19SnurnihLmzrANUqeN
	JJ3tautaRrUsgjI1x3kaKqA+wIbPqqkRtCEooKjv/fFHovSn2i3HYCLVUKlbJXphqsLu6jsv3Qi
	JDtRrQsUNET6J7DVvkMjmJ0nZ4sWOINZObghwFOUQCyP2PO7qxP5DdYushe/GcNzfdyoKIv6yaY
	9fjOpe9JNMcvzCpyJILpti1G+q1I=
X-Received: by 2002:a05:622a:60c:b0:4d9:ac87:1bdc with SMTP id d75a77b69052e-4e6ead0aba7mr29274941cf.6.1759926690651;
        Wed, 08 Oct 2025 05:31:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFf19WcSpWdEUFhuwsgE9dJ2DJvAeifUnbLDZML0K0s/i9UQH0GMuTwSzetRW1A09yhfc7ONg==
X-Received: by 2002:a05:622a:60c:b0:4d9:ac87:1bdc with SMTP id d75a77b69052e-4e6ead0aba7mr29274531cf.6.1759926690078;
        Wed, 08 Oct 2025 05:31:30 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865e7e8d8sm1639249266b.41.2025.10.08.05.31.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 05:31:29 -0700 (PDT)
Message-ID: <0ebc651b-e174-411f-9ecf-c165edc8f754@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 14:31:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 9/9] arm64: dts: qcom: ipq5332-rdp442: Remove eMMC
 support
To: Md Sadre Alam <quic_mdalam@quicinc.com>, broonie@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dmaengine@vger.kernel.org
Cc: quic_varada@quicinc.com
References: <20251008090413.458791-1-quic_mdalam@quicinc.com>
 <20251008090413.458791-10-quic_mdalam@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251008090413.458791-10-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAzNyBTYWx0ZWRfX1B3YmbL2tBvi
 VSPsgF31YS8T80DBD4RZoeq+SK10JBf3txm014JScWAqVjrlvQjZuDDwOhJqAuJ2CoGUbI9nCBY
 Hn5RghC1JYL2nc91FKjzRASqNI0/MszXVQTNYHvaDP2eAUcGq2QiOtTbI354tIiQGT0LuC/qXH5
 N27E1SAme7YLkaCAe4IkFJ0VySww8qYwV3LN0bC+HW+5PTMeJXXzTzUwEwHgzEzL4Et2AnrzxSA
 daFTx6OlbyCJ6ixqAgHI60wANjco4gEG0NsnAsv7gEn8PgtQbrMT29eXMiN8jZYg91S12LdN/U1
 H1lEBOrguPhi+y5suDowHu58Sx+SXk8LCN0bBYSd6OOhFMaH3daZ3SLboAFff0BgK4ubfR7jhB/
 eil0KFBxvI6z3fTT382ww5JuRKxlEw==
X-Proofpoint-ORIG-GUID: UXJfY8lSPOB2HUYI3T5kurBi_6FnF8wS
X-Authority-Analysis: v=2.4 cv=WIdyn3sR c=1 sm=1 tr=0 ts=68e659a4 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=VaBRgJVrheE2JgugGuQA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: UXJfY8lSPOB2HUYI3T5kurBi_6FnF8wS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040037

On 10/8/25 11:04 AM, Md Sadre Alam wrote:
> Remove eMMC support from the IPQ5332 RDP442 board configuration to
> align with the board's default NOR+NAND boot mode design.
> 
> The IPQ5332 RDP442 board is designed with NOR+NAND as the default boot
> mode configuration. The eMMC and SPI NAND interface share
> same GPIO
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

