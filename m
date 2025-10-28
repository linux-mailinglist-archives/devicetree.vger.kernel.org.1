Return-Path: <devicetree+bounces-232377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DC38AC16E46
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 22:14:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F149C34ECA6
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 21:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FD532DC76F;
	Tue, 28 Oct 2025 21:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oxRg1590";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bsrab/L+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C362D9786
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761686051; cv=none; b=ZDW66l9wzF8dgWWHHsBzpGn6OeWXcnNmeE36J6g/0OLdgU6D+mLWM0z7wfmpoExFoncwam1VagppVSTJu0PeCSMvW2uBZtN2IJB3xhmm4KCjKlX5uOezIIydgsmp3D6z+CwVSBdTNqNkj9DAVikC9lnhC8SDs9y/zkFedmrY4H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761686051; c=relaxed/simple;
	bh=Hdrhvu34OFmzRVJk5JtCHMiW1j+sCWTKLvaq4pLg8S0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IukesRptnc+dj8OrY12WVhAslLRO6Eg8G4mDQnOSUzTyjhw6fsdFk2zPg3FGuzzd3NkRC8CON5o6vkB2riIePmuqG19SKlkL+Ph/xOkQWCSu5W0YiFpjQbJUCFNcXaK0O9GhxKwLUwI+Q8kAfVv9hIXEK8goMcrIxWwU4i1b6S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oxRg1590; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bsrab/L+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJlW4W2553489
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:14:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xTWwykbZ6R6D9hl0dhVafxlJ
	u6iTqU6PDg27OWKqzjw=; b=oxRg1590clFM+wxULx8FbKJMZ07H5Aj9b+yUNN9o
	fvgNE5Sqsizp8qfPQKPM/V9nCCFUoPxrl4kk6Kj+MwkcjPgiBtxTidKuVZTMUOrk
	EASvtgnaAW7JMEr1TLjnF69Tc55AW/9T98NbAlbIaDMUXTG4BKyjdy9a8KW6iX26
	boHHht+jwDCKcCJYTp7CqCdlk82r2Wfqct3fePmTL7YfUJV0IYSrJbqdPtwxeDQs
	5lHWMOUDe2epNny9z4/mR1JPY/rxvVuR+9s98jMesYdt9omEQOisggGgJodfxKhc
	cAQNnIJf0GyfcHO5z79LWuUwENb2tJ5Ub08XfT9IBhvaqQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a2g6es-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:14:08 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8aafb21d6so161182211cf.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 14:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761686048; x=1762290848; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xTWwykbZ6R6D9hl0dhVafxlJu6iTqU6PDg27OWKqzjw=;
        b=bsrab/L+OQ04h25MqQc9xb9314rfAq0+I9dIzsRf0hW8+BDGtHvpHV3dCihmx/V9ok
         pzpgoF/pMlaNSARJvVGW6epkb0YPGSLF/qeuIDkHKEM2w+jxhx37S6jTchK9K9rJKkZz
         QFmU1pBtr24YLxjxkn03cvwnXHNYv3B8xmbecjLvpdMn0A4Wp0k/QM3ifBGmV3MWHDyn
         MRL4N5lER841goSm09nfSMpjIACYIaOf55g6haPa3KkHHmjkm3UHIZUf3EyfBdb7kUES
         s5d9egLv+DNKynf2HAVygzJFF5KbCBMoqCURIhZI3zUcHvEoyqFPQbt9N0BwwSGxUtBK
         QoFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761686048; x=1762290848;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xTWwykbZ6R6D9hl0dhVafxlJu6iTqU6PDg27OWKqzjw=;
        b=CmL1kwoNhC8NyllQKaKrYC0uNG7gDSWyKn1PmRRjhEKmPvyJo5Bd/2f0mqVIIIkG9V
         RK9DYS9TFPNTJMxzHyKjCZNQU7uvGURIH2AS5NH4T/dhh6W97u1wjzhHVfag+jd6l2V3
         qLbEbTXFjrhNF12fuGxslkMaR/MkrNfC0lLPnvdRn+mp0BppOmE83mra7QTbMdY1qyH7
         R4Hy6mlEpM5Ga2rhqO1NEKXL057In7utiIJgrSKhy/8KhQ6qrCtd68fpTcztrcCGABjp
         tdVRBalalm7eXRmDXp18AOylMxGu+a7g5h4PNwlrPTWuxJnOhws1b/OH31/I1sZfENsY
         N5rA==
X-Forwarded-Encrypted: i=1; AJvYcCUu/ywz0313vWWfX/T1sQ93tQXNg6iqWoFPakpl61r49v8sHlxGyZ3I9qgnHfIXC95X1ayQ6n8gIZBN@vger.kernel.org
X-Gm-Message-State: AOJu0YwS0I2Rlh7bVDWxYEJK4afUXBB4Mk1nptlDrk8mTwh49Vwls1yU
	dth4tyQhbuyLHa+NeGHctAp/pN6NzkN65FaY04wD6PVfMZxMpaECBtSf98EctKruKnuIDvqMxNN
	1Q0IzozZJCmJPk85eimm0wluXHirdlp83MXh7zHWKQprS1nu7Vo6lguaWEXKmInA/
X-Gm-Gg: ASbGnctinNAxm9cUiuNdTfmmpjTwrbiVkrAg3//Jafuer/zMB0w05FWWlaMaxl6soMQ
	lgRH2o6aJLpnX4VVJNJqdZVNVrcuSdoYRkOeQjvlcMS9wA9H7zdpMABaSvi8g43hAuO5e9PIgdf
	Lmz79cIl47u5RxcVhgbpL1dGCQZkF+RGWIBs+q9Vnwcu2A/O6Lsv+cL3Zap2b+booDFI8QcQc1z
	029Lfz6jnisQC0lJNwJtyMJBblQNNzh70eMeGTxx8soQLJIK1Sf8SADwLBPF+5bjqIleo1hvdtk
	DhSidTFtemOV4C2NZsM7iXQ/W891JuvZP7cIryWC3Y46eTcMOgmRJCfN6xpPIpiasLNXcZZh4o5
	kdAO4dLyLkUcTTKDY8otTVfRWjNgjnDg2g4C2pura0VpZClqAtC6QgAcEoESJhzKvlG9x26jx/B
	Z4WaU21pzxaAtD
X-Received: by 2002:ac8:6f0f:0:b0:4eb:d841:e5fa with SMTP id d75a77b69052e-4ed15c96c40mr10033511cf.55.1761686047860;
        Tue, 28 Oct 2025 14:14:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4jNVFQa5Ml7nGusPIXo01lvYQ4sYR0uLu/776uyIYfy89z02I3sSL0gA2ygG1inHEftMOcQ==
X-Received: by 2002:ac8:6f0f:0:b0:4eb:d841:e5fa with SMTP id d75a77b69052e-4ed15c96c40mr10033121cf.55.1761686047410;
        Tue, 28 Oct 2025 14:14:07 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f41d1fsm3319357e87.19.2025.10.28.14.14.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 14:14:05 -0700 (PDT)
Date: Tue, 28 Oct 2025 23:14:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v9 1/3] arm64: dts: qcom: sm8750: Add USB support to
 SM8750 SoCs
Message-ID: <eczsb4xsrfowfalgjaoy7azkrriitaietkjjkl2smceeasie3j@uc5ynursx3ot>
References: <20251024151521.2365845-1-krishna.kurapati@oss.qualcomm.com>
 <20251024151521.2365845-2-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251024151521.2365845-2-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-GUID: FFW3SYF0Y_qvzBq2Z0tptV2d8LKrRVRC
X-Proofpoint-ORIG-GUID: FFW3SYF0Y_qvzBq2Z0tptV2d8LKrRVRC
X-Authority-Analysis: v=2.4 cv=PcvyRyhd c=1 sm=1 tr=0 ts=69013220 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=c0kVAxtEfwLV-oNa8WoA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE3OSBTYWx0ZWRfX401Qo/1BeOxL
 /FsOk4jaBL4BcCG/31Ht82w5oT8yV07YNMhG2b5V8sYXn/8cvpWwCnpJKxN+BPo+ncnl0v1zclJ
 gMzAnCUBeisHqgczh3hBq5xxQRI4vOXVxMgCSsLN9XkDkRM0l1l8rzhx4ZMfEJpau0CSOVLEHM+
 4cMROoqoShZSa11Csmw4LTpaMZQc1CetzSGPCYyHwQEk2KmzDOmwaOI1pM7Qw5L26QnkisqZkoT
 ibi2F0RgzHfwix2CGMP1hq538f/s6Uxs2RWwh0e8WsqBr7bywtJA1iMtNMyMEgfiSF4TmGckzQ2
 s5XhK5lb9b+bFf0hNxSG4J1fXxgaVO1ehP3oxHlWSEolA9g9nIOtT/fuAtRgp/UbELzaMgEiDdm
 byVQCi/QB/3BHeGq0/qVxT4xnL482Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510280179

On Fri, Oct 24, 2025 at 08:45:19PM +0530, Krishna Kurapati wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> SM8750 chipset contains a single DWC3 USB3 controller (rev. 200a), SS
> QMP PHY (rev. v8) and M31 eUSB2 PHY.  The major difference for SM8750 is
> the transition to using the M31 eUSB2 PHY compared to previous SoCs.
> 
> Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
> PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> [Konrad: Provided diff to flattened USB node]
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 158 +++++++++++++++++++++++++++
>  1 file changed, 158 insertions(+)
> 
> +
> +		usb_dp_qmpphy: phy@88e8000 {

You also need to update gcc clocks properties.

> +			compatible = "qcom,sm8750-qmp-usb3-dp-phy";
> +			reg = <0x0 0x088e8000 0x0 0x4000>;
> +

-- 
With best wishes
Dmitry

