Return-Path: <devicetree+bounces-248007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B65CFCCDC2F
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 23:11:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 239BD3021F6C
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 22:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B5202DF6E9;
	Thu, 18 Dec 2025 22:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Nn1DvvVx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cv1tobdj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754E52D7D30
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 22:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766095906; cv=none; b=UfeTVEKHY0MBS87kVzkw9c4LwPoUMk5xGl0aZr/0vQP9qJlgU+Yn4UiJ7mtA5d0VyE5cVs+ZbfbtJJVk5t+gtPKc65YFZTC7J1AgPjW9XxGCt5/6uf/pNPBuJu9xvFqhpeur/9O/9ZKeNBsSvRmVU/DSWpgPVv6t0Pyzi2waa94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766095906; c=relaxed/simple;
	bh=d/baE5ea/eOmhYH31KV1fXjUE5BYHg9Dn+/jpAv4q3M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=INFGPpM1j8xepREcDO49VGyKbgsXi9UJ9+Ugd91dFCfujBWmZ0T/75z9pgjAUub7O7lJZwDK660Tw4cs6IpgMo+nJkSxie/+XcZNUQ/zJo9coZKmyiBNQGnVIGPK17ovnpwSIQo+XSx9ZS5FLJ9oMBVDDhqp7Clu93FA0ALgYxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Nn1DvvVx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cv1tobdj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BILlcZg3292078
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 22:11:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dbQJt074OYwV0onaypnQggW5
	LDc0aFE6tVImU4GcJ28=; b=Nn1DvvVx75YRuMnC9Ri59oYPgPKp0AAkLWtHGJQl
	fvSvYYRuxOTj51jUcWNWcX3aS8N/Vrzaalb8tPTSPV0TAjjQS3XfpXsqhvbQJuui
	gm+aFIA8kZq5VBy9RJoLp/tzl6PIGFnvFxdxmjGcx+FPJLYKXVwmaC9gYdxTte8G
	uRI2ZVPJK0d3KjWo9xrgE2ZK30AMRR4FI0CFN3G2IevKiDQ4dttKB1rcBdcTcnXw
	cSZy1wY/7fpYaAPfs6gcE6SCnvuiQYBLS+gyWwLaTij79tJ4eYM9Uv8VZ64XDRYD
	rJQXYJAtmtG6Py6qusmNMZHT1iuERORQ/LQyzi9YXgTcaA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2drc60-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 22:11:43 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1b39d7ed2so23842831cf.2
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 14:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766095903; x=1766700703; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dbQJt074OYwV0onaypnQggW5LDc0aFE6tVImU4GcJ28=;
        b=cv1tobdjSb9H+XsJdadSwh7wFdzLH+5tnaYISFTAcyI1zdDCbIDmNaJ0YARwAO/ZAy
         QYbcTPsLOCq8ELipM+3U05wATUphuOVv9OqL5XopbCeRVv8KyBwQM0pIV8ZLMpfP11e0
         qS996zIm8F01g/zem+tCWU+z4MLXODJEx2aC7ek/yqa0JPldlm7dexEmRd4VRYZf/Vj7
         c8YXctkYK8Sj8DYgHrRdeJB4VkVlzfUKlHjlpeTzxBH2tNn79umZcte/gA8oQcx5/K1M
         6uN4WZqpp3SgEMvFxnbmlNOtgcYL/JsXDPD4GmqrpaNbFlzI5SlbHHrluy0Lc6R4xSfR
         CjKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766095903; x=1766700703;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dbQJt074OYwV0onaypnQggW5LDc0aFE6tVImU4GcJ28=;
        b=Sw9jXbmBemSgBDoJDggIf0/UM5FFiM7O3kH58+Xymhu4lS+2BxpuRF6zY3GyRgSKId
         mYpXybnJ/eswxjU54B2+fBKXBrZ8jVBZKhJCN0ccUrOOY9ljj+6jjUyW4uc1KSuPdiEa
         nlJ3898/7Rc39d+tdjm2reV3Rjx5ajTRnPz83I3VLE8gKGM983bBLqYHAJHdYRloq5aW
         4bvyN/ByH/PdELcstuXcpkfQKxDAlQUlLtQtP67HsRQ2NFuFwQpSLfSNCbQP9oKHxz9/
         R1V0hbdZ/vZBc8LqfcuaXlxMjMUMf9O+Gf+zCi4WXyJd3ui2YNoLfqidAE8lgp2luam9
         Za9A==
X-Forwarded-Encrypted: i=1; AJvYcCWT9yL28Gfg4V+mplHOxhfCpW92kfuDI28CCTANLnQaWoWqUu+/ykDh3Uw4DIffMaFAJ/0LtHJxyRjl@vger.kernel.org
X-Gm-Message-State: AOJu0YwwG3SvugnvqPR2i+CqNnJh9dNlShzYwRs99kDeZ5EiPr+TO6/a
	9DuQ7sZnvb1l9wl295xSezqIczHd4Za/ejuEmit0uvaFUqq5ixGSDQRlsIPNdyfKJ/AMToAHSAl
	A3duFnZ0i5TET7w9wimmFYfeSGGI5TyyM0EH6uEovtACSea9GsSHGQpzp/2fbzySt
X-Gm-Gg: AY/fxX4c9SxX63nClm1pBf5gP1qexBBRloD7Lf1BOmCG/CjQcE/QrVXnDU+SKkuXRPK
	id7tWm+TfceuSGadCn5p/W96ftSgmMYFFuw8eZqzvwDyk/UGyLGFhjSBZFzM2CB/A/Q5NCRjj1X
	WKYXfxyUbMcagtz/GahLb2hnr7Qvmz8wvyOVXqUHN0Cg328ZU3lF8C6Bcu69GyFBNkEFPyWYn+f
	S7GfbN30cSTwEEO6N3TKRYkyGA8bPg3tajWdg3L7y0rckADw9bya63IBXfzCL8b+BBZyH+wMEv/
	rDhvcqMfrMvMJjEWF4EbIlmjmuQ9ZMCADUk065f0Xkl4laS+zP4Ed8pIbvYxScJuxXrYGhJIcEK
	65tLHIP72AxLxzVh3uByKrw==
X-Received: by 2002:a05:622a:17ca:b0:4f3:5eb4:61d1 with SMTP id d75a77b69052e-4f4abda5d9cmr13012051cf.54.1766095902619;
        Thu, 18 Dec 2025 14:11:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGqh62rWiMeM8zIKIWonKwMJ6bmoK08RdUj+x1u/L/Ib4UD+e/5Mcj3lTEDDZ4flevbKDx5KQ==
X-Received: by 2002:a05:622a:17ca:b0:4f3:5eb4:61d1 with SMTP id d75a77b69052e-4f4abda5d9cmr13011531cf.54.1766095902064;
        Thu, 18 Dec 2025 14:11:42 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de11dasm49970166b.35.2025.12.18.14.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 14:11:41 -0800 (PST)
Date: Fri, 19 Dec 2025 00:11:39 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1-el2: Add the APSS watchdog
Message-ID: <vlo2zqrlh6uhjxwt7wvzerh7qgii2mbgnsnykfg2obq7avgysy@q6v7msawgrn2>
References: <20251214-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v1-0-94ee80b8cbe7@oss.qualcomm.com>
 <20251214-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v1-2-94ee80b8cbe7@oss.qualcomm.com>
 <aUPSEM2AFPTmQLtv@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aUPSEM2AFPTmQLtv@linaro.org>
X-Proofpoint-ORIG-GUID: FaaEBFdl7mPyVaIfharBGOGkcuXdYOVn
X-Authority-Analysis: v=2.4 cv=A7ph/qWG c=1 sm=1 tr=0 ts=69447c1f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=MzO28PX6L44m6hDT13IA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: FaaEBFdl7mPyVaIfharBGOGkcuXdYOVn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDE4NSBTYWx0ZWRfX4Ai4E8PJfNAQ
 8jzhwdWiqbn7zD4t8N/kjvBVsueTEn9fhZm1PljvJeWYsDY165DoQYMZ4FXxxfY6ZGRuQKBnsxj
 HMuFTVSexd4W7Be4/2GuG3d1vjsZDM8dznfVg0b/5S3QP1dfSPSh1l4NRp703MTLUo1p2rhAzhl
 AESIj5D4jMKnAiXyOrFzYC7qFhPehEf1JJvBVbolfDYjvhzq38E4M50yM7nvzYwY/XspiNZ+tdZ
 FcLTUEXvK9uDLZmsvlAVO6QhUy0L0BadsmD/Tbg8QTCil0mEyb5zMxLgXsEGLpD9OJwKLSzZfae
 ycp9XJw9XiievZZPu4cqM5rlrv4dlBA7c6EUQQ20qnDoBDOAOgJy9yoat9JHF1ihIhXA1BIKs5h
 k78nGMnvCN2r6ofsesumxBRaDOIer1jS+g5V6DSkAF3bNvXdoWvGjHq3D+s7C1Nsg5uStU4S0+Q
 9r4Ae8m8TScDO1jgHHw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0 spamscore=0
 phishscore=0 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512180185

On 25-12-18 11:06:08, Stephan Gerhold wrote:
> On Sun, Dec 14, 2025 at 10:49:59PM +0200, Abel Vesa wrote:
> > The watchdog support in EL1 is SBSA compliant, handled by Gunyah
> > hypervisor, but in EL2. the watchdog is an instance of the APSS WDT HW
> > block, same as older platforms. So describe the APSS WDT node in the EL2
> > overlay.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/x1-el2.dtso | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/x1-el2.dtso b/arch/arm64/boot/dts/qcom/x1-el2.dtso
> > index 2d1c9151cf1b..404174a15659 100644
> > --- a/arch/arm64/boot/dts/qcom/x1-el2.dtso
> > +++ b/arch/arm64/boot/dts/qcom/x1-el2.dtso
> > @@ -7,6 +7,8 @@
> >  /dts-v1/;
> >  /plugin/;
> >  
> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> >  /* We can't and don't need to use zap shader in EL2 as linux can zap the gpu on it's own. */
> >  &gpu_zap_shader {
> >  	status = "disabled";
> > @@ -55,3 +57,17 @@ &pcie_smmu {
> >  &sbsa_watchdog {
> >  	status = "disabled";
> >  };
> > +
> > +&soc {
> > +	#address-cells = <2>;
> > +	#size-cells = <2>;
> > +
> > +	/* The APSS watchdog is only accessible in EL2 */
> > +	watchdog@17410000 {
> > +		compatible = "qcom,apss-wdt-x1e80100", "qcom,kpss-wdt";
> > +		reg = <0x0 0x17410000 0x0 0x1000>;
> > +		clocks = <&sleep_clk>;
> > +		interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
> > +		interrupt-parent = <&intc>;
> > +	};
> 
> For consistency with &pcie_smmu, I think it would be cleaner to put this
> into hamoa.dtsi, mark it as status = "reserved"; and then enable it here
> in the overlay. That way, we have a full hardware description in
> hamoa.dtsi.

Sounds like a good idea. Will do that in v2.

> 
> You should also be able to drop the interrupt-parent if you move it
> there.

Yes. It will not be needed.

Thanks for reviewing,
Abel

