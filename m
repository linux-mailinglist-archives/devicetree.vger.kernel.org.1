Return-Path: <devicetree+bounces-183135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA9CACF610
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 19:57:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EFCB2189D102
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 17:58:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52FE627C873;
	Thu,  5 Jun 2025 17:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YKnCut+c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9219C2797A3
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 17:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749146201; cv=none; b=Elkt/UPM+H8iQmZt5AYQd/+6kAslaa9hLSUv/u3BhqQbrlZ0Abx3g6bw619Rhk+utqNkB55T4ITWXKegvD5m0lunHW6lT2IKw3/VxtKR9Temu3dvZa57KsIKqNf5LZ3aiVhmnwZjhyafJG/xZroW88hg9jo5vjvm6mo9WL+5rII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749146201; c=relaxed/simple;
	bh=gMroWcHjboWrDGM0ZLdaI8dfCuaAXIz3Ryz9wJRs4Y0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QLqKUP3WqgsSq6+9xk5TKhS33yWaBO0OXZ3ZZpjcPV7dm4TnrPKjd4gAV434JcW7kC3WPtmrEjJ2WMVXwkHt0yJDcyLLLGsxEW9Ld8hfbYqz2RiH8JF++2+a8pKoVyodFl0rPBVBbKoaNTNQ8z4JMLUbaxdqmJaqmeLwLwY1tGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YKnCut+c; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 555GtivQ011984
	for <devicetree@vger.kernel.org>; Thu, 5 Jun 2025 17:56:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kZcQKtQ1ov37yB/aXsBXEWGJWFPqRd9laCgmUZnxfnI=; b=YKnCut+cQlT0BUlC
	qNGULUZb/+z9n5FK3yZoJ+Bj27zW8a3gB3yrKhR7mkXvcTikrfk9nk2OhpZ3vREW
	Lf0N0+lEVYq4PqtJFMgwkssNpI601/0HRIQNg7IIUm+jR7jOi/Xtxar/xFlYd9I3
	YQhLsH3EllhEOuCy4J26MFt76M1t2Qb3A9iQ2kk3OXvUcdz3OUlejgnsyKUhcYfQ
	l7MQUCO+kqhV1W/HaN4m/ZL4/n4LtXCpO6s+BiXxm96nAQdSSFeOp/nldRJoGt+/
	4LhtrKYLGnAfczR1acA7h7/tDBHoppU2dDs4HtQkaEp2ZDUPge0w7RVj40WcP8SU
	eYQl9w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8yt904-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 17:56:38 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-49a4f4021ccso2034841cf.1
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 10:56:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749146197; x=1749750997;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kZcQKtQ1ov37yB/aXsBXEWGJWFPqRd9laCgmUZnxfnI=;
        b=ZYRuc82H8eSwvZjPFjMUbVY4CvuoWlv6/qJWayqhArleU1u8UdAkRf1jJI9qymCDp9
         WXYhCfswqfj9altY1SqgOYsLV7Bq++jN9puDCZD7ZP5AIuShT2GEz3sl07NeT6plwInm
         9fgMeRjM8W7t9qLcJkVZqSSVIV/tfGVLjCBNbF2hF4HBIeuyqDUExAZihHgD5z12a6IG
         psWII2Luj9Y38tnzNxrfgvm2GG4gur2H8caGxkH0rXG7exceEF6gfrv8kR3n4BHdHnOF
         TxrRM/Hd5c2Aa9/jaFXNCldVW0hQn99NKlws0K0NujdhMNayax+Dr2QoGrKbUgSo5sGB
         eHpg==
X-Forwarded-Encrypted: i=1; AJvYcCV3CbgvA8/nUA7GH22RuU0LgKSA8F5NFkbz5rCVI8zYfGeRA+XR+/X1/p9t/N2/X6KYC5PkfkDJPD8p@vger.kernel.org
X-Gm-Message-State: AOJu0YxByNxteWy3FnZcpxgyigBRsFoZcs/jSyISyf/gFeTxBXCPebWU
	tJqUG+1PGSqEtFqMvoL+aI1WqbBQi5e5APS0uku1dTHOVYpAX4OEntf16pdcx0x5AT8L8dF7u5a
	fcJKHkowGGMDuGwz4bX72ezjruUNTBZgXpSvDfBDfKD/0+Pdfka+9M9B6bCRuggTZ
X-Gm-Gg: ASbGncs+xNJPMhkAsqmV1x9ZC3Q0Ay2v+O+2hPjkBGstMTpLNtYtWF/Sq2mpy/7ISKy
	m3f9NIseWdMe4xbosQ1cvD4G4ML6eiAzQqzZ1Ew1EfRHj9jgfmIjbGK/gBMY/+jDtUVkAuqtd2L
	VBbuMIjubrJVPtz5EZDK0IGhPduP6y1vU4nnIwGHbPxIGVatWOXvaJGQKEHTGuaTL1O1Wcb+AIE
	zyL+nSr+wPINXRXkBL3/3/4RFT9HLolVOMUA5vVj540HDfPXMMRPuvuX+MAJr183oq8T1v6eZkH
	zeGJ8QiyhK79ZTtC2ShEEeubZiHt21OixoVyj6nhbUuPfuLOwuF92WIsj4DGyhC2ag==
X-Received: by 2002:a05:622a:607:b0:4a4:323a:2d76 with SMTP id d75a77b69052e-4a5b9f3c841mr3459231cf.10.1749146197321;
        Thu, 05 Jun 2025 10:56:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGT3i6QouPUynjX4yzcxTQBbYY9kUpqtzwk6L8Pm4W1giH5Gphq0ngetzOJkdmxHBjlqVwyAw==
X-Received: by 2002:a05:622a:607:b0:4a4:323a:2d76 with SMTP id d75a77b69052e-4a5b9f3c841mr3458951cf.10.1749146196865;
        Thu, 05 Jun 2025 10:56:36 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d82e80csm1283599666b.71.2025.06.05.10.56.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jun 2025 10:56:36 -0700 (PDT)
Message-ID: <922180a7-ff39-4511-8640-ed8bfd777fc1@oss.qualcomm.com>
Date: Thu, 5 Jun 2025 19:56:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: sc7280: Add wake GPIO
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20250605-wake_irq_support-v3-0-7ba56dc909a5@oss.qualcomm.com>
 <20250605-wake_irq_support-v3-1-7ba56dc909a5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250605-wake_irq_support-v3-1-7ba56dc909a5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA1MDE1OSBTYWx0ZWRfX5Ob3kU5XCoQi
 oTxQYbSHkU3DOOC12woLTIUrZUnzOQufUYzBLGam5oQyfyZyIw9LEwv8XPLTMGC63nus1HUWzET
 NbYELMzYfvoa+DCkbjLphgZzSLXB/32V77bi6Yq64sHMI745E/1a5szxv4OgPAD2jNtlLdMdjgI
 dnD+uRnWcWzMUFcgmsUM6AcJ10YYSMnW0rgFKtoKqRQIHDdqvTOd/mNeQntMG8dNoGssWN8/aGp
 4s7XaqiKOCpIUR4/n7XUXe+GLK7BA3/+Mny0M2BYS2E3eqnpIehDYl+1Ej5vVKK9TqLxZuieQ7c
 FmOlRDW5y7az3I+A+KavaMs/HvRZ8IqW+wst9g0YZbaFdBK9QXqSus/qKDpkl6MqRG4HgdtC9qD
 luuFLDj1HCK0f/bA+MNA1ubnBuXb/sE2SoF2GE7J56P/uAJKQ0ag/yHDFuSsO3Njboy7jlbo
X-Proofpoint-ORIG-GUID: _fEV1C97508P9qJz_MLjTlR2C-HmZ_TF
X-Proofpoint-GUID: _fEV1C97508P9qJz_MLjTlR2C-HmZ_TF
X-Authority-Analysis: v=2.4 cv=T/uMT+KQ c=1 sm=1 tr=0 ts=6841da56 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=lN5UOK94kOf-3Ws_NdwA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-05_05,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=762 suspectscore=0 impostorscore=0 mlxscore=0 bulkscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 malwarescore=0 phishscore=0
 adultscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506050159

On 6/5/25 7:24 AM, Krishna Chaitanya Chundru wrote:
> Add WAKE# gpio which is needed to bring PCIe device state
> from D3cold to D0.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

