Return-Path: <devicetree+bounces-208038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E0FB316A5
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:47:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 441C31C8819C
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2285C2E8E19;
	Fri, 22 Aug 2025 11:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V0CPMuUD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A5125B687
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755863147; cv=none; b=AyJbRVZPZFsa6B+FNW6ZsyxVqsWwxB0rxYiQJNhPp5h9Me2Xq+0UPbzMJrPSF7YFniUrBNV2fX6jbp0zH7A+J8El/sBMDW2ifgL+uiOtRYb/Gvam3q6ZC9YtxqcCySU/mfC+Dpc1B8kg93DFpKQR6hztoRwcAshygISnUZjQGN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755863147; c=relaxed/simple;
	bh=xgTcVv1+T6O/ZT0Qdiz0Je+GkcjQdQoA+CbqSo/EOtE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T3/52dIraFnzNgk0NqnydvNV5hC0rfBtF5ADmNsDTv3gST1uoNV/tPHzrWvzbHqBb8NNyS27PfI6Xz8Pw6qFFxuubZ7jQh8J2YuJifJc0jyA56Xht785wwFI6Y6POuTQY5/wwgJ1xq/B/OKkGOgo8Bspy/XSEyhUKCAV6QvrKgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V0CPMuUD; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-afcb61f6044so354265766b.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 04:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755863144; x=1756467944; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z4OUvE+/qeMt3Ot3GYxNSoy/OyQHU/DgOy4nkkkxS3g=;
        b=V0CPMuUDgp5v9MIx8aOe+jHztES54FM3r5g7tS1CT1Zg6oKaLbaqPyjmBIDCjODOWj
         oRhX0xQnMI+zZnpVtuuATMttbUwcrWWXGFnzAMM3T7KvCtgIm/QfSsyBbE+p8vtLOoDw
         ONGrdkeb8doqxJ3xhUu8Sd1loTNob7qNB9XXt5VZs8WZmuF7nZuISasZCZm2Ta+IOSY+
         VkUPxc0geZDOgpasstsepTRnkVKeKuZQnYWkbnJr2MjjiXEkYpXy7P4RJYQvDdugzBkR
         dpG5fQhSig8SA1C1nyX4io9jQVePRLLTdx1MT4fUzYPXrqTQ2aiHxckAZNaxgaAzNtvn
         UeNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755863144; x=1756467944;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z4OUvE+/qeMt3Ot3GYxNSoy/OyQHU/DgOy4nkkkxS3g=;
        b=HuE7KLdi01lvAKXB1RlemqbJAePCixeKtGVLYwG/wfT6bH3TeBxlnYJwXCmvdTf0tg
         CMrHelr4k5kMhQXkiIaBEH2YlSC/w73YUZpUcUQMXkjP44AWTBvM0EhfLPXjYv5R2XLf
         6k4WZ6Og+AnPonK43qnL3nsIGjjJdlWtY/VtamJYoIdfmbWm2hBkTZomC3pyU/eFda0x
         bx/7cX5Pr4iw/Bc78FnkUIVLVrcIj+2nPKWrQuhIGW6OXhHoDwWsAQdxs3b4pQRRqXUP
         XX0QcXvBr4mSNhOBn9yhcGaEYXzHOgHUVCAgGrfy7G4jS0SszOWX0qnQ7/ay2TKFmt2P
         YguA==
X-Forwarded-Encrypted: i=1; AJvYcCWuPco6+xiFOK5UwyvCONyDHkYVmvsl6ZgTuAZd9qJ3lLrfoxLn7OUSGGgOVLxnwCCj3h/ndWSXur8K@vger.kernel.org
X-Gm-Message-State: AOJu0YxOTFJ9qQSqAUFCiSTAnsQUho9E6hovkcWakfriIq3gs952XTp0
	Tis5E1BGKNqJo1vTJrbuPsAk9PdF0BIA60LUrUx90velZ2txIDC+CBxTBuKWsuP9qmA=
X-Gm-Gg: ASbGncsvyYAtFkcB1ubyB11tVlURDcPLQJoxkxmlW3orf5ZwgaXinEHilQ46v4sjEg/
	5NFzxq1NK55KxWyIzhkGz2lBmdki7J1yyPkw/p4YqfohiFLcmpM05EIYP5U37Q/YBj7uy8bB9K9
	2aBE/aoPjnasxF4V0ZeUplGsljnFAO9Te+tY+dsPFaoDMHKqJi9brPRDZ4rRUxr1JDDPIJzZTkA
	TXUsn3iQq3M96bYSff7QmE5hj7SVUUSTWtqoV5ED1Ri4Hr9r4IqD2DsUW03e09A66uYf5H01mfe
	35UEO53b9w0bK0XSus/VbnFg9vNOZL9SfjyePnIyPfP6Phw/MkGOkbYL35Xb0AZC/IEC/AUzfxI
	rKwolBidVJjUhwd99rF2VUZQRY4XmrT48rFLFf0PGpdan
X-Google-Smtp-Source: AGHT+IGP1JS6P3jPLucWErJ+X2vbBJZkNfA72X488Al6ZrxHQ3otij/kMnekLD+6J4EjuK4lppcisA==
X-Received: by 2002:a17:906:4794:b0:afc:aac3:6d2 with SMTP id a640c23a62f3a-afe28fcd53fmr252056366b.2.1755863143536;
        Fri, 22 Aug 2025 04:45:43 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:63f:a353:7a5a:5beb])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded307138sm590844266b.45.2025.08.22.04.45.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 04:45:43 -0700 (PDT)
Date: Fri, 22 Aug 2025 13:45:38 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
Message-ID: <aKhYYjUuOQ7H1aPm@linaro.org>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <as7pbmhfgsg3ht3s5lu25pfjjamaxyonuohkuohono3kr2mxii@posspuko4vwa>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <as7pbmhfgsg3ht3s5lu25pfjjamaxyonuohkuohono3kr2mxii@posspuko4vwa>

On Fri, Aug 22, 2025 at 02:01:30PM +0300, Dmitry Baryshkov wrote:
> On Thu, Aug 21, 2025 at 03:53:28PM +0200, Neil Armstrong wrote:
> > The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> > connected to the third QMP Combo PHY 4 lanes.
> > 
> > Add all the data routing, disable mode switching and specify the
> > QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
> > the underlying DP phy.
> > 
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > ---
> >  .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > @@ -62,6 +62,20 @@ switch-lid {
> >  		};
> >  	};
> >  
> > +
> > +	hdmi-connector {
> > +		compatible = "hdmi-connector";
> > +		type = "a";
> > +		pinctrl-0 = <&hdmi_hpd_default>;
> > +		pinctrl-names = "default";
> [...]
> > +
> > +		port {
> > +			hdmi_con: endpoint {
> > +				remote-endpoint = <&usb_1_ss2_qmpphy_out>;
> 
> Please describe the transparent bridge too. It can be covered by the
> simple-bridge.yaml / simple-bridge.c
> 

I think this isn't the case here(?), but how are we going to handle
devices where we don't know which bridge chip is used? I've seen at
least 3 or 4 different chips already across all X1E laptops and we don't
have schematics for most of them.

Thanks,
Stephan

