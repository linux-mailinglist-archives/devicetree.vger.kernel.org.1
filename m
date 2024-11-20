Return-Path: <devicetree+bounces-123194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C94399D3A99
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 13:24:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0458EB2F7D5
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 12:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D293B19E999;
	Wed, 20 Nov 2024 12:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kPSXsvLk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087C719F13F
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 12:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732104735; cv=none; b=cVLS0av8XUziDz0zk4kWC0N0kQ6gOtx7kWSFi5k1wdv8akZJmtkmqQU+HCBqg1PCsEbLqHaKhoh1It01Ut6kJyXTn33ikSnGopTYgscFNSpWwcKCxudToGPXGjbbWHGSivPUkk1irUBs5vtORUXepQWBno8mEk15z3IBSVJGWJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732104735; c=relaxed/simple;
	bh=KdNc17Lw4LgDFyLHvb7jAfVyv6xDBZUsSTSh/I62MZM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TfnhipI1XjJW6D9ButL+AwBEHiJ9v7eCS6RTowc+NpqlsvjFs18Fn6spTICqNz3OfpQRlrIdqoCfemTqw+MIzptpB0efaM0rZy4R9aW5m7sdwKYbhfB4bADJiFU2IZAn7YNGvytOuhOXRbPM7BvSEIjwPIUdHE9W57O9mHggHCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kPSXsvLk; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53da353eb2eso6857108e87.3
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 04:12:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732104732; x=1732709532; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OMWbq/x4Nqudl4yk4SzkkQtLAFxRLITg2CsZtXN2g5I=;
        b=kPSXsvLkjUKntl+eJdYOBxwgsoMsoYSlkAub+nw4ohCgVPuzCdO6x1Z9pzV1kd0KbY
         TR+lTVNAqgyCKv+W7b8iiDubSEK66rM5kjhpTmxRZvXPtd59pjgcckUPLI21WQ3Ui84r
         Y172Zefq6RYn2owhXZx/ohMNfVg6CtvCSSldQrVz/oN8UTgF830q97RBHaGOsG4ccqNR
         c/g+QW3/FLhKm7h1kSpnO28r9BGlZAv20qO2/2m5udVhzWcJX7tlzlpURlYrG6+ZuQYT
         xnV+wRmZK3kbYKMBA4XpDLCZMU3uIXjAj7AQG1cGoRWbdvyAL+fLOOcAXdtv4prbIRPs
         D/7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732104732; x=1732709532;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OMWbq/x4Nqudl4yk4SzkkQtLAFxRLITg2CsZtXN2g5I=;
        b=lurj7NrX52o8wxVjYAt7pNnVtHAJrbCtlvKK+afRWRYjl2yGHrguG2cW3ATo5XqgKQ
         +whwNipLiB1DpjLIwUnIFaO5qs6lnigy1qjIxKSrJuOLUcPb9v8z4nb2dtU3WBbH3oXb
         oJ4v6CnsHuwJ8uIMwR2nGTSKBNIyvZ0QjoCk5JDflGWdfXdajtyiztY/ZmLDJztKs31e
         vJ4eFwvAdJVROiBd+wpziU0bgslF1NZej5m1Pohyuq9f2G33Tql4J8ZvvpmQt7HJArCC
         o8d70rR83gw4mlCNZmDVdeJ2CAJAk8ouq+5YgQ2xE2Gkw37/GRdBg1YXmriajbRJDRgD
         Atlw==
X-Forwarded-Encrypted: i=1; AJvYcCU2FmeISHLfX1zYZCFOUtNSFYNFQPogm6sMHIfk2qKovolNZRjYAUROQuDwdJZOqj8UULDwI1Ut4iJy@vger.kernel.org
X-Gm-Message-State: AOJu0YzBqPcwCssjjumRX10C+EeOrwO3MkM2CpOrppqIQY7Br6Wuc6sC
	Nc8qctVpwjPaBnezgoT4bfqHwxeoJpQ3NMKhSYLWgc95VlW93302seEOGmxEvU0=
X-Google-Smtp-Source: AGHT+IH9ECfqG+ol7wTxDpRhbAEgdEH8XOGngWTxcGWbNfF9wd7aRWWeuvmmZ0Cg+UuHPZb04xGsTQ==
X-Received: by 2002:a05:6512:3c88:b0:53d:a504:9334 with SMTP id 2adb3069b0e04-53dc13637d8mr1683756e87.44.1732104732148;
        Wed, 20 Nov 2024 04:12:12 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dbd4672b5sm616545e87.137.2024.11.20.04.12.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 04:12:10 -0800 (PST)
Date: Wed, 20 Nov 2024 14:12:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com, quic_abhinavk@quicinc.com
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: sa8775p-ride: Enable Display
 Port
Message-ID: <dq5sikwfoj2uov3qi66ltn3h4wdohqtvr4p6h7gqn7sfk4yccx@btawu7iqg567>
References: <20241120105954.9665-1-quic_mukhopad@quicinc.com>
 <20241120105954.9665-3-quic_mukhopad@quicinc.com>
 <lkovymvjsbd44v2huij7paikvnmo7i7rrmkmvpha2wn5sc4hr3@ppr2dgvhzy6d>
 <a741b71b-af04-44aa-9e08-a3f852b8a801@quicinc.com>
 <qpdponpaztryzacue5vtythr4b4cu6fohmgiwlzredm7ky7caw@eose6vpy4e7y>
 <4da87d98-823f-4781-b138-c6f6caae38fb@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4da87d98-823f-4781-b138-c6f6caae38fb@quicinc.com>

On Wed, Nov 20, 2024 at 05:23:24PM +0530, Soutrik Mukhopadhyay wrote:
> 
> On 11/20/2024 5:13 PM, Dmitry Baryshkov wrote:
> > On Wed, Nov 20, 2024 at 05:05:50PM +0530, Soutrik Mukhopadhyay wrote:
> > > > On 11/20/2024 4:42 PM, Dmitry Baryshkov wrote:
> > > > On Wed, Nov 20, 2024 at 04:29:54PM +0530, Soutrik Mukhopadhyay wrote:
> > > > > Enable DPTX0 and DPTX1 along with their corresponding PHYs for
> > > > > sa8775p-ride platform.
> > > > > > Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> > > > > ---
> > > > >  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 80 ++++++++++++++++++++++
> > > > >  1 file changed, 80 insertions(+)
> > > > > > diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> > > > b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> > > > > index adb71aeff339..4847e4942386 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> > > > > +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> > > > > @@ -27,6 +27,30 @@
> > > > >  	chosen {
> > > > >  		stdout-path = "serial0:115200n8";
> > > > >  	};
> > > > > +
> > > > > +	dp0-connector {
> > > > > +		compatible = "dp-connector";
> > > > > +		label = "DP0";
> > > > > > Thundercomm's SA8775p RIDE platform doesn't show such a
> > connector. At
> > > > least not on a device advertised on the web pages.
> > > > > Are you referring to this product in the Thundercomm web page :
> > SA8225P and
> > > SA8775P
> > > Ride SX 4.0 Automotive Development Platform ?
> > 
> > Yes
> > 
> > > For this particular product we
> > > can see
> > > eDP 0/1/2/3 serving as the dp connectors.
> > 
> > Please correct the labels then. And also please mention why eDP2/3 are
> > not included / tested.
> 
> 
> Sure, we will update the labels in the upcoming patchset.
> edp 0/1 corresponds to mdss0_dptx0 and mdss0_dptx1. We have validated only
> these.
> edp 2/3 corresponds to mdss1_dptx0 and mdss1_dptx1, and these are not
> validated,
> as already mentioned during the driver changes for the same.
> Should we mention the same in the commit message for the upcoming patchset ?

Yes, please mention this in the commit message for this patchset.

> > > > > > > > > +		type = "full-size";
> > > > > +
> > > > > +		port {
> > > > > +			dp0_connector_in: endpoint {
> > > > > +				remote-endpoint = <&mdss0_dp0_out>;
> > > > > +			};
> > > > > +		};
> > > > > +	};
> > > > > +
> > > > > +	dp1-connector {
> > > > > +		compatible = "dp-connector";
> > > > > +		label = "DP1";
> > > > > > Same comment here.
> > > > > > > +		type = "full-size";
> > > > > +
> > > > > +		port {
> > > > > +			dp1_connector_in: endpoint {
> > > > > +				remote-endpoint = <&mdss0_dp1_out>;
> > > > > +			};
> > > > > +		};
> > > > > +	};
> > > > >  };
> > > > >  >  &apps_rsc {
> > > >
> > 

-- 
With best wishes
Dmitry

