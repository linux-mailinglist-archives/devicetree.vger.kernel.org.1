Return-Path: <devicetree+bounces-211662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3902B3FFE3
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:18:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0C314E7590
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 12:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0562C3009FC;
	Tue,  2 Sep 2025 12:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C+/dY4wK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9575B2FD1C6
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 12:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756814839; cv=none; b=nz29hbehwm4KpvLVlQ7XYwzfmg/z+6WE4etikTnQrtSS2+PloOi1JTZVVkuJkTlnF9GuPYEXNloFOzGGOb6S2hzmwlsEMIq17I9rP/OXYhOMG5lwAct6j+BTUa0O5CzcQTPRPnHGtdA9NykjcuVCJCk5LPjDVEYnWYcSsT0iuTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756814839; c=relaxed/simple;
	bh=xt2M/EYFY5LLWVrahB1ctY3E6iHAceS7dO6dEG4T8u0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i/7io+IInDLbAJ7K5JZEdygN4BX05QLIS9ibrYDnMjYOyK5678FiOFOYumW+4Yvp/ZeXvuAkOJ4D7Cxp0zB/pxgswxXa0fpgHo1PT0V69IBbgsZT8U6NKmCQX3U1IwaGguFsb2VV0nbStU49H+QzayzD12pwVn2yte1jcTiMZD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C+/dY4wK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582BC8kK012365
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 12:07:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ooAgjRpTHNP8kFwOiUKb9Yh/50coU4iyP/eWLaeMM00=; b=C+/dY4wK+FzU9XOb
	4osh6w2fl+WAynCdo5SXzupLhtwkiwRNhcT3l6gtaar/Z3+ZahQMR39JtpSBSuG3
	gxQuAdzeJGV+Ju501Y5mEcDtJPK/cHL3vmZ5W1RBIGUEwEbvgI88sOoXcayivoX7
	wh4Z30+NyS1+BBhYBZj/RSmJA2+02EKmu/rZ0SpnDPeaEAZoqts7cXRdEAuPVuaV
	79xq3DTGKMPsbhnCubvOers1owdLoI9touOy0qusIc1eyPTfhfIc9s1wmc0QnigM
	6G37eyGQyuE9MTejZwjgz/pE/p7uYyCAy6OS3K/x42roEsPi54Y3boGKZb17KOSx
	IROvKA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2ffkcq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 12:07:17 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b3387c826eso7333141cf.2
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 05:07:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756814836; x=1757419636;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ooAgjRpTHNP8kFwOiUKb9Yh/50coU4iyP/eWLaeMM00=;
        b=A7zFcXgjGnbvWvywv95wsDOswv2/ZPiwVJ2OUmO+xRUs/Znu5ny7HoAeD02e8qBYKa
         yKTo66qvWmI+9DElzkThv5UYvgkEUkVc1Koi+H3YjaSjnM8FTs53EyarhFo6FEk4+o6x
         pACDlxfyre3GrMpScPHueikBecLxEDXUNnCU4LNfczFM9Kab8WIOojF8/y89TuVA3RG/
         zIZkSP0+Q67uFhnVY39aB4Mq8TkbUNf7dXm1TnoMym+Vt3i4NXAqgnpmSeIafHxawJBN
         V3ecpPV5mwZaV3cqQt9qdZKYr2dVP9EAyk6rDbjnRVi1BiJbzIwTBNm7OWfRXdvlhURr
         ycnw==
X-Forwarded-Encrypted: i=1; AJvYcCWXMvXKqxxcFFTKypFg6SAh3laPpXRHhxeb1vS4XjSvD3+gcaQh4bCt8dz+O/ffzSat+5p/MS4wvWRS@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8zzIFp1Xja5IK2rHnP/eT4jyVZoDg9l430dfKXVEujWK6zR2D
	FNhcxzxvo+mYw0M2jDpEW3pns5Yw9fWNixdJ2Pe3fVpdH3qPA72hCZwDaj5OMEtGfagncTLwkCr
	vz6LLNxmZRzTAYdYYVlZ+liD12Gsib5NONbRzysW2P7O5prcv9YZSsPbzH4SQt3LB
X-Gm-Gg: ASbGncu40Hp3rocvG/AvNkGYymeLcBA04cRLz+pClGC/Mfgc+VQolFEmcYWVvtaSAue
	6yhqx5ojQl86eMEJpF0Cpm3FAeMuRjlOqMMmlvDITre9YJwJDlXCCh2d8HUQgze19biTqa2jBjw
	C60hKXs3nDkIZdrWEcQ6Z+ro5ztlymgp6kS0QEo7vKwoivAwuJqyLjjVGpxsxBCNJp/Z69PCIEN
	g9E9MqlWzesQf9yefcbFkmr0ZH+yHmkxEXJ7xgaK05tN6eEbYmQt+CbhCXtkkpNtidiBbRcLHNZ
	BLte8jW8Yb4q47xJOY+RBabJhpVuyhy1M1nor7vFn+mLTfu79YI3ojdjUlOOyQIyCRzDfgqERwn
	TB8TDoEBfyKCgdiWAt/tksg==
X-Received: by 2002:a05:622a:164d:b0:4b3:d90:7b6f with SMTP id d75a77b69052e-4b313e6f3aamr104880931cf.6.1756814836117;
        Tue, 02 Sep 2025 05:07:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGi7UgyhFAah0VP0bJeUSU1wMpek7APbVlPpwHN7xSB0N6vFLNU7Pjd9+3uvDbCoDIOTsYYeg==
X-Received: by 2002:a05:622a:164d:b0:4b3:d90:7b6f with SMTP id d75a77b69052e-4b313e6f3aamr104880181cf.6.1756814835494;
        Tue, 02 Sep 2025 05:07:15 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc52ae40sm9249215a12.44.2025.09.02.05.07.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 05:07:15 -0700 (PDT)
Message-ID: <e9c70483-8538-4f9c-9dd0-b4136b34a667@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 14:07:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 01/10] clk: qcom: gcc-ipq5424: Correct the
 icc_first_node_id
To: Luo Jie <quic_luoj@quicinc.com>, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Anusha Rao <quic_anusha@quicinc.com>,
        Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        Devi Priya <quic_devipriy@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20250828-qcom_ipq5424_nsscc-v4-0-cb913b205bcb@quicinc.com>
 <20250828-qcom_ipq5424_nsscc-v4-1-cb913b205bcb@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250828-qcom_ipq5424_nsscc-v4-1-cb913b205bcb@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfX3TNxQYxVeKD8
 S2Hr6C/bZqjfLBLVvJWHRJM9/sYbaOTwT7jtmbFcdBK4zALFFhNKRmghYB5p6OaKCUAnhbgSLeG
 lAbBx43mFSOc8HhOD1xUAkaME/G+1ZI9VEI0bFcHggoSrHIffTTVnek6WLjineSlOafb4oye3Ol
 EQy4W11SYZ8xP2IluErH4UDzS4AyKW1Nq+kvRz9CmrtfeVFqc1GUmvMmC8kuGc3bhm+7q6MNFCo
 6CJRyFyFi9zddXyj7WYDjARnwUifZFBP+MaBJCutficP7rX803TDA3rCoP+GFNFVazy5NzxQyUG
 6PVX2118YC4o3fF+zxsLRELeqWGFhxNXyFDIQvyBrre8MXo/dok+mJMcRQ7tUxXSAJQfchLDa5X
 0ubd5Afk
X-Proofpoint-ORIG-GUID: _lduQbvd0irAsZOZYxFxhx8puUWCmbuv
X-Proofpoint-GUID: _lduQbvd0irAsZOZYxFxhx8puUWCmbuv
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68b6ddf5 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=5e-Oaz1CA7JNmZ_uPyAA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038

On 8/28/25 12:32 PM, Luo Jie wrote:
> Update to use the expected icc_first_node_id for registering the icc
> clocks, ensuring correct association of clocks with interconnect nodes.
> 
> Fixes: 170f3d2c065e ("clk: qcom: ipq5424: Use icc-clk for enabling NoC related clocks")
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

