Return-Path: <devicetree+bounces-215858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1160EB52DF0
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 12:08:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2EBCC7AF12E
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 10:06:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9650330E857;
	Thu, 11 Sep 2025 10:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KJILzsXn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D738622578A
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 10:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757585305; cv=none; b=jR+gNqK+36MmW7BQproyZSEFLlUOlrsjQOQPSTTc+pK9ljrFDJmnZgGLq+7263fqs/bK10wKsOLvWHydqdsu+GzMSSKIlHLRGYi4tQhQ8cQovZU0Nq+IIg6h63Oz71UwnJGVVxh30MS0/1XedEu5L/P2lKG2uhoxQiNB9mpDoo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757585305; c=relaxed/simple;
	bh=n5hZS6mVWO1vZzrRZcGXyr0dI9gMb8F/K4g1KkasOSA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ElDjx70xb5Tp974bWi+wUsIVPalrGpfxv6aOEWt6mgUqxZ/ABtdY7aqdfCM9brIPH/Pyyo5L/E6e8tX+hDvFOMiAft4UP0xxmi77naBvuzRzOVJM89VB9A8+G0PW5hl2Py+KmImehIkbb1XCWy+qEWVvTa+nfjvbgagfFNJdTiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KJILzsXn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58B2IkmU002556
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 10:08:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mJTeQ6La+9enpjGANxo5EMqn9yfu5ZP6vTBXQafVj5Q=; b=KJILzsXnxxfFpSlD
	tCnmGTyAjrfdZT9fqm11eZzkJH6PrLZyYtjDAr8RZQRyC27eLT1E1C/K9Sm8bmOA
	8rhgV9X/6d51fGPCjEi7NEYmzZG42ggc2WwwGAYZG29sjunhbFAzkyW87HxmUFeA
	Ps/OUvz6RzRVA3Ei7D5rySfKAH/KcjRyQZRRdZ9e4NIyPkjQkrHs0xRiZCGEMdTP
	TEUz4BWWgTRZxdiNbNoiHqW5Qg9FkkW9fOmxmuJaL9ac4xoMDRd5NAgpomzcOczn
	sI/gLnB8re3Duakdw4nlyereVvRCbLWGR3TOWrXtCUFtDefE1ezsQx1iWlgiChLb
	OwOaIQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bwsfbe2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 10:08:23 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-81b8d38504fso180537285a.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 03:08:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757585302; x=1758190102;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mJTeQ6La+9enpjGANxo5EMqn9yfu5ZP6vTBXQafVj5Q=;
        b=LR+9SobxNNs4cq57jwCFSHsDGo4vQcEJ0tdoSqgrO+Iaw7/cithYuFCVWqiKPyLBsX
         GUvKEqSpVgIW4FiJIe0LqFbp0UQz5wJOfAVZj52T9B671d7lIrpbt48QADDP/oqCTSYf
         bZRrLTcPxEN6TQbX0xFtIODx6bjwtB8WjGcAMYkcpJuiy4KqBoRZcjltdrkEND4x5RqQ
         6ZoAQHZ1MqgYgCfmtr6vhOTWYwSWmXQcASYBDjL9QiN+CqaYuxRVQhmi93tIGAW3USbo
         Lns3ggSANukmX6Ql18tKpE1W97x2sv7gm5Hf4+dzvao1YeqLRXhqkuYt+CEZ+8scHJuT
         nVaw==
X-Forwarded-Encrypted: i=1; AJvYcCVeksIg12b4OAnd5Thh6wVuaEBIIxRpFkOYByP1mBqGJ7DFboG1IvHkY6azy5vYaHLqPtPw4+B0FXjk@vger.kernel.org
X-Gm-Message-State: AOJu0YxgulcQgpVtR1wEPgQ0XsB8HOqx6HAJ9/8hl/VOB+S+wg0W1wvQ
	ys2PI/NDrIdWsjkE8Mhxt9aGBCTHEC9Hil1K5dlSg2WcZHIFoG/xKlfioG+CHyGSMmHx4Jja71k
	nvRXhuzzn4Gl/KxdT3JKrjOsDlv3aP24TeEA3XKMio2hW5DEHVcXCxxZ56UklkfmU
X-Gm-Gg: ASbGnctav04p7nTaWPfCwm7Mg7UNJ4JsU/W360xS07LksMA0j+9OrdGgIpWR63NHEbf
	gLu/2zIZ5ic6IGXYowoo6FVrX9DWuaCPXqvVnAoNOKdkujeKehNjRyAST2OZUwTznNO/WW9MvbB
	Ss1BIHBvi86n2c9xk3JnjWJjQaW6K6PPJQjb/6ylFfTHWGrP1OF5adc9rbDZe7GE8DOqClPKTc8
	aV+fZtn4/dbWZLA0wiE5nX39NPly0BycNxq2sEWABE53qgMHvTBKMe70ttg9xbrwCbgC10lyKyY
	y8Nk5zszhBvmkZv48B6rrgfUwQpqkY4fpLILZI0Tk9KUWX/x4SGg1vEh6jI5oa95wNeU4Z5xrnX
	xQ32xIUzZFX02+VJDv6Tm2KtAN4FqvQSJ/ro3EaGN2wapj5mZqlzP
X-Received: by 2002:a05:620a:28d5:b0:80a:72d7:f0cd with SMTP id af79cd13be357-813c283b4f0mr1972558685a.56.1757585301584;
        Thu, 11 Sep 2025 03:08:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+vSCp0aQsfrgiWx+CMQVygTOZUT6hcev+c4fptHv2L3yBUTKkcvzaspp8tCLB16n41chBNg==
X-Received: by 2002:a05:620a:28d5:b0:80a:72d7:f0cd with SMTP id af79cd13be357-813c283b4f0mr1972554785a.56.1757585301036;
        Thu, 11 Sep 2025 03:08:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f163f495esm2066731fa.24.2025.09.11.03.08.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 03:08:20 -0700 (PDT)
Date: Thu, 11 Sep 2025 13:08:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
Cc: Vikram Sharma <quic_vikramsa@quicinc.com>, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
        catalin.marinas@arm.com, will@kernel.org,
        linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ravi Shankar <quic_rshankar@quicinc.com>,
        Vishal Verma <quic_vishverm@quicinc.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: monaco-evk-camera: Add DT overlay
Message-ID: <j475dpcflsibhrim44wjmtbfcfht5jzvptlzrj354oyjee5mit@wmfc6zmrkbfs>
References: <20250909114241.840842-1-quic_vikramsa@quicinc.com>
 <20250909114241.840842-4-quic_vikramsa@quicinc.com>
 <w54mpkzk7irjb7m5jiouxhj77czj4ex72oqioaph4o5qhcsay2@qjolctktsu4s>
 <8104bb41-e827-4daa-bc96-9b6678a9d345@quicinc.com>
 <3d26b554-727a-44cb-a1a9-56f49775ba3a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3d26b554-727a-44cb-a1a9-56f49775ba3a@quicinc.com>
X-Proofpoint-ORIG-GUID: dNy9ym7b8uk8_EF-uPkYEETbSEVaHsfP
X-Proofpoint-GUID: dNy9ym7b8uk8_EF-uPkYEETbSEVaHsfP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX+8z52MrxpC80
 3x3WKRU5yEiyiXNvCSeXyDECA3HsPjFItsQBwWTYohthDL0IA2YMETpmijTd/l4eLJtit+MQheB
 dGDl7QMayGX3QGZKCFm3pAkXXlo22B2WOtEYqJa8krYNDOxrdV1Ec8vMg8g5HNh2kHHmgA1qWzx
 IUkaE7wSUWBvT80WgaEOL0taFGV0EBhZ0Kk/jOUdukZMVnD3P1YpNJRB5Tltw/skogpoh0pye0K
 OX/DFrVY1HFg26kdJaeX2Dt/YVvT6BjJ16yAtY9DPWqHDo80KQr0OZRZ3lpBn9zzY2ojyLfUzeQ
 n74k3N1CbQQBGCrlII/JRIJ0uD7dfGLc2xKZkOkaLLB8VjitJ3jDNg1b2RMzT7O9M50XhDpRFVM
 p9P4Gx2s
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68c29f97 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=hh7Il-xXmR37uoo-_j4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

On Thu, Sep 11, 2025 at 02:49:59PM +0530, Nihal Kumar Gupta wrote:
> 
> 
> On 10-09-2025 12:33, Vikram Sharma wrote:
> > On 9/9/2025 7:31 PM, Dmitry Baryshkov wrote:
> >> On Tue, Sep 09, 2025 at 05:12:40PM +0530, Vikram Sharma wrote:
> >>> From: Nihal Kumar Gupta<quic_nihalkum@quicinc.com>
> >>>
> >>> Enable IMX577 sensor using the CCI1 interface on Monaco EVK.
> >>> Camera reset is controlled through an I2C expander,
> >>> and power supply is managed via tlmm GPIO74.
> >> Why is done as an overlay? Is it a seprate mezzanine?
> > It’s not a separate mezzanine; monaco-evk does not come with an attached camera 
> > sensor by default.
> > The overlay simply reflects an optional camera sensor attachment (e.g., IMX577 
> > on CSIPHY1)
> > That is why camera sensor is configured in monaco-evk-camera.dtso instead of 
> > modifying the base monaco-evk.dts.
> > Please suggest and alternative approach if you feel this is not correct
> 
> Dmitry, Do you agree with this justification or you have a follow-up comment?
> Can we post v2 with the same change addressing other comments.

The previous email didn't land to the mailing list, I'm not sure why.

Anyway:
- What are other options that we might support? Having a single
  monaco-evk-camera overlay means that this is the only configuration
  that we plan to support.

- It all should have been described in the commit message. Please update
  it for the next revision.

> 
> >>> Co-developed-by: Ravi Shankar<quic_rshankar@quicinc.com>
> >>> Signed-off-by: Ravi Shankar<quic_rshankar@quicinc.com>
> >>> Co-developed-by: Vishal Verma<quic_vishverm@quicinc.com>
> >>> Signed-off-by: Vishal Verma<quic_vishverm@quicinc.com>
> >>> Signed-off-by: Nihal Kumar Gupta<quic_nihalkum@quicinc.com>
> >>> Signed-off-by: Vikram Sharma<quic_vikramsa@quicinc.com>
> >>> ---
> >>>   arch/arm64/boot/dts/qcom/Makefile             |  4 +
> >>>   .../boot/dts/qcom/monaco-evk-camera.dtso      | 98 +++++++++++++++++++
> >>>   2 files changed, 102 insertions(+)
> >>>   create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-camera.dtso
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk-camera.dtso b/arch/arm64/boot/dts/qcom/monaco-evk-camera.dtso
> >>> new file mode 100644
> >>> index 000000000000..5831b4de6eca
> >>> --- /dev/null
> >>> +++ b/arch/arm64/boot/dts/qcom/monaco-evk-camera.dtso
> >>> @@ -0,0 +1,98 @@
> >>> +// SPDX-License-Identifier: BSD-3-Clause
> >>> +/*
> >>> + * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
> >>> + */
> >>> +
> >>> +/* Camera Sensor overlay on top of Monaco EVK Core Kit */
> >>> +
> >>> +/dts-v1/;
> >>> +/plugin/;
> >>> +
> >>> +#include <dt-bindings/clock/qcom,sa8775p-camcc.h>
> >>> +#include <dt-bindings/gpio/gpio.h>
> >>> +
> >>> +&{/} {
> >> Is this a different product than just Monaco EVK?
> > No.
> >>
> >>
> >>> +	vreg_cam1_2p8: vreg_cam1_2p8 {
> >>> +		compatible = "regulator-fixed";
> >>> +		regulator-name = "vreg_cam1_2p8";
> >>> +		startup-delay-us = <10000>;
> >>> +		enable-active-high;
> >>> +		gpio = <&tlmm 74 GPIO_ACTIVE_HIGH>;
> >>> +	};
> >>> +};
> >>> +
> > 
> > Best Regards,
> > 
> > Vikram
> > 
> Regards,
> Nihal Kumar Gupta

-- 
With best wishes
Dmitry

