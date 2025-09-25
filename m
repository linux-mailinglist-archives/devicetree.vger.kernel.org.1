Return-Path: <devicetree+bounces-221099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEE5B9D339
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:33:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E47571BC2996
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABC092E7179;
	Thu, 25 Sep 2025 02:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="geaGq1vO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343FE2E5B2E
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758767500; cv=none; b=Y+yzPj1FS6tXgNhIk4oT2kU0yYtVw5biUwY17l06PQJo1D4h9DJiYpij6+qTqKmWTUQp0mtLFe0zHgDhKQjy87WQ+O9+Ls7UAY4ANK9et0+yZbxRxwAGd7qBXzYxKJ8pLCC+sNzTOyLlGs6TWOJPc8pOLi5lp8FIONUykfQ4iUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758767500; c=relaxed/simple;
	bh=pcrcivp6jRezc7W+w/l9SYu4yeO+SeLB/7dvhRX5kiM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wp2WXPVhJfSiPdjrDCnpkBX3JDiPaI7/KRvtSVREnSNBBQaQyKOMrHvXpuc1F5aC8cs68Q7go8stZUo/SXLEdve9eHnJBrhrCuJ7COlGyD2GU/Cuh5oRDUm00dcBTS70aY8jcEDF0e8GDCzehtAzL6YzbmEe8ApBRj9h0WOlnwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=geaGq1vO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P12CrG019934
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:31:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=D3nYnV6I3tQHUFYA7g+3qAT/
	UOlfwsLFTqadtUtQzK4=; b=geaGq1vODBz5/agzHiMLsyIDN1ZxM5VUKarGnTn+
	QYI6tCoiqFePkJSaYP+k5LERIL9k8IXUAVCKhyB1KRg1ToHZDuIGOrOn87YECWVy
	MQgjrs47ryVBq72k2k42Ufb5lzuNMwk9DejzWCydJ5k/VZt+koF3zqn6mdDpeJtA
	XjV14NRbsa9CgbakbfuosL6DtdET/Sb7ydx5nLfF6/NqEvqG/92skMDgUsf1Qhrh
	rFjAOH0U0EQ1girD5hYc4WedoDSxJFela6zb4QiJLDFgts2k/MrBtku5q0M5Yvqq
	uB2gB3Ssn0dsNdGxO39Iv1TNkLqBOKnWX3yVbJ1cob55uQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpdynte-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:31:38 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d435215956so11396801cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:31:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767497; x=1759372297;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D3nYnV6I3tQHUFYA7g+3qAT/UOlfwsLFTqadtUtQzK4=;
        b=M/CnHUANpG3lbBO0NnPjHQY14MWTsnNmJwKWT0sghLKJgHyR1IxMNfJ15BQ5p/tYT9
         EquOuAR1WLGUKhQFvUjGZ9yrj0yniuQNeYTTuJDUlaKUxUpgmEO6vutd3bKXUli6DTI3
         aYAjMMX3ol6Nj/b91flwKWpH3V5x5EOoMMj1qTZX3hMHXiRm2s5zkcCdlS8E6VUngB/f
         eu+dYCg2RGrDXcbNo79WVq0pbwW92HxpUKQcsZn9iUV8MCUFBsUgfoIqGGpBwBH3oZjW
         +cMuke/AU/t7ALCdt4l/kqDUUhUH9F/GgBNRieKxHxERYJ1rTLAYuIvUwZ6gvyHwEMv3
         6avA==
X-Forwarded-Encrypted: i=1; AJvYcCXLSJ6SpZNJSzGMt2d8jQASN5QwxkB+QTqyYURuiH4ZtNe0Ldo16x73V+/6p8JLfXLn0+RvLR46kFss@vger.kernel.org
X-Gm-Message-State: AOJu0Ywpi5mbZP4C8mYjojPYOVABWxNejiaeR+AipYBhJMmkpZlOt2DC
	ktV6TD/3RFx2EQqLBxFL4OiRGX7ziIYwba7FNKTCIlCYyE5DlWX3oPdPqutoa4LLrlTfDaEgYUi
	uTemZ5jJqNGnRFdVEv5eh7kFt9vPYSWQ8Xknilo1WoYFnh5bYS7AZRb91nAKgtmdu
X-Gm-Gg: ASbGncuKDUyYXU9qzDOBhq535KjO1vqEBVicvhPiak8TQ1WiLodcFNl8IySJstZPPvq
	wRsU2YE87FCmNbeOJEh495LR6FGJYngBQYUvB4NJSh5Iq5liv6t4O/oIyZZ08kkvBNGzmXwwFhI
	+P8lvWatqAz1iPGoH6lrPSAsh5n5eYrGLddEqSKO1iVxsHMF+dk1gPFbERC4EWjHMghunvYr3FD
	MV76oprZ5+iXY3cjIT1ww4QVxDqv7MZh0gNgL6OWeJl14/J7an7KKXreSNckT6kjr+4CGKKAyOR
	BAAxSNusUK1X0mGKbx0BB5vw5t1P2McVqjtI/xMlLaKc7y9E537Zx/TVSt2/bLfCw+Vv/jEr6yd
	kdnc4Mk6zzbgvb7zrNW39Esk3Z9QtvMe/y/GHB0vlaggxL2kR7Fuv
X-Received: by 2002:a05:622a:28b:b0:4cf:1f63:e0d7 with SMTP id d75a77b69052e-4da4d8e137cmr27710471cf.81.1758767497299;
        Wed, 24 Sep 2025 19:31:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFEvoHvlnh9KHRZr3AgHqArgHyeDWrmzl2oYp0o4JenqL8v9CmviTgtlWMTnrGZUhqt1jjqQA==
X-Received: by 2002:a05:622a:28b:b0:4cf:1f63:e0d7 with SMTP id d75a77b69052e-4da4d8e137cmr27710291cf.81.1758767496803;
        Wed, 24 Sep 2025 19:31:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316a32638sm240397e87.118.2025.09.24.19.31.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:31:35 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:31:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: Re: [PATCH 6/6] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 Kaanapali
Message-ID: <zl6tq3prervuiapz5ekd5sxfzo7injnanpyfvxz2vn35fkb4kh@25zejng3n7k3>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
 <20250924-knp-pcie-v1-6-5fb59e398b83@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-knp-pcie-v1-6-5fb59e398b83@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: VYxW2I8njoFJZnb-4uM3PCUNYU6meiF0
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d4a98a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=lYzJZiZmsC8Xh2LukrIA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: VYxW2I8njoFJZnb-4uM3PCUNYU6meiF0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX1IMW/n0RviWZ
 trNZkW2/hvimON09/nlxpB88GQ764cIMs1c4vC+xoDm4z7Iylx2pJapQHRq4BY8urP6m3uS+sfS
 JsPLdACs4Qpc9vOSB9gqlurTKOIJpIS+Wt8L7Fx3hB1Z1apy4BqNd03KGKDuG9ptWBgghcK0QPN
 EGQ98yolRiPO54Kjy6TkI6P2mwHLKUO3i/Y2PtKgVABRfr4DdQmS+xup2jfBTIgYGijz6YumBcA
 bU2jcO212Wea67FGrO2b7FZiTjYz8RhoXQH4c/qEifgBaIaRvmWsADhAqdSf/zQFeMANxQDQEDC
 1sU17sfx0aZPa4M5LLaK2NnwpbSpPzADQ2QY14rfSFS0c2eR45RyMW2oYqw80/CmzaAS3145bst
 /vHHx+AR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

On Wed, Sep 24, 2025 at 04:33:22PM -0700, Jingyi Wang wrote:
> From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> 
> Add QMP PCIe PHY support for the Kaanapali platform.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
>  1 file changed, 194 insertions(+)
> 
> @@ -5276,6 +5467,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy",
>  		.data = &qmp_v6_gen4x4_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,kaanapali-qmp-gen3x2-pcie-phy",
> +		.data = &qmp_v8_gen3x2_pciephy_cfg,

This list is expected to be sorted.

>  	},
>  	{ },
>  };
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

