Return-Path: <devicetree+bounces-128349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C6A9E86FB
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 18:15:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11FD1164434
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 17:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D00C18B495;
	Sun,  8 Dec 2024 17:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vyzlni3H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F7418A6C2
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 17:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733678105; cv=none; b=TRZfiK4MvpQenCLjU6kY8za0imphgTJXm04ChvKzYS8CYrkQliYTOXvcrR+7Dlzo1QUHRSW816ZThigHg9lRECPutmAvG862t2Dpk3/NdKqKglxjd/sos8CfbnPj304tlEx1sARc8mkAhLYm6zG4g0Oy1/vZ5UCmefi4VBNjEww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733678105; c=relaxed/simple;
	bh=CNbRGW8g8fcfrwiNfo+C/cJDf1YMo9RhfdZTo8iq2f4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZshP6rv6hyLd1um5+Um3CGIzjKJJ6ZjxnQuoOTxxOYtA/fDs2vzFXX0JJmNCQSUyZkGNA0Sm4R3G6YcUqmhYBTAUsbSPlfrJ9nJU8JZgvfgAlAOxGZcn4AMRRSZa/qRWdMjsFr+T+YmEzbjrsIwQMXM1dLUuyFX8xU+4f/knkXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vyzlni3H; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5401c52000dso373781e87.3
        for <devicetree@vger.kernel.org>; Sun, 08 Dec 2024 09:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733678101; x=1734282901; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dqFplj0uMB8EInw65XscKncVTRnpYupnLVJWyaDnZYI=;
        b=Vyzlni3HuXPl2eCGwnRBEuKwFbjlFI/vrgF8eNTCVYJycVrd/JUVoSEGQsTSi0yAlD
         ylFdN/AiR1Q2ZVnQkypXxYeKcuvDkhfnwC9koj1IxOTUxB9J9/JaHGBaTqwkrpDL7PyZ
         3qweteucYvi5cFNWRHrF0hE8fJPgz65MpcuYk84oSordFKr8/lvUG4BItSY/CBAxljOk
         lnnw2NF/jwlgthtfz3RQnR/PUo2Oz7zT56988HtuvaR4dzkhwdXlIROEcma1MhvLc2vP
         +mE0p9FirEA5nwu5RzhluLVxArLjDvW/R2XXrhGlLkphq8G20P8mqbN2wVEM+heHK1m1
         jxXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733678101; x=1734282901;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dqFplj0uMB8EInw65XscKncVTRnpYupnLVJWyaDnZYI=;
        b=vjti/OuyVrMUy1XpEv4Ed25HVF+s2Ix+yoMK2i8Z7/vI1Xx9quEYH5kgkfUdDJNIFC
         55I4LBJhMnihvS5/vofASFRVROSAN4XTzrtex/rBOND3pU7zp0nAjdDC1yKDXJuZMF9d
         yt+Fzy+H7CPVqrITFmlDoUBLOfWaPlbUTNZyM761VQLUfADFlfllZCqGHlfn7Hfd6KK9
         2LAJkgUSnW85vc+rkciSZvfZ0NUqC7u7TeRQHwvWDa2MIVxQgsmmIML+sbDi1eOYpMlG
         iYGZtX7HDF1AyQU0cMjqLBD0kUwHQdPSyZXy8K2iKkhhfSEi/7wAovpEIgjxpsB6nskg
         b/tg==
X-Forwarded-Encrypted: i=1; AJvYcCVwsmfN8zytnw3GqUH80FPIPGYqsiHfTfEr3F7BuEni9LZb3WVfVN1e9ykbEARILqm7mCghrRcHQl9c@vger.kernel.org
X-Gm-Message-State: AOJu0YxNuNEbE0fpOq9fz6Kgb16aS1yGnekXxiK0IyX71RXi4rWq5Se7
	xVipBYSB3bg0XtQwvpD2nTlzlvX7eds9rGyLZy5HVeiGPp3m8vrPCJeUNHDHqAw=
X-Gm-Gg: ASbGncuJM01qA/8l7QgyC3J8FlFErZJ4lVM351492InimZS3R+wrEoHR3C8q5bQeFZG
	ZKQKRGilGTedRw73OqPZPqojKh0TnPynn4eoIxtcUUlcdHfm8MqjLUMcJ6tSkYerQ2+45ULp+av
	aQH9XWbFDoItbnqSXXcwjnw/DeaD0l5k+wtYsC3SaVqZRY3RKkAHC4VzZFLqxE2+qYko3sck9mz
	DrcsxPd0iz3VjF5NeS9XIF3kD8THeFKl6C3SnT7Akm6VAQIO2DrVjzstlRE+ah1QP55Xi3MOYce
	y6jpFQpmOH1Yb4QCTiqsXEp09eYv1g==
X-Google-Smtp-Source: AGHT+IFkgC4CY00uHOEhGCDb+lElZAAae4ogeFkb0UE5GLOs3gylH/vk0xRefOvLftIPM6MTtA/XpQ==
X-Received: by 2002:a05:6512:138f:b0:53e:1b94:7279 with SMTP id 2adb3069b0e04-53e2c2b9319mr3748035e87.23.1733678100986;
        Sun, 08 Dec 2024 09:15:00 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e33ac12fesm787746e87.108.2024.12.08.09.14.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 09:15:00 -0800 (PST)
Date: Sun, 8 Dec 2024 19:14:58 +0200
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
Message-ID: <7y6mu2mtujloctxwi5voszmeo4ctheceiypbnbslyxv34jknm4@ewkooz5fi4w6>
References: <20241204131706.20791-1-quic_janathot@quicinc.com>
 <20241204131706.20791-3-quic_janathot@quicinc.com>
 <pzkijkdswskaq6232uldapz3b6v6zplif7uah24iwq3ymlezft@skbcy2vod3c5>
 <53d44689-798e-4b5f-a0f1-8a39bea2f19b@quicinc.com>
 <hjui7cn4iuo4id2q4mmqx2i7c3eyu6ae43fcft6psflypb3aya@ia5i5s4ya45e>
 <d68907f0-15e4-486a-9077-31e8a8659e02@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d68907f0-15e4-486a-9077-31e8a8659e02@quicinc.com>

On Sun, Dec 08, 2024 at 09:42:21PM +0530, Janaki Ramaiah Thota wrote:
> 
> 
> On 12/8/2024 5:35 PM, Dmitry Baryshkov wrote:
> > On Fri, Dec 06, 2024 at 08:15:35PM +0530, Janaki Ramaiah Thota wrote:
> > > 
> > > 
> > > On 12/5/2024 4:29 AM, Dmitry Baryshkov wrote:
> > > > On Wed, Dec 04, 2024 at 06:47:04PM +0530, Janaki Ramaiah Thota wrote:
> > > > > Add a node for the PMU module of the WCN6750 present on the
> > > > > qcs6490-rb3gen board and assign its power outputs to the Bluetooth
> > > > > module.
> > > > > 
> > > > > Signed-off-by: Janaki Ramaiah Thota <quic_janathot@quicinc.com>
> > > > > ---
> > > > >    arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 165 ++++++++++++++++++-
> > > > >    1 file changed, 164 insertions(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > > > index 27695bd54220..07650648214e 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > > > +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > > > @@ -1,6 +1,6 @@
> > > > >    // SPDX-License-Identifier: BSD-3-Clause
> > > > >    /*
> > > > > - * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
> > > > > + * Copyright (c) 2023-2024 Qualcomm Innovation Center, Inc. All rights reserved.
> > > > >     */
> > > > >    /dts-v1/;
> > > > > @@ -33,6 +33,7 @@
> > > > >    	aliases {
> > > > >    		serial0 = &uart5;
> > > > > +		serial1 = &uart7;
> > > > >    	};
> > > > >    	chosen {
> > > > > @@ -217,6 +218,63 @@
> > > > >    		regulator-min-microvolt = <3700000>;
> > > > >    		regulator-max-microvolt = <3700000>;
> > > > >    	};
> > > > > +
> > > > > +	wcn6750-pmu {
> > > > > +		compatible = "qcom,wcn6750-pmu";
> > > > > +		pinctrl-names = "default";
> > > > > +		pinctrl-0 = <&bt_en>;
> > > > > +		vddaon-supply = <&vreg_s7b_0p972>;
> > > > > +		vddasd-supply = <&vreg_l11c_2p8>;
> > > > > +		vddpmu-supply = <&vreg_s7b_0p972>;
> > > > > +		vddrfa0p8-supply = <&vreg_s7b_0p972>;
> > > > > +		vddrfa1p2-supply = <&vreg_s8b_1p272>;
> > > > > +		vddrfa1p7-supply = <&vreg_s1b_1p872>;
> > > > > +		vddrfa2p2-supply = <&vreg_s1c_2p19>;
> > > > > +
> > > > > +		bt-enable-gpios = <&tlmm 85 GPIO_ACTIVE_HIGH>;
> > > > 
> > > > Doesn't WCN6750 also have SW_CTRL and wifi-enable pins?
> > > > 
> > > 
> > > For Bluetooth, these pins are not needed. We have verified Bluetooth
> > > functionality, and it is working fine.
> > 
> > You are describing the hardware (PMU), not "a part of the PMU for the
> > BT". Please check if there should be a wifi enable pin and adjust
> > accordingly.
> > 
> 
> We further checked with WiFi team. For wcn6750, sw_ctrl and wifi-enable pins
> handled from WiFi firmware/controller. So it is not needed to handle in PMU.

Please mention that in the commit message and add a brief comment in the
PMU node.

-- 
With best wishes
Dmitry

