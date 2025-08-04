Return-Path: <devicetree+bounces-201653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9326CB1A22E
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 14:52:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2ACF718870B0
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 12:52:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6496B262FE9;
	Mon,  4 Aug 2025 12:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l4a5TFGg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4FF25E479
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 12:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754311782; cv=none; b=O4NqxMCEBrBko1sXhfXrfnxOCClxKGST4e8LR/VjzlDpm2ix8ttdD/KwwXrI8fKRq+FYlJ4MClNZk84HjXi+1Tcon2namLc8VmlCO2sTksCXR4mL1X/C7ScN3TmBv1hLLRtkpykiSWFkvHQZTcMl1aOBAn/z69qLZE4YRJBA8B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754311782; c=relaxed/simple;
	bh=gs2nTfQ71K1FL0/3F/7V99owAG7ux5t21uHkSyspMbA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nJWVHwEUg4OIHGbr3A0+LquTc45VHae5xLqXrT8zLJr8upEL+Q4afBF+cLvL64Scq2eoaEV3XmpWjMOYXM3+cAaC1XNPaUX+X+GpMdzbtPU0dufgnsyOu4SWkL1jie6ZROKoF+B/Ct/h4AVp0pnYwJ7H+qrxrsVRdytWnLmerT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l4a5TFGg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5749jFDr031930
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 12:49:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HuG+AREz8e9iXy+P66bDzIEPjOCAA2V0u2W3LH+qvX8=; b=l4a5TFGg+aw10qzv
	wNto9gUanW2Wh0M0mArmgfngm8ImtSmbM0h+a1rDPOkS4/qNy7RE66Q+6ljwH72s
	YsQqwj+ByOWV2EZAnOknRG2NLU1iL0z2p4f45SjYoxVAl6YpnMy0rCNP6qhOLE+i
	Fqh6JPBD6XuSdjtVPWRNRID+pIf2aJnIZxi3RipGQ395vVFETD57a0DtZmD6Og1y
	gQsTGC74Q60P7crsBOASFjKy5yC9r2cx90JG5DdmFdK+23Ea97Phxk9o44a8NRlh
	TbLyRxmoxXgiavBa19EiwqzrOTlJff7h/m398tjEMB21KavuwFc7R6JByh3Q3ptE
	ux4PXg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ak5a1t9d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 12:49:39 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e33e133f42so94393085a.3
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 05:49:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754311779; x=1754916579;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HuG+AREz8e9iXy+P66bDzIEPjOCAA2V0u2W3LH+qvX8=;
        b=YzqZ3mavtiX7Z1i3rs4/f2Nyn0kjTe9whzTKAR8K4OE85NZF1s+MJRkq7KpD9cxlBX
         wUcCVuS5SQwhtYV8kYjSgY/MnfbAwxSTNubkxcms/ZEvVozhYIBTua7my/d8he8pISYE
         MVpsjz5PbW7yaytCtjphX5whm69ya0vy1JWBUpork3Nqj9ZXkSUX4ycuwBB0omEISvPA
         VFxwQRbX+ZqM68JnAeBwBKNJfwfnZr9bT30YYuMgOMMpiGU7EbzV92nbdJdqQOL1lc6y
         RD0Ey8NVvj/Aki5XAhiUvnnmYfFEu6wpCM2EQqb3SyW2iqsK9qlNf5DZ1tLJSIb++Xjy
         sovQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwa2eLMdCtAEezxMWbseF+07mYe5wqsO61HkU2Gpdt75HvM74/DchdS7msdLYFO9af8pNcZMqzoYO3@vger.kernel.org
X-Gm-Message-State: AOJu0YyeYuPrLN2PxZiW1TQwBPP0b9sxnY5UijyxSSuylqTvru0k9qR0
	Oy11cQsLzryxN8gHeydEttzJXcrTIOXbV/e7ApbOt2frBh5UkbE3By0cGkYvMIqZQa0iPzFpcYG
	mwortvgzB41QfyLdmTPALP3Hod3XlOnqDjctXgJCCVk+nLsaS5GY6+VIOz+uL/yg7
X-Gm-Gg: ASbGnctjS9LD22BrUVL6bYvHXjbeF4KEpfj1cToFm7jnc+S1KyD68NnGAUucdj8G+MH
	gwCtMxRSVfYbp78xqU528nNHYm/3JPlcNTBqYzYCiRyL1OJ5vtmsijovvCeeDbelMEZxMmCzraG
	+R9gp3J09T8oDXHGNdRsL+TAkPby2r5o6pKdk5jyqiwJ0HVWEbBdKinEyPyp7jmvHeIvP7H28Ck
	ikQViGux4eqjr2vZD1LBVyfcf6vhgnEZVdDFzLXQuURNRYQRsxfzEH1TGloatrAwxc6H2oYfarv
	KKbKXr55mQ2TETJMs2UoryRiZ+IfDVcRNqBz4hY+YSi8dA+aSsZHij4olJnRLe15Z5FNjGJmbL8
	XPQWG3mPgvJN/sNF7oQ==
X-Received: by 2002:a05:620a:4083:b0:7e3:3029:44c with SMTP id af79cd13be357-7e6962dc3eemr595491885a.7.1754311778774;
        Mon, 04 Aug 2025 05:49:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHXy5F5bapQn0nO71JHnWJEf1UQ9qqolIof6CqE8t9CRANM4N77tCxcRTH3d0X9coKAQaNVnw==
X-Received: by 2002:a05:620a:4083:b0:7e3:3029:44c with SMTP id af79cd13be357-7e6962dc3eemr595490285a.7.1754311778224;
        Mon, 04 Aug 2025 05:49:38 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a2436c2sm717085566b.141.2025.08.04.05.49.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Aug 2025 05:49:37 -0700 (PDT)
Message-ID: <c96df6e9-ddba-43f7-acea-191f19d5484a@oss.qualcomm.com>
Date: Mon, 4 Aug 2025 14:49:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/8] arm64: dts: qcom: lemans: Rename
 sa8775p-pmics.dtsi to lemans-pmics.dtsi
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        kernel@oss.qualcomm.com
References: <20250803110113.401927-1-wasim.nazir@oss.qualcomm.com>
 <20250803110113.401927-6-wasim.nazir@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250803110113.401927-6-wasim.nazir@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDA3MCBTYWx0ZWRfX5WcWlRDxyXAr
 Q8PyTRHyO+IyjVK5tJBine2zMKKSypTMVSw/0bwt9Li6dxkG7fnbQ4vaf83SRwbsgnfqiKlChAM
 oa+4iegjkRiG50GXtQ4flolfBZTwoIeFj4o2np17hxN3SxaMwsqJBoehI16ByNgUX7BZT2GNyXV
 ZnDtrycuP+uwv/9vUo126q5rW130ZEYmwO0W9Shs6irdVfzDxN+ICQ+BzU3ADPp3p0iyKa1iAjo
 Grt6TpoXZ08JxsHCRN2ex/QKuoS9rAzYNl+RghpkUqDJ9+N3PU1kDlsUEZnD0wrNJ5MMpr2/Ewj
 P2mLTE3VVJsrRYKENFpugwaQy+Qr90W1sbF3VtP4nSuTGxSqzCPJubGfT1ZK2U1yESK6STPKMs1
 +ErOcxNYiJvMEd2FU46JuQ/ICEiRpu5iMXFTXolW+s9lzbBxuZCMfWOe8jWO8F4L+LMyo+Fe
X-Proofpoint-GUID: w-omMJSXzB5XpJmSuj7RQFxoSX_o2u0x
X-Authority-Analysis: v=2.4 cv=LP1mQIW9 c=1 sm=1 tr=0 ts=6890ac63 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=SmZcuDTjAAsXslZR8aIA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: w-omMJSXzB5XpJmSuj7RQFxoSX_o2u0x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_05,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=712 suspectscore=0 spamscore=0 impostorscore=0
 phishscore=0 adultscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508040070

On 8/3/25 1:01 PM, Wasim Nazir wrote:
> The existing PMIC DTSI file is named sa8775p-pmics.dtsi, which does not
> align with the updated naming convention for Lemans platform components.
> This inconsistency can lead to confusion and misalignment with other
> platform-specific files.
> 
> Rename the file to lemans-pmics.dtsi to reflect the platform naming
> convention and improve clarity.
> 
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

