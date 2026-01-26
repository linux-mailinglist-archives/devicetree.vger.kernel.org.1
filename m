Return-Path: <devicetree+bounces-259543-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFVTEUyCd2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259543-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:03:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E8089E47
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:03:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 80DCD300833F
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2BD433A70C;
	Mon, 26 Jan 2026 15:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UfS+Fciu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ho6D8mh6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C0243375A7
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769439813; cv=none; b=rgsshdgzmQ3jQNsO99IDaoDKHe1VwUJinjyATfmUKm9p5Zin/l542suW6ROm3t7FFhL5j8W1CKGI8J6S6Z05dfWx4OdT42VNm8+fN9DeqmhcV0ttbQ4wARviI81WkRdflITKn5v02FPe/7ROGBSfa8Qpd7jbnGn+KKKETcpLGs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769439813; c=relaxed/simple;
	bh=FbRWRE99w1hP97Fxyw4gsfPUF1oyccUPfN1+ykWolw0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BllBAZ0Bg3oGOURGdGvUbiQ4qsZuPQC5lg4gLrXNnXabpJ3OPka3CBxb758Wk7oNrkbskFWZn4QbHnIZnMFU2PcBtPTJR5NWIcGfkJnZ6aFdcXnc38ZLdzYbxCXqF48Axumw6zM9J288/jC/irM5E7cQTpVYJ0qY2/OyifzOHIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UfS+Fciu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ho6D8mh6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q5qfAS2971875
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:03:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ejhhd5mKIO+krlcy04QgJSBx
	/8PrM5U8ePcBuVqH5kY=; b=UfS+Fciup/w9pbRtz8TmtdJfrakX0K9PaOZ2qKFg
	ZY+zKHudSOfTkulQ/ONUcLO/DT9ZK/kOnz9zPh97PaECEeS3tcjT1nk5oxaSauav
	k2tH2GyD2o87ejjen2Sm3KqbW9tpNirczDW6Eoi3K2mxOpNv7ajOS5jOw+pqAqib
	T+8AbWDVhYFGyt8xuW4etEbdT2H9tbtl3VFLgQ1gNKtGQ8IGawP3ArEy/kR57Zag
	4t+OyRXm3LVU6VMkdJzUbb9T0vPLWwlOSv0wZFzREHXTnffB4uSamtypojTA83WT
	r2TTMKWptNKhhaLAsnd/XmKOhRgiXn656T/u/GDHbKpIpQ==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq6xvup5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:03:31 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5664600d9adso3825181e0c.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769439811; x=1770044611; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ejhhd5mKIO+krlcy04QgJSBx/8PrM5U8ePcBuVqH5kY=;
        b=Ho6D8mh6atqOqEzaRWDTi0CRGanf37vPpmy3Xutsns+lwpFuU8YTvGjgW4F+0+k7PO
         ZuGaQojEU2ItnZqUwVfhnkEowuZqMCZIqUMQCc9VZTlB6oBB7X8ROmU9j/7avW6aIXOp
         5w55NRv6aWmB15C/DnWrW88YvLrGm1GF+DvHK2fiPD1b4SsSr5+K/T5xcCkN8W9+6gW3
         ZdvDitA0jmCMv4zBa205TTZrHigyXH3NDTARUW3CxtJtlD0yWENJVtpIeEY2wO8F7syZ
         z5epZInrbbNQ1f2Axba+iga+RdAW7ayKqnvlP56aK+8KDDEU7U1gKArSNDLviB3sjEM1
         WQ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769439811; x=1770044611;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ejhhd5mKIO+krlcy04QgJSBx/8PrM5U8ePcBuVqH5kY=;
        b=hhTtJmi7FZ7hpU6iP+7I0TCOnr/3vbUTpOUhyOCgJJpI9cDansV9tpUM+Y9Wd0G/p8
         oeoMRz8OlgFOuxFUTwxqDurNgOx2dgaTbc1h4No1cdHO9mCat7rT57An6wCG132J8YiC
         CGU7qADXonC5H9wgtBFCPLDr21SfCwcT8ca9gWDvgBRHmb3jU3yB5r8OF83pugmOpagG
         WG7oB14KG9e9HgD85jPyo5i6Kklu1lZOx84c/O6HCmvdYHHZtFmqRXqzfYeikUCSO8XW
         VCESOsbEx7Z4si3dHhzg7wSBYg3lzBurFY6eEvcqCqB965hVhvOtnCMXdKZEemA7Sf/b
         a4Zg==
X-Forwarded-Encrypted: i=1; AJvYcCXEaLZqKlddDgxmSieZjKcjGiQB0kruGQb6Tqvnzk/tKIFiP2/y26j4mJXjwLLYmDDLEr/mbwYBgOJZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5HmwA5CLjVeMhW9EJa/GP1izE0Ti25FJyDaxHPiu3euqM29DA
	Pzc7/wPseK3UQlsR3eFV0BwCkrBIOfDvt36ujT87jPENu5+rvf20QyUlH3bOg+kowrPLvBNJDw1
	GzdSQ1UpVR+73qd69ebfjkKWMnEM7TRcm0XIj09ADe216cVwaa7y25OruRNR30WGUW9g3ehad
X-Gm-Gg: AZuq6aLeNTFbgXhhDsEgiA3iYe5DyizIWV/OfJbci57Kl6TMMJfQKJtBMvRaXCfRRrF
	iZskS0Od2X/97u3qF8f7rwlb+V3j0BJqmXXmIu1Gv8/wySJC88+quHlvMyIEeI7w1PSOHhY2yfb
	aU+MsWdMnc41nnaqwBIPbMkRDnLjg8S+DQtgfUPUd6DF9tPqXD99N4xoSlTOy18rYkEJoXVPm1Y
	DAm8eZ5i9z1ghzBPnaab1uNXDAMarSuAqQYVGkXIBNyytbTdGCyOmGB41cT0/8E1I7IMzz4+pgw
	NZyICz3DFdKhIr4qk0U2gfN/D3ysP0n2Eg6jKfkpb0iFBRLhN8VTfMUPDx+WRT52sEZhoFClVIt
	Eb47n29tr5UNDXBLPpPsron9i
X-Received: by 2002:a05:6122:511:b0:566:20ed:44cf with SMTP id 71dfb90a1353d-5665c938cecmr1526545e0c.3.1769439809212;
        Mon, 26 Jan 2026 07:03:29 -0800 (PST)
X-Received: by 2002:a05:6122:511:b0:566:20ed:44cf with SMTP id 71dfb90a1353d-5665c938cecmr1526517e0c.3.1769439808641;
        Mon, 26 Jan 2026 07:03:28 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c24bedsm29701894f8f.17.2026.01.26.07.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 07:03:27 -0800 (PST)
Date: Mon, 26 Jan 2026 17:03:26 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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
Subject: Re: [PATCH RFT 2/3] arm64: dts: qcom: glymur: Add USB related nodes
Message-ID: <5upi7gbk7kqsy55zdcmsnorvjtvpkbir72ohkpxy5glolnle5z@4h4tiqjdmui2>
References: <20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-add-usb-support-v1-2-98d6d387df01@oss.qualcomm.com>
 <01de4054-eebf-4ef3-ad74-c806b208a848@oss.qualcomm.com>
 <wh4qsgwl6drye2d227mv22pxz57cikp6ogabklo6fvlzljqafp@sgps7d52yp2d>
 <cb08a156-d905-419f-88f1-77bd136c823f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cb08a156-d905-419f-88f1-77bd136c823f@oss.qualcomm.com>
X-Proofpoint-GUID: qTB41glzbrahwgJAu6zbayr0dCFvsX97
X-Proofpoint-ORIG-GUID: qTB41glzbrahwgJAu6zbayr0dCFvsX97
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDEyOSBTYWx0ZWRfX7ZQIvtSaVm4H
 bOCyCRtxDb9QzP9AL0Mo4LAT5+4V3wNDXfI9lmXoYd20HsbW+yOfDY/B+V/Rq4V0g55QYis3Z3p
 eWk3/MqR1ZPe5ZqHwvvYP/O04H22YT/dRDiiPQeyDH/pREX+pRh6mVn5OENRgKODo2ksxF0B4Cv
 qahiR/Nr7sJZq90u57rM8hE7+z4sH3tHPLlt+dcN9wnhRBpP0hTgS/8cb9VBOdW3W6CrG59xSap
 e//decEzussVerjoAln+F6CVbLsDL1GBHUZelQLRDoYkjGkNkkj0usFosWjqmlNKMWsBuOcZZQ7
 S65VHeCgoUPfwXkkYQNTzXB6yUbZ24sljapPV9QM40kSnri7uOAT+C9BjuHDenwdpy/Or45kq14
 HKDyxbemwqr4vKA6vb2fiRb2DCk9xoK6am4C8N3gVl0E758TMNU/QiBTni1Qmjth/ldAomda+le
 U71iyWH1sRGgahThQWA==
X-Authority-Analysis: v=2.4 cv=Htd72kTS c=1 sm=1 tr=0 ts=69778243 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=woEmaW9y2rYpOZNNKUgA:9
 a=CjuIK1q_8ugA:10 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_03,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259543-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,fa1000:email,fd3000:email,fa2000:email];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D9E8089E47
X-Rspamd-Action: no action

On 26-01-26 15:44:45, Konrad Dybcio wrote:
> On 1/26/26 3:31 PM, Abel Vesa wrote:
> > On 26-01-13 14:13:32, Konrad Dybcio wrote:
> >> On 1/13/26 1:33 PM, Abel Vesa wrote:
> >>> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> >>>
> >>> The Glymur USB system contains 3 USB type C ports, 1 USB multiport
> >>> controller and a USB 2.0 only controller. This encompasses 5 SS USB QMP
> >>> PHYs (3 combo and 2 uni) and 6 M31 eUSB2 PHYs. All controllers are SNPS
> >>> DWC3 based, so describe them as flattened DWC3 QCOM nodes.
> >>>
> >>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> >>> Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> >>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> >>> ---
> >>
> >> [...]
> >>
> >>>  
> >>> +		usb_mp_hsphy0: phy@fa1000 {
> >>> +			compatible = "qcom,glymur-m31-eusb2-phy",
> >>> +				     "qcom,sm8750-m31-eusb2-phy";
> >>> +
> >>> +			reg = <0 0x00fa1000 0 0x29c>;
> >>> +			#phy-cells = <0>;
> >>> +
> >>> +			clocks = <&tcsr TCSR_USB2_1_CLKREF_EN>;
> >>> +			clock-names = "ref";
> >>> +
> >>> +			resets = <&gcc GCC_QUSB2PHY_HS0_MP_BCR>;
> >>> +
> >>> +			status = "disabled";
> >>> +		};
> >>> +
> >>> +		usb_mp_hsphy1: phy@fa2000  {
> >>> +			compatible = "qcom,glymur-m31-eusb2-phy",
> >>> +				     "qcom,sm8750-m31-eusb2-phy";
> >>> +
> >>> +			reg = <0 0x00fa2000 0 0x29c>;
> >>> +			#phy-cells = <0>;
> >>> +
> >>> +			clocks = <&tcsr TCSR_USB2_2_CLKREF_EN>;
> >>> +			clock-names = "ref";
> >>> +
> >>> +			resets = <&gcc GCC_QUSB2PHY_HS1_MP_BCR>;
> >>> +
> >>> +			status = "disabled";
> >>> +		};
> >>
> >>
> >> [...]
> >>
> >>> +		usb1_ss0_hsphy: phy@fd3000 {
> >>
> >> Let's not repeat the mess introduced in hamoa..
> >>
> >> Perhaps let's fall back to usb_0 etc.?
> > 
> > Sure. So then:
> > 
> > USB SS[0-2]              -> usb_[0-2]
> > USB MP                   -> usb_mp
> > USB 2.0 (USB20S in docs) -> ?
> 
> usb_hs

Fair enough.

