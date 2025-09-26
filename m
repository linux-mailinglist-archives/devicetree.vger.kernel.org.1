Return-Path: <devicetree+bounces-221853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD12BA37BF
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:23:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3AE341C245D3
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF806286D70;
	Fri, 26 Sep 2025 11:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cp1fQwov"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8181D225A35
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758885775; cv=none; b=H7vzW9OR7FGhlZHJLpNLeih07tGx0/r/bnGxpJapITv/NT9cXYvlIgVns3h5TSmishfBeHifkBK9Nn3GUtv8qaj4oyDhSU493zlHYwxe0LtTgRMVkPdTuc4LpZ8PRj5AZ97S0wnOIm4xsDwPseREnt5ZJGf3Gd7XUtgrn2LXe0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758885775; c=relaxed/simple;
	bh=w8UjKz3JmAkLlT8rRIb4rtiF9FozQNv2oVZ++KgEcIw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SFHhEpkhUHsq3yGIBEFMW/8e+z+Lww9xp3Hi5IhxIFFMAaAQfiGJQdaJJ7q5RnYZiM6gurF4bmMqPVFqw9RNtfun5ZKjh5GRMiehYWTtNbrkoprOQdRcUU53+SoT3QOtwtDaY4OIzvb1YvIzJP/JfYdw1A7s8zfr8M6E7b79ZYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cp1fQwov; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58QBAjxn019603
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:22:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tuxtX1890cPtd+MHmOZQ6ujci4mRqE3iVb2IHgC81aM=; b=Cp1fQwovEC++G08l
	rDd2rMDgVWnZfR0Hic/oDBz3427IdZ74vJY7PTGfxmOyOscznIMH4eT+2asXb8cD
	Zk2dh4w72ZgzOHxxHpM+enLpNoDsji4JzqvSyOHlLesrJxNk0xyi469fNFx/xPmU
	FHPAi992rxw0e7zhNiFOe2XjWkKOG6GaKH5lj/pyGN50QmpMRkbiwoHHrJZKVMNh
	9hf/EUxxSvlp7VERvYZnljLBnLOQTZM6Nx4rLEAW+iKTqbjRw/Qz9bQ/mhk89Jda
	woDD4M0WxujdsCyJuyFQdbCNnIiPbUh69QShX/1ZWiKIfURnkxMrNX4TdR7N2peb
	AC0W1A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49dsqrg0wy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:22:53 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d40407c6acso2774571cf.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 04:22:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758885772; x=1759490572;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tuxtX1890cPtd+MHmOZQ6ujci4mRqE3iVb2IHgC81aM=;
        b=nan7yDNl2ze72z3X75qRat6sdUDaVQ31XY3FLmq7WD5lTnc1eMKSwTZpBwpr5x8FW+
         jZWuC9WEqQWh4mDcmK+mtmP1PMmPLV0cKzXjWVhlPuz6dDVGGp1vQxTxjsD0KERNCFEO
         7UP+plUykZzaor4qXRp7h2bz+3Rdf1tATVcd/UtRm+Y+S9sbnSbmyq5cT+OObV50CLOk
         gkBDuhPxm4UOwYv6Gf5QYuXrs2d13yIh+vflY5Gkzx083Bg1gMrz4abyzvg5WFnYcDJu
         F91doyXng7yFoTD2oLNIgkGUVSWrmygD/HSIlisMJUC1WjQtLzaqN9Gmgo/xpv5eNqLD
         ksxw==
X-Forwarded-Encrypted: i=1; AJvYcCXruaCFrbtP+tYaa2NSS6UeVRWOKX3gdnRQGlN/ouIoC95PebyaMzl7y7rdYQjJ4nKHYR6p8Z6/Pq9O@vger.kernel.org
X-Gm-Message-State: AOJu0YwhopwDQwiWGX91tDNdPiDvhk2mD/gVYnp5n2GXELzo7YjKHbwD
	3HV1TERloY3jcmDiNiC7iYLl2U9p6rbIHiOpEKIzwzmMGif5GX6xqFL7wZxUJ9Q6DHHmty9H7h6
	hVQE1VBap/rLcP8hDWo8d4hReq82xdSOQKXv2+/5r2rD7kt4bdZIH57Bg6XG5bhZq
X-Gm-Gg: ASbGnctimoSlbv/wg0x7TWIEd78peZmpeGcOhxadHsXHvdrFXiRDpZHHssPMDezJffl
	T+hk/vrb6CytiYYELlgEVwmch331nDrpNS3PObqsaHvO/TmHMN6l99oRAXspb0hdmhVg0INFwnv
	Btj8emczbTRHW93mxOewxH1OShoNVceO5QvRW4NGUZ31I9oZoJm4qMPBmZkYjQKK/1YdgNDLgl9
	YU7k6mMwMyxGhpjmPijXpXEZ6NaxGn0mtS2jkBFCTrOTAmucloCyJ+RJd7AwrmPDpjLuKEqo7yo
	6AP+cbbwdp2r0JXUCTXcber6ngAi0CSIqlkYt0vKnWNnVLVg8i689HLdFfM969Tk5aqFiwVykra
	uwrKc888urY3WgUM2NfbSww==
X-Received: by 2002:ac8:5d92:0:b0:4b7:a9cf:91f with SMTP id d75a77b69052e-4da4b0490f1mr56089631cf.8.1758885772365;
        Fri, 26 Sep 2025 04:22:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH/1aHo2ihdQlKwwuKZGd5wor5Yh3McpdI62z7YQSSu7aCujq1R5bN0ifT/tMZPZVvYbkZYRA==
X-Received: by 2002:ac8:5d92:0:b0:4b7:a9cf:91f with SMTP id d75a77b69052e-4da4b0490f1mr56089251cf.8.1758885771824;
        Fri, 26 Sep 2025 04:22:51 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b37463f3efbsm177337766b.28.2025.09.26.04.22.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 04:22:51 -0700 (PDT)
Message-ID: <8d0b29f7-6919-4d70-9262-1ebadb149694@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 13:22:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300: pmic: Remove 'allow-set-time'
 property
To: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: kernel@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Fenglin Wu <fenglin.wu@oss.qualcomm.com>
References: <20250926-remove-rtc-allow-set-time-v1-1-76895a666939@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250926-remove-rtc-allow-set-time-v1-1-76895a666939@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: gEm18H7A2B_luO1azvh1OspuwlXtRT5J
X-Authority-Analysis: v=2.4 cv=d8n4CBjE c=1 sm=1 tr=0 ts=68d6778d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gJi3wn3HMf6CnFoazlIA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: gEm18H7A2B_luO1azvh1OspuwlXtRT5J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI2MDEwMyBTYWx0ZWRfX05QupQUpJBto
 DUm7bL+GT1SoIW7C7Tes9357PEUMLQ8WphanRegtGgyXi69YXoxdXoIGRxoPEcN7To4znB4YpzH
 ia/L7lUKdKMblvPapLWFC37QxxSH/EboCAgor4Tedmiy8z8hgNBxP4USP4NcWAJMV/YvKKn1ltz
 W1MokcPww5Lmzh5vO9J61HllRXIgyS2hOKWH4pbBIcdbQxPC6Mr6yD+GJE1VxzyhWLIy2UxK3Or
 QtY5RA9yFLL6ZPyoky01VUZgwO6WCo2WLDwlonfSRWBTZnTEAHc2qgdNonv5jDHO1WdQ6D88VI/
 vJuVSQEIKbrwZV9IjdMk+z3awQMrKKc1PmJIyER3Lx2vxCqzeyHXLyxClJyh38/ep06BWxEkqJn
 maxt1y6wVLdZrv04oKsq5LIa4Qr+Mg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509260103

On 9/26/25 6:09 AM, Tingguo Cheng wrote:
> Remove the 'allow-set-time' property from the rtc node because APPS
> is prohibited from setting the hardware RTC time.
> 
> Signed-off-by: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
> ---

nit: "qcs8300-pmics:" (like the file name)

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

