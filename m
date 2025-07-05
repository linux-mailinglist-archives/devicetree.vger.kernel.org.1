Return-Path: <devicetree+bounces-193237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B442AFA006
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 14:16:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D5167B41B0
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 12:14:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8797924BD02;
	Sat,  5 Jul 2025 12:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y/qvHEkE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EBB220F36
	for <devicetree@vger.kernel.org>; Sat,  5 Jul 2025 12:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751717767; cv=none; b=UwBUB1YiYn9LjfQrXfgMvtMYl6Ajdh/hhTLxBs/ahNhkMmWsq88F38Xr84mPKYup/vSyK2oaXTZ8i3I9ACIc0tH8oPE482voLWfsGsw5lUNFyZM5wvJS4RmY6768rrgewrcnEkhZoeMDugbF92rULb1M7JTyyUQ62ow76aZmlzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751717767; c=relaxed/simple;
	bh=zXA7z4CAURglQcD0sdU5FjGHsRA0zPjWC2fjluyU4oU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FPWBpgydR4Kf8gTXA5SbOb0RMK7kndjUCK5SAnw/oI5PIwgCIMsV2UbW6rdQ16Anl3PDinjqOdTpy8ISF2YBVVyoRqPK2bssBBnM0qGp4HFcKkdK3VcmXI9nbmz5xDDF2oBwxb+99HNCl40E8+ELoFsXCCPKXUHasOsAhvWM3aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y/qvHEkE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 565BeoH5026583
	for <devicetree@vger.kernel.org>; Sat, 5 Jul 2025 12:16:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DZskBg0KwT3zvs6x4xilopTA
	Ma1fKs/iNW6MtQwSdNc=; b=Y/qvHEkEDLVML7NMTl2jmdQOldxFH9AeSWShJCOz
	Q6pEFpd5uq/w4pnZkdY8LlxEeIbjrgbrWVCUW+tAx3WQX8iKx7Yh76FcZe7xzzrM
	j/gEe4vR0MUU76LYOU8yeD1Ci3VcRh9FAnwM8r5DYkSP4GMYLszVtMVawg+0w7r/
	QBw2yoSSYieLCkI1pX2/o/j3/CBgRSbHpibURUv5I9IMgHV1nsoO6pV84FnF2qt1
	9QdO2Cj91mE00ub0JZVitVtDcoN/VHQcZmJ2IzzpNDAIxSMAOnEhrDsoHxkOh131
	O8qfIHglvtGXDIDhjUot3NONrEGYFKBxs4T9Ti6CcSzUcg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47psrk11ha-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 05 Jul 2025 12:16:04 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7cf6c53390eso99438085a.2
        for <devicetree@vger.kernel.org>; Sat, 05 Jul 2025 05:16:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751717764; x=1752322564;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DZskBg0KwT3zvs6x4xilopTAMa1fKs/iNW6MtQwSdNc=;
        b=KwsAAj/MjppBfjPGWXbFbMSLD8eXM3bnzrDHktBDJlHxUp3Ql1KJxzNw0WEvpZfBKP
         /kCmC7zJwPcpUADxZPhDqpg8rGQw1fzNaps21GQP/N54l9NxS/2tjLZlepAwmHEybi1R
         BLwYu7wyAygdRSiCjA5k4hDA7wND+AHK0O6Wgg+meWIsa0GV12teGNmXs0Z6nnf8ghEs
         62FILzcqrfzVAmmE6If9UL2vMQbBXINBKKJFZhVxx6WgrvK/nwcHPIC+wkeGILBlQIZy
         +ahaPn+Ps94S+L1qWH+t4AscfcPlGy8sH2jdTYkK/yeLCvruupoL9GvxwnLXa5BIolSA
         BF0Q==
X-Forwarded-Encrypted: i=1; AJvYcCW9hx4Ul86nyRFCHCH5Sv5ptEPiih9ikt/PB25vDbn0rRnlMPBXfk4/Hh176KO/ulb6HkP32+WWVSzx@vger.kernel.org
X-Gm-Message-State: AOJu0YwXSYvmVITo5bkFaiJL1CMjkyxEghtK6B2E3TxezYcEQMPI6Zi9
	0X1BbJ0kwYDygGVyT2gKDM7WFDqThxxtt1y5REXdpHZyQqDfzSjyg8XaF+7+1joVHT9WWLsjV4L
	LW+30aP97UQ/W3JTJG3YDuG9XZHffq/elwMMKYH6+2Z3shifhy0YEliSn/riG8sJy
X-Gm-Gg: ASbGncvKZ9U9wO9xfk62Q3RqNcqbjXnXO4JsQGd+PIKynhaX+YjeNvcQYN+LRtmkaZ2
	whdt5DxHGhqX9ooF0Zrjpv4LxaTs2bANEpEv22k3+VBd9EJZxM/oo4zIrQI0JIhJXIQZCrRCkOx
	uv36N++UwGWck1NBmoaM9QZzpqNgJyVcawKAQyNgyHdK2MrxZznUHbHKRAR4CSHJAN2gGF1znLx
	itfGc+ri0LtT81F7FperfYhbNuWqJee3M632x1bC3AjV3bQSyremnokaXvsAKE47uG70VXLq0ip
	inJZOIPDE3f7Assfu7bfrExNR4fS5SwUFgKQ1QXOGyMQ6LABb4sN6aqZVkJ4/dr4ifsKNqQDt3b
	RVap17WRtFZqaJhZjTNx5B1oFD8VL4FcqU1k=
X-Received: by 2002:a05:620a:1b9c:b0:7d3:8ffa:f1bc with SMTP id af79cd13be357-7d5df194ad6mr647607785a.58.1751717763493;
        Sat, 05 Jul 2025 05:16:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+gQQa0CaeGQsNRfGbtyGeCjeRcczJX70+ST7EoZUozdS8AfTgykjfKP0uSxr/FF8U1oHnzw==
X-Received: by 2002:a05:620a:1b9c:b0:7d3:8ffa:f1bc with SMTP id af79cd13be357-7d5df194ad6mr647602985a.58.1751717762891;
        Sat, 05 Jul 2025 05:16:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-556384c8c42sm570788e87.237.2025.07.05.05.16.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jul 2025 05:16:01 -0700 (PDT)
Date: Sat, 5 Jul 2025 15:16:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 1/8] arm64: dts: qcom: qcs6490-audioreach: Add gpr node
Message-ID: <amnwwaoais7hpaoqb5zkkj6cd7aliufmeuwkhdrkyfc53ej6ut@yggpe53i2cvk>
References: <20250527111227.2318021-1-quic_pkumpatl@quicinc.com>
 <20250527111227.2318021-2-quic_pkumpatl@quicinc.com>
 <q6rbvbvejugioon6l23nmmzeue7l4bgtlaf44o3a4krj3lytjp@p3y6opl7vs25>
 <74793074-19ee-48f3-b502-8d970b9f50af@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <74793074-19ee-48f3-b502-8d970b9f50af@quicinc.com>
X-Proofpoint-ORIG-GUID: 7yK6-gSYe1icWNAEBOmBDQ6FPsyBxqUx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA1MDA3OSBTYWx0ZWRfXyuh6pS36fxmC
 JVgla/H2+cFVgC4F/lDrkvWqKBZu5RrLNOjnpKjnuHfRyCEkx+5l6PFm5f32lZzyWZLhRoITLTV
 iTUBz+8ciuYFGBkJeqHyoJrk2XSyE7hom2E/c97pl2Mv6gS4b6NOoIm0ywLqHw8g+2xs9jJfAdg
 hNW3hSz/tcaA+oKjrkTjLf4K92rhFFSGWYUhGx9+6pos0x8mRA5zOcu09Br2R6CF3f7stgf7HOo
 JGiGBdGJMFmCHcKGFmV439HIut1660MvxNLTGBcBfPJnAwXJj3ZeAyCCRMLiK78xG3OWoiQ15nd
 XwTzYm5bfkxwTgzhptn8XCXKr7PEKVKze+buTyDpzTXDR8hAmgAtb4lyFDRcBqlKHA47dZM5hug
 tAs9GSwMM/BhNvM4AyvxiTEslC7Ih6Vvotxi1de0hqOZaRvWGBjssdIVhCtEtQr1FbUWhWOm
X-Proofpoint-GUID: 7yK6-gSYe1icWNAEBOmBDQ6FPsyBxqUx
X-Authority-Analysis: v=2.4 cv=GtBC+l1C c=1 sm=1 tr=0 ts=68691785 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=NmWXvj1GLdLyyGW07i8A:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_07,2025-07-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 spamscore=0 adultscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 suspectscore=0
 impostorscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507050079

On Wed, Jun 25, 2025 at 12:20:39PM +0530, Prasad Kumpatla wrote:
> 
> 
> On 6/18/2025 2:15 AM, Bjorn Andersson wrote:
> > On Tue, May 27, 2025 at 04:42:20PM +0530, Prasad Kumpatla wrote:
> > > From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> > > 
> > > Add GPR(Generic Pack router) node along with
> > > APM(Audio Process Manager) and PRM(Proxy resource
> > > Manager) audio services.
> > > 
> > 
> > This should talk about the choice of adding a new "-audioreach.dtsi"
> > file, and should cover why it wouldn't make more sense to add the
> > opposite of this change in sc7180-trogdor.dtsi.
> 
> Ack
> 
> > 
> > > Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> > > Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> > > Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > ---
> > >   .../boot/dts/qcom/qcs6490-audioreach.dtsi     | 53 +++++++++++++++++++
> > >   arch/arm64/boot/dts/qcom/sc7280.dtsi          |  2 +-
> > >   2 files changed, 54 insertions(+), 1 deletion(-)
> > >   create mode 100644 arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi b/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
> > > new file mode 100644
> > > index 000000000000..29d4a6a2db26
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
> > > @@ -0,0 +1,53 @@
> > > +// SPDX-License-Identifier: GPL-2.0-only
> > 
> > We can be more permissive than that, please use BSD-3-Clause.
> 
> Ack
> 
> > 
> > > +/*
> > > + * qcs6490 device tree source for Audioreach Solution.
> > > + * This file will handle the common audio device tree nodes.
> > 
> > "Common audio device tree nodes", but not those audio device tree nodes
> > that are already specified in sc7180.dtsi...
> 
> Ack
> 
> > 
> > > + *
> > > + * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
> > > + */
> > > +
> > > +#include <dt-bindings/clock/qcom,lpass-sc7280.h>
> > > +#include <dt-bindings/soc/qcom,gpr.h>
> > > +#include <dt-bindings/sound/qcom,q6afe.h>
> > > +#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
> > > +
> > > +&remoteproc_adsp_glink {
> > > +	/delete-node/ apr;
> > > +
> > > +	gpr {
> > 
> > Glink only consider available (status = "okay") nodes, so if there's a
> > even spread across AudioReach and not, we could even move this to
> > sc7180.dtsi and mark both status = "disabled", and have the appropriate
> > one enabled for each board.
> 
> I am trying to add apr and gpr both the nodes under glink-edge, but yaml not
> allowing to add both the nodes.
> 
> Facing yaml errors, it's accepting apr (or) gpr only one subnode.

It should be fine to add both nodes as disabled and select corresponding
nodes only when it is actually implemented by the platform.

> 
> Please find the error logs for reference.
> 
-- 
With best wishes
Dmitry

