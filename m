Return-Path: <devicetree+bounces-198608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8574FB0D917
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 14:12:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF84E6C523F
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 12:12:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2769D2E88A8;
	Tue, 22 Jul 2025 12:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k6AtnTB7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C61F2E49A7
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 12:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753186368; cv=none; b=uhfg5r5l222An5OgXPRPSSSzdkOAdcNgCvwrUjLSFm8PBQ7BJK+36tWJmYrS4yUgMzOAFxQNBm/Jd/fuvfl3zdQmABgRiJm2rwTEho17RDwt4PDpD4TrF044uADiXEU4M8iQpqfha5Qfg+ozRmeUji+KRvIYfXX1/dYcrZ1XWrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753186368; c=relaxed/simple;
	bh=B4m9Mr8J4dZJVVQHMVzz3OmaAMEJntzY7NDkzmQmosI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hpYJg1w69T2/5F1h2/9OfGBHS+of+H37Eta6M/l8E5YKz/nQDUFm1uRXebsEz6EfZp+0tEErfuw7w64I6m2oJotBzdjb6k3BtwYgjxFBnDIOvCwT5HVchrS9wlYspI8slPwbxh5Lwje0/e/9wCq4f4ZGziibRRspUnDD2Sh+UKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k6AtnTB7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M8mSZu012594
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 12:12:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6+tf+sdWldSOxWYqZA0c0epF
	R91HvWPAn6xpjPzhVvg=; b=k6AtnTB7FPEFcfn2Jia4GoFrAoMHN/V+fIZLWxj7
	yUz8sEiJlf615Sswg5M275/6zDbkKJ3xhSxeXMl0bmVxwimCEGJG9rd691/0tTgh
	1s3M1DbwA1dRPzk6Djx/kAcmEfI4mZwZHtm0p2BcNpKMDj5lzJESDSB7k9HmwhSv
	C8ss8Fz6mzb8lyQXmFacTSCLM80agtIguKwJNYrSB8V+mD4hrY3mFIiX6BjEcQvo
	7UE7wvIra+vG6obKA52woaTNr4ohfiBKqTmx6pPC7R7FBu5UsWX3ZwSdh83Ti8Mj
	EnLWc3Nt/OE9xfFAmL0IWv5XVVHYtewv1nrQcqd7Ud7g5Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481qh6kmje-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 12:12:45 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e36e20d700so340168685a.1
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 05:12:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753186346; x=1753791146;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6+tf+sdWldSOxWYqZA0c0epFR91HvWPAn6xpjPzhVvg=;
        b=Wza0m9SnOevtC+tE/OwIoxDdcxRlbxGSOu6Lt7pIUPRwWbXOdH9i80+GXoZnynYqsU
         5YriKMDQ0jmsT8L/jqXYha/qMLP5/B2+c+D10dHgRg19XQxv4O1biCkKLqestTRa2Zoy
         0QeuQG7lWZZsSk/LV1NEnVxuCX16zoo3Y+qPCcK6+EXPqnafc7ZRTM5iezqZ0ZgGLFle
         1xpDuwcGgyozWpyTnFHvkpWcLbVDAPLuywFXsw2q4WwSapJynjS13cLB3vu3qOJ3Leur
         GCsoccSPtHVvrtvvpCAklllvPeGf+RrGyHwae0t+CdmRWBKPSiQB3EkbLVeTQ3ItdtCn
         CVEg==
X-Forwarded-Encrypted: i=1; AJvYcCXMBhvp7oebDD4mkm2wjgSvN+ofCYYOch8adKdAtKjscfI/JmgSjlmuaUKG8WzA9KasN+QAIPzDeGVH@vger.kernel.org
X-Gm-Message-State: AOJu0YxdARSx4ERKhNKHwyOjJ9MUn+pn9yJ/gBkLoiXci2QU77rQDy2w
	EE3hrWo5oWtv2bEfQtHEoXULK2d4PdxG5CVta5/jAyPAtVW5tUj/5A3trCCn8x2/kCEc8H1aNyW
	7J++iDGwYDF/q9bIbn4bo45Qosmke632AzU42tXVcB5Lt9q/zCIclHq5uk31NMIfX
X-Gm-Gg: ASbGncvAQILmjqUwjDXz5/nitPObMaKZydtJdQGTFLa+QLn9SNh26tpeHWIvnE9O/vU
	/81puiVlI7/a1ZxXuzlTzn9U5x3LGhrm9FyUQi0xgIAZF+zq8hbzzSAY5PbXh/o0Vdz6nJP8LC9
	V6DWuWTWXnM+f119bS72YquxAipGqIf1BGx32K/9gYOqwuR1vycx16K4DnOsb8yESkGXDZuDolB
	/JqqYmiPhaiy0nUCA+Wzcckcretjww70XHovxuddwY4ENW+E7FND/AUappA1cCllYx+Mrbn2cxh
	5UItF1fFsoKx49wwhmDCfnhC6db8koFwsp2aAhE8NBK0nWLO6M4DeVbe/ymqhV9UbJ1UDzSlSjO
	6MXYVMAWC5SG/LR2Ib1TmA6uF1BUupsuAf3tLI09g+zRxR0B/EsUr
X-Received: by 2002:a05:620a:aa19:b0:7e6:233a:fe35 with SMTP id af79cd13be357-7e6233b03bemr194466785a.20.1753186345647;
        Tue, 22 Jul 2025 05:12:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFg+8xKK+4rYS+5ET7ggPMSWDiREKrW1QGrmrNmf1IbigBBhD1bQdpTYbR0xEOTU3AyAhC7g==
X-Received: by 2002:a05:620a:aa19:b0:7e6:233a:fe35 with SMTP id af79cd13be357-7e6233b03bemr194463285a.20.1753186345110;
        Tue, 22 Jul 2025 05:12:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a4c1d1a6bsm140209e87.102.2025.07.22.05.12.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 05:12:24 -0700 (PDT)
Date: Tue, 22 Jul 2025 15:12:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: George Moussalem <george.moussalem@outlook.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3] arm64: dts: qcom: ipq5018: Add crypto nodes
Message-ID: <ssxqdorq6f2rmgxmnu3g6h7ceyzfg5golymfiqks4pxvhdeips@o26ha4ydkwrv>
References: <20250721-ipq5018-crypto-v3-1-b9cd9b0ef147@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250721-ipq5018-crypto-v3-1-b9cd9b0ef147@outlook.com>
X-Authority-Analysis: v=2.4 cv=CZ4I5Krl c=1 sm=1 tr=0 ts=687f803d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8
 a=UBJjrWuA7Xe-G2Q3MxoA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: PU_v05mbGPBfVT4Vl9eTBFKtjl0jKcXJ
X-Proofpoint-GUID: PU_v05mbGPBfVT4Vl9eTBFKtjl0jKcXJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDEwMCBTYWx0ZWRfX9eRttZnaTNnq
 umvSRfKYH5kuIeSvhpICbep7I7HpBEyMFV8T1r0tmMJuClMv8cyAAAT8/Bq9/DktLwp4+NjVGah
 238DBjxV5KLryIVd+MH76FbpCaHoTUoPvHP3F51hyQkuwLWvGgJxQX6mwoZMdbF4RaC8Vj6jZES
 hyNKXSXYLIso+C9HS8YfJP79TXNiQwsD/lUYEAgi4GV4e8RFjXs5uWpO2bOP2fQjJz4ZgNfgiY7
 JshlQypeaH9Wf7ZpefnoTaORq2OMaHH6jLJUzQ2DoBovUaREQvQKl3JgfWr3amAFy2wEbIoj03r
 nXUhDH7CPV/CKX6f0K3F2YdqPryoRWFe8z25fkTU1ZeLrRRWhhQGxjCR6oasaNT2CMxL3Km9xKO
 7oZQtbz+Mh1CMPIzSoVT871coPzbZfiy5nH4ZL2lv7zMT10zTUjACCaEPdq2K3YZUb00fRqD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_02,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 mlxlogscore=898 impostorscore=0
 clxscore=1015 mlxscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 bulkscore=0 spamscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220100

On Mon, Jul 21, 2025 at 10:23:15AM +0400, George Moussalem wrote:
> IPQ5018 uses Qualcomm QCE crypto engine v5.1 which is already supported.
> So let's add the dts nodes for its DMA v1.7.4 and QCE itself.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
> Changes in v3:
> - Rebased on tip of master for patch to cleanly apply, no other changes.
> - Link to v2: https://lore.kernel.org/r/20250524-ipq5018-crypto-v2-1-faa26aedc4cf@outlook.com
> 
> Changes in v2:
> - As per Konrad's comment, the BAM DMA controller is v1.7.4, so updated
>   the dma controller node accordingly.
> - Link to v1: https://lore.kernel.org/r/20250523-ipq5018-crypto-v1-1-0818047d8a18@outlook.com
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

