Return-Path: <devicetree+bounces-77896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C703E91049A
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 14:52:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B247B1C231BC
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 12:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D78751ACE6C;
	Thu, 20 Jun 2024 12:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B5Ox6D7i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E1146BF
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 12:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718887962; cv=none; b=PynUHUZXmlu5s3f8tfoKArGKTjpO+nbKjk8hjos6HsE+hyX/unsXjXXuCIEqGU6iyhZf5PtS2MChwwHPSQ3Irp+s+7XoGmhG3tsCZSoIP07/iwlLgyG3/WSBnzQownGUnu2S0A/c1DNyi61jokTi6OAMoWRj86+C/3OdlavRSds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718887962; c=relaxed/simple;
	bh=BJWaKsUqKFaNc6rmzn7Kb9q3t1NJM450x5LshY3v8aY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qf+ArWWMbmDns2AyHoR7lHZaJs+3GGcpvr+ydThQ+MsJgE/gWxgXZG2At9dyTZi7o7++N64sJnbqrL+NaI48wx9xwAEByXXRza0GgDE37FlWZMO4uxUm0WtbuTEeqHx3Vekh1e67dx/sZzF1S1nHYuojXLULYR65tgdUQfpcFTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B5Ox6D7i; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4217a96de38so6662495e9.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 05:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718887959; x=1719492759; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ykk8VSXa2B9f9Rl4fXDSJSfLpyccYa1pxr5sqjpV2O4=;
        b=B5Ox6D7iznAJJd+CgoTl7FTlpzf+6wSfsqlwQJCxA8WiLmeWUP75ZFw3aShQVkhcN9
         HZSSOkNirhgf9oHsXFPitWhmN9Me/HVqFGki1EQfVreNR7SCkyEDw5HwGWDlQCqEQqHg
         hJwfsUm/xWQUNDv6+Y9gvf3mHbQhNEbqCRKclFaom8NOHq980Uoa+UyRv1rsilqL0ajt
         Ljpoe3appovSU2GdJvLKvG+TtYz+BO8MpzCpOtqsxIkbS7aR8KwxpM2bP9hlksjnBvXE
         llVOJB/07/dkiUGpwy5p2NFHp3a9Wz6bkZ4hhsy6rPBT4iGfBWALOzlYtbNUqg/UJaWk
         NNXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718887959; x=1719492759;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ykk8VSXa2B9f9Rl4fXDSJSfLpyccYa1pxr5sqjpV2O4=;
        b=Y6fWz9cnKD0NHceENftOTs/OcwDbTe4dHJke0Ens0Mhnrky5CHgxflWdiyIAAfPrzF
         pXJkaKlpAKZ0NlsioxxuX6sWwH47YKWMMh7jCxCh/0qyclUKZNmrFvVVjAheRRR7hmms
         XQk/nA3OSJKd26wxB00s2X2Y8U/uXshgEwDmZiDtwXst+Pjwd0wfgljBQwlg/mozNd84
         X/YsnobZ/uaCR6251BvYu6uUN1916zbQOz/4Oa/52xYKh5lHGPPlNS4MVwqTsmg3C1zk
         DQlq/Xme6axo8ztFBHMNNxp8Ds2FKMcCy+hNxbT42kCWxFY5+tDPdadAR5NfgXykocz1
         nxaw==
X-Forwarded-Encrypted: i=1; AJvYcCUj4cmtKC7DJ49QuCng0HHFfnl6mRPbuo0W6EoITeu/UZw1AInfHW+0IXC3Hi83yYBnzenfoXWah90+WLe8PSimSaQ3R3c+EwRNnA==
X-Gm-Message-State: AOJu0YxVyvafr6G92H5IqkJnn8h3t0tqni0epZotD2VuXRAB33YGRxIb
	I9Eww6xTRFvZJebSdnKy1sqlbc+tXl0FiryPlJg+ZpUO1e4NX0DghAZVi1/KVjg=
X-Google-Smtp-Source: AGHT+IFzcSaO+VXSfnXhvIYTKpmX2B/Ljg0Y3EEcfI2J1GLNZshG3lH32rEtoaDR0lqk22PNJ6tcmQ==
X-Received: by 2002:a05:600c:6553:b0:421:7f4d:5280 with SMTP id 5b1f17b1804b1-42475184107mr35289375e9.21.1718887958525;
        Thu, 20 Jun 2024 05:52:38 -0700 (PDT)
Received: from linaro.org ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d1e38dcsm24053485e9.36.2024.06.20.05.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 05:52:38 -0700 (PDT)
Date: Thu, 20 Jun 2024 15:52:36 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Rajendra Nayak <quic_rjendra@quicinc.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100: Enable tsens and thermal
 zone nodes
Message-ID: <ZnQmFFq/lCm63yuL@linaro.org>
References: <20240614-x1e80100-dts-thermal-v2-1-4d4f9effacc6@linaro.org>
 <4a1e8cc5-5d82-435d-8a2a-5fab56f85965@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4a1e8cc5-5d82-435d-8a2a-5fab56f85965@linaro.org>

On 24-06-18 13:06:34, Konrad Dybcio wrote:
> 
> 
> On 6/14/24 12:50, Abel Vesa wrote:
> > From: Rajendra Nayak <quic_rjendra@quicinc.com>
> > 
> > Add tsens and thermal zones nodes for x1e80100 SoC.
> > 
> > Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> 
> [...]
> 
> > +		tsens0: thermal-sensor@c271000 {
> > +			compatible = "qcom,x1e80100-tsens", "qcom,tsens-v2";
> > +			reg = <0 0x0c271000 0 0x1000>,
> > +			      <0 0x0c222000 0 0x1000>;
> > +
> > +			interrupts = <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH>;
> 
> These are normally wired up through PDC so that the system can shut down
> even if CPUSS is off

The upper-lower one is wired through PDC, but the critical doesn't seem
it is.

> 
> [...]
> 
> > +		cpu0-0-top-thermal {
> > +			thermal-sensors = <&tsens0 1>;
> 
> Here you have passive trip points with no passive polling, this will
> only report threshold crossing events (so e.g. cpufreq throttling will
> be broken)
> 

Sure, will add with 250 value for all cpu per-core sensors.

> > +
> > +			trips {
> > +				trip-point0 {
> > +					temperature = <90000>;
> > +					hysteresis = <2000>;
> > +					type = "passive";
> > +				};
> > +
> > +				trip-point1 {
> > +					temperature = <95000>;
> > +					hysteresis = <2000>;
> > +					type = "passive";
> > +				};
> > +
> > +				cpu-critical {
> > +					temperature = <110000>;
> > +					hysteresis = <1000>;
> > +					type = "critical";
> > +				};
> > +			};
> > +		};
> > +
> 
> [...]
> 
> 
> > +
> > +		nsp1-thermal {
> > +			polling-delay-passive = <10>;
> 
> Here you have passive polling, but no passive trip point
> 

Will drop the passive polling delay..

> > +
> > +			thermal-sensors = <&tsens3 2>;
> > +
> > +			trips {
> > +				trip-point0 {
> > +					temperature = <90000>;
> > +					hysteresis = <2000>;
> > +					type = "hot";
> > +				};
> > +
> > +				nsp1-critical {
> > +					temperature = <125000>;
> > +					hysteresis = <0>;
> > +					type = "critical";
> > +				};
> > +			};
> > +		};
> 
> 
> The rest looks okayish
> 
> Konrad

