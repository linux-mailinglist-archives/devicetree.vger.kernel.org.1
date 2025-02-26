Return-Path: <devicetree+bounces-151687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF21A46886
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 18:54:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 863AC3A746E
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 17:54:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF14F22A4EE;
	Wed, 26 Feb 2025 17:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l8V5yw0I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5429922A4E0
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 17:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740592463; cv=none; b=fUwFz2zWrd8rx0n2m3SAaTCWBDrPsMzp8fM9szAvbNB+8RpeXvjXL6fy9DzcFveDrnoMINbtI7N6Ayisgd1UxP7ziaD/tdvOws+h3v5bZrnVODkVqdfuvkjn+etkwg7YzBTL52sUztVxnJ4cLJkPyRy+QbC8V+a0yT2XfHLFNVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740592463; c=relaxed/simple;
	bh=XCF9u8Z1rw6dikTB5uUuGFpoZde8WX8im3OQZS20lBQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KkPXDAlgF6GTEEIZN/I2x5niJdg8uNJFnVcwHKg4/zeRlhrsZ0fZkwcSOGeFn9qbD/rYpswtAC6VnFmbTF5wp+0D4TXbO9vyLLrHHz0wBLrnZG67YnCR5kk+aEdiLVVcqG27Jyn+hLO9WRno9olriNjiENXzKnpU/6yqN3drZOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l8V5yw0I; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51QCECle000433
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 17:54:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k1UOTAeEYAiBnkyZpz44d78r5B7uBb0CODxrcfWD1kk=; b=l8V5yw0ILAnulhx6
	Udo4ZbASizJpDYsHqtpefcgGGV54J1PtaIwrnE/BaIuM4cwhH14lPz+98KiHeV3f
	4GgWcRUDnHJKtTHFPFcqz84Hve19eaxPrkmyMWQ0CAhtEkJm1C9j44V5HuGYwZzA
	ZG8wJQqYMnfpkHN+EkAoNaGnlE98wB/xnqzWpQwoM6npvGS8E9Vd7pFetyXtTl11
	/Nr9MzXO0klRoFdEDBMgwMzgbcgMF5MQiAv/offMvUwhzsSq+x1tLRm/HLMT9bxV
	WCZcekBdaiMKCZpQwwFPFFmE9zXBFNEt1EaF5ejGKAu/0wNF8HL/467F+X6Ict6W
	FT5nCg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4522skrwmd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 17:54:21 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e662a02f30so356666d6.2
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 09:54:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740592460; x=1741197260;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k1UOTAeEYAiBnkyZpz44d78r5B7uBb0CODxrcfWD1kk=;
        b=YA4u19iRrX8lTim3C4z/Feq1S3qBoGBLfwufVqikrr3CNIlsapjw5MSgXWK5o88KIE
         JkBZMgDhBKso9/iUJOod93jwamNGLCFKsZNZ4H0x+XblGP+Xd0dFWxgqQvivCV8RZkzF
         7gTY96AacRtaGhhWUmyz/qqeXywaf11gAomxOBvsrPOO8vrwytBXjSOuXrRhI27cScpg
         vyljZoWiQoNKNhs+yux6nMQt3/myUF37MaE2g02XEJYEyM+Zoyh1NIbyD6Wd7wrQRxO2
         5iFkG/zgsjPiVVsNHFGH++DB0gScnihlENlmKEajuGy8VWSxZ63s97LcfblANJvKrmK0
         9e2g==
X-Forwarded-Encrypted: i=1; AJvYcCWbQSGyyWu2W36mPhl4X8Ci9VTVFsTCY2aZF62yA3PJXcWs+3ZlL8+lSJk74idp9KYBJQWdf7nG3RGB@vger.kernel.org
X-Gm-Message-State: AOJu0Ywgox6AsxP2xXoXfpSCbHWNuGGYmK8yjWPhYUtL/KiugoH06jHy
	sn1scPV1CntCU56FsnhwHPAipRly7gHYRQK3LisLLBre0Ww7u0xpy8upfepqWrpD7I6XszP7Rzk
	ePc2ohzp571h8DcfVuA9tZQ3tbY6hhFH4wFKJaAdBHF5NMiGw7oK11k6jOPtfWISeXrRi
X-Gm-Gg: ASbGncto2vO00BnwVezBWxOi9vxsiP/N86Kyy9WAIgYhhB/OGvFMZQEFrNFFcRcL+h2
	sJSDJnPa1kUqSF3PWRa3GpgA+sBa9tWvlT4f9L2OMf4urgZCyPS4X7hkfO48Fj5EA24qJ5e/ZMM
	SZStQzamwEHOit0nAt8nRqp6gBco+Nh5z7nvwrayxDeG0k9dJi6erz4TWU3IUr/4vteLzRG03he
	JFUJKiYOUQJkqnRjTzAg/rKCnHm0qUZfCgB48R5ZycECgwuye9XZ86tAaYwhS+0R4RBsk2Y7YDc
	QCN0WYCNPB+F4JveSa7oDaGhawX99E1Ah1rgj/IQpR3T2R0lx1JkWDtKhAHqH46S3wUXqA==
X-Received: by 2002:a05:6214:21ac:b0:6e6:9c39:ae44 with SMTP id 6a1803df08f44-6e6ae9e22a8mr111525216d6.10.1740592460273;
        Wed, 26 Feb 2025 09:54:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH7syWcS42OEo1xDcdvQ08ZhO/oF+3o+Ak0wcAu1DA2U5JLIbwlLDHrfoMof7nVe568CRcIPA==
X-Received: by 2002:a05:6214:21ac:b0:6e6:9c39:ae44 with SMTP id 6a1803df08f44-6e6ae9e22a8mr111524966d6.10.1740592459862;
        Wed, 26 Feb 2025 09:54:19 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed20121dcsm370471266b.100.2025.02.26.09.54.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2025 09:54:19 -0800 (PST)
Message-ID: <e3b2678a-9e4c-4f56-a5ea-5ae46acd5e4b@oss.qualcomm.com>
Date: Wed, 26 Feb 2025 18:54:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 5/6] arm64: dts: qcom: ipq9574: Add nsscc node
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de,
        richardcochran@gmail.com, geert+renesas@glider.be,
        dmitry.baryshkov@linaro.org, arnd@arndb.de, nfraprado@collabora.com,
        quic_tdas@quicinc.com, biju.das.jz@bp.renesas.com, ebiggers@google.com,
        ross.burton@arm.com, elinor.montmasson@savoirfairelinux.com,
        quic_anusha@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        netdev@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20250226075449.136544-1-quic_mmanikan@quicinc.com>
 <20250226075449.136544-6-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250226075449.136544-6-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 0EayqaG62f2_BdX9aoCQ9ohLN-3kYi4w
X-Proofpoint-ORIG-GUID: 0EayqaG62f2_BdX9aoCQ9ohLN-3kYi4w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-26_04,2025-02-26_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 suspectscore=0 bulkscore=0 adultscore=0 malwarescore=0 priorityscore=1501
 mlxscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 mlxlogscore=598
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502260141

On 26.02.2025 8:54 AM, Manikanta Mylavarapu wrote:
> From: Devi Priya <quic_devipriy@quicinc.com>
> 
> Add a node for the nss clock controller found on ipq9574 based devices.
> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

