Return-Path: <devicetree+bounces-218854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F3EB84ABA
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 14:50:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6AC734A6C31
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 12:50:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4D5D2D2494;
	Thu, 18 Sep 2025 12:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K05nXNNE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8262D374F
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758199807; cv=none; b=s0VFXmtX0GX49ItQR7ut13SEPkvWtN5hgO2+T0fADQ9/GBaJayTA7+IBJO8xq2Vo6ovntb6s31DyCg1KvVsqSag9DUUhvPCI3GrEm0oocaBsV6EPhUMozZU1mT6y5wera8dQWpYLuQOBKRQIl3QNNe4dnzNW+gy32uLWieAH9VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758199807; c=relaxed/simple;
	bh=8bH3fVLln3J48TzTAJv9MI99+H7ir7k5BxpHk2Gk6hw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i4qmLTfkUubu1dSKPXiCpEYiHc3ur8FrjWQE1aPBkRD+IrrvUG5Ff3XXP/kuQWAgW1mQOUv5KP5nAnsKxU/NkkgQN+nwa4/IJfl7tFHby5pr6bZwWMd1doA4ISOmjuIwkn1nhmwqZuNIjtdbBW+OsP5LT2lpt4RfVfLtXvRvqDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K05nXNNE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58IA8eR7019773
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:50:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ilz57mVIC+jhE/ORoZ8hQRAKB7gQfBSabaTReYEY6MU=; b=K05nXNNETfHhuJ4v
	wa/I0oDvbqWlMeCP+vY5ux7NaDAFMv1k28gJU/CbITklUAda5GryNVJ/DyqYmfZO
	+RSkscaURw1X3k4eeokphNHkITzd++PpJ0f0tTnabq2pkSb+mxoB7sCQ0F/KIJj4
	C6Ib/DviH0RDetuLVkjDgmg4c8BE5AgExO6nO80pw5u3kF4cLm0bJzfP26dAvrES
	QYoW5UKPe9kQGx5JRCAF6MORbaZLvoxu4khstolRwLoHvPxNxyMSMZ/XVRPud2P5
	5UVomkBMlqOOqpAqP7RVSatm+ZrGPKVSc/Oml/b4J/RNjI/908x25prW44nCKC/3
	i+HNEg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy1xfs1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:50:05 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b77da4b375so2483731cf.2
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 05:50:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758199804; x=1758804604;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ilz57mVIC+jhE/ORoZ8hQRAKB7gQfBSabaTReYEY6MU=;
        b=kVRrP2JLTrQKxWzdm9XN4MvpRGS2GVCnkhAF3cOYXWCkAFvgsPUWFhIZWJuOuPxGUO
         J1+Jetr8eqf3fMSWUMLF0c01lfkdajmM8ChXxvnCzPs5qDocERsVJobz6oQVRI8QbIqg
         uzViP9kYzHH7wFn1uexNWAQ0YmgEMU6ALnaa9E/HDK7rhd6bBav87AnBDMCrYf6+WmLy
         iS0NvJRQ1ePBPNapMVhesO7SyN2wFM1EnTlsTjiEwIHVtIzunyfnfW//ccbGNnoq/2dd
         C4i5wO0PvOpBw744KkV/Cef2Y8BJJzRm3x9rrBmJPD1txD0FwfX27ziP/VvELeq7wiQy
         7DLA==
X-Forwarded-Encrypted: i=1; AJvYcCVpNqAfNcTTFip8vJ04B5RahBqvhEZych0FMI7NSkXbpDUcbulPzBxjEvRv2TKMZX3ikTyMlRxfqQUl@vger.kernel.org
X-Gm-Message-State: AOJu0Ywuhgmsd/WC++Qd40JasQh/R7N3au/Ucr7Kh1j6ZRzmY9YkjPrV
	LgMmdRTsNczy+9k55fmem00XDSeY7jXmzRsAVzUtWRdU4q7NajWIPKKn0h+j2zF/hDO5tTczmid
	yPfiryQqDmUGC9BoF+PG6rLvuDyPW19RKJI0TewRIS4hPdyDywRQC6rE/UQT5e0dr
X-Gm-Gg: ASbGncsnkEJij+e9fPuDvDl4RygOlljMeugoUZZWroAvrXApULRmROnzPPZxbtxZaFe
	J0hqf0/6pOusDplloCTxzxziVxFwGs/IdblNVBoz9CRr9x/sQf2nW+JCsDmvQWqtFSIAzdSYimF
	Nvh9j/CcjBOLzTRv0MdC8gwYYwwvb0sBRf2eIPVAi/xZiSlSct0ZTobHZgw8MJUXrjs+ni9QUKF
	5aN78BCWwQdN+D8klSMF5CGoD4Ktop2EbOrbeKF6YrLJ0WtoEgHlda9sQX5tpd22SBBY820JSXT
	9TnkCQEwTEbp3hyC8nR7wH2VOvucwX8q+qip5JlZUtwHQlkR/CxUAjKzfB38
X-Received: by 2002:ac8:7f4a:0:b0:4b5:d74e:d938 with SMTP id d75a77b69052e-4ba68be3203mr44152731cf.7.1758199804013;
        Thu, 18 Sep 2025 05:50:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRNHFzJzTMA3xkK272o1+K9461PXaGcz8hNcpg8txtT51Al8DimN2qgY98Hx45Cq2m8Q94tw==
X-Received: by 2002:ac8:7f4a:0:b0:4b5:d74e:d938 with SMTP id d75a77b69052e-4ba68be3203mr44152451cf.7.1758199803340;
        Thu, 18 Sep 2025 05:50:03 -0700 (PDT)
Received: from [192.168.149.223] ([78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fc5f44fb5sm189444566b.16.2025.09.18.05.50.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 05:50:02 -0700 (PDT)
Message-ID: <824004f9-538e-42e1-b40e-dda22e081c4e@oss.qualcomm.com>
Date: Thu, 18 Sep 2025 14:49:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/9] arm64: dts: qcom: ipq5332: Enable QPIC SPI NAND
 support
To: Md Sadre Alam <quic_mdalam@quicinc.com>, broonie@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dmaengine@vger.kernel.org
Cc: quic_varada@quicinc.com
References: <20250918094017.3844338-1-quic_mdalam@quicinc.com>
 <20250918094017.3844338-8-quic_mdalam@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250918094017.3844338-8-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: NF6MJ51qLrTBkT-ohdQq8-19dTxLquP_
X-Proofpoint-ORIG-GUID: NF6MJ51qLrTBkT-ohdQq8-19dTxLquP_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfXzK9NLoZj5pk1
 47L1puF8INmExBUeHLqg2OtfR12s7J0nRXksh5CuUgwv0aooUBrgHRfXeY5LEzeQruN8M3evOvf
 rOVM/1ktDml/C9zAp+f+L2RUbqrSwmXXLg+uNKXk5C2Sn0uXhsiqpQVD7yK1cxNTcNBFY4p4vSR
 LhCxP5zjbGZrrDlzJM2tRt1Mne6llueu+dvE8mxf/AwgzKedXjLE4oO1MKPYa59mCjjj8AGchaz
 v96F+C32DoDBpFv6GECpse9qZw9QDCzq259R8Uc/75Oh4ARhI7rrbzIro812og+RHOAY0M8FmR4
 Log1NzV/zG3apMnewbFUHRK5ESZok7qzQf9+4qvCXy33DolyBMjhzqKujMrRl+QEnCuoZECaO+F
 cvoMsemA
X-Authority-Analysis: v=2.4 cv=cf7SrmDM c=1 sm=1 tr=0 ts=68cbfffd cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=t3lpBGeAFA5ev54tvH4A:9 a=QEXdDO2ut3YA:10 a=VXQMaQTvCj8A:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0 priorityscore=1501
 spamscore=0 phishscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On 9/18/25 11:40 AM, Md Sadre Alam wrote:
> Enable QPIC SPI NAND flash controller support on the IPQ5332 reference
> design platform.
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

