Return-Path: <devicetree+bounces-130438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 975AA9EFBE6
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:58:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34C8116DC5A
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72E881D63F3;
	Thu, 12 Dec 2024 18:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wbw2qzj+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29911C5F2C
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734029720; cv=none; b=pkWkTYE4SO0DbEOnZe8Eb0dNU4x9Fl3pMC6QTfp9zo+VRbkoDFzOAXuMgobekbh/ZtfUiV3icvyP5/fdfoxrhl6c2rVhWIBCB6YIhRlhhnt3XqKCO13UNWnc10ydWW88iJ6ofb/s3zkboxXOunIdetS+fz+DpFpBPl8rBjkV/Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734029720; c=relaxed/simple;
	bh=VHhYoiObE0x8hLOMYDgi1EiHys7DUtRw2WTp58pMJq4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ea9LQVDmVMgsuXwJkGfXPvyXi38Y2GuWP0qKKEuG8w0cjwhYOkvdzaTh8P+vzVp2/KwUndVIuaub20cVJsYQapgqJAEV0RYLCnECr9dx/Der0umXK3gyzYO7qarg6oOsti9tMCi5T7IBUbnDLd/vyjH0po/g8PW7BbZrJxMLmsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wbw2qzj+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCHjR60029230
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:55:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NdKzI7BVahLv34AK18VKfYKAJg+CMnnVLwMtkBIYJeM=; b=Wbw2qzj+UFHfrImB
	BNWsCJY9AwgfE3TodzH/FxNfrEbn3a/iFBz/9Lv0bF4ygzDdUXXGwl+y4JAyAEof
	53qFxiZeZrTzc2gTAQToQlIFZ5fEDqy5xXqij1JCw8APY3ZwluqHHe1O1rwHribN
	6ASpputkK//OrkoXuYwOXUBZC1nPPDHwSgvWkMhfoBdiYIFA9ckwWTwPUPDMc9gx
	GcvWD/FeT7AjusnBrY8OJRDUcHbgcX12VTHpntaIx8MZ9w1XjEzATAwm4/rbWR6q
	7ZVFhdNWHTmRPiJ0lWcoekXvzpgZFFeleiKy5gxhfsmD2oLAmCoNOoprOvjJDb82
	+/VUgg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fd4xuy7x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:55:17 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4679d6f9587so1801781cf.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:55:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734029717; x=1734634517;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NdKzI7BVahLv34AK18VKfYKAJg+CMnnVLwMtkBIYJeM=;
        b=V08tx9ISRH5BDhqKCNcoyPU0dg0YxLNfr008b+RNYwyz4q0HC5itkKDCgBD0i6K+uo
         GTzaVwjObkWVZHW7xS4RTyRZ4MgjT10vzW/IL3k2C8sjIK/slmXHIkyrdJ3pnjbVN+A4
         mAuSyGpRXAbHXh0L8vBqaD8ykzZpm2SH1B4FPsy5QRobTKX9oI9JjN2ywlieGUcrF5O3
         8FO7+XkpNsBP+uKVE2fh/fLO4CDTAvvFSzzMBxC7PqG19LoqmkawBw345COKsQPJ7z67
         SPZdL1IIoWStzq4Egg+j9uN0MeOcMzBG5OYSAdHQoCHHNTIGFEzYiHXY6eACYeMBPNuI
         QWBw==
X-Forwarded-Encrypted: i=1; AJvYcCUQGtMeCLzZ3jf/ZYNL+1STI6ZcuQ/OLpxmPrFQ2kAhLP/DgbGxV1Y6A1TWhznUtwiqKQRhF+vZ/hb5@vger.kernel.org
X-Gm-Message-State: AOJu0YxGYjt6DNWKe4mBlxK2qObBRZBKTwW0/pNpk4JrjWzu7eXsfd5n
	KKbFLKnO3ex14tdURKD9ojy4NQ624cQDqzkcIzVI/8YZmo4ifau+47rqOLTwCy4/SwBJxEt9Txc
	OVTlRz/7ya1EqmSR8wfhUjX+XDpZZwl/txQjcLbD4znyoYDlAEOLKgpQ1JW1Z
X-Gm-Gg: ASbGncu3hkcolpjqhWOsohy+cfy7bwp7hKmoSiXmHOgYxA6E9hRv5quflrMhGgMKW2C
	NcH8j18EkXBhZTZm/k/pkLSjts/fuA1VMLqETEj77vPJJ7kmq6eSe6GpwbuFyhKKCT66LqG6NA4
	jSiVtZpqoL+R319a601m46fGrLjLJ7tFvOgZZajAEjIKaYBi9R70x5mxJhbuYSao5D7rtEchRx+
	ZIqGsSOHg519QpaP8QMzPjt+Kpy9AKp/u8IiwiwmRbekZdYxJnN3XJPVZmeYJORG0s1xNh678/K
	8SETIgi3UHpMjC4kBVDx++k4RoLslkMtyRlgXw==
X-Received: by 2002:ac8:5707:0:b0:467:54b3:26f9 with SMTP id d75a77b69052e-467a14f7441mr7701281cf.5.1734029716694;
        Thu, 12 Dec 2024 10:55:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEWCiKp6+/klLKJfer1Q2n1EF6bgJ4k+IvJwiTon8zx1liPjIDd5Tp/nxpEOtnrhQDhDcJMsw==
X-Received: by 2002:ac8:5707:0:b0:467:54b3:26f9 with SMTP id d75a77b69052e-467a14f7441mr7701091cf.5.1734029716346;
        Thu, 12 Dec 2024 10:55:16 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d149b4a049sm10632829a12.35.2024.12.12.10.55.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 10:55:15 -0800 (PST)
Message-ID: <283a594f-1fa9-41a9-b9e2-fc76c7deceaf@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 19:55:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 15/19] arm64: dts: qcom: sm6350: Fix ADSP memory length
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa
 <abel.vesa@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
 <20241209-dts-qcom-cdsp-mpss-base-address-v2-15-d85a3bd5cced@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241209-dts-qcom-cdsp-mpss-base-address-v2-15-d85a3bd5cced@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Pn6nUWZFiOxKVlNbKnZXMZCLs1Ppm33J
X-Proofpoint-GUID: Pn6nUWZFiOxKVlNbKnZXMZCLs1Ppm33J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=838 phishscore=0 adultscore=0
 suspectscore=0 spamscore=0 mlxscore=0 impostorscore=0 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120136

On 9.12.2024 12:02 PM, Krzysztof Kozlowski wrote:
> The address space in ADSP (Peripheral Authentication Service) remoteproc
> node should point to the QDSP PUB address space (QDSP6...SS_PUB) which
> has a length of 0x10000.
> 
> This should have no functional impact on Linux users, because PAS loader
> does not use this address space at all.
> 
> Fixes: efc33c969f23 ("arm64: dts: qcom: sm6350: Add ADSP nodes")
> Cc: stable@vger.kernel.org
> Tested-by: Luca Weiss <luca.weiss@fairphone.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

