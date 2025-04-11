Return-Path: <devicetree+bounces-165876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F79A85C4B
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 13:54:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DAFA81B653C4
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 11:53:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B644293B7C;
	Fri, 11 Apr 2025 11:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z3C7J8yl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E6C221290
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 11:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744372367; cv=none; b=dIaKxf5rVr7C5YRh/CQDspybI9hTRUaCSgBTPYmU7nFCgqd65gxQ1pDqZUDb+QhdvkSdpaBDsxzqeYKwbpXr+FkMBQ3Yl/sLmQgCHhE1JkNn9TwrCLGmyxQbOO9s9VlwbKrFeWG9h5tvLJZo1FE6F/gr9UA+v/k7A1txJdUQ/8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744372367; c=relaxed/simple;
	bh=vwpX1q4Ujg3po8plh4NQpTgu9czhWB4GY6TNGOxxs9g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gaKXOAzO/O6jYMDVcw4QJ/V0TQ8t6xd5dk9b9F35emiYTZfdWxJFAqqKcfyen3SOzQgl1LzjWnNQOlFdVCFMELzyiWN5fhdzF0ha1QIBfadHpE1GyF6Cmx9PZTCYA9qUawjO3PvCz8UPa8W1/u+mLcDHaNVf7XYopA1ivQO2hpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z3C7J8yl; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-aaecf50578eso345234866b.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 04:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744372363; x=1744977163; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qgvjinvBG3bJQ+nsqmurv+BRzfZaWq/ckLB+kMTtLh4=;
        b=Z3C7J8ylD1cAX2yTzSc/rkFjQPkUAgpsJNinRdZeRaQdGoEICkG+inv5lp22R/UG4+
         OOhE5joC5nWU866s93VOCesEOuLiRSC6UGDkGaFk/5wU6zToN7czWjoQtEimDYYtYFk9
         1sTZV+PKKEgEafbXioPfliL5Y7qcjYKwQmeiG5Hu0noNXBxgNDPSIgOzr4YK4cQy1ue2
         Bfc+RXt5W0bTzp+STLc7yEUWxlYhnrMxXQKvzj+M0QKMJ2ggL/wp9RtELni1QGH7D4lw
         F+ODX9OD/KlQEPNy6rU/Q/f3dy1WAJgnG9PDcyqOlycB8QBAZvdBLmOz4LHF0ouZCGlk
         g1Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744372363; x=1744977163;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qgvjinvBG3bJQ+nsqmurv+BRzfZaWq/ckLB+kMTtLh4=;
        b=ntEq4Xqhl+fpsxMhz3e1ku1xy/o0HeJ3GeVqJIvYDelbNZEg4c9xybDBnMNEZ7pinl
         tDLXJF/MJpW2SayBY8X22+C6XTpzvkmwFO/tWJUq2Gi3kZl56jQ01OZJWt5PYriRXqHR
         sup/DMNDlj0SULuC9bzhe0anl9vJNptqpIDphnr+Syz9fZIbs2X7XQ4pkdtafmZy+mhr
         wqrfhqHe67324wdO3irHfcY0Rw++5vWoDotmdw1fHUOUA+qgnYlg/P+lulRi+LyMy9mj
         GXf4nhAaXXVp4udxbJ9ZOUggvSkHEN//5/x48MB1p5ABis5UZpSBp+46tyMeo4zIlsRZ
         whiA==
X-Forwarded-Encrypted: i=1; AJvYcCVxQ4j46EwGd6hkFryzTKLBDnQZD21J5e111ZvkCo138WRvxucH1zyNFsI/RY+U5zlqygrG83PBQ4uf@vger.kernel.org
X-Gm-Message-State: AOJu0YybAvICZ64KKVX79JQrX72Ma49TCFb3XdkVt1QDXu8evkVbeTZ8
	lDlFqIo+1eSk0WCJ+ehlK3NFD/t8BcPZTXwc3Dy41hd0LdrDHg3ItN5KO4VFix0=
X-Gm-Gg: ASbGncve9B7pfi6AuDv1IK71gSToYFPH/wkDSDjOUF0KfezLWQKFxT6YpyvCCM0iGs4
	wQCuavq86h7cA/j4Crdmvh7Sl18DDPnX++++HZqckqUXiDa4eH05iUbZJsbN/ID7C1YmxZsg9cR
	IvPGXI3JaJOAeQI80nKhTBXe0RmlCWpe/P+kOHzn9OtOGx8ksqMfre0MUGF5VXF14xJON+ajaSR
	eK6JyFEK1Rif85nqlwY+6YCqJil6OitoMMVUzucDAbv5J1K+M6QurrrrHXuL/0wskVYU0MmdsiI
	ASwKoyUgik5z3ow6POfdERBIQw+KTX2Zl7CSnhKkQTVvhfIyga6G
X-Google-Smtp-Source: AGHT+IH+LWPoU84X8ysff1deH8jcJsCgjElpBt2zbdN/luwXFdblLscbBN3r7R5W4Yr+6Ju4WOQH0g==
X-Received: by 2002:a17:907:9810:b0:aca:b720:f158 with SMTP id a640c23a62f3a-acad348a128mr227057066b.13.1744372363524;
        Fri, 11 Apr 2025 04:52:43 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:9d85:9567:3e11:a24d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1bb3115sm428043366b.20.2025.04.11.04.52.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 04:52:43 -0700 (PDT)
Date: Fri, 11 Apr 2025 13:52:38 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: jens.glathe@oldschoolsolutions.biz,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: x1e80100-hp-x14: add
 usb-1-ss1-sbu-mux
Message-ID: <Z_kChvolKDp2JAcS@linaro.org>
References: <20250410-hp-x14-v2-0-d36414704a0a@oldschoolsolutions.biz>
 <20250410-hp-x14-v2-1-d36414704a0a@oldschoolsolutions.biz>
 <Z_j8M2Q0J3LuANAF@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z_j8M2Q0J3LuANAF@hovoldconsulting.com>

On Fri, Apr 11, 2025 at 01:25:39PM +0200, Johan Hovold wrote:
> [ +CC: Stephan ]
> 
> On Thu, Apr 10, 2025 at 12:07:28PM +0200, Jens Glathe via B4 Relay wrote:
> > From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> > 
> > The usb_1_1 port doesn't have the PS8830 repeater, but apparently some
> > MUX for DP altmode control. After a suggestion from sgerhold on
> > '#aarch64-laptops' I added gpio-sbu-mux nodes from the x1e80100-QCP
> > tree, and this appears to work well. It is still guesswork, but
> > working guesswork.
> [...]
> > @@ -1424,6 +1451,30 @@ reset-n-pins {
> >  		};
> >  	};
> >  
> > +	usb_1_ss1_sbu_default: usb-1-ss1-sbu-state {
> > +		mode-pins {
> > +			pins = "gpio177";
> > +			function = "gpio";
> > +			bias-disable;
> > +			drive-strength = <2>;
> > +			output-high;
> > +		};
> 
> This is more of a question for Stephan who added this to QCP [1], but
> why is this mode pin here and what does it do?
> 
> It's not part of the binding for the mux (which indeed only has two
> control signals according to the datasheet) so it looks like something
> is not modelled correctly.
> 

I'm afraid you have opened a "can of worms" here. :')

On the QCP, there are actually two of these muxes chained for each port.
One of them does the orientation switching that we are describing here,
the other selects between routing SBU to DP AUX or USB SBTX/SBRX. I'm
guessing this is meant for USB4. Given that:

 - We don't have any support for USB4 on QC platforms at the moment.
 - We're not modelling the USB4 stuff for the retimer either(?).
 - We have no clear overview of what/how to model for USB4.
 - The ports without retimer aren't advertised with USB4 support (I'm
   guessing the signal quality is not reliable enough without retimer).
 - The gpio-sbu-mux driver doesn't support shared enable-gpios.

... we just went with the tradeoff of forcing DP AUX mode here by
setting a fixed state for the second mux. I'm not sure if the other
configuration is even a valid use case for the ports without retimer.

A comment about this would have been nice, but I didn't think of that
anymore when cleaning up the patches. :-)

Thanks,
Stephan

