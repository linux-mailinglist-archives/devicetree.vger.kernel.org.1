Return-Path: <devicetree+bounces-128288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 715669E84F1
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 13:06:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56AA5164920
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 12:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60070146D76;
	Sun,  8 Dec 2024 12:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HjadUx1o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E46142624
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 12:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733659563; cv=none; b=YASnyhPuOkK1EombwgBRT+MjC3J6KxWbtwdSROl7vl8pDFVkQ/50wW7DM1AxjPSQZ+kgg1kYrIfNQ99+yiIH21Vfx0Q5ezt7knUHx4dowLh0IBgVPjJ8P0z7gAeA8AI8QqbWDksZOJEcJ7Myz7L4Nmlud4t1Oj8PzdrsY0XGvf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733659563; c=relaxed/simple;
	bh=7OLu/I3KbdAmUn3E2jNeRFtg91yq17Itmd5TAN+jdFs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QW3apPR1Gawe1AdlmYzIvWM7TE8EJDLGmZ4JZCpTLTAeXwWdvKwOf0Nr5BdJiqvrF3W4bg+geTLZ+EJMvupvycYfMiIzIJ0TYh6qmw1dbBqL6EHXdTgyUS1nBK/Yldc58IwthSWa/csDYf9oYpMmeE+wmH/XYdAs0gufGZMr5EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HjadUx1o; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5401c52000dso237729e87.3
        for <devicetree@vger.kernel.org>; Sun, 08 Dec 2024 04:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733659560; x=1734264360; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Lx68hB7Zpl0dAySaNA/WYlqeVEbWVfGCTLK0VrOdlAY=;
        b=HjadUx1oRbUREzkeK2E4143dNrFG+BRiCMGdRFjk73bGv0xsYZt9pgPfMVQ2FApvAR
         AObJIr10VQe8aBv1vF1us3et8j07o5d19poJb/tFA3h2jAnXg9rpPmL1nCEtV011IJzU
         iJXw9kEfet9c/irdnTZYLInlWNo4OYWUmD2DzsqZxUu5RXUI90m3PGG4gNlVj5+v2XMX
         nek2VCUVVt/n1fSRPt7YLURN78GA5PJwwIP6/drgHA57ziYu9O0YGEg/wx3CZkjmfpPZ
         ivIjOblGvVk3J86mBnekohqNv8pf1/HTe1hN/22gmtFkfLy96TVkZP+rrMUWMl8i+Ijr
         jvhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733659560; x=1734264360;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lx68hB7Zpl0dAySaNA/WYlqeVEbWVfGCTLK0VrOdlAY=;
        b=pIOFHma39uiDgrfC0J4ouMHg/QUEwFqTW731RNiAf262R2iAU0tc5wpAKLcUE3JWMV
         0kiNM7++PH3FYhgWDjcsASgTP6qp9tcKFBzaQQ+ew7OXKNdqMjzME0b70Do/Cz3b6yNJ
         6PG3hx+2Gd+4j/2IB1cdeSdlxeOIHfBvDApdMVKVWPU6KU+5Dfo2psMKemnNjnK4Ifdb
         0S7TfjCkdIg1WZofJBIjDAisyVWepttQXIQ7HCVfP3cz9phaUOnxwNKPgh9hQB9x5aFW
         Qh2LSb/NlK/nK/eFfMIYQ7/PFNnjLtf1avEhjxRA0wGOgeDp/+DCEJC7RVOfuG2wjckz
         ecuA==
X-Forwarded-Encrypted: i=1; AJvYcCW2btscCoFlO5dZGHjjMyp2H63khYhiYGkKs9cmHa35s4nBys2zpNbOly8W5L5zFl9rgOek5EbrdK/x@vger.kernel.org
X-Gm-Message-State: AOJu0YzEIVUrO6Zc8U8piHi/vQ5rbL46bIXVM3MxJpb+X+VP1FC7eT63
	xPPgaMZrLbQXWAoHo0T6pSSyeqXRXrJPLpOJF6QxeCbQVUHhZEoSe1euqY6GCpw=
X-Gm-Gg: ASbGnctizh7iF5OFFWtrcl1rEfrnGggspFTWKv215IPF14LlxuarplMARw58QaEj6Ly
	8HtwFzTOltvdvbf8kGpXiXfaRt7qUxk//ZyqA17fjbGczCcF5NY4HlxLMJqoZ21Ov23j6zkR2Rq
	zPeUxRph0xdW9Kz8N/PqsPn4/jsNdm5ZTJlF8Bdaw1v6dcgllEFNUH6C5xLRQjJIZJxRZSNKr5V
	aR7on94FXUhxPYMVsPjDwI1NvMS2Koz/aUnGiszjsNo4FcJERVOoQxCGPajAM/eQxVm/LKN2VOG
	dQu6a3/MkNE/99WrMUleb5Mp/oRmDQ==
X-Google-Smtp-Source: AGHT+IGvsRQ2B7XobCDNbx1+tDzWDsM8MW8qgWQNqGXtl3/Y/aZoodCtsatud1RQBz8SZrVJpchqVg==
X-Received: by 2002:a05:6512:3988:b0:53e:df2b:df25 with SMTP id 2adb3069b0e04-53edf2be017mr1390532e87.16.1733659559586;
        Sun, 08 Dec 2024 04:05:59 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5401a26babesm304562e87.11.2024.12.08.04.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 04:05:57 -0800 (PST)
Date: Sun, 8 Dec 2024 14:05:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Janaki Ramaiah Thota <quic_janathot@quicinc.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Bartosz Golaszewski <brgl@bgdev.pl>, quic_mohamull@quicinc.com, 
	quic_hbandi@quicinc.com, quic_anubhavg@quicinc.com, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 2/4] arm64: dts: qcom: qcs6490-rb3gen: add and enable
 BT node
Message-ID: <hjui7cn4iuo4id2q4mmqx2i7c3eyu6ae43fcft6psflypb3aya@ia5i5s4ya45e>
References: <20241204131706.20791-1-quic_janathot@quicinc.com>
 <20241204131706.20791-3-quic_janathot@quicinc.com>
 <pzkijkdswskaq6232uldapz3b6v6zplif7uah24iwq3ymlezft@skbcy2vod3c5>
 <53d44689-798e-4b5f-a0f1-8a39bea2f19b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53d44689-798e-4b5f-a0f1-8a39bea2f19b@quicinc.com>

On Fri, Dec 06, 2024 at 08:15:35PM +0530, Janaki Ramaiah Thota wrote:
> 
> 
> On 12/5/2024 4:29 AM, Dmitry Baryshkov wrote:
> > On Wed, Dec 04, 2024 at 06:47:04PM +0530, Janaki Ramaiah Thota wrote:
> > > Add a node for the PMU module of the WCN6750 present on the
> > > qcs6490-rb3gen board and assign its power outputs to the Bluetooth
> > > module.
> > > 
> > > Signed-off-by: Janaki Ramaiah Thota <quic_janathot@quicinc.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 165 ++++++++++++++++++-
> > >   1 file changed, 164 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > index 27695bd54220..07650648214e 100644
> > > --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > @@ -1,6 +1,6 @@
> > >   // SPDX-License-Identifier: BSD-3-Clause
> > >   /*
> > > - * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
> > > + * Copyright (c) 2023-2024 Qualcomm Innovation Center, Inc. All rights reserved.
> > >    */
> > >   /dts-v1/;
> > > @@ -33,6 +33,7 @@
> > >   	aliases {
> > >   		serial0 = &uart5;
> > > +		serial1 = &uart7;
> > >   	};
> > >   	chosen {
> > > @@ -217,6 +218,63 @@
> > >   		regulator-min-microvolt = <3700000>;
> > >   		regulator-max-microvolt = <3700000>;
> > >   	};
> > > +
> > > +	wcn6750-pmu {
> > > +		compatible = "qcom,wcn6750-pmu";
> > > +		pinctrl-names = "default";
> > > +		pinctrl-0 = <&bt_en>;
> > > +		vddaon-supply = <&vreg_s7b_0p972>;
> > > +		vddasd-supply = <&vreg_l11c_2p8>;
> > > +		vddpmu-supply = <&vreg_s7b_0p972>;
> > > +		vddrfa0p8-supply = <&vreg_s7b_0p972>;
> > > +		vddrfa1p2-supply = <&vreg_s8b_1p272>;
> > > +		vddrfa1p7-supply = <&vreg_s1b_1p872>;
> > > +		vddrfa2p2-supply = <&vreg_s1c_2p19>;
> > > +
> > > +		bt-enable-gpios = <&tlmm 85 GPIO_ACTIVE_HIGH>;
> > 
> > Doesn't WCN6750 also have SW_CTRL and wifi-enable pins?
> > 
> 
> For Bluetooth, these pins are not needed. We have verified Bluetooth
> functionality, and it is working fine.

You are describing the hardware (PMU), not "a part of the PMU for the
BT". Please check if there should be a wifi enable pin and adjust
accordingly.

-- 
With best wishes
Dmitry

