Return-Path: <devicetree+bounces-229875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2A7BFD3C5
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 18:33:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 84AB434C414
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:33:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5E5228D8E8;
	Wed, 22 Oct 2025 16:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c4wsam94"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4957626FD9B
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761149616; cv=none; b=gWniTaQyAVCQp1+QTFR6vFbl032eQ3bDRB80HQq5m102xt+vhzfmGOS2eXwbEH/sTTiIlgN7FPFpC7PPVg25Jvn1Rs1lvBZPbcgN4LcA/qz4ysFC7VFaFZTBTDwDRMTCAtHreRZhcmi1yNK4XrLztxX6DHhkKD8JaG6s39tnKko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761149616; c=relaxed/simple;
	bh=hrAdyqmnbORphsl8iKrOSD8immxlH+jgdAkkdcSEhJQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tnGmSpydDcAyhgpCLytk4XWd+wRRf9YASWh3UrBdX5vuFHCkSlKsXOM5zaepsS6LW9VZju1/AY/SL7ugpdi9s+r9/uMUvmnDDhU589mpUDgonXmItZd64ZfHN3Iq9kY1dLISJDceIWK+xGenXiZ8DHaoTyL/+77UVzomBoL4CCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c4wsam94; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M9lE4n019914
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:13:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uwOfoThWrQGJmwa8H4o/SymLUn5pkqKkfYkaRMBxxVc=; b=c4wsam94Jh1Bqcwo
	Y1pTkg2h9eDNoBzgBLGqyXvvs5fKrjjorBgaBudnJaMh5PLcFQ7zV4qwyAB/wCMW
	iR9N9PhOpNqwZi5LVqWKWKZPivkanTfTwBLZMaMC1fGaIbNTAbeVYg4moONGIZrW
	SjJUQMJIoF1Z39pFCS8jfJon8dSozrwyG0kyhwBAis5D002kZ1WELyKpTi3uBjLa
	M/u55nIpTSIyqKuA4YB443TV4ciWNVnojZSW/aqW6OAyS1EtzvHDiWfiXMykipHI
	y7YX9COMRJlwWeHM8v79LGxagf4zf6X6KsjgOfsFDRPTic4y7vlxMCpA7aQ4ZUmw
	eHrx8w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v469n9cv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:13:34 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4dd3c89ad67so557291cf.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:13:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761149613; x=1761754413;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uwOfoThWrQGJmwa8H4o/SymLUn5pkqKkfYkaRMBxxVc=;
        b=dUhFbFMrCAfQy+Xz5KAZaD5zja3T64pZvPq9Z25YIAxPntJWbIpwfi8FUnX0OZKBn0
         goAgsqWuUJpDmd1UmE3BnhySpm7g+5Rf+3Ye/wQy1hdRY1hchsdZl3WOu3qFQzJfuL4M
         zk+KbKEd4pm8KuRcwvBHtsGA1KAHMNX7IYwb1A7xmUOMbEWYSRzkErRo9vdObGiYxpvT
         d8xduH8TNVKWrUa45Hx7dYFVG1fDDbq4nR8STjB5AXF+7vfAPS3VL7cUvq0dH6hOXM7/
         RxF6GXZNcqqeChmcOQQjUtgh7yz5mPqo73XyiV+2xVOVrzqj7IzAplBXLHWhNBAijE/F
         NOhw==
X-Forwarded-Encrypted: i=1; AJvYcCXBYOuZjRaksdg5MGrKoL9GyV+QkevnFNdE4qxBMhoDQOqX10on5bSOHMXXQ8vmoOasoxGzVZNrKep9@vger.kernel.org
X-Gm-Message-State: AOJu0YzqOLeOxKWnlYr2HgbuzBwv86VjFR3t1mv45eZ6EpS+iS+cZcZu
	QzE4tU2vQ5LLPv4k43JRoqtvBzhgDUCo3VEM75FcLk2CicJPv8xGDLUuek37W3kNFz5RCw1MmjG
	hxBKmOqCKNIjWuW6znCnoTSwE3kEzu64N2B9jBnowopRfFAQ+bpVPh4Kw87ngmVG7
X-Gm-Gg: ASbGncslpiRry1bjezstgSgLNMTUU5PJL2H+Hq/nWKuLC0gYQCMLgA40KOLblNnU6Je
	kSqoqQMLT5zfoFfdK02kFOWzwcL77a4YCfiRML6cgsQYsZU0Ecp+u5wD+RxRBcaSg08tjTzSJ13
	ZkkDC8SPF/F+Tp71Y8OLZ+aYHNrhDCuFymQpC31bJJ1jQblkmR5ajOMNGmcc1W92x2sxOgCdnHa
	dDFoOInPkP02THMn56xZpaZTMpCrK0zQygO1DJ/Ub7sfz6+8yDxFXFYgROjxUZZaMVpALEFhI5R
	D01i9b6juG1Bzyh9FuxD7b4JmsiIchjspwaVhHDTJCjqxMfJVE+XZGxagJuP9qEAI26awZpPc3B
	3KKftrUTQz+MM/u/BR0F72wcjtieWZM7dew4VTIi464hbPqoiaHn7E5B2
X-Received: by 2002:ac8:5fcb:0:b0:4e4:a58e:9505 with SMTP id d75a77b69052e-4ea117dae47mr65534031cf.12.1761149613211;
        Wed, 22 Oct 2025 09:13:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5DVwt2kzigfetQGsDzASKN6va4Dtb5+lbF6ZqHWsnGkk5NTAYapVVBrFqGQGYhyiuWSEQ7Q==
X-Received: by 2002:ac8:5fcb:0:b0:4e4:a58e:9505 with SMTP id d75a77b69052e-4ea117dae47mr65533681cf.12.1761149612727;
        Wed, 22 Oct 2025 09:13:32 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e83937a3sm1393835466b.23.2025.10.22.09.13.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 09:13:32 -0700 (PDT)
Message-ID: <aa705253-2d4a-401e-984d-5378d49aa672@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 18:13:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq5424: correct the TF-A reserved
 memory to 512K
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Vignesh Viswanathan <quic_viswanat@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251014-tfa-reserved-mem-v1-1-48c82033c8a7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251014-tfa-reserved-mem-v1-1-48c82033c8a7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 0OCMChQol6yBSvkYA9DSvk9Eu8dEZQYb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMiBTYWx0ZWRfX5/HL+2DOOlZF
 pAUyatILDKNcu7bkNCrW+860SeoMN3YyO1w6qEz18dOF+yVziIPsK5PitV6/Mu+FtjNGTaDrL+g
 PskIb9D3HAdsaeGlh6fE/RKfj7J8A0rWiMy6iSZzfO90tVh6zAogYBN8Unj6wsBGXH6Y4O2Silj
 LZ0YRGeGpgNSoBGqpYH37B+8eyFd/E0VJ0MfbIdkaMWMeDCSlpccjVTtfbywnsd4CphoiqNtm8y
 h7sjksYKZZeER8QhXXScNj1ekAapiENFVz2V1Mq1TJfy1LwlluTMlomeenCgx6p7opN09ikby9D
 sTqlBkAuGXyzdDDjE0rK+2g3ISo0vYefmy82dHjKmY+GL9gLDBuO7JwZmTxDfH1vOdnbgYVKDLL
 EWQnu0ZtSVUsUFUI+3qOrhxpvPOgzg==
X-Authority-Analysis: v=2.4 cv=U8qfzOru c=1 sm=1 tr=0 ts=68f902ae cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=vol1V-uZCnnJZBBYJhsA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: 0OCMChQol6yBSvkYA9DSvk9Eu8dEZQYb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180032

On 10/14/25 6:55 AM, Kathiravan Thirumoorthy wrote:
> Correct the reserved memory size for TF-A to 512K, as it was mistakenly
> marked as 500K. Update the reserved memory node accordingly.
> 
> Fixes: 8517204c982b ("arm64: dts: qcom: ipq5424: Add reserved memory for TF-A")
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
> Bjorn, this needs to be pulled for 6.18-rc as well.
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

