Return-Path: <devicetree+bounces-123172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7BF9D39B8
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 12:43:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6E0F282A83
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 11:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3040B1A08DF;
	Wed, 20 Nov 2024 11:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iF7C9rj+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA381A01BE
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 11:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732102994; cv=none; b=jetSwhjtxt1M+vB888lnPYUv9TPbc16Rn08Dw4h6L0wLpz2wpNZVE4+E2RteM8718XVbv4+mDJFo3ADDK2Pglg8LQxqEoA5vgaBaTCDUK4tuIIuFcuisITjisIZGG3/4sNfEbYRD5p1B75kTCg4mpWSa5scwgHT29WvDaA4mTOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732102994; c=relaxed/simple;
	bh=RRq7JKOG2hPM79w92qiO0vq00P414StUpp6YDNpECLg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kU4LAVxquuaA+ZyfudFoe1qshEtyQWL/Bgo19dgO+lGNq3mhPjZ2No4W1fabVkxAj9fddh/cFH3KFDDu+IOSv8xWIRjt8eDBBGK0yzhETWRx2iYPk0QeJIu41tYqtgHdB88v/3yaoDXo8+YpV/GXonrG6EZf0ujSRkYPt9OSWFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iF7C9rj+; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2fb51e00c05so59752221fa.0
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 03:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732102990; x=1732707790; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VSYLa/PMHHVco2nOBDm0FbnRK7yU/MzaWdRnTC16VA8=;
        b=iF7C9rj+rlXmQNLdPnYFTgGnr+rLZ8I/ew23IwlsmTSTLWNPtx7ImhXS4Z8W3OsAPi
         ngZp7vcR6N/dCf2NFyh3ZP+xw2K9riR3MZHuF0w8csXTxwjaHRJzmHx+RcN6swj4tBO2
         tcSWodqXxuoOV8YmsY6sHPnVVFRe0dnbte9Gqi1f2PmCRQpbCMUkbCgsq/e55NcABKaF
         8A0xxYcS+V58aiE5zO/8M9A2FEKmZoMcVPCVSuvE/xtIywzMIxIxtsLmOYN6EdWBr20d
         EViu3+UQos0PU/u4NDbh4uR9Pggj/BB6R8n4PWvYehhBpKPxBQpKWf1HRwIiIwrF55R4
         KhhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732102990; x=1732707790;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VSYLa/PMHHVco2nOBDm0FbnRK7yU/MzaWdRnTC16VA8=;
        b=JbgxIESX62uRvzxAyMauoAq0hKTqUyfgj882DzJz8LPkevfNxk3EqxtPTtlWbaLFE+
         Is6ZZrzPyKYtTADLqelsPDG4KXnUXYdQJm4PiZwSeAKajuOUrkaKbkKi86vMUsNzwTbX
         gsA9K6GYTHzCwCMHIPZ0KnxYoPWQkedm63xVX7cECtEjM07BUEEDnGj+SmKzlNSRTErU
         lHdquageWzMikGiUOB7yRnXJYc14xE7CaeJ9qrLyl+PNwHCc7xGDsOZZ5rXoVJZz9S61
         kyEvdcmXfDEmE7kCI4Hw5DtvcEMgFf0KlASfF5SrNm5Xsq0ddL1oMhKhy0jHq08qpHfG
         pp8g==
X-Forwarded-Encrypted: i=1; AJvYcCXgiUvzMrAgEojsPpZW1RO+48gtDsKwkDUt+vExNCURg6zmkfbjkdXgVNasug+2u+4dBaNtU6MqX/Ss@vger.kernel.org
X-Gm-Message-State: AOJu0YzdBKQ2VAb+f7f9CISTudUyaMW0undVyxY0On0x8zzEs+p6xkCY
	oJ410z+VmfrrNNm6RHyLiICBsc++7TkmSLtc6llb1/yqW+Ti9dMVfDBSmkgOt2E=
X-Google-Smtp-Source: AGHT+IF9ZBf1+YUfdGVyh6yNIX525uxZ5nQKA7c5eh3EUqR+wIW5KU13VNtSiXYkMjcNwKphXd1Xow==
X-Received: by 2002:a2e:a804:0:b0:2ff:566e:b597 with SMTP id 38308e7fff4ca-2ff8dcbc950mr20654481fa.38.1732102990124;
        Wed, 20 Nov 2024 03:43:10 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ff81e41badsm5872951fa.32.2024.11.20.03.43.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 03:43:08 -0800 (PST)
Date: Wed, 20 Nov 2024 13:43:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com, quic_abhinavk@quicinc.com
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: sa8775p-ride: Enable Display
 Port
Message-ID: <qpdponpaztryzacue5vtythr4b4cu6fohmgiwlzredm7ky7caw@eose6vpy4e7y>
References: <20241120105954.9665-1-quic_mukhopad@quicinc.com>
 <20241120105954.9665-3-quic_mukhopad@quicinc.com>
 <lkovymvjsbd44v2huij7paikvnmo7i7rrmkmvpha2wn5sc4hr3@ppr2dgvhzy6d>
 <a741b71b-af04-44aa-9e08-a3f852b8a801@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a741b71b-af04-44aa-9e08-a3f852b8a801@quicinc.com>

On Wed, Nov 20, 2024 at 05:05:50PM +0530, Soutrik Mukhopadhyay wrote:
> 
> On 11/20/2024 4:42 PM, Dmitry Baryshkov wrote:
> > On Wed, Nov 20, 2024 at 04:29:54PM +0530, Soutrik Mukhopadhyay wrote:
> > > Enable DPTX0 and DPTX1 along with their corresponding PHYs for
> > > sa8775p-ride platform.
> > > > Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 80 ++++++++++++++++++++++
> > >  1 file changed, 80 insertions(+)
> > > > diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> > b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> > > index adb71aeff339..4847e4942386 100644
> > > --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> > > @@ -27,6 +27,30 @@
> > >  	chosen {
> > >  		stdout-path = "serial0:115200n8";
> > >  	};
> > > +
> > > +	dp0-connector {
> > > +		compatible = "dp-connector";
> > > +		label = "DP0";
> > 
> > Thundercomm's SA8775p RIDE platform doesn't show such a connector. At
> > least not on a device advertised on the web pages.
> 
> 
> Are you referring to this product in the Thundercomm web page : SA8225P and
> SA8775P
> Ride SX 4.0 Automotive Development Platform ?

Yes

> For this particular product we
> can see
> eDP 0/1/2/3 serving as the dp connectors.

Please correct the labels then. And also please mention why eDP2/3 are
not included / tested.

> 
> 
> > 
> > > +		type = "full-size";
> > > +
> > > +		port {
> > > +			dp0_connector_in: endpoint {
> > > +				remote-endpoint = <&mdss0_dp0_out>;
> > > +			};
> > > +		};
> > > +	};
> > > +
> > > +	dp1-connector {
> > > +		compatible = "dp-connector";
> > > +		label = "DP1";
> > 
> > Same comment here.
> > 
> > > +		type = "full-size";
> > > +
> > > +		port {
> > > +			dp1_connector_in: endpoint {
> > > +				remote-endpoint = <&mdss0_dp1_out>;
> > > +			};
> > > +		};
> > > +	};
> > >  };
> > >  >  &apps_rsc {
> > 

-- 
With best wishes
Dmitry

