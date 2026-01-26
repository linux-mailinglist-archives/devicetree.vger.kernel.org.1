Return-Path: <devicetree+bounces-259520-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIDSESd5d2n7ggEAu9opvQ
	(envelope-from <devicetree+bounces-259520-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:24:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A55896B0
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:24:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3A65A300440D
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:24:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF54533D6F8;
	Mon, 26 Jan 2026 14:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MuVAsdPF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZXGon7MT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D95933D6DC
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 14:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769437471; cv=none; b=WP+ICkht/zxjLO9LiaYSvKbXiVkwuwvR1hQxsZ22w22goLf/KxTLt3+6JrYcd8eEIhBWY6OD+ZO0mb1AUSKh3cXpNZVxnUe+4d4sGVwt3VOPDasVIg2CwLIUk8LzjkjHN2sLMoj7z/pKZnxZsp7sU+arXYkJZi3W/dQpTPDbeMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769437471; c=relaxed/simple;
	bh=SLmscoeLlQZu7/coLNvSmFsXwexGrzbgpLOh+54eXDM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MIZs556AhACSeMYKrq8egk1rYEJj8xY1XpFWmQRyLVecu+9bREFt5I1yCxHUuz9KAC9Tnn+m2yX7JyT1YBpyC+nu6g9EtH/I+mZ/RGlSTd462p0JVHELUQA6IMc9O+DuxWRC88a2BojyVv53pJ1CGn9o/peLNburwIxmZUIrAGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MuVAsdPF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZXGon7MT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q5UV421019388
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 14:24:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DpmsRN8mirxOq1BbvfVzgjzR
	emMqO6gZ0WhjIKtUsW4=; b=MuVAsdPFQJI6nrETjejSf3oIjdVUvFK8g/BEMjh2
	qAUVtsDMjO0MYLNU/U7cve5bn8LC9kC7yfuIoTECG6X7ld9bovj2RmOl+rZNW+p7
	b4VywuLPl4y+BVgMnRIQfTTDogm1QQEnSCFHs8FNO4bD8Ffqlhtbw0ODgqJfKv02
	KgIUp006zt4Hl4cUrpDFjX0eZfhDZYmMP7w4OWpCGNJ0uY9r597Kj+GCb1KVGvSR
	SUGfuCyDYV1lKG4lo+BVIslFYMYl7Sd36nvD6Y4Ui3LfcgYoZ0h/C3OQDhptGeh7
	StAf5nmnMLD0CtxDi71dBk+bHKHi2dtCZp6kFf/l4LodeA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bx26818u6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 14:24:29 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c277fe676eso1307328585a.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 06:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769437468; x=1770042268; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DpmsRN8mirxOq1BbvfVzgjzRemMqO6gZ0WhjIKtUsW4=;
        b=ZXGon7MTLlCpVgJNMIRyvY3AC29USCbWLSR6FaW+dwdIJzcZgzJvjJioiOpOwECGNY
         57IzaUFry3nOXZHiEMYMYgGd6e/cLYWSQ3UcS4oWNLFRyf++hQSkSE2YgtoCUD24dc4N
         qZ988Wg5bQm5/peniQ0kdICOv45x8EQMffW0912S0IOwgGNOSs8Xo1U5RGiXiyF8xCuD
         34dnb7CmXsPLEaTgXPr+FeHr7TQPWFWJRZX1QF0F03DHeKjG9qOGkbcwCL4JfC5gQl+z
         GptuJmQbMVfXbEXCvtjHYr9z6KrqDLNUbRvew+46Z2AQ7gxCXRDgrR19P+pZHmHn8Ba3
         fc5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769437468; x=1770042268;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DpmsRN8mirxOq1BbvfVzgjzRemMqO6gZ0WhjIKtUsW4=;
        b=QkKRMIPzhXif3oP56Ukynm0guKwjkdHRl94m9QTJBU/1XokhJk8WfbJET8vA20cijs
         yUUlxsf2m63YF6bbQq4fiVHs1eGr/lpuOWkBGIM5KGQHcshoP7AIDXUmQ/cApGfFMVQp
         ZTLhvBV2JA67YJTYUO+8gx5aPemNBparCqwhkZlKEH9qILPPbqohX39oTSfPZb739yYV
         N+jSowB2kp5Cy091itMoDmwdbBdPjxf98gX2mobaKKTVmUHvOqQltL11GpeFmaei3yt2
         ZcvPk76fsXZRuGSqVgkYIzddgJQmPnlmF+8Dh2kdZrMAp+FNloU4wjj934GFxmv6kI2h
         A4zg==
X-Forwarded-Encrypted: i=1; AJvYcCVfjWcbaiJ/3pumCOF7epS0PnMaZIb0Yh94sIYl/aMKuOuJ8LUp6ArHWQvEgx69P4pKjnndihxUxp+q@vger.kernel.org
X-Gm-Message-State: AOJu0YwSRCrjR0MZcWcBcITaNL9PbX48YqyqzhIZx3ckB9KUQO/gdxPK
	LMzhQ2zKbipbzxaWuyiz8/XNktr9MCCagKKHHkkU1ldLWmofd2G+MzXn3Ya2DguLa/NSxkf3n76
	uelMfxsJQoj/P2LPX9W5Z8MmzFZFEuqXvAtthSdMZ57SIsdc8QxRT9sJ3k4E1BYoh
X-Gm-Gg: AZuq6aIQ7xVisMLouyc4T8sKrh34AFc8BxPWlAbqT/vcEByxc8awDtpF6NRtCkel6+G
	ZOwHP/47HCg1x9R6VkEekWkXQOoYCSqsFPqdnk2au5ChbZJkmY3XP9fXXr2I55O8c4VmZz6Xm3o
	B+WvG3cNF5/0BOvqhliYNI8zD9+ultgEIlO27+IjJSNsAbqYi4mxzZjtKQyhGg2ntXglS+fC5wa
	tl4xrABNYMSiK9k1XB+UEopRLOljigltjsi5po+wE+dshrYnFi7OSO+GmxkNud03U3tiMiMeIoi
	mHxVuaA/DTFjPlKnZPTMpcMlXbqORdRu+J1txBadBVlUs7l863rSO995Y45kAgie/BE+sXlrsHn
	eAY2EuNqwWGExT7wQXucb5UWG
X-Received: by 2002:a05:620a:1929:b0:8b2:dada:29b4 with SMTP id af79cd13be357-8c6f96639a6mr499071885a.63.1769437468396;
        Mon, 26 Jan 2026 06:24:28 -0800 (PST)
X-Received: by 2002:a05:620a:1929:b0:8b2:dada:29b4 with SMTP id af79cd13be357-8c6f96639a6mr499067385a.63.1769437467734;
        Mon, 26 Jan 2026 06:24:27 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470bfe88sm332589635e9.11.2026.01.26.06.24.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 06:24:26 -0800 (PST)
Date: Mon, 26 Jan 2026 16:24:24 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: Re: [PATCH RFT 3/3] arm64: dts: qcom: glymur-crd: Enable USB support
Message-ID: <kupuqmjjuds2aznpl3oicbl2ererfa6i4br5c45mg2xr7fwyon@f6qoyr34smr4>
References: <20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-add-usb-support-v1-3-98d6d387df01@oss.qualcomm.com>
 <4wyliidx7f2otaudyfhevemnigd2zpietbhsovhna2cvftbd2o@x22jpa6ffjyy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4wyliidx7f2otaudyfhevemnigd2zpietbhsovhna2cvftbd2o@x22jpa6ffjyy>
X-Authority-Analysis: v=2.4 cv=bIEb4f+Z c=1 sm=1 tr=0 ts=6977791d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=tGu0c17UIxBQEtl-8TEA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDEyMyBTYWx0ZWRfX07ImHzj89SFw
 W8fjH01OuyUAWvJAuAOXku5xo8mJi9s4Xg0v9lJZLkuoZPRQ7+Iv1TY9ZCZbepwAjYEvi5J/goE
 NiyLJm5KDYp8Wt96bCrNNtKu07aenV/traVLbhNBfWSVbOZeaSVR7RgG4bVEmlsmKPmbdoldGs1
 zL3QbD+0MX+YYxFQiPEJ15MjkdRtom1cNawLLT5We3f32ELnCSaqyYsFSxY1K5Aeepj1Py9RSGU
 k+69J3grhwlXk4wzCpdESYgrVgaSTny8OxPmtLHuG11ALkYqYHcihPqmNtTlYK7c6+jyhCJJ2xO
 tlLcglddvPMyZ6WJWkZPV26WSqIRb0bG2vodyLQDjIAevOVONbmBDuyH78eIBbKKKGLxMKkBj/W
 a+UX7yYZV0oYo01Iw8+gr0hPGD2s52qzQHt4qc06dOeX1ng2/2AKurMP1l6/F2E92unoVOa0Yj6
 xzJgR1K1Uu/C2Olys6Q==
X-Proofpoint-ORIG-GUID: 5_4u2GuGg9p-k7KONnRocPJ8eAA144we
X-Proofpoint-GUID: 5_4u2GuGg9p-k7KONnRocPJ8eAA144we
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_03,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 clxscore=1015 spamscore=0 impostorscore=0 suspectscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601260123
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259520-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 69A55896B0
X-Rspamd-Action: no action

On 26-01-13 20:02:25, Dmitry Baryshkov wrote:
> On Tue, Jan 13, 2026 at 02:33:06PM +0200, Abel Vesa wrote:
> > From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > 
> > The Qualcomm Glymur Compute Reference Device comes with 3 Type-C ports,
> > one USB Type-A, and a fingerprint reader connected over USB. Each of these
> > 3 Type-C ports are connected to one of the USB combo PHYs and one of the
> > M31 eUSB2 PHYs. The Type-A is connected to the USB Multi-port controller
> > via one of the M31 eUSB2 PHYs and one combo PHY. The fingerprint reader
> > is connected to the USB_2 controller. All M31 eUSB2 PHYs have associated
> > eUSB2 to USB 2.0 repeaters, which are either part of SMB2360 PMICs or
> > dedicated NXP PTN3222.
> > 
> > So enable all needed controllers, PHYs and repeaters, while describing
> > their supplies. Also describe the PMIC glink graph for Type-C connectors.
> > 
> > Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur-crd.dts | 283 ++++++++++++++++++++++++++++++++
> >  1 file changed, 283 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > index 7c168e813f1e..3188bfa27bea 100644
> > --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > @@ -56,6 +56,97 @@ key-volume-up {
> >  		};
> >  	};
> >  
> > +	pmic-glink {
> > +		compatible = "qcom,glymur-pmic-glink";
> > +		#address-cells = <1>;
> > +		#size-cells = <0>;
> 
> No orientation-gpios?

Nope. Glymur does UCSI 2.x, so orientation comes via UCSI payload.

> 
> > +
> > @@ -858,3 +1015,129 @@ &pcie6_port0 {
> >  	reset-gpios = <&tlmm 149 GPIO_ACTIVE_LOW>;
> >  	wake-gpios = <&tlmm 151 GPIO_ACTIVE_LOW>;
> >  };
> > +
> > +&usb1_ss0_qmpphy {
> > +	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
> > +	vdda-pll-supply = <&vreg_l3f_e0_0p72>;
> > +	refgen-supply = <&vreg_l2f_e0_0p82>;
> > +
> > +	status = "okay";
> > +};
> > +
> > +&usb1_ss0_qmpphy_out {
> > +	remote-endpoint = <&pmic_glink_ss_in>;
> > +};
> > +
> > +&usb1_ss0_dwc3_hs {
> > +	remote-endpoint = <&pmic_glink_hs_in>;
> > +};
> 
> This is obviously not sorted. Please sort the nodes.

Will do.

