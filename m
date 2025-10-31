Return-Path: <devicetree+bounces-233801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C0000C25A97
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 15:48:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ED3704F5EDA
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 14:44:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 125F034E77A;
	Fri, 31 Oct 2025 14:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JLPts04a";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M6/zX40S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655A834D4CA
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 14:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761921808; cv=none; b=ia1t9Jo3UBjPFq7d6aBEz176BnjGprnmYh580AGnxXu1FX1oEkm+XTW3fefREvibaQZmbor8pOrDL6T9HFRUN/Xetx0m5QRuZf0IK7uds6LQY/t8ILrUkcAK05I5PDvgEy5SALiukOgYspZ20A/zopH18+X+pGHfK+OLNs3Zy2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761921808; c=relaxed/simple;
	bh=5oX84NUeLGDCVUnoaY8enUgJ9uFVY3Jp6pIvf/RX/b0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gTLAVIhS57Mn1YCkubR9JBwFaGYUX+oCpiF6vSaacIcMakUMUqDnNHHL0ySlCtS1+2Ts4RExCQ8NYgXfGaAHAd0br++f0XsWI0p3bxq6nsz+wwtjIcMKuqPuZwfFePosVfFK8T9M2hD8pwDP3N6FAd6piKIbOKMyyvIOurgDU2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JLPts04a; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M6/zX40S; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59VAXf1N1571785
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 14:43:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=38cZqr818bP3R3sk/R0K+P7k
	RQE7pffVL4S9mTWl7Ig=; b=JLPts04aopKQrXSmOQTaQkbiDnyAlcJjXeAoyV/D
	HLe90pWkVoCl6cRbodNkDBjdjlLMJT5ginDM7GQrcBc42yP57u4rlPgBBV9gBD3p
	+EPoG4C2u30CZcw2uIpoLeJav6RU4T+t3XR+W8ll2f1BYxc24Z35Tb6i1gAPuJhJ
	n6pJoLw8q6ZeMUZj7gCEE1+GFpqIE7HJgaWWsQfKMctoKnV/Jdxsr95A+vX5qMJU
	r7WVWGCLvUp1Eegy72tKu1no9SCNg4vzEjwaA6XLcsSbSWzKYXjNLoHcqXfADZNI
	Ozvpsmjg4SluCDQ9zVhSvRaPhXJLgWEW/fMN9nogpbq8DQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4ksc1wnp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 14:43:24 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e899262975so64733341cf.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 07:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761921804; x=1762526604; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=38cZqr818bP3R3sk/R0K+P7kRQE7pffVL4S9mTWl7Ig=;
        b=M6/zX40SgGIujv251GaBH++jr+Nqn22tIlJO/hBJIyhsW+PPwu6VwLlR3Uwx51Q2Yv
         nYC6qPHQKQFnf7oga/IivG20lwfPpINtREBcvhTLd248SrxCtw0U42P1qvqEztoROXHl
         cnnKbNJJT+saLnGzYRA3NZllkLGnSUVr+19hqgzntm76VWD6BWbTuTy0tHO31bZ5ThkP
         Fn/vJyg4yPnYgvsdIqUVrT751H4Gm1B+9P13xEigPqSZjlI6KD23ROZeeW3LS+wuPaR0
         y3SkV2guotfQE9BHtGWfXNVsWI9Y7Hyow5cJrn/4u3TH9YnOJBaHgKbDQoYqZmfwWnKz
         53QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761921804; x=1762526604;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=38cZqr818bP3R3sk/R0K+P7kRQE7pffVL4S9mTWl7Ig=;
        b=ucwE453NIRaCfk53Rr2797Z2xXTM9fYeLwM9AX2F9+DwySMxQYdh8BLwzXB8dMiGag
         QngF2U9RLzvKBf/tl2HEORELVh6dKUJGIsTaWye+ZN0ooMneJftWW+Cqt6pdfO+pDZI5
         IexSdlgrwwSNAPLbyL87LNsFIm2cS9eseKoCwcuaFvA8ic3JExmosMc93z+CK1Fn52Vy
         pk9yk0fvJHTuwvN0Nr4p1oyEnOUnxpFhyRNpHr3FsUs/fnwje2IR6PcStE1oeChJuyXd
         1P7VlIPttPbA20mnIjupkm+6Z/RBMzDW6kVPXrWdWKsVNb17OaZV8KZQpqjyUwe8jEaR
         Y3/w==
X-Forwarded-Encrypted: i=1; AJvYcCUIAtqE8G6fmhAFevHfAPYfI/MOkI1Zy/xFdEI3nXCkY8ZZxzh9/5rM7hm3hkuh9n8oewZHONIf0MIX@vger.kernel.org
X-Gm-Message-State: AOJu0YwA1NuWEdy8d0RPpqYa4OxrzmVvEB73wZKt5alTheVU+K3KxgtU
	GvR+78cXAy+JbD3vnAngdGY+NZM7HH1CR0qf8TBmrL18KZXPlygLdipibWjcaRVsAUx5y8fTiGn
	gME6ZmiUVocFrKfFncDTeE46mkCpuxolxTc/gffSv2EpGS0KUXqiqBJG2owk2ml4R
X-Gm-Gg: ASbGncvt/PgyqxEIncCnQU88MVSrDAD6aZaqQ6SGDverB88D047cHTHmOc+4XMp0+LU
	d+n81DVZJeU9kygCm8bto/93B+JZCsQ7/hjkrfd4QmlNovHg1kTVAccgSlBojXMx6yNDiqXBEzg
	GSTaGuYhHLBvf6HMu9EdkOKlySzm6GLlyF7nflVyqoTPG6ueMmnTLYRjyWYlRrT6em9fwXj61F3
	qG0LpmFwBG3CkzcRrFlwB5R2ZzUjkS8u1kuexaRfzvgOH8ulYoBVdCDJziW9xIckK5mEa1wPS8M
	413/3hw6dugirUGKc0yVvu/DHfAWJRcwcj6gKG1Nm3wHNwN7dbbWkAJTwlbskvp0ka2EpMQRX5s
	Is2QAR4JBUdAraMiTU2Yj73/7EkfL+8m2MvxOu4tVjUfHZYdHV2G6sl0e/3SGAUcFMKY4vAfBkg
	u5uoWD059rk/0R
X-Received: by 2002:a05:622a:418e:b0:4e7:1eb9:605d with SMTP id d75a77b69052e-4ed30d4ef35mr40414261cf.11.1761921804225;
        Fri, 31 Oct 2025 07:43:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRqfymtoA7HV6xrx57dAac6CGoayjsZUzza90k4x8oucfsGlZ9mGgHYLl+rCflp4srP5Ygow==
X-Received: by 2002:a05:622a:418e:b0:4e7:1eb9:605d with SMTP id d75a77b69052e-4ed30d4ef35mr40413731cf.11.1761921803611;
        Fri, 31 Oct 2025 07:43:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5941f5b5c64sm533601e87.51.2025.10.31.07.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 07:43:22 -0700 (PDT)
Date: Fri, 31 Oct 2025 16:43:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: Re: [PATCH v10 2/3] arm64: dts: qcom: sm8750: Add USB support for
 SM8750 MTP platform
Message-ID: <35fup52g3x74fzd3u6irfetikivmuamzcihewaimgdbqnvfz57@56zsehp4sqzq>
References: <20251031123354.542074-1-krishna.kurapati@oss.qualcomm.com>
 <20251031123354.542074-3-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251031123354.542074-3-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEzMyBTYWx0ZWRfX1MJhEfGIHHaU
 gXdgHnYGVNm0DZ6aGbIyfob8qMY/uPBhB1OroPk6yiGREqp2lQQ+RTbaFLrzrnAWY8+EVdhwPXk
 bxfzzphP9gF9nRalwdGQDy7rtGevENAfpzC/vwVv71y1BBb/ANS9uQreZ17mvn8Ttv8eRIymM/R
 gdG+BLCdnS6jv5MHGfGOJQjaYkr4esr93YN2y9gp8NPbyx7VySqr6f4TY0iBItqNRQNaMvNY9pB
 dZrbV+efibGd7iD2qLoc01KE+ziYWlf3oQoWQydPg3HDrcpYRw0ulK8QE5gJxKirNJpCwy5o4r4
 XvPfmb2hI7SJ6s2QFiFKz3Mtjq5bi2hgYD2s4yd9Ie3IZjHxqWMW0AXdwMwq351OHwI6dk0zbnM
 wWeVxizMOwr8JTOiBe4eKN+/wT7+GQ==
X-Authority-Analysis: v=2.4 cv=Q8PfIo2a c=1 sm=1 tr=0 ts=6904cb0d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=3KAOm77SupsxBO3OpsYA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: 715GLMAyzghp7Gaepdn6qw_RSHY81p0m
X-Proofpoint-GUID: 715GLMAyzghp7Gaepdn6qw_RSHY81p0m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_04,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310133

On Fri, Oct 31, 2025 at 06:03:53PM +0530, Krishna Kurapati wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> Enable USB support on SM8750 MTP variant. Add the PMIC glink node with
> connector to enable role switch support.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> [Konrad: Provided diff to flatten USB node on MTP]
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Co-developed-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 73 +++++++++++++++++++++++++
>  1 file changed, 73 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> index 45b5f7581567..932aeee70054 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> @@ -191,6 +191,51 @@ platform {
>  		};
>  	};
>  
> +	pmic-glink {
> +		compatible = "qcom,sm8750-pmic-glink",
> +			     "qcom,sm8550-pmic-glink",
> +			     "qcom,pmic-glink";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		orientation-gpios = <&tlmm 61 GPIO_ACTIVE_HIGH>;
> +
> +		connector@0 {
> +			compatible = "usb-c-connector";
> +			reg = <0>;
> +
> +			power-role = "dual";
> +			data-role = "dual";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					pmic_glink_hs_in: endpoint {
> +						remote-endpoint = <&usb_dwc3_hs>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					pmic_glink_ss_in: endpoint {
> +						remote-endpoint = <&usb_dp_qmpphy_out>;
> +					};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +
> +					pmic_glink_sbu: endpoint {
> +					};
> +				};
> +			};
> +		};
> +	};
> +
>  	vph_pwr: vph-pwr-regulator {
>  		compatible = "regulator-fixed";
>  
> @@ -1200,3 +1245,31 @@ &ufs_mem_hc {
>  
>  	status = "okay";
>  };
> +
> +&usb {
> +	status = "okay";
> +};
> +
> +&usb_dwc3_hs {
> +	remote-endpoint = <&pmic_glink_hs_in>;
> +};
> +
> +&usb_hsphy {
> +	vdd-supply = <&vreg_l2d_0p88>;
> +	vdda12-supply = <&vreg_l3g_1p2>;
> +
> +	phys = <&pmih0108_eusb2_repeater>;
> +
> +	status = "okay";
> +};
> +
> +&usb_dp_qmpphy {
> +	vdda-phy-supply = <&vreg_l3g_1p2>;
> +	vdda-pll-supply = <&vreg_l2d_0p88>;
> +
> +	status = "okay";
> +};
> +
> +&usb_dp_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_ss_in>;
> +};

usb_dp < usb_hsphy.

> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

