Return-Path: <devicetree+bounces-216192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 85202B53FC5
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 03:18:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1CC284E1247
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 01:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30E721474CC;
	Fri, 12 Sep 2025 01:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ML384WLP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BEC3131E49
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757639905; cv=none; b=lb+sbomeWlC3ySDZmL8i4QBvcrjdbcv/3p1tdaskLPyrwT49nhVhpG0bqJ+UU4qp9MD34KQR0eL7OJ8JhJ+He7xzbqprYUacmD+F0j8713aBTsDXGtLhvTIdak5l+wDBxT+P8Ee3zEDsPXTDG2nuwkOC3jbcj7e+q5Ost18nhKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757639905; c=relaxed/simple;
	bh=h9qaaXSqvN9cBSTuj957sTTg4kjY5I2KZ2UivSEhI8Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NsyVsJvNMuJx+6+eHA5QNVBLWbrxouMey+Th+bNR6M2Q7WsN9NNdzu2xdoiG9sJBQzKuy2fw2Dpo3uUpKCvZd5Gg7WrTCNBZB/YDXCNMNb/QDaQ7oHIRCCeTrvXSzr7JB5kB71BtONhkh5GvLxLvNO6erpXpcciEYFfYHo/WNTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ML384WLP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BIIMrS002479
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:18:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7MDT5wpotH29qgokGXIt19ncw6IhYm6XttDNFxIDNqI=; b=ML384WLPI0lO26Tj
	lQZxrvI1G9I3++QNOnGlZ+fA15ERR9k2GoRmpZkq/B/lkw7aGXEeDDeOcCc4dPLf
	15sVugOVbRg5sIuAl64tVghq+8GU4i3V26VXgjxiYLP/NkVLmQM+bUDvTI+AfCEF
	4H8emOm6W0ZNDmGc/yYxUWBy/Aby/bqYH2ZUFSJaWZY0bqQHVFIwbBMjVgmLF3ZJ
	RNcldacG/x0KGKSRgavKfQUalRkleLquSiVyJM/xGQ41R0BOOxLYKwfMK4kM2WuG
	fSWGr3iHLTUWFhfyOE/5l7/Ul6syRO4YKwBqrPU+aktCTirMO1abuyQEyQejCNHg
	ePlHxw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bwshwy5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:18:17 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-807802c9c85so372282285a.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 18:18:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757639896; x=1758244696;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7MDT5wpotH29qgokGXIt19ncw6IhYm6XttDNFxIDNqI=;
        b=uNVSeBZZsH/bM9zW26gQb4Qy1TPRJgv1ovRUHMvhyZ2Z9d8puoYLNHWOFUFCrvhalE
         2vy+QedAJ7hEZw02NHx6Ab1Ofa1G7yr/J2s7LXLV6ooZcgEgpJK19Ma3PMVGvXsiyawT
         hhRdGbGh+kY0z/szFDHhdjiTzw/ymYGtMtMeG7OBtgnhUAw5hbDOrETQ98/gds5XFz9q
         tAnMEejRifZdTi8BM7Pe19W6Akyft3pW6BjIbD7p22/nWzvfYko5YfEyOIZQj7Gs+ODH
         nXVEo6efzKYCS7KQWmqpzVmqNR5JAvge1pjn/64I8JbrdGm+Fq0BLTzHw5zVdnmZ8y0B
         d7Dg==
X-Forwarded-Encrypted: i=1; AJvYcCXAEsjCE7CtTg1+R9KIUsxE3uP5WkqQxTdQE9pcRZyAJB64NHhxH/3d99WYm0Jh0lWT2+bk9zR39nck@vger.kernel.org
X-Gm-Message-State: AOJu0YyLthamk3Q9u/feBBT/gJTCVuW1IvPvh5B5peznRqXn9Z3lRA8U
	rfcVawnZKSJ+DqUoqJTKEgvVQYTogzX5j7f1FacuDDb6zGZIGcrylr2Fv33L7v4SIMNKGGeIW19
	3sY24u+hvR5SF6qs7v8d2F7vF8a7QM4gxf/bCP5g7EEP3fmd5Sg7+g0320QX0oMOj
X-Gm-Gg: ASbGnctp0kDkLhwqZB10c3DnLhIFIRnFBASpVmwl0CrEOs57FSXowK4htgmEoitiaJF
	XOhRSCWHUe0x/ijFBNUXnvigB3YeYcrEgFnqLzd6X4ju7+XUfbhvTeikUnN761CO0/9e24CGKw/
	INeqWFqH0PbuJ0kClQiVJIpjww7h1/F33Gc51st4mhdwBpn1ckR5xHMSqGgxeRsxhW+yCWtYKMP
	unIigkuwQS0qYe/Mj6VLxlAbFG4sauTRnad8NePNN+obUNMeIIhKZRP0GlQPtnMUBCYYYl7GvMT
	kZo51EQoGro5crhmVMjyL5CPCdLRW3WrmyXSxy00IXW73bOBKXElGZUrfpOi3aawcC220yFpbF5
	3IzK0XlZTE0HWsY3m1t4W6rHkIEI4rSZrGBQaTnLbc7GD+aYUMJf3
X-Received: by 2002:a05:620a:ab06:b0:816:461c:f9bd with SMTP id af79cd13be357-8240084e246mr159508085a.44.1757639895663;
        Thu, 11 Sep 2025 18:18:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZHSKnYlZZHqZR6Hj9n+C0UmRrNSc/yTGeOKw7+RBx03laoFH6xZ7XxJqWCd7NVxlWZWClAg==
X-Received: by 2002:a05:620a:ab06:b0:816:461c:f9bd with SMTP id af79cd13be357-8240084e246mr159506485a.44.1757639895218;
        Thu, 11 Sep 2025 18:18:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1c6cabedsm5830451fa.69.2025.09.11.18.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 18:18:13 -0700 (PDT)
Date: Fri, 12 Sep 2025 04:18:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Eric =?utf-8?Q?Gon=C3=A7alves?= <ghatto404@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH v8 1/1] arm64: dts: qcom: add initial support for
 Samsung Galaxy S22
Message-ID: <l3c4hjgcjmc3fsxcyanskvy2rotewk6hdj7wbvcs7gcdfcpfoq@f3rgc2zak33n>
References: <20250911224734.51415-1-ghatto404@gmail.com>
 <20250911224734.51415-2-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250911224734.51415-2-ghatto404@gmail.com>
X-Proofpoint-ORIG-GUID: 9M9EqhcUnK_xeHX5oxAhxYny3CeBQXjO
X-Proofpoint-GUID: 9M9EqhcUnK_xeHX5oxAhxYny3CeBQXjO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX+eTuHi3LunO3
 uVg35L0th5FrPrKFgqatAYJ5RW9yOcOk4IEJip5O6psLglU2sLuKXGg6P90W43yEJjxk8UabT31
 JnQ2ogxX7IHJ6WVEtuIFo3VT6LHsZycWewwPmhNbHfx9ELSu2FcrhW2ypHiRLSp48DoxvoClvPu
 CDBZDxvD0WCqSqA5B3NVr0t0Hnt/hMxWPbn7OqjDpQ+WnarjeMjUzqMchdZR/8Mc0zdFjpXdB0M
 3NJcaEbJ/OY5Ix0vuKlMUMpuS3hbnQzqKgu1+LMzJvVCoof+ZjdydmmuXY69y/OzcNOMwUnDqkN
 fYSB9h2iqM/1p+n0aWpzCWfIjJUNFo7yelUoQeAzV24SbaX1z3ceJnEaBemVXl5cgvQ0YfQ6bXE
 U7FPOvM0
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68c374d9 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=QWxc95z4xnr1JtQ8ubcA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

On Thu, Sep 11, 2025 at 10:47:29PM +0000, Eric Gonçalves wrote:
> Add new device support for the Samsung Galaxy S22 (SM-S901E) phone
> 
> What works:
> - SimpleFB
> - USB
> 
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 145 ++++++++++++++++++
>  2 files changed, 146 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 94a84770b080..d311e637327e 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -285,6 +285,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8350-sony-xperia-sagami-pdx214.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8350-sony-xperia-sagami-pdx215.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8450-hdk.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8450-qrd.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= sm8450-samsung-r0q.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8450-sony-xperia-nagara-pdx223.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8450-sony-xperia-nagara-pdx224.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8550-hdk.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> new file mode 100644
> index 000000000000..b7533c2287b7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> @@ -0,0 +1,145 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +
> +#include "sm8450.dtsi"
> +#include "pm8350.dtsi"
> +#include "pm8350c.dtsi"
> +
> +/ {
> +	model = "Samsung Galaxy S22 5G";
> +	compatible = "samsung,r0q", "qcom,sm8450";
> +	chassis-type = "handset";
> +
> +	chosen {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		framebuffer: framebuffer@b8000000 {
> +			compatible = "simple-framebuffer";
> +			reg = <0x0 0xb8000000 0x0 0x2b00000>;
> +			width = <1080>;
> +			height = <2340>;
> +			stride = <(1080 * 4)>;
> +			format = "a8r8g8b8";
> +		};
> +	};
> +
> +	vph_pwr: vph-pwr-regulator {

Could you please change this to regulator-vph-pwr? This keeps all
regulator nodes together.

LGTM otherwise

> +		compatible = "regulator-fixed";
> +		regulator-name = "vph_pwr";
> +		regulator-min-microvolt = <3700000>;
> +		regulator-max-microvolt = <3700000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +

-- 
With best wishes
Dmitry

