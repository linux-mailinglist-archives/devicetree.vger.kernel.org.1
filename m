Return-Path: <devicetree+bounces-220391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA37B957BC
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 12:46:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 026541903514
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 10:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 354FB3218AE;
	Tue, 23 Sep 2025 10:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TCT5YuN5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E1C2321442
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 10:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758624348; cv=none; b=Y1vknmhp/Jhg1fAeq5uA15SG1Se0TQnb+LjE6kOVsMqOnmyHEY+vJ7ZK1lDkhUXmo7E6dspiy6eaPazx+AMNSbwAl2wbpByIlOcUzkpuJkLqf2sP/2liD7+2bQfvpwkzUgOnotCldAPuhZ6xXl+G7c9N41yyuZrS+91F6X3o084=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758624348; c=relaxed/simple;
	bh=PjjejqZd0RGPZ8fqFOaa2z26RVck3y12/S/ULOmdNqc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OYVe7+4cUfhLuKawtMy8Lf8ousKpT+gS0hLHvYGClU6HDgtoerNb56IaHJi2k4/j68oi770tfr9mufyRagA3cL6B53iOphwAOFgld+bKPb8fKQ4rKbgCoFs4FzrBw1nZ75w0eP11vD3eX15TMZVHzhna6S3RD7wDtZcn2Qn/c9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TCT5YuN5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N8HB54004498
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 10:45:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QliD1n9xy/2XCUdFKu8941e4ETR46EUUmd/ECFnedT0=; b=TCT5YuN5yyg6V5lP
	+oPpau14OqQ5ZlUfTkPDvNWoBDr2ZTf6SP0fcIUFURx7R5Irl044q0/EBTDc8bAX
	Jt/xhkAUFIQFLBDJqprwVtOllYO17qb0yr7h4X9zF/pxBFRcTsfpqTo5G2sLI4LN
	TfFkaoStJuEIYuqLxKsxlWJnu74ZEYCceuG6t7xnV32CmD3gbzqjJMHTwi3Hhcqh
	Yf19nlw13fF7+H7IBkz8DOMa5xJKkAdAS1w/qJ3qiFKxRRqamdbiDdwGWV7UDORI
	BBCdohVva9tBmBSEg8i7U0BY3oyDEWauOfC+TO8cTeblrrmjpT+8zH1V9TiUplec
	QN8wjw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnrh6y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 10:45:44 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5ee6cd9a3so110208581cf.2
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 03:45:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758624343; x=1759229143;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QliD1n9xy/2XCUdFKu8941e4ETR46EUUmd/ECFnedT0=;
        b=i5fNG680dxptmNKqcFNZ9dU8qaC9h4x2toKMXu8vFA2vypn9g5g1JN944F64AyYrpA
         wyg08aes6YnMrhq4pGgBdH4h2MS6EKpKZYkOGePYusdxExSUQfqwRdqKF7PZGsdVM0zp
         RG+YI+8X4Zz6/hPc76VW25B/JaKStnGplozagoiYHn8h10Ou/sUy7JRbIUU7bH4FXT4W
         ar+eQBSRwDBTsUsGLue+/syXyKw9W0UAlZUlyYVXCUQKU604N4gB+tWM7SZ1R1LybjUR
         2Y3GdkM6GULH11b0BUYWFj+BCacRiV1LPZMqy/XhnTMG3Apzbngbt0JayvRyhy+2RKkq
         e/xA==
X-Forwarded-Encrypted: i=1; AJvYcCUwRj6DssZ1fbCm8tGwchWiXorxKfZ797sRz5ULQe17cRuhG6aaQwBpAAscDmH5ScLc1EJCvGM/1MYJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0GuGPmQagioFErSJe0iR1voRe61+kJpV//9qcV/KkSXLtykXx
	hKmiwlVyNq6JdTtLayj0UA6jouvJalOunUI/nOMfU/oCevI89XOKQD2PaNu7bT7wkJluz9oR6vc
	91gtrwyDpz+fw7H981AZFp8QOzEtH5CnQzTZJuX7GjKbaCTDF4modPkR0Nbk+pOpm
X-Gm-Gg: ASbGncsBKx1THwKlVUwEcCiU8CYuiuHf8p6u0ty6BYMJqkcQ+px9KQ2lfUiy38nfn0R
	zHUsLxrlXlkzBjuR0rlvnqlGVoATr6z1Uvb3k627XnUlQyqIBGSkSy5h3s2gNj4GAWmSDNasxMx
	bnoVzQB/uTHhO183EtorMmhmq1i1ZB1pxTb5VLskfr2QWX02mbSyowAT7c9LSs8v3uuRiqSS4Tz
	4hhBiAZS5u9cIZrVfcvkJO65LI5gRc8hiN+MVAYjobeDPvl0I+y9aGM4UXVm6+OzhKqzD8LjOGy
	AvESi3OAsA4Nw2Drx8pFZ6tnjVkiEBa1sPL/zOqR8lS0bmYREt5IsCrt2jyqWiA3DAXrhjrffHW
	soOrsFoD1z5kTy4vZaQa3UkNrx5/O8UFEKsiJk0Fz8Omq/HpDXjTD
X-Received: by 2002:a05:622a:553:b0:4b7:90e2:40df with SMTP id d75a77b69052e-4d36708263amr20612681cf.1.1758624343335;
        Tue, 23 Sep 2025 03:45:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiYj54pkLfQJi4mBKnM8awsCwLOK/0GZu894Y6oYBprrn+tmmkltO3sOFH+V8iuDnCGbKBNQ==
X-Received: by 2002:a05:622a:553:b0:4b7:90e2:40df with SMTP id d75a77b69052e-4d36708263amr20612281cf.1.1758624342548;
        Tue, 23 Sep 2025 03:45:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57c56d475a7sm2237990e87.42.2025.09.23.03.45.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 03:45:41 -0700 (PDT)
Date: Tue, 23 Sep 2025 13:45:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 2/7] dt-bindings: phy: rockchip: rk3399-typec-phy:
 Support mode-switch
Message-ID: <p3kgqn3euumhysckh4yyqavqv5y6any5zcrgkrcg3j5a7z7cyw@lfpkla5p3put>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-3-kernel@airkyi.com>
 <eb6ogrepo5acwcj5gpdolxxyg3xrx7kz6zrbizzseqyavvitfd@cnzurelqeh4t>
 <533d41bd-9293-4808-85f3-8fb6dc8bcda7@rock-chips.com>
 <mpyfe63tzxzxyyqf4vxwmrewzeosnaftlkko7pq2ynld6u3lcz@wlpixckov4hg>
 <8396dd15-9111-4ceb-a561-6ed57727546f@rock-chips.com>
 <jm32ujhxslsx5snes4o66t2grb5uxhsaapjqahektfck66g6hb@fx6f53yojlcr>
 <dc554831-4368-43f0-b92b-896fd920e239@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dc554831-4368-43f0-b92b-896fd920e239@rock-chips.com>
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d27a58 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=ePr-TV-LAAAA:8 a=JfrnYn6hAAAA:8
 a=s8YR1HE3AAAA:8 a=KKAkSRfTAAAA:8 a=Y8DisfNwMWTW2FRaHhwA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=uGDpjx9DKq9E8W49yboe:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=jGH_LyMDp9YhSvY-UuyI:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 5eVXcUa8nYhObnOYy-ryCtghfhGUhghN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX77FPHqxxsr0s
 4FihcuZrnE+J1tB/WQPfHOY9WHFizkFdAId4Eqm2vWTjPSt0Ha5V9SBfpgpd+pkXQ1dTpzriNRm
 lz/PekIFXv/Ygd33Qy3q7wUDnUvW3AwE2gzUZVPX1rhvRL8g9+Uf9lVbkvU3Nwc7f7XgseAdiAU
 SpsvcHDrHSC6+R/NZxyBZYgXUZ0wPV9baZ3lxup8c2zCvvLoErJN+QiRQd3GF6I/jCx5OkFh29c
 p+dDyN7A5yRO9DN1K1GMpz0nt9peCe8Fd/MuMVqIWxa+gCTYe8BoehOsogROgksBvUHhF6YMGkf
 0VVLpE6jNu9wgl7NMbVKzh+fVImZQ9XC935bdKXEjBnY4rWk03Hw9Q56tX8zXWgV52cdrp20dKh
 rGuwMzNu
X-Proofpoint-GUID: 5eVXcUa8nYhObnOYy-ryCtghfhGUhghN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_02,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

On Tue, Sep 23, 2025 at 03:17:20PM +0800, Chaoyi Chen wrote:
> On 9/23/2025 12:51 PM, Dmitry Baryshkov wrote:
> 
> > On Tue, Sep 23, 2025 at 11:40:33AM +0800, Chaoyi Chen wrote:
> > > On 9/23/2025 11:17 AM, Dmitry Baryshkov wrote:
> > > 
> > > > On Tue, Sep 23, 2025 at 09:53:06AM +0800, Chaoyi Chen wrote:
> > > > > Hi Dmitry,
> > > > > 
> > > > > On 9/23/2025 9:12 AM, Dmitry Baryshkov wrote:
> > > > > > On Mon, Sep 22, 2025 at 09:20:34AM +0800, Chaoyi Chen wrote:
> > > > > > > From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > > > > > 
> > > > > > > The RK3399 SoC integrates two USB/DP combo PHYs, each of which
> > > > > > > supports software-configurable pin mapping and DisplayPort lane
> > > > > > > assignment. These capabilities enable the PHY itself to handle both
> > > > > > > mode switching and orientation switching, based on the Type-C plug
> > > > > > > orientation and USB PD negotiation results.
> > > > > > > 
> > > > > > > While an external Type-C controller is still required to detect cable
> > > > > > > attachment and report USB PD events, the actual mode and orientation
> > > > > > > switching is performed internally by the PHY through software
> > > > > > > configuration. This allows the PHY to act as a Type-C multiplexer for
> > > > > > > both data role and DP altmode configuration.
> > > > > > > 
> > > > > > > To reflect this hardware design, this patch introduces a new
> > > > > > > "mode-switch" property for the dp-port node in the device tree bindings.
> > > > > > > This property indicates that the connected PHY is capable of handling
> > > > > > > Type-C mode switching itself.
> > > > > > > 
> > > > > > > Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > > > > > 
> > > > > > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > > > > > ---
> > > > > > > 
> > > > > > > Changes in v4:
> > > > > > > - Remove "|" in description.
> > > > > > > 
> > > > > > > Changes in v3:
> > > > > > > - Add more descriptions to clarify the role of the PHY in switching.
> > > > > > > 
> > > > > > > Changes in v2:
> > > > > > > - Reuse dp-port/usb3-port in rk3399-typec-phy binding.
> > > > > > > 
> > > > > > >     .../devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml  | 6 ++++++
> > > > > > >     1 file changed, 6 insertions(+)
> > > > > > > 
> > > > > > > diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
> > > > > > > index 91c011f68cd0..83ebcde096ea 100644
> > > > > > > --- a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
> > > > > > > +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
> > > > > > > @@ -51,6 +51,12 @@ properties:
> > > > > > >           '#phy-cells':
> > > > > > >             const: 0
> > > > > > > +      mode-switch:
> > > > > > Having the mode-switch here is a bit strange. I think the whole PHY
> > > > > > device should be an orientation-switch and mode-switch. Otherwise it
> > > > > > feels weird to me.
> > > > > I think this is a difference in practice. In the previous binding, there was already an orientation-switch under the usb-port. I trying to add both an orientation-switch and a mode-switch to the top-level device in v2. And Krzysztof reminded me that adding a mode-switch under the dp-port would be better, so I changed it to the current form :)
> > > > I couldn't find the comment on lore. Could you please point it out?
> > > Sorry, it is v1. I added an orientation-switch and a mode-switch in the top-level PHY [0]. Comment is here: [1]
> > My interpretation of [1] doesn't quite match yours. It doesn't say
> > anything about moving mode-switch to dp-port. It basically pointed out
> > that you already have two ports.
> 
> Yes, I think this can be easily changed, as long as the issue you mentioned below is resolved.
> 
> 
> > 
> > Also, I'm not sure how the current construction works: you register
> > switch and mux for the dev_fwnode(tcphy->dev), however the lookfup
> > functions should be looking for a device corresponding to the port OF
> > node (which doesn't exist).
> 
> In v1, that is fwnode = dev_fwnode(tcphy->dev) .  And dt like is:
> 
> 
> &tcphy {
>     port {
>         tcphy0_orientation_switch: endpoint@0 { ... };
>         tcphy_dp_altmode_switch: endpoint@1 { ... };
>     };
> };
> 
> 
> Since the binding already includes a "usb3-port" and a "dp-port", it can not add another new port.
> 
> So after v1, that is fwnode = device_get_named_child_node(tcphy->dev, "usb3-port") . And dt like this:

I see it now, I was probably looking at the different revision, sorry
about it.

> 
> 
> &tcphy0_dp {
>     port { ... };
> };
> 
> &tcphy0_usb3 {
>     port { ... };
> };
> 
> 
> Sorry, this looks a bit hacky. Do you have a better idea? Thank you.

No, it's fine from my POV now.

> 
> 
> > 
> > > 
> > > [0] https://lore.kernel.org/all/20250715112456.101-4-kernel@airkyi.com/
> > > 
> > > [1] https://lore.kernel.org/all/4dfed94c-665d-4e04-b527-ddd34fd3db8f@kernel.org/
> > > 
> > > 
> > > 
> > > > > 
> > > > > > > +        description:
> > > > > > > +          Indicates the PHY can handle altmode switching. In this case,
> > > > > > > +          requires an external USB Type-C controller to report USB PD message.
> > > > > > > +        type: boolean
> > > > > > > +
> > > > > > >           port:
> > > > > > >             $ref: /schemas/graph.yaml#/properties/port
> > > > > > >             description: Connection to USB Type-C connector
> > > > > > > -- 
> > > > > > > 2.49.0
> > > > > > > 
> > > > > -- 
> > > > > Best,
> > > > > Chaoyi
> > > > > 
> > > -- 
> > > Best,
> > > Chaoyi
> > > 
> > > 
> > > -- 
> > > linux-phy mailing list
> > > linux-phy@lists.infradead.org
> > > https://lists.infradead.org/mailman/listinfo/linux-phy
> 
> -- 
> Best,
> Chaoyi
> 

-- 
With best wishes
Dmitry

