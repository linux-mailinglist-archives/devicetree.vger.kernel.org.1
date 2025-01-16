Return-Path: <devicetree+bounces-139120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C41A14249
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 20:31:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 756C016ABB1
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 19:31:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B0AF231C9A;
	Thu, 16 Jan 2025 19:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MXJQZwt5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B88922FAD4
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 19:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737055867; cv=none; b=A8Tt+UvLKkwprLUaK+AeUE7whBdvxkAegCZjjPDODxj/PKlzXEQqRRewxruyf1H4xo9F28ztN/DJ8BO4hydm9JdfBZ8mescKLepPqnvJ6l9LRIl+aocAyvK8s9ECUCp/TyKFUS0DCH3+ICfMhuWQoZxlqpcdXQJAMLzFY7PS7ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737055867; c=relaxed/simple;
	bh=1+rgxPKUqRlTG+Y9zg1A7XN5a4oLNbilwuPXG8NmHJo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=otWX6/4kEP4EXP72RLufR2m7chFajBgc3f/LiXFFq8xEV/ALri5hIVID75YeXo5OyovCfcCEyIgUupenQuq0/qncSH2AQo6He8NDmuxj197UUlTvNm6Psty95RGQsj10p1E6/BUX5hYIn2FgUk5MOto+vGpYL415J+CjU7+ZBF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MXJQZwt5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50GEK1RW005681
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 19:31:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p2oCQTDyFtzOd9uDuk0k/6IADn8jCTnEtRWIODY/B3s=; b=MXJQZwt5zFu72kpv
	RCn27+pG1vgqfm1+XSm4qU6C1/n2lf0zo8jeOY2xQ8jHveJ83l4BqhAgMkXFr+nF
	e/9CAjpd9GGjd5cXO/TLxq+pr9WRn007Pwq17aFm8yCyiHKGeuceKZdeDjyPstkC
	o2ne3SEcT/X1Jfdp6mVbpiawhx0UJtFA7a4fUHgsT0mWmp//uHPYl1AOn5szZF37
	oq6Fxka8W4IL7KhkDuNd1Vmx96slz9T8ASJBl3uU3SArVYIq4lBZf5Hjc1exmBSX
	/3aO33DY+ZEL9VaLwl1J4xpt0FKi2WDa1v+/fLPpbSfc/1/c0lw51N2Li6l4oAsK
	FKKnSg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4473sfrs48-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 19:31:03 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d880eea0a1so3237786d6.3
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 11:31:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737055863; x=1737660663;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p2oCQTDyFtzOd9uDuk0k/6IADn8jCTnEtRWIODY/B3s=;
        b=Eh1URxRBoEq1io7RN/SkViClJL0Ij/pOCCTrpY90uVV196hKIn/K74ZiU3Wh+ljj3P
         aSNhmiLscO7tfg3Z3feLkG5Y7jEZVuSf+YLSrmsqOZBJAybkRrOcuUtkRGXCGIknXy01
         UzZBqbUpIcnKSYRO+Lz1fF2YUHTbPk6R+yTiIXtJRX8yNVrOPU8e/pMK3TOtzpWucQl6
         9jtb/HFkQrhimjyPHyyEpi7MDpGdpQVeTKgwYrrUUq5hhX6FM5rbwjHspFwkFCT7vf77
         1G4SIAH40+xZaHFf1SovWECei9vSc7g0UOoBCMCdpMh2Ovcqa7zscfkVnu07Gmp6C7eM
         PWfA==
X-Forwarded-Encrypted: i=1; AJvYcCWKu81gLrIzLFGpSnyF31b5DWTNmYNVAR7iLtI7nUOPTL7cCHB1hcd9U5kKdb15c3F9QlaATJqe2o0k@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3ISwY8SOuf8W1naU7iJnlTD2pF4sD/Vhlf532XwwpW/3w/1nW
	deOb8Jz5ZVbf7HiMnIPBNapXV/g+dKer3PedEI7xx1jVfKTvAks1B5RD+xty476GDxYEArImaCW
	FKgmibuQz5k4QjbiHP2mxIHhmzHXzd9IkLpZVa0HU81fhAptITN4ziB0XXzBT
X-Gm-Gg: ASbGnctWeK//SCDqF2z1aSS1u0PH+qTRuXJUGqf/sGd101lndhIigmbT/aaBhmlmfY/
	RR/nAyo4wePDgbmRKLjNXC2JbnX5R2/KpxeyJN9RCiNz9h1srnbJ39/iiZURxoOhxRlOQfsetpI
	oA6TJe2n3mZgPyc1XxV17k3aDuOI+nb+LodpcmZc0mFHM0j73K5Gw1UHPT5COW1EL9T48B367p4
	LxJnj4k3rsoDTqBks0qIrItQBv3FQkCWPi/33m8shrhnJipP3gOraKeirnduFNoWdtBNRWfllSx
	7NLNveN/WCYqo/wlto0gMstaFl6vosT0fNY=
X-Received: by 2002:a05:6214:3016:b0:6d4:1f85:3975 with SMTP id 6a1803df08f44-6e1b21f207cmr237276d6.8.1737055863114;
        Thu, 16 Jan 2025 11:31:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEoEvs3dPfn98G/nJY/KiQsPoGomSjcKF4fvgXzqrXcQPhHh0k0bJ4l0NVlAcPX0Z3NeGEoWQ==
X-Received: by 2002:a05:6214:3016:b0:6d4:1f85:3975 with SMTP id 6a1803df08f44-6e1b21f207cmr237046d6.8.1737055862745;
        Thu, 16 Jan 2025 11:31:02 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384f86265sm37902466b.130.2025.01.16.11.30.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2025 11:31:01 -0800 (PST)
Message-ID: <e08535c5-33e4-4f9e-a234-deae4f179371@oss.qualcomm.com>
Date: Thu, 16 Jan 2025 20:30:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] dt-bindings: phy: Add the M31 based eUSB2 PHY
 bindings
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com>
 <20250113-sm8750_usb_master-v1-2-09afe1dc2524@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250113-sm8750_usb_master-v1-2-09afe1dc2524@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: WejKH96RMRWZ2N2IaACQfnl_iCqypRRh
X-Proofpoint-ORIG-GUID: WejKH96RMRWZ2N2IaACQfnl_iCqypRRh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-16_08,2025-01-16_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 phishscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 lowpriorityscore=0 clxscore=1015 mlxlogscore=689 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501160144

On 13.01.2025 10:52 PM, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> On SM8750, the M31 eUSB2 PHY is being used to support USB2. Add the
> binding definition for the PHY driver.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

[...]


BCR>;
> +
> +        #phy-cells = <0>;
> +
> +        vdd-supply = <&vreg_l2d_0p88>;
> +        vdda12-supply = <&vreg_l3g_1p2>;
> +

stray newline

Konrad

> +    };
> 

