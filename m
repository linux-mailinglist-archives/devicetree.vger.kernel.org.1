Return-Path: <devicetree+bounces-209801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A59FB392A4
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 06:41:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05B477C39E8
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 04:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17D57264A9E;
	Thu, 28 Aug 2025 04:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O9abfwZt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D5F25B1DA
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 04:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756356085; cv=none; b=IcyuWro5+qsLejgKpAf6V07IwnzAMEdphdpd11bFC49dbeFYhvW4TREb3iPqeizgR9x2thHpiDROqnvnGurdPuaHL9qdN34HTszVCNL5fLC628X/9iGXVDeyaOZ0uZ+Bow+yN8Yd+Jtj60Hz89m789ZBDv+qdwaeG+hFNYMVPpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756356085; c=relaxed/simple;
	bh=KEPGQ36iJNY4la2Vtsyl5h73b+KhTwqD1OvCFddUR30=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V8djV2Ig0rwIhDptFsPTSxbFCQ/C3aX8p4q/RLC1T3cgKw3qvmDUybEz8Hmee9ToSryA8XHkm6rjpMFkU2LF3x1xlYAgWw8B+4jy8n/zeaF2TIfRFe2M4wibe0PmJhhW1z6bMineq0aHgCPkvqYn73gFLS6OL3xg0QYA7tKBLQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O9abfwZt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S35Fnt001814
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 04:41:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rSvxM+2fP76lLQdAFLs9nvAo
	o+WJU2TUDWvQs9kUilg=; b=O9abfwZtQNubHbT5lPWZgaJXhv0wtq9GAmoY3jJi
	EJk9sokHYwqpnUzyT2M8SGgXTLxMqd/w/2hOgF4HROS2rrlMUZxPiC4/XVGazQNC
	LTY3VmOUQzqtguhxBq2mHgYJnB/QhnPxzbLo86cpGnmL4qUyW/gf2QHAeMuouSOH
	gqk0dJmnRZobv2ElzCXQdzsqMmWs88f5V+0G0/wl+FctAZiHSQVlkKZUGD/chUuI
	6srcpO3GmnWn6M+eTmISwlraX44ZXe2xJAYfYXW/SlVoejdlyLoxuEVNHdLNajIc
	AXvpegoSgQGmsA5DSK0f7qsTTPSrlnViRI1XvJvTZlfAcg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48t47b9x6e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 04:41:22 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a9f55eb56so12314386d6.2
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 21:41:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756356081; x=1756960881;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rSvxM+2fP76lLQdAFLs9nvAoo+WJU2TUDWvQs9kUilg=;
        b=PF4LAyr06ip6ks9Yid9ScSrXojwglO93IBP8CIsjzK668lIcVEnbLf5zvjslvVJkNg
         8L/Z5TpavbVWWlPQvnnjA3mT1JjWhXmhaQWvbSBMb1zvWJSuofWNac2dB3HfY9fHB8pS
         jKOpQjJ2QIoa0nQkJm5guYV0zbKt0tW6E8ycntvciZ0QM6vB84sDmvQ/oiTRlUBoagOt
         J2aqGI/Gw1oCoN6x2IIOUr9c+Blp73utbLzGLmovHjXMFw0+B7wBCiGkoZ9A7jLotDY5
         SrmwKSi+U32riFhTl3Ogpypdm3UInxFsicztKCNURhVpVU15fxwAf6h+fQLZbrpyCrr0
         XR3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWG0Z0EDyLZJjXNvShutRa2TLW7G4dMogJYngH/4ymQ72MmtaCeLFhQysfdXWP93Wm5T2jHganndJIV@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+8lOpX5QDBkLR/nbcFIMhy8chbRV17bEOEU6M+mRfERmzM31Y
	vtGPFde5gvGDqgwsoPYVuAuxQrKxvyrcW23ghPGROZqcbwycDmEQXF6GcJZwrE3V5WdvUCaxfgl
	ZJI65cfIErMbsw9brJdxGBCXqbnD4lcUd8mE3R+/OLwbYzcjFTXYLMibhx4FXtNABxelZ8jRbqA
	g=
X-Gm-Gg: ASbGncujHKe+ipgbLHM3JxFHkZ2sS19+Labo0g4eaw4vfFeZY4VmS0dtXt23I7U0VtM
	oHkHJVueIgoRRdP3o9hp/PYf+ZkkaQ36NLPds6Kg9AOSTD4uJhMYG875ZO8tUd7X7ma8JbFUVwC
	uQ5r+WgCg8NUUJbKbamIswuTJtFGp+D9DSt+Sciw6RVIrwCxGP8LClF/cSuT092Y6CbT0x7k43B
	d5kF5wf1hwpEJ7NRrzUAx81k9wwVwj+8QRlWRp/Y0mI7pxK8RHpDcIVNFvTxaqzwkfJXrdGNxxP
	UKMctaYm6rEaus1fPpG3V/iw7BCHACUZQDk66xEaWnqKfqzyYIFLPUdYy+t+aQw3FRqJGW9SjnB
	2aEoYW2btvZQ1pH1LIzShdJahVXlA/1BOvl1pyTCedyK3zUY5W7aU
X-Received: by 2002:a05:6214:268a:b0:70d:6de2:50c7 with SMTP id 6a1803df08f44-70d971ed072mr268768656d6.52.1756356081209;
        Wed, 27 Aug 2025 21:41:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0BRxMG/COFp1TgX3a+AyHbVN7DWuZI4IOa0jOW27XlSiJaXNy+HkuW6nAZGxiL5O+zhzVSA==
X-Received: by 2002:a05:6214:268a:b0:70d:6de2:50c7 with SMTP id 6a1803df08f44-70d971ed072mr268768496d6.52.1756356080597;
        Wed, 27 Aug 2025 21:41:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e20e98fsm29438851fa.12.2025.08.27.21.41.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 21:41:18 -0700 (PDT)
Date: Thu, 28 Aug 2025 07:41:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Fange Zhang <fange.zhang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        xiangxu.yin@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Li Liu <li.liu@oss.qualcomm.com>
Subject: Re: [PATCH v7 2/2] arm64: dts: qcom: Add display support for QCS615
 RIDE board
Message-ID: <zoogyjua4l6e2bgsvxx7w26n6v2hwnp2pvkizzzsds3c6cgaag@2bvqdl2z5ds6>
References: <20250827-add-display-support-for-qcs615-platform-v7-0-917c3de8f9ca@oss.qualcomm.com>
 <20250827-add-display-support-for-qcs615-platform-v7-2-917c3de8f9ca@oss.qualcomm.com>
 <yutyrfb73wbxlweoq3mc6ezyqr56snzmznw3k6mcbc56fpfayg@3h5jwymlo3ol>
 <0c2a4877-d63b-4650-b7d4-a06a2730c73c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0c2a4877-d63b-4650-b7d4-a06a2730c73c@oss.qualcomm.com>
X-Proofpoint-GUID: Fp_yECADxOa66whLTR4qzyIqNYhm2gdA
X-Authority-Analysis: v=2.4 cv=CYoI5Krl c=1 sm=1 tr=0 ts=68afddf2 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=DN4yNuRjLBB3QJd4LzgA:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: Fp_yECADxOa66whLTR4qzyIqNYhm2gdA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI3MDEyOCBTYWx0ZWRfXwaRqbGWn6cmQ
 0Gx6EX9SwskVpV54gT912U8M3KyNopjIYqE5s4UZe+AeJyaEdJd7R3Krnponhn7QkB0BhVAHmR+
 u5PB84QN4k+U2q0l3HmEOa6kFE+0bHA5WAsjE3JQB75C6bSDCcRrEyJitFCLWQCHC1LaFa0oSu9
 +gZVxGGLqRjcs49AuLdM+ceWNLk0GyVokKl9wMaCaNf+3DoXsMg9e4vigyQAFyfrpos+z1tlZNL
 e1/oToXKLPSq6heUu7zKITCl3Iza/TsOg9Mjz0+5CE8eR5BjiwMEzI1ld3h3G7xvYcWGad6BcbX
 ym/89sO/DHljhodPU8M3hA6M5E9NhGe8BXNwxunD9YYPfGA8G+PfKf5aS/QW38y7AD2sGTf08fo
 BfgASe6b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 phishscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508270128

On Thu, Aug 28, 2025 at 10:57:41AM +0800, Fange Zhang wrote:
> 
> 
> On 8/28/2025 4:01 AM, Dmitry Baryshkov wrote:
> > On Wed, Aug 27, 2025 at 09:08:39PM +0800, Fange Zhang wrote:
> > > From: Li Liu <li.liu@oss.qualcomm.com>
> > > 
> > > Add display MDSS and DSI configuration for QCS615 RIDE board.
> > > QCS615 has a DP port, and DP support will be added in a later patch.
> > > 
> > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > Signed-off-by: Li Liu <li.liu@oss.qualcomm.com>
> > > Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 150 +++++++++++++++++++++++++++++++
> > >   1 file changed, 150 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> > > index e663343df75d59481786192cde647017a83c4191..f6e0c82cf85459d8989332497ded8b6ea3670c76 100644
> > > --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> > > +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> > > @@ -39,6 +39,76 @@ xo_board_clk: xo-board-clk {
> > >   		};
> > >   	};
> > > +	dp-dsi0-connector {
> > > +		compatible = "dp-connector";
> > > +		label = "DSI0";
> > > +		type = "mini";
> > > +
> > > +		port {
> > > +			dp_dsi0_connector_in: endpoint {
> > > +				remote-endpoint = <&dsi2dp_bridge_out>;
> > > +			};
> > > +		};
> > > +	};
> > > +
> > > +	vreg_12p0: vreg-12p0-regulator {
> > 
> > I should be more carefull when doing reviews. I thought that it was
> > pointed out already and didn't some of the obvious things...
> > 
> > First of all, the nodes are sorted. By the name, not by the label.
> > Second, there are already regulators in this file. Why are the new nodes
> > not following the existing pattern and why are they not placed at a
> > proper place?
> 
> Initially, we referred to https://patchwork.kernel.org/project/linux-arm-msm/patch/20250604071851.1438612-3-quic_amakhija@quicinc.com/
> as a reference, but its node ordering seems a bit unconventional.
> 
> Would this revised ordering be acceptable?
> 
> ...
> + dp-dsi0-connector
> 
> vreg_conn_1p8: regulator-conn-1p8
> vreg_conn_pa: regulator-conn-pa
> regulator-usb2-vbus

So... Existing regulator nodes have the name of 'regulator-foo-bar'.

> 
> + vreg_12p0: vreg-12p0-regulator
> + vreg_1p0: vreg-1p0-regulator
> + vreg_1p8: vreg-1p8-regulator
> + vreg_3p0: vreg-3p0-regulator
> + vreg_5p0: vreg-5p0-regulator

While yours use 'vreg-baz-regulator'. Why? Don't blindly c&p data from
other platforms.

> wcn6855-pmu
> ...
> 
> > 
> > 
> > [.... skipped all defined regulators ...]
> > 
> > > +	};
> > > +
> > >   	vreg_conn_1p8: regulator-conn-1p8 {
> > 
> > Tadam! It's even a part of the patch.
> > 
> > >   		compatible = "regulator-fixed";
> > >   		regulator-name = "vreg_conn_1p8";
> > 
> 

-- 
With best wishes
Dmitry

