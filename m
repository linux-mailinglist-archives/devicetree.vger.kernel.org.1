Return-Path: <devicetree+bounces-221533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B16BA0B0B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 18:47:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E5DD316CF66
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 16:46:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FD9B2E7BA7;
	Thu, 25 Sep 2025 16:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Nla+uNZ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14A41C8603
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 16:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758818812; cv=none; b=ngscTW8RhvamWh5W/zetHU+5JIG8L0W700NNUjnXQZv9zt1i12lGeHTw8mJEuNYmBgM4VUgNKNGqa4aDsCh6Ej9F5+Ya6z02FN6rqBNfALKBJVt6Hm7CkYsAbW99M46qyGuqiAdmHNe+IgbvJclJMQ4iCnwLdBcgCGrwXo55gtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758818812; c=relaxed/simple;
	bh=Ut4RvekikEgx9yUNY/U/wvhXEdvVZ8Sh73ZinAayXyI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HRl4UyU/Fkr0Fp7MK6JsRSHMV8cFpP+4PuK/N5NUyBDljnJT8eB1rra9Y7ovqS1TK9vFXEKsinUM+03AfPFvqjj7YzJZxr5sUQYlKNUqbXjVce3R05zBx2vzLbTtiAPP8IGc3qBo868vMK/QOYWK+8+7zqAUCrs4O8R2q8RJvfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Nla+uNZ0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9q3TM025366
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 16:46:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2mr004wkrEndbnMlZ/UZb115
	iZhGv6Os5vHVBivnlhQ=; b=Nla+uNZ0cAwtyLhYeCb524E9MHCXYM9e6vKSYssg
	h00wh6hgVI8O5P5VA+Q6zpoOJoF2b2Pq4TKMTZdu3wj6UPdqsTGoAsFtyN1tUDIl
	aFnvM12FVvwoMKDu7w9xfD6EZ/UIC/LzH1ODm4KrJkL1KUJUpFcTspPiy50zOjAf
	ucNYzYB51HYTpjvJOHDwP7Igqq+F24cBeocmZpVxXkqWWK8Zqzhtni/e4weWXUQg
	mgYQAkkcV/tf4QfPsP+ZgFGRv5tXhXhZ8tQK2utedbPtaWnucwNz4EJ1RItY4/0e
	/5pi8t2Sy4Z5TcftGEMV0sT9HALwGoCRPu7XyME220GkFg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyf17kd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 16:46:50 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-78f2b1bacfcso19098756d6.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:46:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758818809; x=1759423609;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2mr004wkrEndbnMlZ/UZb115iZhGv6Os5vHVBivnlhQ=;
        b=ZvgmTLOdTWxG9tD4yUkiOcZ9/5SUUUk/myahxRradzexr2ilJjNNlTXJu7R6Ojj4cX
         LP3Cs1LmJEoR2i2lQZsE+OAeTk/n0wp7d5Bh81nsmCKOY1wSadbe9BfEwvlThNaz5Isi
         9gyhTNbE6whCJFQGogcvuL1sgMN9w71qay/1qVBhwD9pqSgkxMYoVHN7iDHk9S9pHcCn
         N4K4Cfz2PGdfASmdNcXMwQaFjUHI4tTsEgE0KmniusaOjUkkS9Mhq/nEPNCPW7cY+uB9
         A6E47mSAqveiRwh4Jri/Y0F5ohyf1wc08AjzmnhhAB7oIgnBI8JraEq62CBJC1ySl+ae
         5DFg==
X-Forwarded-Encrypted: i=1; AJvYcCVmYgTZ2NDL9fHs3hZIv1zn+1cyaeITsOs4li07K0fwS60rl7LC4huFg/gw3sqqtOJtZFume4URAMGK@vger.kernel.org
X-Gm-Message-State: AOJu0YznC7pFTnFn/hp/FgAi5nzht601OcX8r0/Pj/mHFTrJTcFYAAvo
	xWeyjnjLkjpKAE3F8C54b5CeKCscUaA/A9m5swe/Y2CBFEoNxZvueskovOPN6VgT4OrPSvJMORw
	1V6khcaEFwweGMBUYHG/PwUfvFHdeYNucm5CLpnieJ97d1JdnyP/q7dfRjQ4oOJa7
X-Gm-Gg: ASbGncu1vWY386ChkhMKTQ/EexpbvG/wCfSR6LxqYyAGec7+mmz+V+MDGI1VHtI467z
	5Gc8uMICiA94Y/w0k1VOiRP4lmepSgKC+LFAT5E4XJxl8vJRIT7PipTZdCCcbHh8Kg1nOPO9pV7
	oOonp+FH/AUfYoZF8kJmvtcct7Vkrx3mSpfBmToWKxcWVBG8TuVSA7tF0JVK0T+dB7owLPXN2LQ
	CMV5u7nBNzCxJIuLz8gJeXL3TdrY5gtgrOCYjNu/2HXZd5bLqqqdh9MguFpHecGps+GcU/xgU6S
	8rn3mp++yA9M2yMCq/MdSmv632mHxkePHtr6eKzLF90GAJ97PfNHwzSJ1O0YlWQa0n4PtYKqKo5
	+/jBrGeZBmsMvsMcLTGuZv+5T9EXlbDuHDraGRIgoWX5z8PWPIZUc
X-Received: by 2002:a05:6214:f0b:b0:7f5:b2b6:2a2f with SMTP id 6a1803df08f44-7fc45172872mr57824686d6.67.1758818808588;
        Thu, 25 Sep 2025 09:46:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwnWdTJ1BPazbaxUFNG2IQvEM/rlZW2m4Nxzg29lTU9VFpjl04xTbrAF3WvRoPt9K+4sLpmQ==
X-Received: by 2002:a05:6214:f0b:b0:7f5:b2b6:2a2f with SMTP id 6a1803df08f44-7fc45172872mr57824246d6.67.1758818808045;
        Thu, 25 Sep 2025 09:46:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313430e1dsm933170e87.2.2025.09.25.09.46.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 09:46:47 -0700 (PDT)
Date: Thu, 25 Sep 2025 19:46:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: glymur-crd: Enable eDP display
 support
Message-ID: <p7btiavlbu3wqcq62j25vyv5reusdqenz7wtqr3zspywittdfl@iivegwoqfjk7>
References: <20250925-dts-qcom-glymur-crd-add-edp-v1-0-20233de3c1e2@linaro.org>
 <20250925-dts-qcom-glymur-crd-add-edp-v1-2-20233de3c1e2@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-dts-qcom-glymur-crd-add-edp-v1-2-20233de3c1e2@linaro.org>
X-Proofpoint-GUID: pu6EnqWsodH0xYD6RYC2UfmlYVXmc8Px
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d571fa cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=3enfzX0syV1bCKBQ0NkA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX8DKZ9ztxCJWV
 z8GiWLs/NI56OIaUg4ynJh5VkbuWvYVdg8E8AwpPcwkNhh7v98CU2MZLE30qKXMM1liPdgk1GCM
 8rkJLtuFFC3CxkCgCvEBo/b8NV4XiHzhw28ooZuiLrKnQfSO9qPye9kUqtUVH+2VXYosqQr31eo
 0+zeuJdtGGx5mvuRuCxCqg1WX3MFLHmn4i49WbBRiYyHp2N86v/PQ4KDlAkS0ONRfaIHax4eyeM
 wTfFBg4R/mwoi9cS+LMKOSdfjwxKOYxOS10VA03KGJVwlr2mvhLBoZsy8cnqsTUOWh1nqI7pexY
 5rbJ16XsJLKq8DPMgcb50LEQk7hlOnIo2jCFb6d9tKNJyxhpDmnpH/qic2kKH8KcGiaX2Zsd/sd
 hlc0PjKl
X-Proofpoint-ORIG-GUID: pu6EnqWsodH0xYD6RYC2UfmlYVXmc8Px
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

On Thu, Sep 25, 2025 at 06:02:49PM +0300, Abel Vesa wrote:
> Enable the MDSS (Mobile Display SubSystem) along with the 3rd
> DisplayPort controller and its PHY in order to bring support
> for the panel on Glymur CRD platform. Also describe the voltage
> regulator needed by the eDP panel.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 76 +++++++++++++++++++++++++++++++++
>  1 file changed, 76 insertions(+)
> 
> @@ -536,6 +552,52 @@ vreg_l4h_e0_1p2: ldo4 {
>  	};
>  };
>  
> +&mdss {
> +	status = "okay";
> +};
> +
> +&mdss_dp3 {
> +	/delete-property/ #sound-dai-cells;
> +
> +	status = "okay";
> +
> +	aux-bus {
> +		panel {
> +			compatible = "samsung,atna60cl01", "samsung,atna33xc20";
> +			enable-gpios = <&tlmm 18 GPIO_ACTIVE_HIGH>;
> +			power-supply = <&vreg_edp_3p3>;
> +
> +			pinctrl-0 = <&edp_bl_en>;
> +			pinctrl-names = "default";
> +
> +			port {
> +				edp_panel_in: endpoint {
> +					remote-endpoint = <&mdss_dp3_out>;
> +				};
> +			};
> +		};
> +	};
> +
> +	ports {
> +		port@1 {
> +			reg = <1>;
> +			mdss_dp3_out: endpoint {

Define the endpoint in the SoC DTSI and just reference it here.

> +				data-lanes = <0 1 2 3>;
> +				link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> +
> +				remote-endpoint = <&edp_panel_in>;
> +			};
> +		};
> +	};
> +};
> +

-- 
With best wishes
Dmitry

