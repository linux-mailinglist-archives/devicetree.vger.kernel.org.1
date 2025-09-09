Return-Path: <devicetree+bounces-214881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8758BB4AC5C
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 13:41:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D4833BA923
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 11:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D2A7321F40;
	Tue,  9 Sep 2025 11:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LcWLajU7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC88331B832
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 11:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757418031; cv=none; b=GuRMwLzO2vJ4as1Zu8torLTXZ5djUvUd/hqG1sPRnozJ4zZc/L6vRpPyfMjNAnUT1me/IJiZuU6jvB4gtQILjr7duhYm4r2NJ7rXDlq7YhQzu4fv2oHWwGqwHSzsS689oIEcQ5WRCxlGDCS8pLKzLurrwkSqzYnlqLih29sShSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757418031; c=relaxed/simple;
	bh=BOU4atm98zqe0exxJvBZhUOhA+KpqHaqcfoeWJi/b+I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HTJaaXWk4cxvfgqCUZzRWusxTqwg5SIXZxx4h+uh5Od1KZpwCFmp9m/8wbUqD6jOtbSspVvcMSYjr5uZS7xb8P1pvbwG5BxSQ9Qo97TWLD1bBcUC6nafMF0M/2mx6uiljAJntprZ89XrT7zhb9IwoJx9YMADqbfmVglImuR82OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LcWLajU7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LQjU009026
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 11:40:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WkBZK4nX8r8AkRcyHEfLR0jL
	z865vmuc1R3ut1MxHM0=; b=LcWLajU7pmng9f5CC2hU8jnbi4VfEWJPLitPJqRq
	tVziE2UTN/VxVg5lJ0ZAtXP8Jf8K7mD34WvQcRwyxy/lCr/YKXaS449RDKOxhMoT
	ZeLbpGk4rCwv+leG6flx5+K7DT8VbvZg5gg2sdnEpsdl69IgnsG7aQFTKuWHMWja
	jqhy8pvG4MpwsjBkDQP5R98660muQp6JMZRy+1sowuJk/YOXYhMmHHuRFthLNMqP
	4XaD9UaJDYGdVTn4c0AXPMt45rZe0XOURiTjN9nh79hrEMzEepz24Jdqo9Iuj0Kc
	GHDXpdyjt/q5STE0wBgywjqv1KUuDjAbyUARZLPJLIye3w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491qhdvv1b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 11:40:28 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-720408622c3so114894446d6.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 04:40:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757418027; x=1758022827;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WkBZK4nX8r8AkRcyHEfLR0jLz865vmuc1R3ut1MxHM0=;
        b=FLheDdiU3veGs4s/zanCPTpVXinZaSo7hNxDLr7wM1y7TOYywt0XUYZzwHh/z2LTzH
         k1cqqWCAWxSYDrbSnu5pSs1Sz60B3/2GcIYepjb/om3XOGtsDnsOTlT+L4bX7mkCirlO
         yrNTSOGOtm5RAIz2t2q1Xfr3EvnpKQs3lOQzTcI/+PfoRSpKw+8M3ViIIwVmuZh7aawV
         sv5au9aDkGK6hbPzVtriA7Emzk5YwkoKhyavWYVKLeS6f5JfpFpH4FEVf7D6ZhL8dZE1
         waU44CY0kxP7MvyPFI8e0U3rK4suBGFxri4raAzx0jX4bEszPzzDmDx8zIyC+3sD8WXX
         7tZw==
X-Forwarded-Encrypted: i=1; AJvYcCVl2PvOedZJ3Op7zyYX1kxLifgRuvHWNiqWg6h1yxZpdIR160irJHGR8xuSu4A6Kw+M0bhOUodGKUu9@vger.kernel.org
X-Gm-Message-State: AOJu0YyCJTB3yrxkYRrsX542mlWLx1sReOm2dKsGm15216nlWFuTUerA
	9Ici9FN7NTnOG04yJQDzCCBz75znLqho9zDcnMy/nchVPdWDBsgQU3kqb53ZaxTBIWNvPabrX3U
	qVgNz741gL/0PXfIn1wsIf2mYUMKxwfvm6943cmoD0p7qPmnkqjqr0Y6mq2/XOgjp
X-Gm-Gg: ASbGncsAdXorYopWJkbdV0fFMI3JYJP/ROmMjeNllmM8HAs3l7Ge1vgAwAqPaA6YE/1
	Qb6M8qzoDXmFcpIZKtfiaX2Y9W0HrQF0nfyrg1r9x8iPRJ3rCX0yLNgnnbeNp5Jqc3OVEFrF8aD
	DF4q/o3ZQpZFqQGuJbPjGgrD18YfBOfxanRHhKdowD73T3C6D8Fv8hLKB8rgIWWoVaXHpScrxwD
	L7M1Hs2wdd4GgfXz6CWr000/Ie+h+AFpP0zbJL7ZayLDs8p6KTlFp2z4rd5WwqFNTr2asd8UIPA
	42q/WboDqhynCQk7fSKA49tJpzH/O4A0BC/LJ/RmdLoXGQU53HqLb8r7PiqOqo8cj0uLl5unNnQ
	JoaN4qrfcoNb1YLmAPJgwa5lcmbUA026+zFz+chBxQpbFguZO6rYW
X-Received: by 2002:a05:6214:5287:b0:734:c868:fb4c with SMTP id 6a1803df08f44-73944249693mr115542086d6.62.1757418027268;
        Tue, 09 Sep 2025 04:40:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1x5yuvHnnOA+bErPR7PqGkCxp1J6nz/QL7NqI2NRrDi1/NlaUQaX5MIKLRDoOyGf3VbZlEA==
X-Received: by 2002:a05:6214:5287:b0:734:c868:fb4c with SMTP id 6a1803df08f44-73944249693mr115541686d6.62.1757418026714;
        Tue, 09 Sep 2025 04:40:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-568180679a6sm474574e87.105.2025.09.09.04.40.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 04:40:24 -0700 (PDT)
Date: Tue, 9 Sep 2025 14:40:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: qcom-qmp: qserdes-com: Add v8 DP-specific
 qserdes register offsets
Message-ID: <dq6hg2l6mseov3koisg5vsrkhifiwutlfy2phwaehvwzxxfgug@vgtcptgcopmw>
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
 <20250909-phy-qcom-edp-add-glymur-support-v2-2-02553381e47d@linaro.org>
 <3xw54kzk36u7zrfhgva4p577nzle3ctzi3lyhcxapczv2bhceo@23zcaylkqoff>
 <12ae186b-9816-4269-ab3a-7aacdc7cb954@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <12ae186b-9816-4269-ab3a-7aacdc7cb954@oss.qualcomm.com>
X-Proofpoint-GUID: TAxXKIN44Bnyonr5tNyulTCNaux_gb9T
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDAzNCBTYWx0ZWRfX9lSajzR/rKoz
 sVKF8haVanO2FvtarGKMgR7X84n1enWNX8z4f+TLfoLf+wG5nZITk3mOEL30NebyoeS188JQULE
 Ka6IOq7dlAFb/E7+uTtfOZZRVqk8o+7CB46Vu9SJ1qSwCdUApMzkdMNkvHDmMwzS52eG8pfLISA
 2BAycK3bTUcq4ugz9yRVhxwddgDpdBkNm8P8GpxIC2M50+ctPO4TFJhmuG2CZZQykPRnn6CXS+F
 FqWlKxktr2CDss0Sj+7BlcZcsHspYGUR50l6TPb1QvDcjZe2f4qlfEIFIH6cAf7STcOkapp0J3F
 W6DQngCViP8DXyQAMWMy934SkC/DavUeyvsbxMjTrsEkdQqz1p7+zZ7Elujm5LUxf2Yx9bj3eI3
 OpDiUUfy
X-Authority-Analysis: v=2.4 cv=YOCfyQGx c=1 sm=1 tr=0 ts=68c0122c cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=pQyaD6lL6sn_3oYIr7sA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: TAxXKIN44Bnyonr5tNyulTCNaux_gb9T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080034

On Tue, Sep 09, 2025 at 01:24:02PM +0200, Konrad Dybcio wrote:
> On 9/9/25 1:19 PM, Dmitry Baryshkov wrote:
> > On Tue, Sep 09, 2025 at 01:07:27PM +0300, Abel Vesa wrote:
> >> Starting with Glymur, the PCIe and DP PHYs qserdes register offsets differ
> >> for the same version number. So in order to be able to differentiate
> >> between them, add these ones with DP prefix.
> >>
> >> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> >> ---
> >>  .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  | 52 ++++++++++++++++++++++
> >>  1 file changed, 52 insertions(+)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
> >> new file mode 100644
> >> index 0000000000000000000000000000000000000000..2bef1eecdc56a75e954ebdbcd168ab7306be1302
> >> --- /dev/null
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
> >> @@ -0,0 +1,52 @@
> >> +/* SPDX-License-Identifier: GPL-2.0 */
> >> +/*
> >> + * Copyright (C) 2025 Linaro Ltd.
> >> + */
> >> +
> >> +#ifndef QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
> >> +#define QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
> >> +
> >> +/* Only for DP QMP V8 PHY - QSERDES COM registers */
> >> +#define DP_QSERDES_V8_COM_HSCLK_SEL_1			0x03c
> >> +#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x058
> >> +#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x05c
> >> +#define DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0		0x060
> >> +#define DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0		0x064
> >> +#define DP_QSERDES_V8_COM_CP_CTRL_MODE0			0x070
> >> +#define DP_QSERDES_V8_COM_PLL_RCTRL_MODE0		0x074
> >> +#define DP_QSERDES_V8_COM_PLL_CCTRL_MODE0		0x078
> >> +#define DP_QSERDES_V8_COM_CORECLK_DIV_MODE0		0x07c
> >> +#define DP_QSERDES_V8_COM_LOCK_CMP1_MODE0		0x080
> >> +#define DP_QSERDES_V8_COM_LOCK_CMP2_MODE0		0x084
> >> +#define DP_QSERDES_V8_COM_DEC_START_MODE0		0x088
> >> +#define DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
> >> +#define DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
> >> +#define DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
> >> +#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0		0x0a0
> >> +#define DP_QSERDES_V8_COM_VCO_TUNE1_MODE0		0x0a8
> >> +#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0		0x0a4
> >> +#define DP_QSERDES_V8_COM_VCO_TUNE2_MODE0		0x0ac
> >> +#define DP_QSERDES_V8_COM_BG_TIMER			0x0bc
> >> +#define DP_QSERDES_V8_COM_SSC_EN_CENTER			0x0c0
> >> +#define DP_QSERDES_V8_COM_SSC_ADJ_PER1			0x0c4
> >> +#define DP_QSERDES_V8_COM_SSC_PER1			0x0cc
> >> +#define DP_QSERDES_V8_COM_SSC_PER2			0x0d0
> >> +#define DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
> >> +#define DP_QSERDES_V8_COM_CLK_ENABLE1			0x0e0
> >> +#define DP_QSERDES_V8_COM_SYS_CLK_CTRL			0x0e4
> >> +#define DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
> >> +#define DP_QSERDES_V8_COM_PLL_IVCO			0x0f4
> >> +#define DP_QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
> >> +#define DP_QSERDES_V8_COM_RESETSM_CNTRL			0x118
> >> +#define DP_QSERDES_V8_COM_LOCK_CMP_EN			0x120
> >> +#define DP_QSERDES_V8_COM_VCO_TUNE_CTRL			0x13c
> >> +#define DP_QSERDES_V8_COM_VCO_TUNE_MAP			0x140
> >> +#define DP_QSERDES_V8_COM_CLK_SELECT			0x164
> >> +#define DP_QSERDES_V8_COM_CORE_CLK_EN			0x170
> >> +#define DP_QSERDES_V8_COM_CMN_CONFIG_1			0x174
> > 
> > The registers are the same at least up to this point. Would it make
> > sense to keep common part in the same header and define only those bits
> > that actually differ between DP and PCIe parts? (Is it really about PCIe
> > or is it eDP vs everything else?)
> 
> No, there's a wild amount of variation between various "v8" PHYs and this
> is impossible to catch by eye

I see. Let's see how it will surface later. For now:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

