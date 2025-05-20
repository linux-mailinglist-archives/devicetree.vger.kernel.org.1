Return-Path: <devicetree+bounces-178905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBA2ABDFC2
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 17:59:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A72E83A4A7B
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 15:59:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0A2626139C;
	Tue, 20 May 2025 15:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZOco06WS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B7A252299
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 15:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747756783; cv=none; b=lWLuTTRuiybzbKBnuWcULDRN22ZO8kcK2panbkMU//S6f6Hc1rBAEHupe0dWXPPL156g/L5MZOSvUFllH4zrLmVN/+FZVJdxQfXVD2BMi7xEGW9qDLU7jX1Zz9cv1grZGouucdJvjiM+MoqbEPB9yjPb0gLPwwRHEUL7gDUn4jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747756783; c=relaxed/simple;
	bh=OcrrhDDH7vgYDN0E5Wpfg33umvt0b32VvrIdrQihVoA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fLT4AtIfRFJgfc4qGT6dUPxPr13iStyKU1qEtmxkv2lnZ3ONXao4J0AiFNFQ+tQ7eG5sek7OPY0Xh2fpla06yLC6PjmtSLDkmugrFG807KUXfGsBDOiaac86CW9puRn72/HmUy1y8Poi4MQKbM1qC30QXw6ra6l+gXUZuAV9rDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZOco06WS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KECjNf021405
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 15:59:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/xfg4gRbkgVq+WXf/LY9kF1qgnqADeMIlYTZaqw82+8=; b=ZOco06WSG+bs5GSB
	yJ/9sY/4a0XMGr+xyhT8EfAabjAWYMSk2PziXtwFlEyZMPkUH+efvzSNhHOJTxH1
	vpTqr8dr0hnYJ+lUtO8rwKzS72V5EcDCZtNlXnBT15K2wMj3NlW0FvSPokf+6QJm
	xdevgrnBkiSCrGKs5PbzPD/rUcLFNFMIvJTjtU4y6Xhf1QFt98hwUUZ1G/tSqZq0
	6kMgM2ct6+R7cgI284FKlTgfvBUFIR6iT2SINeK6GpRBprpDJVurX+N/aan6XUP2
	ZIF4oON0KxNlIGEQrPRIrw+ws9Cd5U5p09KFTmVIhpszEv76kcdPa9/NZJfMB7Ai
	IkLOaw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46r6vyugk5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 15:59:40 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-73e0094706bso7918483b3a.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 08:59:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747756779; x=1748361579;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/xfg4gRbkgVq+WXf/LY9kF1qgnqADeMIlYTZaqw82+8=;
        b=mTU+yDD+ZGN9FpgQASjF2oTwG3y8iN58s49H+1WFi0aJIAQauZJLG4v1nhN6HYy8uj
         YAGoYOO/c6VTk7q9Wmp1xKqG2OpzJE/ljUrZ4ZqTgvrLc1uQYuE9xZqBiL4Pny26Y9rn
         s1+hlDJZMZZmUa6gpOsvrEN6JpcQwJhL0lB+xzXvSF+KSwHMXFY/r8pEKNyWJ7gbiHLV
         xJrm/kJemCiY3CRZHGjg3ESkwyVZRUgxMn7+KB7S7Gx8xHNmrB3gVdAvR/URfpm8bd5Z
         JhG5dpDdmhanTiyjhysDBXXxi4MbuhiHPhFjYUUeXpjdZ3bU+dOU8ONOaQXR4C9SrKsU
         0q8g==
X-Forwarded-Encrypted: i=1; AJvYcCWI1tgvUeDywHW7TOSOggSOzaytn/z+r1L3HwuI2UqDetflaTQuD7KA5YpLfHHwTS1JweqC4pyRDyi9@vger.kernel.org
X-Gm-Message-State: AOJu0YwfHXOT30Lho73jjygcT8k9abRO3T6/FYlO35Sevp8Jhl4oW7Uk
	lHKCzN86TWX74+uMjehNRIk1XKiXq8W89p/uOMmbyqqMd/MsMC0B+rH93m8NIzbxgbRwvhaN/xf
	lFCEPPqflZ9m3P95Nlcg4HAqMZ8MvADXn2wmG5RaIFbHdEiNGr8AX4SrIkBWLYVPT
X-Gm-Gg: ASbGnctDFJ69ebBoOZk2FJuBfvGKX0W91GOE0pR/7oybr+nIc36DcSRu4G5Bm7PlUCr
	BIo5L9t+p3XW2Ens9tMmhAsEy7hbssvY1gXinsXb/3sKk+Ql03ddcNwnA6XQG1t6+iybRnSNZXg
	TEnWxtFBmWjnVjd/kSOJd0rRU3H1KIRRVgSNG7lNHty1Kj/F8x811pL6hkc98cLao2L4gmPnf8k
	HGx74hKOD4P31zb1WnmqCEPXlusGjtEUBIucRIlJro9tHUPzxpsufKB1HnJuG/FHrFcyq0V2+80
	BLHZseH4PLL53itVfTu0O3iWYlYYBtAcLF14hDhJMJYtxomz/Xm34sWHUmw7CMQwSes=
X-Received: by 2002:a05:6a00:1790:b0:73e:970:731 with SMTP id d2e1a72fcca58-742a98b2242mr25057078b3a.16.1747756779457;
        Tue, 20 May 2025 08:59:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWizgywn3XyGyGTvaNXKFMpFRxaBh8bPEJyF2KLoiqVV6nES0DTFBt4rWEuNOifqkRR6z5OQ==
X-Received: by 2002:a05:6a00:1790:b0:73e:970:731 with SMTP id d2e1a72fcca58-742a98b2242mr25057047b3a.16.1747756779014;
        Tue, 20 May 2025 08:59:39 -0700 (PDT)
Received: from [10.227.110.203] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf6f28csm8102336a12.22.2025.05.20.08.59.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 08:59:38 -0700 (PDT)
Message-ID: <12cb2f34-2142-4a38-9e73-49c2cf66d8f8@oss.qualcomm.com>
Date: Tue, 20 May 2025 08:59:37 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH ath-next v2 2/5] wifi: ath12k: Add ath12k_hw_params for
 IPQ5424
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>,
        Johannes Berg <johannes@sipsolutions.net>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jeff Johnson <jjohnson@kernel.org>
Cc: linux-wireless@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ath12k@lists.infradead.org,
        Saravanakumar Duraisamy <quic_saradura@quicinc.com>
References: <20250518-ath12k-ipq5424-v2-0-ef81b833dc97@quicinc.com>
 <20250518-ath12k-ipq5424-v2-2-ef81b833dc97@quicinc.com>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20250518-ath12k-ipq5424-v2-2-ef81b833dc97@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NfHm13D4 c=1 sm=1 tr=0 ts=682ca6ec cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=dKmYHbQ-0j7vB82BiUwA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDEzMCBTYWx0ZWRfXxMWUfJ0Slxrm
 v90XOVW2uy6gHuJ8lsSR+X+BGy/lk2x1vkIz0R5J5Ksv2ldgSFcnmqIrI81n5Tx3xIyhGJSPQz1
 h5lasDiCmZgGe6jOCn5OZyiJT+jU4PrOYMWAcqKyFYoT+MvmtT6qYEjsO9MrvxHyf4AJIg/XfP0
 6+6IfXktZn5OCSAQ18MY5M3mmRjR5qxpKU8gS+oTnjE4bYw4eDSEI6ncbvvTYFCPua4v76zkbpz
 7xFhnpSNLbWq+Sn7HRVLiEcsXC66yda3X5clsDW4wFg18oz6fx1ncS/vtPsmXNKqAEka1kPDI/f
 ASXph+CXd/Mp6z6FUvPGBYpzBJeeI3H8bvvwx5AnrpQL7Vg7yWXHQVakE53+507jRL4vRzs8a2N
 l+0C70ScfeZWicVccTsmZ2amV1T4BTAuBI8vE+kdeas2p18ZJ/f3qMFciCd5Xk+wLpHofTzJ
X-Proofpoint-ORIG-GUID: 1L40wx1uFhilw4EusJ336hQLpUNyy30U
X-Proofpoint-GUID: 1L40wx1uFhilw4EusJ336hQLpUNyy30U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_06,2025-05-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=966 impostorscore=0 malwarescore=0 mlxscore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505200130

On 5/18/2025 11:22 AM, Raj Kumar Bhagat wrote:
> diff --git a/drivers/net/wireless/ath/ath12k/hw.c b/drivers/net/wireless/ath/ath12k/hw.c
> index 7e2cf0fb2085ab014fc14a5c81074802674b154e..866de53f37bb5af94e16c796a0052fda39eb4ea8 100644
> --- a/drivers/net/wireless/ath/ath12k/hw.c
> +++ b/drivers/net/wireless/ath/ath12k/hw.c
> @@ -1590,6 +1590,84 @@ static const struct ath12k_hw_params ath12k_hw_params[] = {
>  		.ce_remap = &ath12k_ce_remap_ipq5332,
>  		.bdf_addr_offset = 0xC00000,
>  
> +		.dp_primary_link_only = true,
> +	},
> +	{
> +		.name = "ipq5424 hw1.0",
> +		.hw_rev = ATH12K_HW_IPQ5424_HW10,
> +		.fw = {
> +			.dir = "IPQ5424/hw1.0",
> +			.board_size = 256 * 1024,
> +			.cal_offset = 128 * 1024,
> +			.m3_loader = ath12k_m3_fw_loader_remoteproc,

Until the firmware is available in linux-firmware I cannot accept this series.
Please work with the firmware team to make sure I get firmware via the
internal release process so that I can stage it.

/jeff


