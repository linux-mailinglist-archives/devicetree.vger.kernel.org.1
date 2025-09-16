Return-Path: <devicetree+bounces-217811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 236C1B5947C
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:59:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F0A61BC1CDF
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B9172C158A;
	Tue, 16 Sep 2025 10:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iyu5PinM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6396B285CB3
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758020366; cv=none; b=ApmqIE2X/wYI4xxBgfiTJTCr7QU3FXCYegRIfvjfd/zho8YJ00MYwR/0Vbi6IDQk66xj8Tq5ex1s7i1UYEvsKTu1AAJTzIguI7I8TrbBNHdGB5Ow8tp8zMK2zRx2UxOZXPuRRPh67ew3O+nRLks4HUnzLhJUEDHA2oREHCxsI3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758020366; c=relaxed/simple;
	bh=3dM7vJjkg5Mx5e5iRX613YlVuqKV1/6CMF1mfmG8ByA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BsM0FO5ACmHMLAGpHJ8blI4/BOoUn2YzFocWyL5kJFx/R7u8vlDYsJq5kCUdpusZBpBNV6bidqcVbo/WRkD1rLEXRu84yfgJyZhUXEkH6eJ3bPTDfix8cULbAKJWbG9IdXp9ynA9MMa1pv78dEHPJSoXlKAHtUYj03yk5PduW9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iyu5PinM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G9o6VD013390
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:59:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mFiDkj+L3cwYNIifGEmZEYEZ
	JXhnfzx+t8PT08ZFf5U=; b=iyu5PinMriJk0GeFWONK3k72LxXT9dlRpzDlwyID
	4isrTtlsPWxGcINhGfRg2Gz5klPHcUspF3zgrVQ+seHHm0GDEZbC3vFJAlvWN1W7
	J9KZCeD8idbZDwUHjhannikKtAwrG4llLAVfqxzB1vfwixDftMI+ZtJQiHpQ4QiD
	vHkr0TDI/RcA2d40hH0TN3wDURsxw6x0VSyS9ieY2/L75xobUQ7HFngo9mMaOdit
	hv6c0eRkZA67mzRSBZQVbHCoSgiDq1QDbtnHZjhaa6JU5Jp3TObH8SJSkVPB08ir
	56dC+5seyG2nJwTCZcx+QaWjJ2DZuxXjJPFFCr5GokZ8uA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496x5asqq4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:59:24 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b345aff439so136927871cf.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:59:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758020363; x=1758625163;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mFiDkj+L3cwYNIifGEmZEYEZJXhnfzx+t8PT08ZFf5U=;
        b=qNTrl1nXo+bvL7d2hBPt4/7ZkHvPWbJRS5D3Lx3bzIhwG1h97y0L51U/Oo34PPwpFb
         tZ32XxjBMd7xRM8LI0Kq8Uf9XxnNJJ4EATTiJXGplcghpGj6h71CUqHTgKdiXhDo4cqd
         PTBIGe1zpvKb54byDa+9BAnDpUtwWBgm2rJSLx3iG0aVN1g7nKBXLC8Mp9RAqanJj7jx
         RK+94qzsEBjnWCBJoZKTKhd+1qosxxLFM9qllIuYlPe3keGBwLkDn3oGXXL933revmPt
         FlGvoaBXJcvmhmlQ6NPJbZEEsjLHczhyngeM/R0bieGzXhbFwEFbbXd77tmgAI9Ou5H1
         zNVA==
X-Forwarded-Encrypted: i=1; AJvYcCWp1xtwtXvIWDS86cHp+QXs09IJcBJZm1ZJyFavn8vnWxveVDJOamzIl2ayYPCrH6lGRMAg42isnRDJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxLHLi/Hw8f0ZYF3zTULq0w+BhhNlHqgF/Yh+9QuSkIFOUf2HQb
	Mc8IaQ19bMI2ADT49bG7H2gkK4SnSBHagUsPQ46+QDrJ7UeQsqMI75i3/lxvtMS9Z2zMmShPBKq
	3/nQXMne/A0t7N3VOGVsYnuDQ5rLkH3T6kVXzc5oEBwpoEbS56PuLMmwFliULcyJe
X-Gm-Gg: ASbGncuFYizgzJP5hRFu5yv2NBkU32aTaFFRtI3FlnasnlCJeiDPru+uVhhexijmMR6
	Cd9+S38JqCg4heOru/rW0sOMK3XDGNJ9uHS7zh/Kx0w2vnirZGYhGA4tm4NPpnZz9Vs6TtWk8QM
	zYUj3C8N3RQ+7iEceLciCHYz6W2GmH3Xv01wkIKTJYD8a5fGHSJC7FWtDch3z/o8Q6tgB0A2UZW
	dcXZNM4/YtyjX4xHKCq8OyTocaKs4nwJACsJijhe8PGmJu3MQrG7HZznP6o0fSFrchrleQVkJJO
	dk/DIz6Wo/avSfolt+yYQnV1yu+DFv5+WwOyenBKkeiIvHCJ2+F8A6zo+jtFdkwXRJ1y3bw0xGk
	2A2KPTosoBzoS44KHLEdqDMZXvMV0zIGrflOo6M5gN2SoCJKq0Dm5
X-Received: by 2002:a05:622a:5e18:b0:4b7:8cf8:21a1 with SMTP id d75a77b69052e-4b78cf8257dmr88217151cf.82.1758020363428;
        Tue, 16 Sep 2025 03:59:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDj/hhJ5O4jQLZi/UnXUBCLpKD2mcKKa7z5f6/+2XEQQYMmtnF8am0LXMBESmcmRpgg7zgUA==
X-Received: by 2002:a05:622a:5e18:b0:4b7:8cf8:21a1 with SMTP id d75a77b69052e-4b78cf8257dmr88216741cf.82.1758020362518;
        Tue, 16 Sep 2025 03:59:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e663c5005sm4331812e87.149.2025.09.16.03.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:59:21 -0700 (PDT)
Date: Tue, 16 Sep 2025 13:59:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, linux-i2c@vger.kernel.org,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: Re: [PATCH v5 02/10] arm64: dts: qcom: lemans-evk: Enable GPI DMA
 and QUPv3 controllers
Message-ID: <n4p4www37qz4hw75l6z2opeqks4g3u26brceyxi6golam7f5aw@raandspcihi6>
References: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
 <20250916-lemans-evk-bu-v5-2-53d7d206669d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916-lemans-evk-bu-v5-2-53d7d206669d@oss.qualcomm.com>
X-Proofpoint-GUID: bqxIG8cq_-CPdr6FlEr7XHJcQ1JESIy6
X-Proofpoint-ORIG-GUID: bqxIG8cq_-CPdr6FlEr7XHJcQ1JESIy6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDAxMCBTYWx0ZWRfX8gRy+0PsDikL
 CAeW6JLVBZCo+XNYBmVb/gwPuL+hCt6PathdcjQamCUd3KOamR8BK3+v11evlnSBjFHQwxYRlQ4
 Kso/Y4TVa4+PDz7sFz4/Z3LLm5oeJy/7j1SfnvsxER8CIXI0cZ2m/9XWaIN9xL46YGklHJGkGU4
 GGw9tDEmnZ8WOE2kb4e1kweZm6YQqyu/QJnuexI+PDfCvOJrvBsl+Cd2H0TPh/9PzoE4S20L3HQ
 8KgMTVgIs0cwlMteQfZGbNNicK3m2hngqTE8Y6vfnQPigTP87UcNeq6Udq7D/PMkNux2kC+mHSl
 tmkhrVdCih0QfJelniExTr4nphEDWOg9raZWMISbla9ypI4meKxwFN419J1tpZSnBikhCA/eCuw
 lNUSl2He
X-Authority-Analysis: v=2.4 cv=WpQrMcfv c=1 sm=1 tr=0 ts=68c9430c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=E-8pkxSmLjkzrIbgvO0A:9 a=CjuIK1q_8ugA:10
 a=zZCYzV9kfG8A:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160010

On Tue, Sep 16, 2025 at 04:16:50PM +0530, Wasim Nazir wrote:
> From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> 
> Enable GPI DMA controllers (gpi_dma0, gpi_dma1, gpi_dma2) and QUPv3
> interfaces (qupv3_id_0, qupv3_id_2) in the device tree to support
> DMA and peripheral communication on the Lemans EVK platform.
> 
> qupv3_id_0 provides access to I2C/SPI/UART instances 0-5.

Nit: used for foo, bar, baz and slot ZYX.

> qupv3_id_2 provides access to I2C/SPI/UART instances 14-20.

Ditto

> 
> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 

-- 
With best wishes
Dmitry

