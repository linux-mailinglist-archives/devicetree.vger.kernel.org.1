Return-Path: <devicetree+bounces-186667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F83ADCC10
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 14:56:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB1C61895EBB
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 12:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3935290BC4;
	Tue, 17 Jun 2025 12:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gFj3/XTH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D1C28BAA4
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 12:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750164999; cv=none; b=GT/SdIOkNTJjy3KARl3ka+npXP/kztJkI/0c4+fLvgHjcFYKzd20qEY9acbtCOZXKmBJGcJOwwIrRVSED02waGagAMjfwYYCtKglvlrQv6535ay3MFOe4KgmBAZB6Y6MQxVPlsQ21VUMLdB2aR/8VGZcVQge7GxlBhbTXYy5zpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750164999; c=relaxed/simple;
	bh=DKEqcJaeP8X1SLMpYbVwd7qUBQUW2PR23+GTcJd7GsY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YaZamDMiJYEB7FAbh77C78kQ8tUfhzIqxCZ5NFdqX+220ibz9yBKLVWcRfpktLIxCeXJL4QZOpPPwUhxgKy8GNHVpKv+jMIwObgwZ6LPYaHOYRGQtbjX1ThTTj1yTJxUY/LKYocCxNZoTItJ0oL3h8DGxCadJMcTCMfBSX3+WS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gFj3/XTH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55H6W5aU020136
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 12:56:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=reLhBblkFjKNgFgw0iZCw73Q
	eAmoIcUiJNhR7l2+5Wo=; b=gFj3/XTHwtHhusu1XkABetp6zBh6LBV2MqeT5ozg
	lVp6xUMtaqNtiiXctXE34Mlu+L1I0orf7wUl7fHGlxaIo11wTuW6MTxeGX2UDRRa
	k9YPcoTINGCD850rfQDzCYkM4Ystr7YtkDYEhhIDoI7Ec7h6MF36bWKx60IIHYui
	R6Hxdj7Q1sM/mA4peducECHxUEdTWlA/t68V1iXYEDnvcamUruNCAxZlVeOudLUM
	ySz+Njh2uN6tMhxbA7Cqzk3fRGYxQ2VuejrtgpMVQR9Em1A1V6Q0stLrpl1DxKy8
	ZG75DBs14WiwqWKXOliEGeAGaF5jhqpLbnLojYBp8R7OkQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 479qp5py7r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 12:56:37 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d22790afd2so900262285a.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 05:56:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750164996; x=1750769796;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=reLhBblkFjKNgFgw0iZCw73QeAmoIcUiJNhR7l2+5Wo=;
        b=m7Dfh/pr72szwJqBOtOnY0OjvlD4O8JHiYswOPn3jDOvkQC1caXR139y5/yFT/YFBE
         wYjpSk8AbdGouqjipgoAPHfjOZ+kRlJef/GjlOAxT5uylNWovzDpbGBhuB5hSuzoDmS7
         AzgTXeKEW8/M+YwxjDiZqF8wqs8iR5vmFx8CAe97PGN5uWR2JcESeI01Iao/kt62fnEA
         xqL5AuAe835BXyWnIK78zS+Hi64kCldlM1/JbkBM/ZurbUST9iznQw6h4UIHt36USZFb
         nV3NDSzYknRbNsePNXpZMHuHm3mclgeMcSbbGSlJbpRbq6UnTCXVCm4ncdBwKy/m92Bm
         4U0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUFZnQ5ecLKYI9pW5fJeA3+pWH/pY3EwqAKJN06vs3HO6LMop9tGt+aRULD7latj8ttCPCcsyfu+oNE@vger.kernel.org
X-Gm-Message-State: AOJu0YwfUZXyA7SW1qxCaIoYdqhTdvj0/tVTdCuNOj0WI7Ze0nQ7EGnr
	DcAHgfGVS76N+Kor1S5wwU4IMnklDWGSgsylA4F2l7ESHlmK/M7Qt3htcqV69bFfgSJn50CG32V
	VpaFwFf1pceJcqkbpc7h0msEaV3cnw5nvq22ckDnfkEFF4ZPoyUhdp4M9H9W1+fL567dyoytZ4J
	WFbA==
X-Gm-Gg: ASbGncv7ISFNYjViMcyW/kJa7FfKtvWT4EcNOXlqBYhz2iLYQ2AiWV1g3yTVUnEcJMP
	uIiw5hhiMSyhLpQRqzaOB5jcIxh1Q64t4pg4nZd0eAPFCrljfBKRU560m6PriEUOeQo3sJS84Fz
	HT0XO4jYzYle38GdQigYhrEdypr43dGcj/xRWtvbyBZ4pDqHvEqAi6tuOHz0RtkOEjXNV5kwJfj
	1iGNm7rLkF9E0I0skSyjtnAqli4YZI9sIZDF5ZXgUucKAfhRyF5As59OR9OAs6dehZOeyRZe70I
	8CK4ZemMm6C5lyQ9FalSu919Y8Z5rdE5MWNjvW738pGiYMc3pmBox0geumUTBLTaGRv2z1lABBU
	U10bGjGJnSzG8BXGzQwhXrz+sgh4KsaLaDiY=
X-Received: by 2002:a05:6214:810e:b0:6fb:4fdc:dd83 with SMTP id 6a1803df08f44-6fb4fdcde32mr136702646d6.40.1750164995776;
        Tue, 17 Jun 2025 05:56:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvCoVuhabEm27A62sEPcn/Fb55CORSI3jmx2fmiprrI/xC488IzmD9JyAr83daF6LLrrsC2Q==
X-Received: by 2002:a05:6214:810e:b0:6fb:4fdc:dd83 with SMTP id 6a1803df08f44-6fb4fdcde32mr136702296d6.40.1750164995406;
        Tue, 17 Jun 2025 05:56:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac135c22sm1912726e87.65.2025.06.17.05.56.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 05:56:34 -0700 (PDT)
Date: Tue, 17 Jun 2025 15:56:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Don't
 zero-out registers
Message-ID: <hgtbmst73ijkfptznqh5r6usdnn2tdx4fxow53g5pyl3yagbh3@4thxrkp5zcnv>
References: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
 <20250617-eusb2-repeater-tuning-v2-2-ed6c484f18ee@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250617-eusb2-repeater-tuning-v2-2-ed6c484f18ee@fairphone.com>
X-Proofpoint-GUID: 6oHGy-QdmOhitiEInP1phUpmN_zn-9Jp
X-Proofpoint-ORIG-GUID: 6oHGy-QdmOhitiEInP1phUpmN_zn-9Jp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDEwMyBTYWx0ZWRfX7ZqCSgt81Kyc
 yadWbV7KT5Y2xCglrejl7qn03XpiPjO2FQ7xsRFgyk0IcJ9V/sfFl8/BYSHPU+sUciOd+KAcYCE
 Vq6m8bQCTfICvTuHjglrOLYBiGn7rpmxCVLXMpx3973VD2rH8FWwGzqVEnu3DoRnOqj0VOks+F9
 gjMgi24lG4WhC3KYy5b9l/rKLm5q+3IGFutAd3HaIKw0vU7Pna5D7sWOShoG5htlRpdv11KbKyv
 sVGXiu/NEt7i0R3w8ZlYBPC6NbHar8r/AnkTCFE6CcM1JmhTyQar8gDFMYza/5OPco3L8ysFesx
 6Mv0uK7/Wg4RaluhO7PaHAhw4HRzQxXjK3Ze8UQQlfMr2kYspEZH8tDZ6lxj1O2u79H5A2X4gxO
 XsHUKV2O8iy3oUSqQti6vKmC0tjW1sEQmHb7ZTN1GoDyNCurd7M5QaWBRxIYJKEYM1E48E+b
X-Authority-Analysis: v=2.4 cv=fMc53Yae c=1 sm=1 tr=0 ts=68516605 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=6H0WHjuAAAAA:8
 a=cispc58g6-s63dKQH_wA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_05,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=923 spamscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506170103

On Tue, Jun 17, 2025 at 10:26:36AM +0200, Luca Weiss wrote:
> Zeroing out registers does not happen in the downstream kernel, and will
> "tune" the repeater in surely unexpected ways since most registers don't
> have a reset value of 0x0.
> 
> Stop doing that and instead just set the registers that are in the init
> sequence (though long term I don't think there's actually PMIC-specific
> init sequences, there's board specific tuning, but that's a story for
> another day).
> 
> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 83 ++++++++++----------------
>  1 file changed, 30 insertions(+), 53 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

