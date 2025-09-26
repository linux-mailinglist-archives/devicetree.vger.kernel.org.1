Return-Path: <devicetree+bounces-221900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E84C3BA3EDB
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:46:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A88717022C
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB94F14B953;
	Fri, 26 Sep 2025 13:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="izW9npQS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EECE13957E
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758894402; cv=none; b=DJBlAEQUtXm5YAxrJEb3Y20NHiBts+u82DRQU41JADrkBoeWw4z9a3T7/T9GY3tG87DxcggVOOyDd1VDd2uLbhHHBTUZP/7luxIm3c/cZXhtcJ0BhbZXBSRlEbEfG+egz9ixe+U+xxtnd7z2BIrlZjNzAxpX31gZ3t2Kwcipzh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758894402; c=relaxed/simple;
	bh=0EOjaBswWQvC9XmPVf+lr9JjN3BYmeqPrTnFPJ0cBnQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X3Ao+qy/Nr+P1ie31GyZlBKgr1kz8VLcIp6TacC3R4pCN5xwLUcZk480qGJ4id6ZuCvrfqGs0tPj3XZS/8d4q9Q8YO5D4G3fwsK2XHvDsDoAtGsgZ0uUx5h6Y0Ruv3381wFULEf7d/kJLMloLhhDtEuHdeZUQXG4s86PZURLG9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=izW9npQS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58QBa7j0001352
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:46:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K7AOC2kVYXtte+/8joVQrCBNjRIRBFVGaIEKx6zbQkQ=; b=izW9npQSUWtSxCLc
	pEg7K8+BzdwWdQnB8LNP7gDOLBkDqJ/NohaFqQSxHW2mEaLLiKYV5gsVspVxgKQi
	Hx2y0ZadKq7eESLbdA7bKWAinffirfliMJn6ow/F/Z7w7hOdQ2/1jscNP81Vy0c9
	exDNJW4iGXKb/6TKLQ23gxH8erIQJf2cCGUTKtu0INSjVrQQqKGyiAuQwVIkCetc
	kXh2rkyCo5qV+HvF4TLUCJPD1PeCfwugk++GlNWR2n+AMgf3ZyzM76sbLCTZ263d
	gaVR4IUTUFw4MQ/5mOed1ttHXkoQqqFmEsDxlgUIdqtmceCtzmdTrLoaVRtgc5OL
	c6XTng==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49dt3g8afr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:46:39 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d42703f043so2125081cf.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:46:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758894399; x=1759499199;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K7AOC2kVYXtte+/8joVQrCBNjRIRBFVGaIEKx6zbQkQ=;
        b=ZT+rHEe8c9mpAQ9ySzGP4+0FFq9+685eouWpjPU1u163lcSPluaq7LBTmgBTRhMWgG
         D4D/bcnrfOgTUs8dfFPPNFPd0JkOOhcHdSgC0Sz7ojvHb+9JvukOc9POjIb4toEhbN3h
         vM4IW8r3GUGXGPmancpbgS9jztwr5GzUWQfEsTVC4q03gU0TWVr3fh5ljJ9+UPiaPzW1
         beh0/5pHMmr6LXQL7XSlhaivgX1rHLIoGNXh7ZoClef9GlCZi1kw/J/bmomc7ckeN+hV
         Q6DScc7UEkwu9wWFXIvYFStkb0Ov8tH8ch8ELyiSOcBKersId+RCvRPxJkYIPmFTwXlI
         PNVA==
X-Forwarded-Encrypted: i=1; AJvYcCX03/P/AC3eR/uVUxWmH4p1tVBuE+J8Le1FXMiOfOjeY9riAEr1Qy3uYxJEBuHoO91lX8s86/CIf/+f@vger.kernel.org
X-Gm-Message-State: AOJu0YxEnweVlRVsOEH+D2eZOPI+ApGrPjxLY4jhTkXw2kOD0gOvQsO6
	QI8mAZZSGW6TCDT/JnW+ZYZMEypA3i0Bia4DjRxB+Hzg90ELwNuTESLyOqmZgrTUjOaaaZxOFzV
	HXtfANuLmNTNsB+t1qFNMFbLPfLf311zF6qn0uNwpv6dKG1+X0BHbesC1lamd6j3E
X-Gm-Gg: ASbGncsFYwxTbTT21noi0ROv/SnuMOzLqNgZauJRWVGsDUpWmwCUEvi8/X4ScvxLw74
	INQlGWzlZib0Qdklkww84LtZzJl6sqr9Cr/0MgL60aVg3YaC+bKlCUMKV6jwzmRGiakt3/PN0gf
	WOef4wEzJbZ57oXS+UzVVMmyEeTq3b40NCil7z8vBJc3b5TBTmkXE76l5KAKV377HAfDpzPfHKe
	dsVXQXtR676bBo9ovpRLySd573iaM0t63z4qBpyBnHUSR9+aWJJbuRnUNy4CDILxC+VtbuIcEkR
	osqBxa9GqdRWhROk2DJ7Tpi3d1M969B0RaGlAYdFD0G/p1jUnOm1TRUHsxSU/ao0EMdtk/OFTcc
	odEEHGGNScv5nUWNVYCTqPw==
X-Received: by 2002:a05:622a:587:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4da4b42618amr71328801cf.9.1758894399072;
        Fri, 26 Sep 2025 06:46:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLtYwLQK9mRezkGeVWZEARoBJCmZbLKmK1lgkPXDI8njEY2QENyEHcYysVVTxAFgAyrj2CFA==
X-Received: by 2002:a05:622a:587:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4da4b42618amr71328061cf.9.1758894398168;
        Fri, 26 Sep 2025 06:46:38 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353e5d7351sm375666366b.7.2025.09.26.06.46.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 06:46:37 -0700 (PDT)
Message-ID: <e1427bcc-0502-4cfe-9cb2-bae5bb10208e@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:46:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] interconnect: qcom: sdx75: Drop QPIC interconnect
 and BCM nodes
To: manivannan.sadhasivam@oss.qualcomm.com, Georgi Djakov
 <djakov@kernel.org>,
        Rohit Agarwal <quic_rohiagar@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Lakshmi Sowjanya D <quic_laksd@quicinc.com>, stable@vger.kernel.org
References: <20250926-sdx75-icc-v2-0-20d6820e455c@oss.qualcomm.com>
 <20250926-sdx75-icc-v2-1-20d6820e455c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250926-sdx75-icc-v2-1-20d6820e455c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=df6NHHXe c=1 sm=1 tr=0 ts=68d6993f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=aH40uDyxLlspqTMSXGwA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 7-nsAr5prn1E6F83H9wKq0nb3DUj4sv1
X-Proofpoint-GUID: 7-nsAr5prn1E6F83H9wKq0nb3DUj4sv1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI2MDEwNiBTYWx0ZWRfX1ivSQuSDDiZ4
 S0OYJgS+8dBmTZug1nC7T06EI55Goq+j7U9T68dGPqsWS6zAv1oWXFBD9xso+mrXgtVebjBqhAk
 iBwTDdDT8Jd018/8N2deK7YYtYLlnTQoY5LqqPImV74vW5gBrJj/1sHy5fu3YsGDOeFZpUrXa6/
 IM1znr/KwYlV2aa1StLqKyXE7skMWVhQ/VZCxshCvsMtVN/0c/WxlzzSVXM9Ss8o22HWqCvvfwm
 BQjDXcyNGOHLW3C1j2nzroo+uqIjLIfaqchqP0gCe8FoBfV5v+6ZXV7ylioEuKaX3LsHkwXCg77
 xwyfpcqMhMxUJG8mg5DdaLn1bx3semW7QgscV4GBuxBKgHjFckH2D2Oyn+a1hFnYA/3/aUS62n+
 CuwvLGQ90Db9uUftxKACORLvBHEBJg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509260106

On 9/26/25 8:42 AM, Manivannan Sadhasivam via B4 Relay wrote:
> From: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> 
> As like other SDX SoCs, SDX75 SoC's QPIC BCM resource was modeled as a
> RPMh clock in clk-rpmh driver. However, for SDX75, this resource was also
> described as an interconnect and BCM node mistakenly. It is incorrect to
> describe the same resource in two different providers, as it will lead to
> votes from clients overriding each other.
> 
> Hence, drop the QPIC interconnect and BCM nodes and let the clients use
> clk-rpmh driver to vote for this resource.
> 
> Without this change, the NAND driver fails to probe on SDX75, as the
> interconnect sync state disables the QPIC nodes as there were no clients
> voting for this ICC resource. However, the NAND driver had already voted
> for this BCM resource through the clk-rpmh driver. Since both votes come
> from Linux, RPMh was unable to distinguish between these two and ends up
> disabling the QPIC resource during sync state.
> 
> Cc: stable@vger.kernel.org
> Fixes: 3642b4e5cbfe ("interconnect: qcom: Add SDX75 interconnect provider driver")
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> [mani: dropped the reference to bcm_qp0, reworded description]
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> ---

Too bad no one noticed for the 2 years the platform has been upstream..

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

