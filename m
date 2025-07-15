Return-Path: <devicetree+bounces-196431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D77D7B05594
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 10:57:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1AE8F1AA0882
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 08:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86C342D3750;
	Tue, 15 Jul 2025 08:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NK23MFNS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037C01917F0
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 08:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752569824; cv=none; b=GAA37+E/rPbwLPdYsSjiPId1G64JrqemnuEW/dTSHptEuPHZe3BBjGBwbHllzoI/NBc44IIpaK9YKs+BWUs4HRJB+bNT6wQWW9eUz9W469Appb56NvCjFxwhEfLZD6QMlUuPy6T7uotoJVPdf8PuYTAHv+0KIVTNcCYtXeAY4Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752569824; c=relaxed/simple;
	bh=KNhNv8iL1vW/f8y+mhCAJJMrpgumlNJWf31iX1TRgS8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l2Z0RC8mQUQweMEAeIvsXeeeX7fdH9rG25CVndpoUB9SaoVRBv8mrIR7MN33+u0PWlVVSU07prrLVEUW06Pg6MiPkMKTKc6YRaUa31Q7fTF3XAHRcezAHiAQLVfRfsNwuMo1qMbRyveWoHpfPoVIp1zUCO9sUPaRAgiGM9w7YYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NK23MFNS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F5k2bP018610
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 08:57:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5Ir21lKeD+kOQr7Em6XEQjan8Fha+E8C4JGKluz1QbQ=; b=NK23MFNStuBsOBSl
	Xh/xvsLx9AQjGrFXD53eJdCu5zef9aRIgbuPnjQ0WoD3jj/1oFsfe/SgNokCNCHQ
	WnwNEwFykOKplX4po92s1PHsd1HBWRQGtCNSBeaufHNLZiq2ly9RHuVtwXr3Grfh
	pjRPEbh5TLFWmxprHJ0kzfRFdLGFonhr1L0jANJGTov04tX6u20RIrPbBwn2vjjV
	j2bSWV2PxnK5Gk8zAboavkh+JT/jJlUPTwwAxuytCnDAfXBsG5ocZf6bTiWjZqpY
	d4RZWmImUqNR6vOtcOq506EAOW/T7nFdkZcqg//wFAiKmfroRpKV6UP1iSEUSeo7
	4uDfCw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu87fe8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 08:57:01 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7dea67756f4so101129585a.3
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 01:57:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752569821; x=1753174621;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5Ir21lKeD+kOQr7Em6XEQjan8Fha+E8C4JGKluz1QbQ=;
        b=NfhTa7EnhQ6PlirxPVMFMbqlE+j1ta1ebsPwJiUFF3g2eVMt/2wA5aZbkJESSdfhe1
         e96gBxMbW8GvOe7Y88l5eKgxcyrzDVFxShU3LNXSmi/chdxNzf40JlBjspyGd1DYCHvi
         Rtv52U4fAZYKJWjxTr6dOf01xLfLLlzHgY7NRV9ZtAzUVhWmtV8Bp0RRs7Fpgqw9PXmv
         IhN1xk/nsKv7n0Um6LAh22Y8di/4YUOxwiYi4uA1qvCmTFqwWwneJWXNBOB7lDNYUq+9
         /GsKB85OBtokRn8L0glRzXHKQuXzuTRnxoRQaBjMZuzsmT8S8Q6geYiYpHSOyjmMrIol
         IQ1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVwZJlEqiUmdL0+PuUDODKQXMdh0JDzcU999iyoUAiCzlwa1fWVUwUQfb10bYRv9cJyKcPo2GL+aITE@vger.kernel.org
X-Gm-Message-State: AOJu0YwXiJ0iHi6BBLcdH8p0q9COPjErbbECrREa/gFOaMEj80v/nY0O
	z048ov8e1WkfRBA+xnMkedZy+KLjX2Rs2dXUKakrrqg1C9a2mNWuQNqjfxbHB37fUXYzjhWvJJk
	4U6BuFWjIuKFdpFtK94Jlzn1cL+2zRAMzrx1qD9eOn42IVptbvjKrvUe4FpIXx1Qu
X-Gm-Gg: ASbGncuP57q/MDR3M5DzzjE3Y7QmD4Vl+u0AekKedNz0Clan+3/tgTG7OAFbxDOfbh7
	C0m9syqU2zIJC2IoBqPkCvQDarDxoyqyTxRtTiEAaywnTnBmvdymeLI/VxremLz4NY3mXF2OHS8
	bvPsHUJP0uUUbzbSwv0ToTRp1bosar0P9Ed5QhaegY163cHsrcTzYc2FWi5+dPDCfbfNaOsWAvb
	BPD7ZLlbo9tVXjoJcNIh0j1FYTohrDEkRqF048yjvwKB/9lA/dHnHBByawRjrBx8xsiA6Obh0E2
	lR25zopMmhXWng0+NqN5fu7JFDh6OIjDJYOupSoLIF3o5szStYPzw2d/PTmt88G61q2BWyUOpZV
	ElpY3l18y0aXrJ/uBKyFW
X-Received: by 2002:a05:622a:60a:b0:48a:80e5:72be with SMTP id d75a77b69052e-4ab86eb948fmr4403861cf.2.1752569821050;
        Tue, 15 Jul 2025 01:57:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECkT4UhGrfWPMRKyPC4KgJcc4XfSCXn+YJKNfJmaD2D4nOlGaLwwKXRfhVvXE2pLYC810o/g==
X-Received: by 2002:a05:622a:60a:b0:48a:80e5:72be with SMTP id d75a77b69052e-4ab86eb948fmr4403631cf.2.1752569820407;
        Tue, 15 Jul 2025 01:57:00 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7e91bd0sm969967166b.33.2025.07.15.01.56.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 01:56:59 -0700 (PDT)
Message-ID: <d073cedd-838d-426c-b134-8e5dee939813@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 10:56:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: sm8450-qrd: add pmic glink node
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, neil.armstrong@linaro.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20250715052739.3831549-1-krishna.kurapati@oss.qualcomm.com>
 <20250715052739.3831549-2-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250715052739.3831549-2-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDA4MCBTYWx0ZWRfX1Pih1tqEN45t
 h1KhSiM1LaaL6L6r8IQfmZ/vKE3/ybiE7xSJdYH+SXLgIPIzHEqSj0GXNzKfJJWVNDuCgmI0tv5
 xhuSmGRAb2HXMN/isFiqQgYDLnFWgqw0TXJfZfc4uCHtsEkorgUVtLLP8ECFDq1CVC8GEmQGFqG
 4ohxzY87iS3yKV9VNLGuPrl/bLFeMz+MocTUCwbXP7B1jPsZ9V7iG6RzkjgDEPz4zNTsKuUpiWl
 sNCxLHwmCxQJsoZNM2N5GnB2lIVCfgcq131JKwIgA4SpQ9yG/DL0+wsccF2aNSHwVsSv6hg0734
 Cuk+zwqpSAHi7MfYEgLYeO/vwZEt5+T6xeELUyng1GjQJXyjDlGcIiYEDj33iFeOEYnBW/N17LM
 MbEHCaZ+AAFtWrT0zs5f70PHJXo1CN9+qnTOPSV5TrlZVNWcNaEZo8w4LAprQlrJ2Yj/dyuL
X-Proofpoint-ORIG-GUID: I9cFRGqsXkPyJjJJKNV9xFApy4ojiFrh
X-Proofpoint-GUID: I9cFRGqsXkPyJjJJKNV9xFApy4ojiFrh
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=687617dd cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Ipc7ZzALqdnyyRpRyTMA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=770 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150080

On 7/15/25 7:27 AM, Krishna Kurapati wrote:
> Add the pmic glink node linked with the DWC3 USB controller
> switched to OTG mode and tagged with usb-role-switch.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

