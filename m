Return-Path: <devicetree+bounces-243981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0E0C9ED3B
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 12:16:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0062E3A3A64
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 11:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81ECE2E8DE6;
	Wed,  3 Dec 2025 11:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OC14gGlB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Xd490/4c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0458C217722
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 11:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764760605; cv=none; b=DlCjt8pzBr01VdCfNGYldxkXJowR6R0UHD3AI3tTf12HajJFwK3yBeWjkWGO99KUVnfWmJK6NcDbuLLFpFzl1UoyoHrIRJtADH//XJH/5/qnd7x/SqsGf8xy0Vf15XnyR+8Wr0ugFtytclKLtVUctP491NwidkUHMeavWQuVqaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764760605; c=relaxed/simple;
	bh=vaGteorrlWcHmugbH9pc3T5DA+q0mweuH4jAtEtUSDg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qSsS2sYOs+UrepW4iZ3R6woexb6KKrFg2gavtGjm7rG4qNuwHJVtsiVxbxYtN63cAePuMu29JuLXCnDFnedOX/KCFmaKC6ifUlHlXLpCWyoEHMNHrMX15xnmgzXbFOFaJgYYqFzk8sDvG7CpXGy/9IBJbtaNsGilNRg6i9WGmFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OC14gGlB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Xd490/4c; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3AjHd51427887
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 11:16:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1vcxkhN0VIYWP6osWbYrzYEnR0RIZYi5lmnXSpJzjOk=; b=OC14gGlBmCV0vq3m
	u/Ely86TIcvg766ng+oEXFc80dQVxwePTzA56UbFXxQNe4jOOcLuX3ri1GzBOlnx
	x6aPzCgeK5Ux724uz4czt3vxvLKWPbgXGDFca6Lk9iHWsXoVKoHJoVb9T98z9Phq
	bV6g+Zza+FzYqVv4z/Mgmnq1hd/DQAy3sfXVvMlFnf4PdULOGaVwvmKyE5Po+U53
	E0VsE5J5/0RsPm+Gnc4+8uJgyoASSChRgNxQaYV44/1tVOKIbOE3HA+Ugo1MVGMZ
	sdycC0O5ft2ORMKeTY5e5Gs8Q7m4Zrt8wdwxykBu5EKrog9la1mxuVLoiPPExq2w
	dD7Nsw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ate0js9t8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 11:16:43 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b222111167so142418085a.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 03:16:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764760602; x=1765365402; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1vcxkhN0VIYWP6osWbYrzYEnR0RIZYi5lmnXSpJzjOk=;
        b=Xd490/4cO2MahXFTEsTQeRAecuZ9KdKLornYRjAtj0m/OjW5WI/rEL2E9YJO3f4Xsl
         eV14XSiTzwZJeafKR0T4j6fTUJwCvtJ0FeAPqxFz5rd6dkY8lQdD7ZPHob6CUgnFDBM+
         xf/hLcUum35TCo8yaSdI1u/IA2oEgC09MkyoEiEdIEo1JS4myKaikuuRjV2cpcR9iK6m
         1BSCoFymm3viHmNsp6is1DP1kKe6tXa7nLDFSS/+aWBHsY6OfXDnSV4SSkcunOClVLhI
         rVTtpPI285aaSNMaR6l6dqJkbTLx5kk3+Vb0gJUplbp8WXD87MTMj1bdbWv+dnL2v+Z6
         57OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764760602; x=1765365402;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1vcxkhN0VIYWP6osWbYrzYEnR0RIZYi5lmnXSpJzjOk=;
        b=qAZ7M0qja71rx0grLH5/EeS7BwtWOJrXs5liwv7PND320tLup1mXaiVzAx6ymMqhsv
         u/HCL2S5yx5CAOLl6ZxgeA6H/i0H96aQVVDYZIRIroW4v2HqOD0X5xiFNL4KeOUjrQ1f
         YR4/ns4khSFS8fu6/GQ1vdYAup8wcJZCtry2dH3a0uHFRrmBpLcmOe4zBTJlt/MdMRhe
         dhYgJZBEejI1SNYmp6rUVGsVLvUQMc9tt4A9zzFeX8F+wmQAyvFQuTEMZo6EWeOtu+bv
         PoCRtAsu3G6GdF3DuvVMD/h9fTs2YUL+icxuj4TuyjnvnUheeQZMlnNCKlrwvQQE4nML
         dO4g==
X-Forwarded-Encrypted: i=1; AJvYcCXk2Ydl9gLuHu0bdxDHRDN3cNJJTaRNqk+igcqKvRx3zA+VP90VRTvgh0FcZPR45bcY5sF6jk4+80pq@vger.kernel.org
X-Gm-Message-State: AOJu0YyxNZ1/Ch6LLSrsDi0Fev1sfi1lzxkC2jytN6jhqseMOJ6hrUGt
	OTs5ukf87E/MKOeA/JLtSsnfBVrjOwXB1seHgxYvl/U6w7WRDIbJ1sNc/nmND9rK4SIfj3JEKhS
	zjEvMzuSkUdJDdLMHNRvmzXRx7D7iTexnwa99pbmWJCowGlHUomDL2JsbsAMVQvTD
X-Gm-Gg: ASbGncu/21W+xXX//q/m60axgo/eW2qH9f8zeQiMUvLrMKrEcjU21tFEGCpL3v/SFP7
	4m+KjMT3G0p/CifBec5MHAl4cWTwJqaa9uwPRGpN9pUbTnh+tB+61yE1CvKAD762mI9woNpOH21
	odFweOEWaJ9bl2TEP2J5BRuUroi0c9EpEvZ10d9TWNu++saweTAI/m+EWttBQf+fV4TFiTfVTpU
	Sl3QcPyFF/2t10CAxbnLb5w/Np7VJeJSDFcZNsKKuc5uCumVtrThFC30VMK68Q736IzeEpeoHYs
	ixv907XC6HXs4a6BkELxzaA0FurQCJh48ATMqfFs6WD+CxGhOWsunMlUJxX6sKgxZufD75gFDeF
	GS8gN8wGOfEMdyDgwoiTZhVxAz8Cur/XIAvtA1Kuk1EaNMUHNTzsRf2qSkrtI9PO3Og==
X-Received: by 2002:a05:620a:2846:b0:86b:12e2:28d1 with SMTP id af79cd13be357-8b5e6a8f8ccmr162916585a.7.1764760602455;
        Wed, 03 Dec 2025 03:16:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGexy9sN1KXrDnKo2qqHpzGTyUcWmRk8uzjam3d5kIfzK18SMX0HS/cP8FWH3AVE4B17InURg==
X-Received: by 2002:a05:620a:2846:b0:86b:12e2:28d1 with SMTP id af79cd13be357-8b5e6a8f8ccmr162904585a.7.1764760600115;
        Wed, 03 Dec 2025 03:16:40 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647641453d7sm13387427a12.13.2025.12.03.03.16.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 03:16:39 -0800 (PST)
Message-ID: <dc3e381e-739e-43f6-b41a-3f77ce7e780b@oss.qualcomm.com>
Date: Wed, 3 Dec 2025 12:16:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
 <20251203083629.2395451-2-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251203083629.2395451-2-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA4OSBTYWx0ZWRfXziamPaPETsZJ
 exBUXwNQzTZ4t55BozwAsBXmiOJatufAqtEACI+jxbt25/lWpupQECGX9Glokj2HOwlDPeFOsB/
 Prf0R+sPUtTUFMWAo/n03yYduEOzWmFQImH1JX5jp+MYQCDjal6acy5UrmavOpjs2JKX1d90yal
 eAjmULOVduzErVCfH+6uK2La5LwVEXj5VEpOuCkHngFrPxYwa0tXAa8WCeKgICEymBXgWMB96Zw
 14m/FcAl7S1XRfgfYzc/Sv1AQV8dovBXUVfIaV05o5O9Dvj72J1WOwJXEnZHv0J0IvIbgTDDYuU
 wVeaPzoiG/BqTCSJsM6ZRPV1Xgggw3o4D0Z7p/OeAvjryQSDPN7Pdouncx3Wrn8NbWnkowofdl6
 sNn5bDsaIggkrNvP0cATx2+G+yvasg==
X-Proofpoint-GUID: lE97fPF3p-52R_Apg4Pja7WDtZ9Se51_
X-Authority-Analysis: v=2.4 cv=cOHtc1eN c=1 sm=1 tr=0 ts=69301c1b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yeJi84D-AGgTn3bWYRoA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: lE97fPF3p-52R_Apg4Pja7WDtZ9Se51_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 adultscore=0 phishscore=0
 clxscore=1015 spamscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030089

On 12/3/25 9:36 AM, Krishna Kurapati wrote:
> Add squelch detect parameter update for synopsys eusb2 repeater.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml  | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> index 5bf0d6c9c025..8a9251ba3b54 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> @@ -59,6 +59,13 @@ properties:
>      minimum: 0
>      maximum: 7
>  
> +  qcom,squelch-detector-bp:
> +    description:
> +      This adjusts the voltage level for the threshold used to detect valid
> +      high-speed data.
> +    minimum: -6000
> +    maximum: 1000

multipleOf: 1000

Konrad

