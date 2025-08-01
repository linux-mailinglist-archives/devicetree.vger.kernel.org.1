Return-Path: <devicetree+bounces-201398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E53B18661
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 19:15:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1517E1C201E6
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 17:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A974A1E1C22;
	Fri,  1 Aug 2025 17:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GYysjp/p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D6919C546
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 17:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754068496; cv=none; b=ccOb2pT/ax1G1il2bPCcmZaH1zaY3mI/gCB86JqDNmuyPrSGVqOluPg678x8s6T6o5dgzAUHnwpdDJS3Helo59TBWvWf0g5hJo+FzkJDEh90hfhQgJtwwlstBbBegVg+uW5pAnO0fB7Z+NhkMYfyawBKeBU8fcL6ApKhGFN2bLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754068496; c=relaxed/simple;
	bh=aOijRpLMfZAU+sXieMt/YHjyo6Js0ax034/IV5JCtLE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gjtrDwKLZK1+XibD4Ni4L4K4XsDoeCL35FSCXYllO8hrdfzvG76vltSnkGpHEQrzyMowxZzXRY/X72q0RwhgTO3IPiPiztFGu6XHYxoKw76JMGMUY6TWBEfIvNOGM+x1SHP6g23hBdPlhUh0K3Y4fYtLiQUgPxViMbOZFoiH56A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GYysjp/p; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 571FNdTI007759
	for <devicetree@vger.kernel.org>; Fri, 1 Aug 2025 17:14:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GjIpDMJZqcrrLx0t+DaOeXkF
	Njy3j/r+a5kooErWBOY=; b=GYysjp/p7UOydI9jf1O/41ACeaPDHfC5Xj0UjIVY
	WiwMHfFPRmHJaCda2exNe2hdckTN1gqs2Om48b2HGKPNQG1SNzcXIG6K0Hca4k3a
	jkqzeQgSxg4HNMafdszgKI9sFanuaQ9RJMltKpN8o/E/+0s3ZqKPtc/x8zJttLuw
	SMiXgnugfSBDUzY3sAuWJkpdALi1Cy/JNyENK+cHKE9okeXF/pe//nRnPPZxpJl2
	X12N3Vs/e/z5+/rNy8ODaKKNrCeabG2fUFJgPysPqfp9IKd3HJa+/rJNJ5s635Wa
	r6tZybT9EDRa8WkZoLde5G2GCFhNq6Xk011an5vGAgbgVA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pm2vh2j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 17:14:53 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ab7fb9c2d3so12908241cf.0
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 10:14:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754068492; x=1754673292;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GjIpDMJZqcrrLx0t+DaOeXkFNjy3j/r+a5kooErWBOY=;
        b=LlnuwiZcNHaGU3M2s2iFKI+9/1Za8DWNZ7B6QcDgvu92TvX1MO343EqNsLAjJzo/Tu
         H3qRt7hkOrJ5PrcEWOj460x/pRH/LgdhoWsG2WBe1s8MB8weJVNHDUxgtvNQKeuImq11
         1Z2kKN0wEnjlfF6OWTaMn9DWqu5o8LPW2PPi30URUBu+NO+wGvKeuNJkZUxFAkVoa/+o
         6PJy6265g6ikAStyCznASWndtuLbPYVL2OHJ4mkg3HiXSphutPhWSivP/uERAYHAt59f
         pqxaF6UzdpwAa98SfjRbAxjpwtNS8R20jygDRQJgc1KCr3i+BiXxq6SM9d/fTdW/waGf
         EFiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFdWW3EyjhUJLjGbMNPK8rMtyY74FpOOeNEKUMIsbBVPU6CDD7xsiesxPcXJtQ/88gF2HHmMdpOjTo@vger.kernel.org
X-Gm-Message-State: AOJu0Yznv1oAdho9NP4uhdBylp1PYWJp6H64LECXOUbIHrFYEqUIp/xO
	guJCc0Lj6Bldmzdoc90UEhXysAbTU/vnFhDEuVv3ge164vDpbj2OofibxFQ76qgB95KB0J8ZdhV
	XM4GyZsp9oBNtVB1Ghyy12OTBw+IxCtzXNbHjZ2v4ChFl0d5LMnSMhi1MU9+kPTaa
X-Gm-Gg: ASbGncv7iF24qa8rygolD3o3oyUyygfH0CypmiAA/XcHrIlGoaSHaglicRxMJvuRV23
	3pSHuBLHYycA8Psvjz87sNp1RbP8GnrHCMVhbJ+xwmQSktHt+w0E3/gUK4CwApLiereEjTfhnUd
	Oj+3MOa3qtPviPdBnpUgwhRTBaVng3z6hqPHbTzSh7ko0195NC2kUQdks/wNcchYws6VbO5rxYV
	xlMg1NNk4+jXt8Gd8MPIadxpiKUUv9oFm+Nx8QML/6+TlDELk2DOoLK3XgV6acvhkx/JoV8e3ul
	tnheB/DSBhRId8Ko5S9TZzDoltoP3j2oxcEs2EJpjqWhFTbhm1iH6MaVo6g9zHIQ3eI16J/d1kI
	FWu8DYc1lyc+vCArOu6/n5wljwuKztmUNYKMTDQwWJTKDcuEZaMR5
X-Received: by 2002:a05:622a:1819:b0:4a6:f4ca:68e8 with SMTP id d75a77b69052e-4af10d8d43bmr6534141cf.48.1754068492151;
        Fri, 01 Aug 2025 10:14:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUZeft7UM185DJ31idsTVovKtr5SEN51ZI55OaWAMuhEXrYhTLrjzffx3vJ/vf8XKyK2sS4Q==
X-Received: by 2002:a05:622a:1819:b0:4a6:f4ca:68e8 with SMTP id d75a77b69052e-4af10d8d43bmr6533521cf.48.1754068491453;
        Fri, 01 Aug 2025 10:14:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b889ace49sm657841e87.71.2025.08.01.10.14.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Aug 2025 10:14:50 -0700 (PDT)
Date: Fri, 1 Aug 2025 20:14:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Umang Chheda <umang.chheda@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rakesh Kota <quic_kotarake@quicinc.com>,
        Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
Subject: Re: [PATCH V2 2/2] arm64: dts: qcom: Add Monaco evaluation kit
 initial board support
Message-ID: <4rxy4iuqy3dstfuv744gw327gf5n5g6notjpmkspjme2w4sd3j@5sbqfoumb5y7>
References: <20250801163607.1464037-1-umang.chheda@oss.qualcomm.com>
 <20250801163607.1464037-3-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250801163607.1464037-3-umang.chheda@oss.qualcomm.com>
X-Proofpoint-GUID: JcWRGjOZV3esi3KBQ5XLNtzlXOAnT1NQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDEzNCBTYWx0ZWRfX7PBJ7cxLDGXu
 UKSpi3cHLqLSQA2UQ58MkGogcyo6aA937l6iKAIyU5UGOHaR6rrPXp5l8tl3u8A/OD4qlNTLUte
 ndpwOif1J/3oKGvz2ERkM+7XChmYQh6JTeysjbNYRV5vKDxPOEV2t8kyDuT9R8UYE0dcyKhWobY
 c1Rj8UXYrsN3Wm8BL1STwpj6jYC3WptRl1JV4CQZ/uv+sMYHoDmsWZ8KxLZBf43yBPyzR840vdt
 smfCGSRHx090PshMuR+rf80SvPpSnTL6gX+LKXZqJo84fIGoxRQWtNwGWYRstbx23BAfn0Ndc4b
 jh0ryz6rNazrMNroVSO69QsxBrVGw2yS0RrIVol7HBMy/TKMY/r4dAo/7usCSC/y3nSf8RMTKHS
 kkT46ohyp4AdzCo5dLRSCjPBpjeAnMFhpp4iCC5vrxh6pl0rMic7y4fxKUON5d+zBEN1xYoA
X-Authority-Analysis: v=2.4 cv=HfYUTjE8 c=1 sm=1 tr=0 ts=688cf60d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=dzsA3FzLxQdHMSIhhz4A:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: JcWRGjOZV3esi3KBQ5XLNtzlXOAnT1NQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_05,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=999 phishscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508010134

On Fri, Aug 01, 2025 at 10:06:07PM +0530, Umang Chheda wrote:
> Add initial device tree support for Monaco EVK board, based on
> Qualcomm's QCS8300 SoC.
> 
> Implement basic features like uart/ufs to enable 'boot to shell'.

"boot to shell" only makes sense if the platform is new and not all
devices are enabled in the Linux kernel. Granted by the current level of
the platform support, DT files for the EVK should have much more
features. Please submit a full DT at once.

> 
> Co-developed-by: Rakesh Kota <quic_kotarake@quicinc.com>
> Signed-off-by: Rakesh Kota <quic_kotarake@quicinc.com>
> Co-developed-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
> Signed-off-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile       |   1 +
>  arch/arm64/boot/dts/qcom/monaco-evk.dts | 199 ++++++++++++++++++++++++
>  2 files changed, 200 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 4bfa926b6a08..e78f56762b6d 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -29,6 +29,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp449.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp453.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp454.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-alcatel-idol347.dtb
> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
> new file mode 100644
> index 000000000000..1e0635c93556
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
> @@ -0,0 +1,199 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +
> +#include "qcs8300.dtsi"

No qcs8300-pmics.dtsi? Why?

> +
> +/ {
> +	model = "Qualcomm Technologies, Inc. Monaco EVK";
> +	compatible = "qcom,monaco-evk", "qcom,qcs8300";
> +
> +	aliases {
> +		serial0 = &uart7;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +};
> +

-- 
With best wishes
Dmitry

