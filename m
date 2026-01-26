Return-Path: <devicetree+bounces-259523-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPKEOIp8d2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259523-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:39:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 534EF899FB
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:39:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1699930564F3
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C5E2566F7;
	Mon, 26 Jan 2026 14:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HUOG8T+m";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="crw2djK7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF088252900
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 14:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769437947; cv=none; b=dDQmQMccyuG2+0sVqvr9Us/tR+AknZWmKcqIHyy4wUwrS3bnE7g12tZM6GDP0jRFpaVLUlO8T6iIpLQGePP+3jvWQlL6O7Ez87JV0erYlR47yv9NMnc0xCPLXnU2736sgcVZgW5TMWcMI5FJlMX7x0YmFx3Aed6nKEcdekQNLbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769437947; c=relaxed/simple;
	bh=daHZqMONP/7qypDkU0uDwU4DBQuz8Gkx45cmlIumGR4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uCHGRDN9k7PABFrAbhTvLEqxagwkZgKncJpl3Zm54T0Qj5+A5WN/yHvUtZCgJmoE0U5kldM9dQdywkkjvCca9qGICtkAhzp4kD6gEiPU6BSWOa42U4s7NXc/N/uigCwj1dH3z0brJAJpBjjrxTSVADmITojH8+AN5IJ3cSksmp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HUOG8T+m; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=crw2djK7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q8shCb762743
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 14:32:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9Q/TyKNcc6J5J/TnZoapO+PZ
	pmxpO5YpB2o1GEQ+6j0=; b=HUOG8T+mL1YwwNCl0a6pVvd26T43bK7b011nYTm/
	/uw2/0LFpla9i4IFx5sBqSku5W0aa6jCZnXBuOe1awdHVB2aXNpsdHK8xrB2TiTN
	M4Q2M4ovWeocMUzLaReZofzAM+/kpqxvbFDjoqmo6N+7R64D21XiUnoAOzN+O65E
	r+gp/Ix+gp3+VbR5U1pzPB5+WG1+gMAIaSOd1kBubX+JvveoGIoroIYYoR91DktM
	pxEhzn9FFlx8ML3Ke7b9Le562xzBdXxO3SyLsIrTtrwsLrKCWPyPhKyYeNdBONXy
	6ArXDoAukWaxEAZbeSQ0Q7ndhk0q1XDFHdAW8MEw0WiVlA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq9f4s0g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 14:32:25 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8bb9f029f31so1620124985a.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 06:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769437944; x=1770042744; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9Q/TyKNcc6J5J/TnZoapO+PZpmxpO5YpB2o1GEQ+6j0=;
        b=crw2djK7O5bYhZRpDgAN5RwiF1lShRdImGzYItzd/O3ZrNScOoGM5yPhxInNv70NLt
         OZoWLZcaWaS2+DaRKC2mKgWq5q4QaGiHHN/W/3Gkj4S8hL09X1jandraQP6OQVes12rg
         kSm5aq0VJ4yKrtRLfJYtIrYtSzXC9dR5hZ0aQt/yo3auW1P7Lxjv2GLug7B8Ya/wimmT
         eGDOUWMpcnGYT0QcxRXaRmFqIDBqi9P+otKKcxhhpj2xZx2/Mt8WQdYHEowS/jXpBZLx
         rwuejZ/BKfubgfKMkj2YWxWUmsBGlHDE45dVb1UOt7Zxk72hFzeyv2wV88847UrgPZ3+
         xGQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769437944; x=1770042744;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Q/TyKNcc6J5J/TnZoapO+PZpmxpO5YpB2o1GEQ+6j0=;
        b=q4IBbEY9yHmw7SWVQ2LKav/zKWtUThn/4VY93SMj9hqJlneJrgeUXjnmt9X7AlY2Ac
         Vdlw0KWmLMLEY4ev5oTXwmx9XWnF93JcTSGbNWFuAHvDZyT8rTiO0TD3wX+q3P9rQb9Y
         sojkTzzHlrZ78z/3AqQnZ6yjO4OJnZNefpzkSuYSWfD6+kq3327i0TgbJcqASbjotfGE
         RbaAwDQmDf7DofcPZ98F3fSBtMYJwu/4NGbUxlCLvC+qQ5VmeNcAI1X56AOwtT99EqHT
         uVL8J/KKbQdYf25NgqUoBWX7exNHLXBq7MnVgdnEgtqWaC1n6GDJzWpn2Y0J7e4B35t7
         dA8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUJtcbIgbwgGD8XdPQmMmSRGSRBWkENwAWRhmGR0Dj0sL7ReC7vfAK/1OK8DS9LaDILNiu26hOl41ob@vger.kernel.org
X-Gm-Message-State: AOJu0YzzlAkARgogWugErGGgJSgsZwIzmM/G2siO3pvRDhAE6yXAeVGw
	zO3jJmGxa3JSkzJwQIFedPA9T6tYTPXrdlsxQKh0bPQkT5v+7KKkVsBnYyBxnB1uk/sD8iGXD/v
	mZ/ySjhIXAuiX380UlcVaU7jak3LRkupDufDG0kqS5DP1pjD9qdfIdq7FVtFr7Pbk
X-Gm-Gg: AZuq6aLbPmfZwnhcjgrTOji3uA+ZoUBSQMzoD3kabMXIOI1PGWc59VIWa1M5l20huTE
	WsgTYo94CCk7Ptz3kkO8me9xA29fob88AW7/DPx2JR8o25Axm3dO8X2p7HxXnjuohclrsLyoQ5d
	ZxZm4HYikkSoRmHnc1u+Byn5O+6OFWmiKX9kOX+BThmIwmChlJistoweWRGt7MDOIqChB5bRRnW
	NyR3F8ZPxn7jHBN+gklk03rEQ2Tw4/h879ZiRrAFAvPQRS+VPnge4ezHS5xGA0Lk9Q1KcZ44Rnq
	zbUBdfczlQZ9f7BtOH3hjMMKkAw3PNFUWqunK6GUN6ja+eJzaWONs+AYfmDDTz5Fz3LGCjvPyFf
	1ScrNxgrZo5/11OTfKN90MJJM
X-Received: by 2002:a05:620a:1a19:b0:8c6:de6f:8996 with SMTP id af79cd13be357-8c6f95e72d8mr489076985a.16.1769437943921;
        Mon, 26 Jan 2026 06:32:23 -0800 (PST)
X-Received: by 2002:a05:620a:1a19:b0:8c6:de6f:8996 with SMTP id af79cd13be357-8c6f95e72d8mr489071485a.16.1769437943294;
        Mon, 26 Jan 2026 06:32:23 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d3b4625sm109913795e9.0.2026.01.26.06.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 06:31:45 -0800 (PST)
Date: Mon, 26 Jan 2026 16:31:44 +0200
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
Message-ID: <wh4qsgwl6drye2d227mv22pxz57cikp6ogabklo6fvlzljqafp@sgps7d52yp2d>
References: <20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-add-usb-support-v1-2-98d6d387df01@oss.qualcomm.com>
 <01de4054-eebf-4ef3-ad74-c806b208a848@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <01de4054-eebf-4ef3-ad74-c806b208a848@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=YLGSCBGx c=1 sm=1 tr=0 ts=69777af9 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=MOwG-Syh1sNcuLoOUM4A:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: ROi4K01BsjCHTVc8ziisJVdW3NhufXkM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDEyMyBTYWx0ZWRfX2lDfO1hKYKSR
 FhwJa+AxDvh17D8m9T+DCY2u8PhkNtTwZZpFQJ5I+hfv6e3G6Vnv85JffU/hZfV8mEN2Udvp3LT
 9k/uiWNZZk3aeOCHBlVQf5PdTVXOJmGGrbrcpHZgWdJ/clZtG672oIBk2KkgasdJaDghimSfNJJ
 5y5YauITjFAOrIyeMBr2FaFR8fRN0iYpQTXdY8DpsCr/ZAT0sI3t1rEe+4/Lpjy6QXNSgrb8B6q
 h0esUzWgwvK9GtddbfavEvL8LsoI56/SXsJZ0W/2pkjdpc3+febgXn3hAG+tvUG90A9c7XRv9sQ
 csjKeEP7/2COJDVhszR/VqNt/qVCXCyuylHouoqSlG5pRugTwGHWEobJZyOP3hBXDiEQBnMD20s
 8nWTQQEw1QjjdA5qSI6WwyV7AyKQ7gS7izDI2t75qNZl8cOfYE+nmk26hLLjdRz04kMHvTVKlYg
 DN5+K+ccxFuudLLIDZw==
X-Proofpoint-ORIG-GUID: ROi4K01BsjCHTVc8ziisJVdW3NhufXkM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_03,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 impostorscore=0 phishscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260123
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259523-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fd3000:email,oss.qualcomm.com:dkim,fa1000:email,fa2000:email,qualcomm.com:email,qualcomm.com:dkim];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 534EF899FB
X-Rspamd-Action: no action

On 26-01-13 14:13:32, Konrad Dybcio wrote:
> On 1/13/26 1:33 PM, Abel Vesa wrote:
> > From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > 
> > The Glymur USB system contains 3 USB type C ports, 1 USB multiport
> > controller and a USB 2.0 only controller. This encompasses 5 SS USB QMP
> > PHYs (3 combo and 2 uni) and 6 M31 eUSB2 PHYs. All controllers are SNPS
> > DWC3 based, so describe them as flattened DWC3 QCOM nodes.
> > 
> > Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> >  
> > +		usb_mp_hsphy0: phy@fa1000 {
> > +			compatible = "qcom,glymur-m31-eusb2-phy",
> > +				     "qcom,sm8750-m31-eusb2-phy";
> > +
> > +			reg = <0 0x00fa1000 0 0x29c>;
> > +			#phy-cells = <0>;
> > +
> > +			clocks = <&tcsr TCSR_USB2_1_CLKREF_EN>;
> > +			clock-names = "ref";
> > +
> > +			resets = <&gcc GCC_QUSB2PHY_HS0_MP_BCR>;
> > +
> > +			status = "disabled";
> > +		};
> > +
> > +		usb_mp_hsphy1: phy@fa2000  {
> > +			compatible = "qcom,glymur-m31-eusb2-phy",
> > +				     "qcom,sm8750-m31-eusb2-phy";
> > +
> > +			reg = <0 0x00fa2000 0 0x29c>;
> > +			#phy-cells = <0>;
> > +
> > +			clocks = <&tcsr TCSR_USB2_2_CLKREF_EN>;
> > +			clock-names = "ref";
> > +
> > +			resets = <&gcc GCC_QUSB2PHY_HS1_MP_BCR>;
> > +
> > +			status = "disabled";
> > +		};
> 
> 
> [...]
> 
> > +		usb1_ss0_hsphy: phy@fd3000 {
> 
> Let's not repeat the mess introduced in hamoa..
> 
> Perhaps let's fall back to usb_0 etc.?

Sure. So then:

USB SS[0-2]              -> usb_[0-2]
USB MP                   -> usb_mp
USB 2.0 (USB20S in docs) -> ?

> 
> [...]
> 
> 
> > +			snps,dis_u2_susphy_quirk;
> > +			snps,dis_enblslpm_quirk;
> > +			snps,dis_u3_susphy_quirk;
> > +			snps,usb2-lpm-disable;
> 
> Other SoCs have a list that's much longer, please consult Wesley if
> this list is enough

Will do.

