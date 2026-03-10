Return-Path: <devicetree+bounces-273758-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLWxDIabsGnwlAIAu9opvQ
	(envelope-from <devicetree+bounces-273758-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 23:30:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 908A4258EA4
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 23:30:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CA5D0313B920
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 22:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 536AA3B19CA;
	Tue, 10 Mar 2026 22:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YAL6wTjo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T0OKDDfM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4A23AC0CD
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 22:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773181815; cv=none; b=BfCALOgYr6BNaEoYiYCggDvjPdn5v8uGuURvKIgrHmww3zs6XKhpTBaX8jZvP10wPVXSii7qmLNFefTZCDAUJ/gqd+jHWGqTvCULMJATWTm9YPJWZT2hLbVtNGjRcu01pbmm5n0EkvN9dwgG/oWxCoN4q/p1fFce3o4P5WN/o5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773181815; c=relaxed/simple;
	bh=E+MzsQ/XNb5YDD8Kdpz85uaBf83jdRYE/spDSsi/7S8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FxvQlGD5lpFeNQRJHMMA+qJtQEtNwJdLr12IK0/d6I4BeoN94qRiOEG+SBRcVqA+LJ2x9iO6rl5EnQuQF6vBAcQy28kVtIHW1o6SARBd7mzBgrSMokTDih3Zup3KyhZZ6L93uq97Hq9lOnA0OwseLw9raTNzhTVBGQ7+L32kn2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YAL6wTjo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T0OKDDfM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AIaDU52862524
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 22:30:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qxVdbmYtQiHkpJysUmcujS2L
	t7a1GevGxB0GGYw6iIk=; b=YAL6wTjoxJVvY5pZxsjYm42FCvyIvWImTyIkPgOL
	33sUiwqcons5/Ad528nBUbny8vmSWCntELSotWgMOgXyzChTm5VX69SpQjOlGRxw
	PJ/9tlOoGgk4qehz6lPy+8Lqe/vWSraC0qgKmJAh+Dnuww+S+TanpI6wNYogfDdI
	VMEwgyONIY/VB8pMhXV0QOVTjtDNmaFwOukIcPb2cIKKVrnIiMuyfkzKRO3jSHOa
	9aLnCLfBDwklkSINYtFfSf2gCSL4VToHDYkaw5Lzdncdp2//0W0RuWRSxbDdGOuW
	IeDSoBq71cr9wDEdlFV8i+iiGzr6ENnXqFIrv3Savivvdg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cte3wbj5n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 22:30:11 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd7f6ac239so1920149185a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 15:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773181811; x=1773786611; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qxVdbmYtQiHkpJysUmcujS2Lt7a1GevGxB0GGYw6iIk=;
        b=T0OKDDfMw2SNeQgT6dkfRj4ayl1yEsqbB8iZxXUFG00bnTsgybAUtNop+TlduvJgnt
         f2hVyYyJyGHgY0+b2SEwAC0/1EEA2QnDqSqgeCUUraVFGScpMcm/srb8Z3h2nuLu9qet
         LHWfB4qvl9jkoB4tAtGPKyzYXoH1QRNQwpUMBGP6z8OBGOcSZTjvwE/SHadEbstCEC38
         qMYaBnpQbYbzPpdUYAVsFqDkwS/enBOziC+NuLPrNuqWJGxr3F/4fEH1iEL5ih4W93zK
         CM1gzeJJrTFxbMj4PwtXFpvh3ra1mnz8Fv3UQic2cLcxyyO9DENT8zH7Kw9M98ivNyUn
         Eltw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773181811; x=1773786611;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qxVdbmYtQiHkpJysUmcujS2Lt7a1GevGxB0GGYw6iIk=;
        b=k3yMtnjkVY5QPX5kdvqfarjBoLON5cG2xDpPc1e9s7mKaOwaNsXQmhp4JwPUmhAzSo
         MgNEq7jqnH+T3kL8VgEaTb9FLCPQUj5foxJxOWXnswpVZMCS9SmgM86GPkQ7ikjRFWgK
         Oef2wXq6jJyTBIkjHHnYguZXd+O1dQieIX7BOYIFEyaPx/gvqcm+hm0+UOlqpiGA3vRU
         p8QrsSz9//WziCaQWxN15KD8epll/aaRjYjsqd6MoOpHtskD9mwHWbKRFYQTgxI+U6RM
         u0RKCLfvQd45aDEe8prTP5v4Hc8WW6T08KokAbBJiND4zefxzMBSFM9f8ZR5gBY2xR9M
         QVFQ==
X-Forwarded-Encrypted: i=1; AJvYcCURyRNaLQthv6fizvFichNtdwJ/tewUbp9mabJEZPB+jOT+EzFS6+T8fOyIdRHcAVyuxYhk2Ljp4vpz@vger.kernel.org
X-Gm-Message-State: AOJu0Yz31/jnykoYljNEpG7VX1p++IGAxyWNwhA3hQEsAstsSadOSpSN
	Z99axyNlz+5sotRENZ7l0KU/iCo/1/m/stXYyauQa80yH7jDJK8ABjgNLqI0Y3+FLA4TXq9bpX0
	D4awjyzKFfe9mM9RDtMCPWgyCP4XHl5uU6C4MC8sQMsSJmdToaW7zPjFdyZsJNV7W
X-Gm-Gg: ATEYQzwX+0cKv9E9SvrFGQ7ZN0wGE5kjVkCctk46/s5qFq2peaM8kXMrToPW1yZt3Oy
	p5ssn0/ng+DmDWfq7nNpJwre1RxMPYWRkQUMmgs/30hdDRSV4M9S0eAd/mE6tN64k+z47XxggCi
	CxMTyaOMUmMCOrw/OOATUTelqJaZzjAxE0AwjumMRsiIfngWh4jZX+opn3Y0C9n6EbDsCCHcHYy
	l3y5A6mTeQtDdZxQqmU63ZK4Ycurluh4unPsRoctKc5o8eea/JcQOxdMDuru6kSsEtT5Wn4pMSI
	Ed5cEaLQ0mgjfGRIt+YSqkJEAz3aKw+c/7bEiCZKq2Vaoevb4+k7zBWD0YUBKHGtL+Q9FHhrDis
	HuEnsMWireFdCP5TnzRAbuEqMsalS2CXbANUnwN+yJgU6uRiDAe5fnx0xva7YJejjgYrxokB39W
	resoVmbJ2M3x6VBvcyGLbK8wNmE6PW/LLdyRo=
X-Received: by 2002:a05:620a:44c4:b0:8cb:4fe7:4c8b with SMTP id af79cd13be357-8cda1a5714dmr74179685a.62.1773181810663;
        Tue, 10 Mar 2026 15:30:10 -0700 (PDT)
X-Received: by 2002:a05:620a:44c4:b0:8cb:4fe7:4c8b with SMTP id af79cd13be357-8cda1a5714dmr74172585a.62.1773181810106;
        Tue, 10 Mar 2026 15:30:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e646sm74637e87.31.2026.03.10.15.30.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 15:30:08 -0700 (PDT)
Date: Wed, 11 Mar 2026 00:30:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: cristian_ci <cristian_ci@protonmail.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH 3/6] arm64: dts: qcom: msm8953-flipkart-rimob: Enable
 display and GPU
Message-ID: <e6m5xhnexza6fnmz6cczwsrp3ec6n643yjukj64gvync627sl3@2pldnf7ldcpi>
References: <20260308-rimob-new-features-v1-0-aa2c330572c0@protonmail.com>
 <20260308-rimob-new-features-v1-3-aa2c330572c0@protonmail.com>
 <ne3i5tmvperssm4pivae7jhmqzvyy7ftkwnacpaf4ukdqojtha@53mhrxlraw3k>
 <f309905e-6f7f-440e-b463-7bda54298164@oss.qualcomm.com>
 <BP1Sd6YH7pfwUcIQzlAHRokbTdR0TiORnTMO27J1CcPV_O1R1HO85gyIJf_J1szOiMAXn2taMlmC2iUt0Cpr4jKjB7wTeukWuIBFzj5eBdU=@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BP1Sd6YH7pfwUcIQzlAHRokbTdR0TiORnTMO27J1CcPV_O1R1HO85gyIJf_J1szOiMAXn2taMlmC2iUt0Cpr4jKjB7wTeukWuIBFzj5eBdU=@protonmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDE5MiBTYWx0ZWRfXxRAMyW1SBwgQ
 MsRLrbJOiRHmovhZ6SMp0psbvSBqSjP4PzCijUO+3M2udB5q1zlu8Wa+bi5CJcbcIrDIU+nojy/
 idPsMbud9SArsgSSo6lSLIGudKNEJzDcZY0otigxS1pSy7i/fgbN/9Hda8sW/YmSCYyboJtEizr
 ora57kwSoIhxi+2AZp0t4VooH+4isQouudBdZJKVVH5ya/ccWEMkl2CMTxqXJMV/u+Iac4STQ50
 8fF8cg+UxqC2CVA79sNnAcwt3l26qoXsNy0e4vPPSvpcINNEyy53NB1Kp2iRtzozwoxfT/0TQJt
 S9yCNSG/0NTMetHNkbpTgPdQ7xntPyh+SJMgROYRJ+StUCz8007ioXrg05CzndfeMeA64z47oLr
 hcTjzzoBAdYXE3qZmrErZbBDtNKl24TG8M6O2kSmUlthaBlIzVXMvJrMy0OJ7YE0R9OUjDtnQby
 godY7t9gMXEegFnCJmA==
X-Authority-Analysis: v=2.4 cv=GtFPO01C c=1 sm=1 tr=0 ts=69b09b73 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=sfOm8-O8AAAA:8 a=XOktAL3nDL9lPePKX28A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: R0E7-uiF-_xLnaKYtyAvjpTbW78bcwoD
X-Proofpoint-GUID: R0E7-uiF-_xLnaKYtyAvjpTbW78bcwoD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_04,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100192
X-Rspamd-Queue-Id: 908A4258EA4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273758-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,lists.sr.ht];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,protonmail.com:email,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 04:42:43PM +0000, cristian_ci wrote:
> On Tuesday, March 10th, 2026 at 12:28, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
> 
> > On 3/8/26 4:01 PM, Dmitry Baryshkov wrote:
> > > On Sun, Mar 08, 2026 at 04:52:43PM +0100, Cristian Cozzolino via B4 Relay wrote:
> > >> From: Cristian Cozzolino <cristian_ci@protonmail.com>
> > >>
> > >> Add the description for the display panel found on this phone.
> > >> And with this done we can also enable the GPU and set the zap shader
> > >> firmware path.
> > >>
> > >> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> > >> ---
> > >>  .../arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts | 80 ++++++++++++++++++++++
> > >>  1 file changed, 80 insertions(+)
> > >>
> > >> +
> > >> +&mdss_dsi0 {
> > >> +	vdda-supply = <&pm8953_s3>;
> > >> +	vddio-supply = <&pm8953_l6>;
> > >> +
> > >> +	pinctrl-0 = <&mdss_default>;
> > >> +	pinctrl-1 = <&mdss_sleep>;
> > >> +	pinctrl-names = "default", "sleep";
> > >
> > > It might be better to move pinctrl nodes to the panel device, because
> > > they control the panel reset pin (rather than some kind if DSI-related
> > > pin).
> > 
> > +1, perhaps let's rename that pin to panel_reset while at it
> 
> So, something like (plus related renaming in tlmm node):
> 
> 	panel: panel@0 {
> 		compatible = "novatek,nt35532";
> 		reg = <0>;
> 
> 		backlight = <&pmi8950_wled>;
> 		reset-gpios = <&tlmm 61 GPIO_ACTIVE_LOW>;
> 		vsp-supply = <&lab>;
> 		vsn-supply = <&ibb>;
> 
> 		pinctrl-0 = <&panel_default>;
> 		pinctrl-1 = <&panel_reset>;
> 		pinctrl-names = "default", "reset";

No, "reset" would not be recognized. Use "sleep" as before.

> 
> 		port {
> 			panel_in: endpoint {
> 				remote-endpoint = <&mdss_dsi0_out>;
> 			};
> 		};
> 	};
>  
> this?
> 
> > Konrad
> > 
> 
> Regards

-- 
With best wishes
Dmitry

