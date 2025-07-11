Return-Path: <devicetree+bounces-195446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9278FB01BE6
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 14:25:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C7BE3A776B
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 12:25:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70FA428B501;
	Fri, 11 Jul 2025 12:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OqHus9t1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6478295DB5
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752236733; cv=none; b=YkzBrrLPDBsH1a9cTqse2sAgaW+kkCSOnkwOlC7OYCcHtUYfLHSODZ/0zN15viyQYakDCvTEGMqH05AGM/Jbzy31iwpo+F+N6RwuP5+FtHgxy6hI/cuB6Tk7EmNe3gcsbBJVpOLRG+JPTWNtFt7HwTz1cHmaezNKsjQmhEFPNiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752236733; c=relaxed/simple;
	bh=V1h3cDpy+r/wNnCbLeT1mLASfEa703zOU/9HCncVaTk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aiij1tlKFsJ5Czf9EkKIhX1s+FboMOh2qWRTC8cfIYQVTW4bpjnlP5I5tnCwzWRLJF/oNTe4CdvgHV7Ke41upPWyqHxkbkb2w7tiSq/Qr8jUTXbQV741BeZMinj9CEXwukXkhwAvh+KtVyAncjUMY7zseR/DlnNNGwNohxC7mFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OqHus9t1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BBGrKh001290
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:25:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DM9HFrXHjB2Y0nHkZCChoaoVsWbGVK8S31Yx5JDAcL0=; b=OqHus9t1BNoh1JQC
	UykkRkj6P/irulXYfzB0iCA4Pzi3sJWek+yLEVC8G349Xv+1sV8T8vDj5+pD6YZD
	d2hbS3FrkQaHuGHLSA+TSMyh2bKGHNsPz8pDcCkYCTHre0zQfL1EUYMA2LKMsreH
	257BZMmV0kGLsLxusPLTn97e7CCLpscRNchOEEyDhpn0lxtPGvCb1d4p0qI94mKh
	qmNpZsp+0NtpYjqQmIBwcZQGUYg9diGOklK1egCRl3ew2pNAlAEkpVqprAd3+mL1
	IIfYnBlLxXKGUP20EqAZUJ2go8vbdMk2Hcyx9640ptVeU25EjoPiig+nTgkqXPBa
	P9K9eg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pucnc07d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:25:30 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a804126ed6so8482241cf.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 05:25:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752236718; x=1752841518;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DM9HFrXHjB2Y0nHkZCChoaoVsWbGVK8S31Yx5JDAcL0=;
        b=SCG1nfOYHbhiP54vEamyiYnU2fBYkiICWllmPEbg/rLfO8zYoTFnPh/Ii/NkEWIAE1
         f6R9Ec/cCQ8xewYqboxe8qzeZdXmhC4bD28iu144hAP/yUQIz+p05QLjrvLKacjcYSUb
         EH6oL1gjs+ysLSEIxI/8D0DTxwvbFzIV8Q9/UVcBDr4t0lr3hZRzQKPnttKNBN5roBly
         VkGu0Js3kstJV7FiA7orgZs4aALDT0q3H5vYWeM1hlPAKaQasirEH0KDJSH+pylAq5Tb
         AGQrUQm24DmquzagHs4hgLoqlG/G1/5cLFd9Ub7fUpFda+Vox4LTWyeFsIddrTol63da
         ObeA==
X-Forwarded-Encrypted: i=1; AJvYcCWQR999mS/hW1bRh85JBtunh6oKHb7lXXypw3DwFVWyKxVk5cGUHzckusnq6rslI4x1Hka8I5+F/FM3@vger.kernel.org
X-Gm-Message-State: AOJu0YwKQiMZC6A5rYwBxu99K/jiTTVSIfDbGsNcVZVGu+SDB111OnpQ
	hHOnPISt7kdlIAa5y3mOGa2PbMi3ls87eq1tUkj9IS5At3tFWoVp0SAAUN+7jFsiCJ3J5jd3Tiu
	AkHlzrFhL61faFhpyH2yLbvuS9sQVDtK7s6oFcDVjz+OnGJIOeXcEJ6dvMtrKxbcq
X-Gm-Gg: ASbGncsdEBQvjnt5QkeEpeFGkPCNYty8xmfyTMGKwVP7SgRoVKYdHpw6l80WvoLXqtS
	IDreNWeWvOAOFDfPjRiUegsB5XP7OSGtKnlnaJECmwbvlh7knPLw93Jk4Huvkmh+shUzlwCnAYn
	WwCbrL0/YupeXd7zjzJ1PvKkeoXCiHfNVT3PyumHgDnYTeeXlS/CEwdN+ne+dbXTxKDGIUWYjpg
	k/gX1c4XJet6rJLOMkUZ/N1fLd55SANRZWRjC/WdrQ3wX5E2T6/Lp4xRxBvtTxpmyk2zqhD25nS
	JUH89YuJ32aCp1rXLMaPFh4DmQBpB5px/qZ4DVr5GReKQA0HnypIZpEJgcImAh7dIqVPgzMvG8j
	ZNBPqwfnZY9Get6rUppDE
X-Received: by 2002:a05:622a:1792:b0:472:2122:5a37 with SMTP id d75a77b69052e-4ab3d90198bmr4064341cf.4.1752236717815;
        Fri, 11 Jul 2025 05:25:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfhvU3rHw/NzO8YHdZ0hdb/sCFcAXessFNNON/0+WsLESI732TDgE+n0h0m2FRFMjpRaLCgA==
X-Received: by 2002:a05:622a:1792:b0:472:2122:5a37 with SMTP id d75a77b69052e-4ab3d90198bmr4064051cf.4.1752236717269;
        Fri, 11 Jul 2025 05:25:17 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7e92176sm287578766b.22.2025.07.11.05.25.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 05:25:16 -0700 (PDT)
Message-ID: <214c3d98-d0ee-4806-8c0e-81c1766dd1f0@oss.qualcomm.com>
Date: Fri, 11 Jul 2025 14:25:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/72] arm64: dts: qcom:
 sdm845-db845c-navigation-mezzanine: Replace clock-frequency in camera sensor
 node
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-media@vger.kernel.org
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
        Mehdi Djait <mehdi.djait@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250710174808.5361-1-laurent.pinchart@ideasonboard.com>
 <20250710174808.5361-13-laurent.pinchart@ideasonboard.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250710174808.5361-13-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GdQXnRXL c=1 sm=1 tr=0 ts=687102ba cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=P1BnusSwAAAA:8 a=EUspDBNiAAAA:8
 a=iR7-6Y_Ul2svg9zsNUoA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=D0XLA9XvdZm18NrgonBM:22
X-Proofpoint-GUID: NH95Z8YVYi07ig-iSDwAyjBMjsErcFgV
X-Proofpoint-ORIG-GUID: NH95Z8YVYi07ig-iSDwAyjBMjsErcFgV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDA4OCBTYWx0ZWRfX7xV4zQcz8rBG
 0QIdLdDNuOGqqOPEeJfT5Za0hPCDHlYCBjfIo+S+08cpnv73ojzjhxMQ5SsESOxyd2jr0TKamPs
 dN/J9vB3oXyjqDPCul+jMhCxlrnsy73cnaN+idHcWFI72Tjh4WLLBUSq/51AidxrcVh6/6Q/zzV
 KWYKY2uJ7BpNKyYe4l5ZDNSEEL3vlChn0o3B52qUf6S4BUhGzOfZoXgwzU+GpOz3f2XWoq7Lz2S
 to2aTM53PQ4f4MPiIw3XEq+HavFA5UPeWsc+BBauu4Lg5x+YZoujzBC0lAH7Fc1ABw+7Ukcoevl
 3CHIiiMLvQ3myseDoDnMCAT2O5ATOqBWS+MmhZXtEOzs3GaF4BAHHmOEsFDfv+V6CT930Jeam04
 /8CdeYfgViHX2v8PKMHfcvrxVLflCOapUx9r0FdXLSFTJlq6EbZ9XBrgiS8w4MylvQWoBwBq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_03,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015
 spamscore=0 suspectscore=0 mlxlogscore=999 priorityscore=1501 impostorscore=0
 malwarescore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507110088

On 7/10/25 7:47 PM, Laurent Pinchart wrote:
> The clock-frequency for camera sensors has been deprecated in favour of
> the assigned-clocks and assigned-clock-rates properties. Replace it in
> the device tree.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso      | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso b/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso
> index 51f1a4883ab8..dbe1911d8e47 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso
> +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso
> @@ -44,7 +44,8 @@ camera@10 {
>  
>  		clocks = <&clock_camcc CAM_CC_MCLK0_CLK>;
>  		clock-names = "xvclk";
> -		clock-frequency = <19200000>;
> +		assigned-clocks = <&clock_camcc CAM_CC_MCLK0_CLK>;
> +		assigned-clock-rates = <19200000>;

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

(although your patches still seem to leave clk_set_rate in
ov8856.c anyway?)

Konrad

