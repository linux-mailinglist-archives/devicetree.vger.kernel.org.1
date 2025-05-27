Return-Path: <devicetree+bounces-180746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DF6AC4C51
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 12:36:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E35E43A1810
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 10:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E709E253931;
	Tue, 27 May 2025 10:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k1Z8B3PT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F52424DCFC
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748342191; cv=none; b=U2qVTYJ/8FfLACHJteTV7I2qt+102HPW69nLI7dw2flX7WjkpcA1iTVAuc5JKywNGt4nTuQblG4a0tSnzfCuvqGxomyfjC+zIN9j/qVOwrCAm5MU2WGoJpG9I6VjUuab1ZICOWJVFFlXG2PKcL9rUJFOXPSIwwDBLtgd2XtFgOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748342191; c=relaxed/simple;
	bh=95YD43MMSNqaK5LMwdPF8tp+FZ+dyamPivRNhheSkR4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BW8oWu17qVwquEy4TiTAQPjEbmQhzNY0CxAm6+UKL89dJBpLuCpZjClvpWV4yurX1VNwDmnTT+FkPiAQ/EE6+Dj7Yrj2f7T7+ZUUTK86sMmOpT/mp+Snest6yfddveecsEvKtfkkr806itAQWxG5Waqu1HV96kx36xUlWVFyqoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k1Z8B3PT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R9YJx9001558
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:36:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ft8QwZ0sa4EuuX7mh+a4pQA1Ub71zPC0fRpxDZpjuQY=; b=k1Z8B3PTu7cwO/An
	zSMjX58N9s/zHNyHpypRgK9zxFnjor704xYy2WhTwdHAabuqNjUb/rED6lNz0YZp
	IfDNYckh/YTEHZbwbDKMarSiC81QIS5IGXvcDukiTM8vKhyYfk1o85oI4nuYisxz
	nmaerRcyCqhnf+oXaTuczw1jY9NnnM6pwiHGuZ0oZfW2PY+iJqjUG+PsBa7S7Yxj
	ckcZbPqty9etM75AxcSmZxCJrCpcaj0DaJfa/EwtTt8IG/swxAHgGiCdiNNcERFM
	Bl9N71NMv90J+KMfTIaMFp+2QGzbC+DgXHP5wfQ3QheMoq53p3MYduTx9xOhch+A
	YBuLEQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46wavkr618-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:36:29 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6faa8342503so3285026d6.3
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 03:36:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748342188; x=1748946988;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ft8QwZ0sa4EuuX7mh+a4pQA1Ub71zPC0fRpxDZpjuQY=;
        b=AQppIxDgRwax/PEudq2Jf/hdng5UM8DzfaDPXKMMj7wudt0KhSTYcavZuTEZMBDOfY
         2gGBbG3vjK4xHcefsFyQTFyVAk5M/y0SXRxeK/K/vpknATt9a1X/DFeUimxWOh2u0N0z
         sLW6HQgXWle3EnJI8ZIldl17WuCPqnH1toxN6xzlV4OYPnGzyLzdP7AfibTh6G4z56gI
         gxG0JfmurvF14mrrRDvv4BQnR+KgJPpRVTgETEOu8u9mvbj1K7ULRLLlkHnYUFXHvf3c
         4yC4u034wYwJEZ0J7p+Gl9JQwYIAd6TlMV/npK59lG6wEJFbhSbZEi6ZLVCNOfqk5Sph
         d8Ow==
X-Forwarded-Encrypted: i=1; AJvYcCU0oKiTyhZ/5fu6WXAWY9knBCw2AScRe+h9RoAzGVW63FqJzfIwokXPFmxrE+SVIjKhW9Zl57ewVGRT@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw6ICwXX+eZMI/PudbeTEqNQz67z4e/tQgsKepibpiUaHITUFD
	xz4E7CSVdFr7rM/t0swHO/i7lGPvvZ47SBWkX+q1Wxbd3itBGgDgLyFDcxEpWMbMVQxNNXsKmBQ
	lTiKxBqsGw0AzHcTRm6z7dh8LcuR8082tldjDG8ccYZonl54orAj936cvG5W6sx/T
X-Gm-Gg: ASbGnctqd3m50hVP8k801jR6YLtlgPPmwpiyyGOsBxe7oLWzG6gJ+/ZWFTOe92oIruB
	4o9Ag2+HIvDX6H/4bcRpZYqFtrSTMwXa03iKyxPJTbjrLZcLfEL3T65PLElaQ345R9kHjPnRTAZ
	VwPNnz+15DyeHQMZHkiW3EhymbebQd19Nk3YGgASF3XV3yMggY23voqzc6ftgOknrk34TqTT3pm
	BUTOoB5smIFLigWhJJfnZD3fgStAzgXh5Href71lRF/NDaSn7scZzTjvRrZDXVngHOjNJbpIGMk
	0z2EDGTuA0VnT/68fsmIz0OZ0WSeI8dozbDcwuniHKpFUMci10z2MXhhsap31a7Z1w==
X-Received: by 2002:a05:6214:2586:b0:6fa:9b06:99d3 with SMTP id 6a1803df08f44-6fa9d34820fmr72068096d6.8.1748342188359;
        Tue, 27 May 2025 03:36:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRa1Y4Koar63eOa+CmHZ0wuxOPR9FIR8wrbdrkAW5Zh1e7ttEcc8xkpvvR7wWXg0ZSiOKx2Q==
X-Received: by 2002:a05:6214:2586:b0:6fa:9b06:99d3 with SMTP id 6a1803df08f44-6fa9d34820fmr72067856d6.8.1748342187980;
        Tue, 27 May 2025 03:36:27 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4382ccsm1815593466b.118.2025.05.27.03.36.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 03:36:27 -0700 (PDT)
Message-ID: <0aef1687-0158-4d7e-8e3d-b6eafc38d049@oss.qualcomm.com>
Date: Tue, 27 May 2025 12:36:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
References: <20250525-update_phy-v3-0-5b315cd39993@quicinc.com>
 <20250525-update_phy-v3-2-5b315cd39993@quicinc.com>
 <mcmpmaapzv3vbiynlrp6sijdjvj6a5j3dxzoixz6b4cxqsvbsl@ecljexn3zg2e>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <mcmpmaapzv3vbiynlrp6sijdjvj6a5j3dxzoixz6b4cxqsvbsl@ecljexn3zg2e>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 3-CJWaEOGXKZLQdKJx33eyh8kHorK_0d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA4NiBTYWx0ZWRfXxCcDpIm4/dzo
 KpCU9coppPPlccfyWBBh/G3JnB9oH4uDGq8AgJLgj3MMrkQnBvGklbhk5+TWVMTbr2zjLSJEZYo
 jyAbtActWDUUaYL27n3oF0hqQsgvtG2dEihj60hGL+NOGMnzB8j/n3924/UzGI4ZDEx4ZL4zCn8
 PCRY68/MwdsvtaMnuzPZrk8ocmTOsBriz4agSTDua6rZ1pFISILXAyqBoWX3rThpROWSmFZWE3g
 NRi1AMzIkPDPRiNcW4C/FNJ+ZiaWd+ycBfRGnZgmewZUiLcZXcDRXeQyq9QhLBjfZG7VP/9USYQ
 IyZeZpou6TwaSeNZN4in2gAsnTJ2s2k7Vyi6m5F12buHyOc3L7TJOgUAWlu1IeAkSdlu0dz0NSS
 Ab0GDcOGthZ0UUWTnEMlUIUA7/u5W8FWZhyV0ymVyhoxxvwiiYtexrtrOekU5wJgPu0XHTTG
X-Authority-Analysis: v=2.4 cv=fMk53Yae c=1 sm=1 tr=0 ts=683595ad cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=oxSCaEAS-4EJenh-H58A:9
 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: 3-CJWaEOGXKZLQdKJx33eyh8kHorK_0d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_05,2025-05-26_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 phishscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=731 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270086

On 5/25/25 3:29 PM, Dmitry Baryshkov wrote:
> On Sun, May 25, 2025 at 11:27:18AM +0530, Mrinmay Sarkar wrote:
>> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
>>
>> The maximum link speed was previously restricted to Gen3 due to the
>> absence of Gen4 equalization support in the driver.
>>
>> Add change to remove max link speed property, Since Gen4 equalization
>> support has already been added into the driver.
> 
> As Gen4 equalization is already supported by the XYZ driver remove the
> max-link-speed property.
> 
> "Add change to remove" is a bit clumsy.

I'm more worried about this node not having these gen4 eq settings
(i.e. the part talking about driver support landing is true, but it's
unused without the presets being explicitly defined in eq-presets-16gts)

Konrad

