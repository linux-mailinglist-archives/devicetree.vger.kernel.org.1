Return-Path: <devicetree+bounces-249230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A56FCCDA162
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 18:21:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 545AB300F880
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 17:21:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA734304BBC;
	Tue, 23 Dec 2025 17:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mU+NR7Rx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kolwwnJc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566222EB5A9
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766510483; cv=none; b=oP4g32PwmSqorZsyJ6GvG2SR0O1tBRaHAJJc2GEGmnQE3lznTf+F4YDtfJsrcpLq6aalDk4ZuS5jaMnEsUHLpmeE1pp20osOxqKBiBxJR7/IO6Lyqmc+cudUVjG4Z/8azNlNDP/2AnIcczfEpH8Wd2Hd6LKNXChcklYmNR871qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766510483; c=relaxed/simple;
	bh=CLb05InNh+cP4ohmcLKOu44fd9YE5m+H4uHkvdCcq/g=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=uEzLznVSo2WRvRKfHmSrhcKL1QHhNALAJ0IXe9zvXVIuzAGESlJXML1MOxeEUSJV9aYpmgceTvHm5KLkDfB2kiy13XH8QLNXJeI0LECa/JrQCJDyPWDpDcdI99PMIqBndsECZ1EKY8xdHmTxORqstsvvwqUFWM4LwJGIAGc5ick=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mU+NR7Rx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kolwwnJc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNH9C2P2747194
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:21:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ggATqNTh8YjmKXNhKvKEVFEDRMF8i6bIt5OeNrm/u3g=; b=mU+NR7RxLuSsTRR2
	Ncq/aYHq/hdSj/dWUNH14rwwPUwNxY/LwfvH2XqGliu4nhsqka7+urtLGBBPWnu2
	FOqC4Ln4m2t1p8QgKgf2PSZNoyHWJnyDL1xGIvrSAYrntJzYExAx/1DlWxpAhpOl
	3ctNVyWE4wj8+kHWhQ1yaCXRVE1uIiDpZVTnkc+qINeqJtepc/D/JirIcmqbNWWd
	A8W7nXLMJJ+NL1pVkO5cPJK5Ry7OsIp4U7csy5au9TAaU5oHSvnBMnYDtjrxEat0
	HFmlHOzCMhMjIUcpBwmuDXvbmuCkfymnmwkjWdWOOspXnv1aOG127+TW8BScAsiB
	xbx2Dg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7h5ctx6w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:21:21 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88887682068so15043456d6.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:21:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766510480; x=1767115280; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ggATqNTh8YjmKXNhKvKEVFEDRMF8i6bIt5OeNrm/u3g=;
        b=kolwwnJcTiyQ/BoPRKiqrXNo+697rFwQzKV3hy0zOxYH7dVrPW5iHoosx4f6VSMooi
         D3UpPm2RBIKAkqNww65Jd6+loIJdjQ9ioTO1eTFPVvjMAYXC7pFjzvtFwPKGj95ezXwy
         +tSoEw1ySVH/aQhe3VaIfZS2HL8lWjd8J3kghFLQt1//wcKzLH5yJEIlSy2BFHb+gcPW
         /8ZTuJKIZaYmuSb6UmrdoCd5CAMeZxqc0Q9/xXdCy6UIP39/uehA5vmZdltmDrsnUcKI
         KVqXiMH3ogUPDajORDJUyQzCQpoU9WuKoQ6jnEOlHsXTCwAUKN8TUYSij0uOilHlb21f
         thqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766510480; x=1767115280;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ggATqNTh8YjmKXNhKvKEVFEDRMF8i6bIt5OeNrm/u3g=;
        b=nhTKbxDq/3kzVIqTz0dfZVBrT5hILq+Qt4gx/XjH+Kv37ZmRFbe66iAsEe6SW5fVSe
         JZPMnKafipRBffdIwkob9nsb4vt+8uur1wsas3KdYZ0ZnuSpDaSG9oSK7JpJ+7J6beDY
         q3wDozd/M9pmHpGFSstraqDTihOq41/WAJ7KqormCoYjOrBpPh/rZ9iVa0xt/sTuUeeH
         XM34bWAtmME0r15u1HMjBsCNar3nsHDDdfVZxXMo6FGMMe87Wir8br99WqzOlVX8vuwT
         b+AdIhNPx3gSq8h3QDXYg1KXxl+5anOyN1S/OyV2BU9J6w77nN0aE2qf+iYTyxq9hZag
         YN0w==
X-Forwarded-Encrypted: i=1; AJvYcCXTaRNsJSvwh0jjtYw1Teps6u+OrEWPERit9848bSECq2dhcjDDcchsleAr1qhTZZdn3akfgOWc6yPG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6MMQ2NnWMP93ixAtGkaRU0F8Tduia+We5LTXSstz9iVdYUgiQ
	NKw5/YGaSZY9VzTsy1jJCRTGTrp38+Mi3A2IveXoWiF4GSE/40n3Qvg8Fgf/jJtwTaSVtNhhnuu
	dxgRSrukGVa3nuJ9oIXHiV7OjwTVt4V3qY5CkJCaSI8FHXEBR+uMvHMUwRs6WW23I
X-Gm-Gg: AY/fxX7AQuKyEsaUZ/8hWxx40E7QOcLcfxtC/Fl5xV/7bZOTkgmacdaUC7XEXQCjWEM
	zbMqMdVQXntkCpJLv5DsReUSQtgmxMe5Cw7j4VSVKoGhcCYKRgD4a3sal5S7MV2+MEZN7jXhhcQ
	F46mySwncjkNkfVTWRcv/JDpyFhWo9Rx/NyPLEUpq5XmTtFZUX0FfNw/BjqH+XfUDbbJQbg/nU+
	i2JB0h7pTn9SpDNjlfH16SZ6cwMLrMR2p9KLtlKXWY2Kg1G/0MlYTYsS5gW/6RrwXpaqHmpDJpx
	V7EVMyFEKkndVyVNEsFtzF2SxCjU5Fpw5yyu0e3g5xqgRHvgb7OEOyNvJpcyVnDyrt0KC3jPKE4
	Vx8lSCd/fiPfznLfxfXr7tknpz6OBQx8IDIcRPy71cYB1Kph5OkHUHZU5VEbMCr+DDw==
X-Received: by 2002:a05:622a:19a2:b0:4ed:7f85:225c with SMTP id d75a77b69052e-4f4abdfb09cmr160344041cf.10.1766510480526;
        Tue, 23 Dec 2025 09:21:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHKWqDZICPsw1vJJHp74m5LPHowdG85cds32F1xsc9VCuvpAFy0LUOTSK8WNoLdWulT+jyC9w==
X-Received: by 2002:a05:622a:19a2:b0:4ed:7f85:225c with SMTP id d75a77b69052e-4f4abdfb09cmr160343771cf.10.1766510480029;
        Tue, 23 Dec 2025 09:21:20 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de10dfsm1436898166b.36.2025.12.23.09.21.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 09:21:19 -0800 (PST)
Message-ID: <273ca861-d60f-4a35-afe4-8092581f81c5@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 18:21:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: Minor whitespace cleanup
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251223152559.155703-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251223152559.155703-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE0NCBTYWx0ZWRfX5tcpZablc1RN
 tPed0iZEHM9V95WGRBpd9SzsJQuWfcbwqINn6yyoHQfjKuBhLdQ9IblFkaRil4lYtUBdbL+8PGe
 PRlasdnHrERXmgIiDnogzVlARG78x4qGZf3W9J+tFsrZPQIc9IrS1OrKoi9DWo/6vLYMPjT9DzK
 bSo9fMdI17pztnJc+d3+l6kTT5L/xjaV2wnKg+4k7Aec/Cc3stK1kRuFhYYfRIxJ1sVUrs9pnUo
 v16KOq8V4Pm+KJ4Qzgra18uP1peAvaK3VTR2azVOoE2xBMBjubtoLoZ3EqcyfXRAD/I0sr9/lC2
 FSBJPSw3znnDrwPNJb4qV8XUe98FCbG/SuGXpm03LBvB3X5J04hY/A08v5qCW0sg1MUlRNFray/
 DUA6eOTd7jcGfl+3Aq4RQN3B3w1FQYHi9VXJYBcgqXtdHQ4/LzqOUTNj3f6Nfz+oVsXydel3Cd6
 tdqbTKYILKlDnCRgc4Q==
X-Proofpoint-ORIG-GUID: zQDy1e2dDgz3-mb11l8k1IMIRZY5MInY
X-Authority-Analysis: v=2.4 cv=LeUxKzfi c=1 sm=1 tr=0 ts=694acf91 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=FLYuuQH4aP3MUV2sBEwA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: zQDy1e2dDgz3-mb11l8k1IMIRZY5MInY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230144

On 12/23/25 4:26 PM, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space around '=' and
> before '{' characters.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Patches done with sed, verified with comparing unflattened DTB and
> dtx_diff.
> ---

Guess we better look at the Finnish tooling..

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

