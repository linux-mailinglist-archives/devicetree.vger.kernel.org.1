Return-Path: <devicetree+bounces-207359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D90A1B2F4B4
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 11:59:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2797F3A7180
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7DD12DCC04;
	Thu, 21 Aug 2025 09:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EeUCq43k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292E62D47FD
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755770235; cv=none; b=KQJKsL4K1r4ib2LGul11w+wTghM2fYk97GL9YIgEX1w4CnoCVBxs6jC2i2jRJZ9ToFmeXg2zhqcjj+8Rs33/IFiWdhbEWpaFt6pv9ETEi3MktFPKG+Y9eD6PPFa5K3n45ZIzeMOJnMJ6YvbbGhkGdeWpngHQsMw8UnCzGOP27p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755770235; c=relaxed/simple;
	bh=IOpmcn53PEqkS2CYk/u+AVkw5l37Cd/P5pjacTzQpXg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dFVDN++TVk3wiQMnEvDCs0D5iyQlLQ3YBEB1HFp8sDyTzXws8rbtjWg+9scKqAmHv5lI2tzQgH5CERWGdeoNCHsbyLkkiDzkvpqUxIxBjdwQfN5R3gDA1gFQcc2fNSED6OKFx3dHeaw9XOQZBpW6x8QFGt6gF5kk1hy/HOKoDws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EeUCq43k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9b88q012903
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:57:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SVb9XlaHh7NAzDiLQrW+htsh
	4PsmGg/oSLr5rbvMx1c=; b=EeUCq43kFHXicsz1AxT5uF7u5O7rqZHJ3xxwAfDn
	dAoz5zy3dbXp0J6cgkRG4hr/iIR0La6XgV8F9I6IXxukzNVZPoptQT1yxaSETHhj
	h3v+w/wVHnn4dd4Xi8SHUi9E1buREiZZWRHzrelcaYEXInWbYpVguQJauIslnf5J
	3j3t1ay1quy42AoFzDT3urFsMCq8kd1sm+iPhcyTFyaqdJoX9N/TnLazKop4tQsn
	xay7YO2vRCMPZLjTsmiztnMjV4KwSC677fYCNusqkFV527BBGMVto7NCs0jreSuH
	3HsxigaDt2xtUxgyDezqw157YdLDSH2WDBXBuE4Eol8U8Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52dmx15-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:57:12 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70a88de16c0so17875236d6.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 02:57:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755770232; x=1756375032;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SVb9XlaHh7NAzDiLQrW+htsh4PsmGg/oSLr5rbvMx1c=;
        b=QGiPgwOWuw7LwIgvlL69rbs1GdYpcccuWaxpJPJMJNdmWeRjirOlKFR+dDL+qaHYES
         M2tECfNvICcatjv8X+YeJEl97jEX7mEBmzDWrOMTJWhjNj1phKrAmrALaWAppWqzDQ7i
         4rvsnM3Decf+UWZ3h0HsdRY2CCEZsEEipTGwU12KidwCkX4KK1u4Ko4P3uQLhnPZfLuQ
         HjaVuYr73m4Cm9V9SGFE0siJRox8KKqA13DF5wd1nnxJ6A/HTk0kv7Fzbu58+AeIwWxZ
         6JPdlzJdmsiRlKaBUfshX1XpbwiikwFPcQarzxqwNqkuo+mQmzW4TdKO+B2U+3x3q45k
         A/RA==
X-Forwarded-Encrypted: i=1; AJvYcCXSWMuDSLADfYeYg4THH1DUudV7PNbNtK/j6uDQHTzOU7DDY7zelrkDH+0nU+67gai2nIoMcQfnKD4L@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw7lztZiuzb9Ij0SGJztVbEOn5pde5Ci9OTPVpB684HeV9IqEH
	a2McZggJCvYAmXaKK/n0PejD6JhroQGRsxBiAEXnGvtFJ+IlAZ0PVt7V3RixLL/CGucn1L4cQp6
	MhSC/beP24ltJRS86TLvE4B4mBd5OQJlSEXOksnSTZ7vvxcYFuOa/jqk+1/VJhN7A
X-Gm-Gg: ASbGncuEVmUAj41tNMt+k6J/Jqsd6/u4HNOXFzNZ1ryDRbOIUb9lTbaCw949USMAGia
	kbRGJYU3vC3FJ/jtnzbkCcUfJfWSlL3y1lDoGcdImzunIoIFR6eW2AyFBRbr7oIaTT4UChGNf9R
	bZK2sUolTLIocw00r+/VlhORP231G/YoVumOkkWy8rPhI2mqt39Sv/Y3K9dlj+fRUFXJ8XPzVpU
	kU6X+b/lmOrjCrYb/fUHNy4q15skUNBNmCioLI7eJ+g6yUDn+qORFaErnyJL/CmUbECu7/Y0zui
	jUP9emJ03UfGnxbXbKFrLC2VGDTd4AcQQP4xWBNM7is/JcRVXcZ3Kr48o7ucK14gsYv/878g3yq
	NoYRHsSwQCBaklCwUwF42K7WWZgabtRdhpuOrzMZzGwrjqcfd8nVo
X-Received: by 2002:ad4:5c4c:0:b0:707:56a4:5b56 with SMTP id 6a1803df08f44-70d88fd7384mr13862776d6.40.1755770232113;
        Thu, 21 Aug 2025 02:57:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqWaMiKK7y86qlSXKsjy23FxD9WLBPQ8WQUmWHwy0IkQdYYOWie51bXUGTqyoqGxLizYaDnQ==
X-Received: by 2002:ad4:5c4c:0:b0:707:56a4:5b56 with SMTP id 6a1803df08f44-70d88fd7384mr13862556d6.40.1755770231656;
        Thu, 21 Aug 2025 02:57:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef367728sm2973854e87.56.2025.08.21.02.57.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 02:57:10 -0700 (PDT)
Date: Thu, 21 Aug 2025 12:57:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Subject: Re: [PATCH v2 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
Message-ID: <bm3cp2vyw4rpllkwoxoxwrvsjxrtolcroqwx76bkpwmcdvx7ag@b6hvybyouq7m>
References: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
 <20250821-glymur_pcie5-v2-4-cd516784ef20@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250821-glymur_pcie5-v2-4-cd516784ef20@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXwm33jyw3+PG+
 F8g3FCBe3nsjpB5marqmJgUG+9hdc0mQveexml/DUryitbx866XA7I2bMFreRdcCKIcUy7dXa77
 kWe7a+likAHmFrMkfa3O17aaii/02PwrFT69xE/kwW6Z3nR8DUBKzo0wRaDcw+YUTa9Jq1uivqr
 iBGRwVllFs++9jlJ12DQuVvvmv+eaUIp4OdB+gJA/m1VpOm7qCecQR7PmNuNC4drjdPF47gQco+
 OKNGOSAeSDQuoYS8gl7sh1zHLy8KJYew8vm0oX5aaXzycq9JkeiSi4Q+OxY6psBh7Txr4GkWauU
 sj+ThuGq4ssjUoEnvuBWNAPmFcSvA8aRhBiqiWPvukM+LXC4z1JkKAuVSRbLDZh+d6NIhq/Gm9d
 D2/IQU8aoR18g6TFSxcSNLEHZatK5w==
X-Proofpoint-ORIG-GUID: LICC0TFvFPNyR4WpsGt3NzJiGkD_mUbp
X-Proofpoint-GUID: LICC0TFvFPNyR4WpsGt3NzJiGkD_mUbp
X-Authority-Analysis: v=2.4 cv=SoXJKPO0 c=1 sm=1 tr=0 ts=68a6ed79 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=nE5-FXN1NE7ZT85CS-kA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Thu, Aug 21, 2025 at 02:44:31AM -0700, Wenbin Yao wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> Add support for Gen5 x4 PCIe QMP PHY found on Glymur platform.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> @@ -5114,6 +5143,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy",
>  		.data = &qmp_v6_gen4x4_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
> +		.data = &glymur_qmp_gen5x4_pciephy_cfg,

Please keep the array sorted. LGTM otherwise.

>  	},
>  	{ },
>  };
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

