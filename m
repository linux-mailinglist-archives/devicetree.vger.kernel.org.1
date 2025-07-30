Return-Path: <devicetree+bounces-200790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 935BEB15FE1
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 13:59:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A65823B02AD
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 11:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33D5D296155;
	Wed, 30 Jul 2025 11:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="crORyQp4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF939286430
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 11:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753876746; cv=none; b=AZ7eeKpgOw3JB8NZmVIr5QfbMMYGtYArkfA1wjqP/6DRdB8byhbpfyMalrNQbZ8R6MqEjQ38VBcv71I4neSOEBFVDjXHZ7LCDhjLIFa4BsKHqBycjNJadZNhBO4ql2p2q+bWsOvll5r6dEocbwaBvL0eylxBiTAe32R8A7ESDF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753876746; c=relaxed/simple;
	bh=HQDIFLaL7om6a5f7K5WAYN1xBKXB6S74doNDZJgGVJA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u3BLR+INclDmUmpk7+ixNwfRarrqVOo9OZek/gS58jbqHAIiFSEST+7NaTjnx3ZOLjL+AJfxKC7JVN4fDomzIuUWb+FL8WIz8eld5OHW/uykr/Lb2YfqqBt4DHJRolv+bHBBlGRi8G207EEJZMpPuFbIv7wkx3rFmBH2+3eFuvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=crORyQp4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56U9NHAS021047
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 11:59:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Gk5vGXil7RKOKTWhaZMiJw3ByMsUyxc9oWInTblZhxs=; b=crORyQp4VZYYq5OJ
	vXVC7Wpf33iPtrORDiTeGescorvgBNvzaX4JO8AvZP8vQDXOCg/Ow3SnuduUbFNz
	5lDV1TGFjX5DcZ5nsVlQrUMDFdelzDcKVx67ta3K2GGceIKhf68wIH6yE5v7Jssl
	vhr5j5BcVHsX7UVDX0w2HFlTruIJOVRDdbXUq64BVvHHNliW41/NnqWfsvvzDHom
	rTUCBP2VIvo7Y5edUNpOZAKSZRS4mM8ICO7mr6sLV78K2xWxEl0gsz2xVIoeYN3R
	D8Q+xHdxpbPFgeoFoqx4iVrQwUtpQKOnAws3Cr5yn0m6Ray+fyJpKE5sGd0vwHS+
	doS0Eg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484p1akk10-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 11:59:03 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70771f26fb7so208606d6.2
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 04:59:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753876742; x=1754481542;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gk5vGXil7RKOKTWhaZMiJw3ByMsUyxc9oWInTblZhxs=;
        b=gGiOipVzbxKh7i2H4jy8T7GGB2RK1tdfGddxeHZ1pBetNAiZNAU3b/gp0NUTZtzVDU
         B255SgRnspDl34CLI6quCd92Ow6ddfj41TFBKDCd6ZD7tqMBgLWEBjRi5bM/7tDWOjdB
         9yYQPxYuMeY+f/qEOKFt6trbY2hUmWgS+LOwchudC8X57h2ORvQ8ExqYOSk7elfq4H+p
         98vn6odkb7pJ1QHhfJ5OOMRneRQdpYBjMJLC69KQRXJuznfmfMBN+jJaLOdqQZBn5N3c
         Pmso7+bmEmJukzKhdZ40WnoiGBKdII4h51ToHwSc2VC4+kAFInaRRsthFmDFCohsy2BD
         vNjg==
X-Forwarded-Encrypted: i=1; AJvYcCUOqgAghUAkY63nBnohr8zL1+kSsazy90RJSSdlGTUYgkj62QuHOda4fd76gStHf/RgF3Oyp+YqyFEs@vger.kernel.org
X-Gm-Message-State: AOJu0YyJzswKrtgEuU1FnONfNOjJvHKmWlS5ytXqSr9nfhEZr8f0uvuE
	M9ICRg0b0aXYnl08Hzmh4GAoxGr12cvioI7Hc7v/MQqKSlp6nQpUBn8zm7oaaJU/+iMnJmPNaxI
	PMaRGGAlkuglIAjeaYOf8sbZGeC+R4vENcDN/ZDR6JhkdsT8CZgver4ofdJv4n1zVkWxbFOe5
X-Gm-Gg: ASbGncuwrJ75SAUZitF6384FpNXX9LzyqlRiGrgilQ/NtNHCUNgFcMj9CgKY5eiHiI6
	2Mr8i3aniPwIJB8aGPX8a6tEImveSDXUva+CqhF3CwyN/wsgoiXs8lcPrGZj7f3BuyCZff48J7T
	vBOweyOZ91BK0yrSfIpzssJvEaoL2c52B66jf41AcY+eiZQyzuhuigQUStzBm0J1hvZvhlXgqFF
	PqelPM8DFJ4dv98qNsh3ARaZh3prbBm+wne2l4HpFUvwaE2UVe7nFldqK9rDYc149uK86RGuMFH
	s7aFLK1kSzO4Bzd/C/cpTHEfiRsXuBdGHPwYJFiUtHbIie4g3OTd1LcpqeDN4Nczc+jk3Mgitz7
	6XpelU2wW3apeA+Xeww==
X-Received: by 2002:a05:620a:2546:b0:7e6:39a2:3ebe with SMTP id af79cd13be357-7e66ef831b1mr218066785a.1.1753876742523;
        Wed, 30 Jul 2025 04:59:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEy3Ac2RJmbNiBhetSgsrV4zyrjPh4J4l/19B5GXz/9xAxchLE62srybp1Dcr/TAc04N6REnA==
X-Received: by 2002:a05:620a:2546:b0:7e6:39a2:3ebe with SMTP id af79cd13be357-7e66ef831b1mr218063685a.1.1753876742082;
        Wed, 30 Jul 2025 04:59:02 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635ad9cb9sm741180666b.123.2025.07.30.04.58.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 04:59:01 -0700 (PDT)
Message-ID: <e7952a9e-23db-45fc-9abf-0373fa26f2ee@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 13:58:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qcom: edp: Add missing refclk for X1E80100
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org>
 <20250730-phy-qcom-edp-add-missing-refclk-v1-2-6f78afeadbcf@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250730-phy-qcom-edp-add-missing-refclk-v1-2-6f78afeadbcf@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: TIk06koubZdrA87f34Awob8PQDJJdX1z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA4MyBTYWx0ZWRfX+74i8iMiu1Ua
 TVS+jqWMHq0aqQMZj/NhpK+VLzG89gEm8olauBfeerGbPuUR1d/b4z0eIEI2n6Au4iLM/Mtbj/e
 cMF70PgqK5gDnoeOx0wAx6DxOVSZV9ILQwE9hYQ+eXCwV3KCI4aAP16NMPQkFwfJoPaJf086pq6
 pAc9+MQVcTtYV5lXu9qKFlnadzqBaTGbAc7j2JRzJsqzFn6fzSvS2QIXGLYvRKIoU+VhyaPNHO8
 q9q8qCvfcukpXS6sjudwubK052cNx3R/tGrVHEpFJdsWulsJKb249R663MN0zY+wm/2bmXqp9HD
 VK+AT3mV+HIAJW9X+AkJLpLztHE8CvUc9Lan8dp+73RLkvRYqmptL79DRwAngpym2Ukzwg6jdvE
 L/3+25tfzjCcZWdms+CTrr1AvR+CvR8QOO1qKzSQF4KO2KUH1/HvSUCH0nKUK6KfpXv3IMm/
X-Proofpoint-GUID: TIk06koubZdrA87f34Awob8PQDJJdX1z
X-Authority-Analysis: v=2.4 cv=KtNN2XWN c=1 sm=1 tr=0 ts=688a0907 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=C9jaBoPFOhspESL_4l8A:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 adultscore=0 mlxlogscore=737 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300083

On 7/30/25 1:46 PM, Abel Vesa wrote:
> On X Elite, the DP PHY needs another clock called refclk.
> Rework the match data to allow passing different number of clocks and
> add the refclk to the X1E80100 config data.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

[...]

> +	edp->num_clks = edp->cfg->num_clks;
> +
> +	ret = devm_clk_bulk_get(dev, edp->num_clks, edp->clks);

Go with devm_clk_bulk_get_all() instead, no need to be so stringent

Konrad

