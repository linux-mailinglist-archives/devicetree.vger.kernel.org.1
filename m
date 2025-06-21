Return-Path: <devicetree+bounces-188074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C3133AE292C
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 15:31:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E30F3B4F34
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 13:31:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65BEA1FFC7E;
	Sat, 21 Jun 2025 13:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NwJe017W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66E17482
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 13:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750512686; cv=none; b=R+LMf5psefPzYNxlBJiwYqSP9IdHYjjUM6keflNUdjdytca9+bSOUjf8MxoTo8VCCEZ7NmVBvHkQA78sc0HMdIogbO2HWs3IWvd1E95b2UnuH4ttY5sMTO1EUagC3wFVXso0kUPnAdUyN39SbPurBulv2UEaK/2se0JFAdxN0FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750512686; c=relaxed/simple;
	bh=745XbM+R293U6NPlApp30t2HMHXm/4v+Q8H+vE8yLsA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=turU49GeuecrafNYf4QuSJcE4IoJNgtLUg5MuvAFrsCr3tNXYnVOOPTa/wQZbU7WKOGdr0hbqmW6r7gxq+LuxAINNsrnmsZbUdqITISYRorDtGKY3Bv9/Kr/pCwmN9yir9X5xcvGGoGSdqgwIICRtHztN+y2+AdrF3AnRAwhoCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NwJe017W; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55LAU4wG025910
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 13:31:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T9imrZN8KkxLJw4ZcE6UYLM4xvLjHma6UdnfjLX804k=; b=NwJe017WtgcjFxiY
	FvI0KGvr8CIJ0WYscZffC+8JtmHCN3ATnnM83sZaOdVyEOHsBGTkB+GfKUf9z1ad
	NjOpRHKlsqrNTd0+Zo1rASOr1E4cmBUBO667y+tWFP4eDjS6f8PaBezGRDkQEeuN
	665QYRJhZmAbtdaiycPnSk+3uiQwCdrQHXneGsIqt8ZYPwuZNiLrL2k2jd31P1OM
	GxpWQ5sWL1DKvSdeXBApjYvd44oEfMw0uPEe9yQOvuJTA+LuPfNXXKtK443GfeIX
	69r7jNugbcIk/0z6a1XNwSsHG4NhM5BxtjAiRJKnqgTMFL0KeOo4i1oLmICQdbgj
	d5SOLg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47du0x0634-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 13:31:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d21080c26fso72345485a.1
        for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 06:31:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750512683; x=1751117483;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T9imrZN8KkxLJw4ZcE6UYLM4xvLjHma6UdnfjLX804k=;
        b=uBXUXxGIM5SxPu3zG6CYl0TPCS1PDGJUDNfLxE/EyvgAnbDqsaCg7KAIEX/YSrqdDS
         2jDRGNkCIoQtORphjgW0mWk7AWqpFMIrCiMupqtPr0+Jp0Ck9W+cZzlREZ/9iMP5n87n
         5THOHAtlUvkQolFYqjLOt5RS2indVRw9EL9LXVFLqAjjIkHlB2O1U4uYSht+fNx4L7sZ
         m0DVop/+314eJpQhx6BwvQjaHUbToa5XYgx2KUDNrAcbKKv2KpUr0sRSdgiiC2JxHBbU
         aCZyzVisBU7McKY0AYJcggXNUjhOrJB0BHli4MK0I6mwyJfaFTq5oKEyL+m+36dMdPA/
         BeNA==
X-Forwarded-Encrypted: i=1; AJvYcCWyhEOtI87XeKDZe1b3pprE2AmTWpmFepIWRjKY54C8k9Z+L5dY9SR6KwJSiBrtzfsmmN5M/L80OYTq@vger.kernel.org
X-Gm-Message-State: AOJu0Yzaf5ueqHpk/8WGdO+N569oaJCmC8CIOjNXv2FMX1rsCIcoIdd2
	9a09UcErezSVX8TdcUYVx3TfUxiTIXOqrLP39m455YRSfKBXgaKptsPPJXtT6HcRae4zOEDw7p8
	XFXNxT8zzrgAgPPQEL1XHwMQpMZ2fB+I3dB62MH2yx6BCGLtLYH83q2yYZo0ydgdX
X-Gm-Gg: ASbGnctxyofHB8ktwVPC9waLS2s5Uuzm9/zF3PTbX5mjk3kDj/LReBI1leGc9fEoZLL
	Qc602PZwbJih37Eh93xIOjc12Il6xrkt1+x571NIiLlAVM2+ZE6etcrOxbOivNmYLN2qLRP4RRr
	q6K4hHu4MDUfpGouLwNvgb5hMaW5MQrKjJC4JbgXLPuAtZLEAGB0mbMjVY5Y0mM+te8+iLGwhB6
	8CO364MbPORWWqX0yR7zTqnuFhLHzs0pGjwDkxyX8V7cVEIxWbUDau481Xte5yQd0Y0ALtFuIi6
	mbzX99xKoBsQJ+7UkCDJ+QdqqUSrkhZ8jaEImInm3v20qn23IyaKFiFKpliDGEfzoSWRMXE5FZ9
	SyPA=
X-Received: by 2002:a05:620a:454d:b0:7ce:e99e:bc87 with SMTP id af79cd13be357-7d3f98e6631mr348327185a.6.1750512682895;
        Sat, 21 Jun 2025 06:31:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPnraGfBvL4P9bykA/yT+Cv+md6ula2ABkfuQgFa8vkKOqRNiJQoz/xtOasxclp10nTjMA/g==
X-Received: by 2002:a05:620a:454d:b0:7ce:e99e:bc87 with SMTP id af79cd13be357-7d3f98e6631mr348324585a.6.1750512682368;
        Sat, 21 Jun 2025 06:31:22 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053e7fc5csm371954366b.30.2025.06.21.06.31.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jun 2025 06:31:21 -0700 (PDT)
Message-ID: <3e8700fe-7b02-4802-893e-2a297b7b5a58@oss.qualcomm.com>
Date: Sat, 21 Jun 2025 15:31:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] ARM: dts: qcom: msm8974: Sort header includes
 alphabetically
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250621-msm8974-rpmpd-switch-v1-0-0a2cb303c446@lucaweiss.eu>
 <20250621-msm8974-rpmpd-switch-v1-3-0a2cb303c446@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250621-msm8974-rpmpd-switch-v1-3-0a2cb303c446@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 8jMfvNN6GW8ZK7la6N0CbJNZ1NnMfBZS
X-Authority-Analysis: v=2.4 cv=fYqty1QF c=1 sm=1 tr=0 ts=6856b42b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=dlmhaOwlAAAA:8 a=EUspDBNiAAAA:8
 a=CZQOM7k-GMDgjQxx0LUA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIxMDA4MiBTYWx0ZWRfX22BpYKFlDvui
 PN0XZkfCMi14B3PrpHRVfch8y0K5AqCDF2Neh175fNz4+FZ27wM1cJxWa/5yprBra+7OqX7dUG3
 sZprI1CRrUH2CKf8MpOrGUZh85QgLXTs/pOAGgslfJMVfH5WzmPcMoqLP+by5b7IVVe7AVwgS2L
 0euuDXfsun1KEK2S18gh5PJkymujs+bnpKvPqblclh4DY6TaAF/VZiNfBfI/TMBo0aDSzcj4iJq
 gBhKxhy27asqrcI5tc6jGkc/cLczx5pn+nxcfcoOmyeAGOXyU4ytreb2NtpJlSFprBKAqajXrcB
 yoV71E7zWXrfjTE+mZkfVdJM1+UB7mERryAabFwYokXhRRGlJk85mTDJc1BFD5/U++dlhhtK1Jo
 yMefX7xIB8lZp8uHIE6x8GBzlleKMs3AbtJshAIMIX+NTXY4ij1fmbO1QOkL829YrcTDhjOi
X-Proofpoint-ORIG-GUID: 8jMfvNN6GW8ZK7la6N0CbJNZ1NnMfBZS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-21_03,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 phishscore=0 mlxlogscore=674 adultscore=0
 priorityscore=1501 malwarescore=0 suspectscore=0 mlxscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506210082

On 6/21/25 3:19 PM, Luca Weiss wrote:
> Before adding more headers in a random order, let's sort the includes
> once so that's done.
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

