Return-Path: <devicetree+bounces-179890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DDBAC1FC0
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 11:29:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57107A43332
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 09:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2AAA225776;
	Fri, 23 May 2025 09:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hTkBmFrr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45F42248BF
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 09:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747992581; cv=none; b=ChQn9i06idGWnqrW6hFG1AMBQXX3rvuLTYl9fbaks1ZmZFHrue6dzWOIH+MoTTFbePc1zC4My+m2mBrx5qKbbk1KOOWOXVEZ3JQrSkoUDav8GNXzV9kFjLUA3P6E63fJKteD2oyM+0ilYx1IXb4Bo4qZ8t8wpd53SQR0BMCsubQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747992581; c=relaxed/simple;
	bh=7iV0PK0XEkkXSDlRpCH9WIf0RlD/ImvYxhD6cBK3FpY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g8Zgfs1oNfqec6dWoNW7ejXIuR05S+erEb4HSDwzTCAFiScvrjKlMJiYtelmlrNJ0o24ZLn5n+OUwVlkp1HKGoB7RXBd1w2rxdXv795DsvnHcum3DX9lC8dwoZup2jy1njyOfHP/lUCswL5NKJwjm+rpXr+jmMKFK3HlbSFa1K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hTkBmFrr; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ad574992fcaso994699566b.1
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 02:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747992577; x=1748597377; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QSkMK6hpsz693rlBfw8R7EN03Okxs/CKoRdgfg9uKIU=;
        b=hTkBmFrr2Cc7PRYyj+UG+706qMcQYEyxdZ+oTCQVizgwscoFpH539pP1fT068iyyLj
         z/xuwfvFysFjM+RSHJS4v6DokZgJ1nFqXMDu86etV++yaZs5EVqFSB9Xm8pliSNCE3h/
         GdhGJMpa1vk1YowmSz4vkIrgoZ22EB/qMOM+koJeb9lgbeaQ7ghKw2tHkBX6Dm16xe7c
         iEtUI+glc4iFuYmOe7VF6bP0Pk1Wf+phaQ08wOA03DtwLr9XnHr8ov6NxQ1TVu7tRGed
         jGVbU6PCvIf+4RAMkoyp21NAPRd3dPdxvicgpVMlAfr276gYJ2GH4NAAG12MGup4rb6T
         8VAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747992577; x=1748597377;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QSkMK6hpsz693rlBfw8R7EN03Okxs/CKoRdgfg9uKIU=;
        b=B0mrwSuy6k6Mm+nUvv3QHn3qCcfj0rfBMnQveH5gUnADryfEj4UMaG2tlRwK+rOzWw
         8lHiNpmTZD+9lXfACHSRPRRY1xlNzLq/CWijRSQsZFc2ODar+q23fi8MXV3mDe23CdNU
         PJ3tizuGPNMQz9Mz+Si8cz5WC938b0/r47oaX0c28jIgjUD9ApGtEESrlABDxFQ3kGxw
         jHB7gRZDa/fNvkW79Ufm4TAlEk/e8CYA5/76MYGhQUtSl3c2VotxwHOtJ4yPEjewUukJ
         NBpw4X2t1igJM16EgctXwWMDO2VAexlaPIkB861ZMT4wwEzq/DfNxZnVOiR05cO+I3PF
         0GHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgOdwiT4CAQZ1SI5K2VRLmmOb2HSJT5AnROExJmFWcmJlt7hpmajpMxVoves6rl7m/2jP4gnnDGFCk@vger.kernel.org
X-Gm-Message-State: AOJu0YykxRFfb99AhXcX3l+el7xzSgtKjLQBMINuaKcfB3yiOWgPgi6N
	DrClYOVd3owc0C0lQaBxjMIUOLt/RgpzzPl2tC8W4QBCAbT+7tPGUmm9eK/vYp0kXcg=
X-Gm-Gg: ASbGncslqZIeADLIzOfNBiE/tgzC5yd4N5kSkrxXMCh+w2OpEM/m6YOkB8nZfMS55Qq
	ULGIQkvDmQijAGjwEm27De1Dh4/yPA5fpamTX80gR/w7tC3dXAsxzcrdZcpvqndv10qmnKNQ73x
	iMwbLcpKV5NUIvYzJ8Qcq6kFDu16Wem4QYVy/5XKOG+6yZOmiBkQtuFEQpC8bHIdVlGSty0pUyX
	YDHQNHC7HGfUqqGoLSnGkDI0XbObk6Yc8g6uD5aWDYFLGWBMiOP1mg8SzZspNxoT0KvpG19g1zD
	ejm0Kv27T2INHMwNu/UmGPAJoNac07jhnHkuxM3FIp1ECQV7nSgFPJOBgovujDw=
X-Google-Smtp-Source: AGHT+IGOpo1TPYd5N03AiCPo1Usu1rICKOKfo2ZjPp3xB2uH6rOk7X8el6oNzyY1EObtn5S2D2NxwQ==
X-Received: by 2002:a17:906:c103:b0:ad5:7499:2644 with SMTP id a640c23a62f3a-ad71c671007mr203816166b.54.1747992576817;
        Fri, 23 May 2025 02:29:36 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:845b:bbb4:b39e:a452])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d277a2esm1197585566b.83.2025.05.23.02.29.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 02:29:36 -0700 (PDT)
Date: Fri, 23 May 2025 11:29:31 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, Rob Herring <robh@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org, Georgi Djakov <djakov@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 1/4] dt-bindings: mailbox: qcom,apcs: Add separate node
 for clock-controller
Message-ID: <aDA_-zQEgFVVNE9W@linaro.org>
References: <20250506-qcom-apcs-mailbox-cc-v1-0-b54dddb150a5@linaro.org>
 <20250506-qcom-apcs-mailbox-cc-v1-1-b54dddb150a5@linaro.org>
 <7vszdea2djl43oojvw3vlrip23f7cfyxkyn6jw3wc2f7yowht5@bgsc2pqscujc>
 <aCNGSwL7043GoJBz@linaro.org>
 <20250514160841.GA2427890-robh@kernel.org>
 <aCUHTJGktLFhXq4Q@linaro.org>
 <20250521-psychedelic-cute-grouse-ee1291@kuoka>
 <aC-AqDa8cjq2AYeM@linaro.org>
 <20250523-markhor-of-fortunate-experience-1f575e@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523-markhor-of-fortunate-experience-1f575e@kuoka>

On Fri, May 23, 2025 at 11:06:04AM +0200, Krzysztof Kozlowski wrote:
> On Thu, May 22, 2025 at 09:53:12PM GMT, Stephan Gerhold wrote:
> > +Saravana
> > 
> > On Wed, May 21, 2025 at 11:20:40AM +0200, Krzysztof Kozlowski wrote:
> > > On Wed, May 14, 2025 at 10:12:44PM GMT, Stephan Gerhold wrote:
> > > > > > > > The mailbox itself does not need any clocks and should probe early to
> > > 
> > > ... so probe it early.
> > > 
> > > > > > > > unblock the rest of the boot process. The "clocks" are only needed for the
> > > > > > > > separate clock controller. In Linux, these are already two separate drivers
> > > > > > > > that can probe independently.
> > > 
> > > They can probe later, no problem and DT does not stop that. Linux, not
> > > DT, controls the ways of probing of devices and their children.
> > > 
> > > > > > > > 
> > > > > > > 
> > > > > > > Why does this circular dependency need to be broken in the DeviceTree
> > > > > > > representation?
> > > > > > > 
> > > > > > > As you describe, the mailbox probes and register the mailbox controller
> > > > > > > and it registers the clock controller. The mailbox device isn't affected
> > > > > > > by the clock controller failing to find rpmcc...
> > > > > > > 
> > > > > > 
> > > > > > That's right, but the problem is that the probe() function of the
> > > > > > mailbox driver won't be called at all. The device tree *looks* like the
> > > > > > mailbox depends on the clock, so fw_devlink tries to defer probing until
> > > > > > the clock is probed (which won't ever happen, because the mailbox is
> > > > > > needed to make the clock available).
> > > > > > 
> > > > > > I'm not sure why fw_devlink doesn't detect this cycle and tries to probe
> > > > > > them anyway, but fact is that we need to split this up in order to avoid
> > > > > > warnings and have the supplies/consumers set up properly. Those device
> > > > > > links are created based on the device tree and not the drivers.
> > > > > 
> > > > > Does "post-init-providers" providers solve your problem?
> > > > > 
> > > > 
> > > > I would expect that it does, but it feels like the wrong solution to the
> > > > problem to me. The clock is not really a post-init provider: It's not
> > > > consumed at all by the mailbox and needed immediately to initialize the
> > > > clock controller. The real problem in my opinion is that we're
> > > > describing two essentially distinct devices/drivers in a single device
> > > > node, and there is no way to distinguish that.
> > > > 
> > > > By splitting up the two distinct components into separate device tree
> > > > nodes, the relation between the providers/consumers is clearly
> > > > described.
> > > 
> > > You can split devices without splitting the nodes. I do not see reason
> > > why the DT is the problem here.
> > > 
> > 
> > The Linux drivers for this particular mailbox/clock controller already
> > work exactly the way you propose. They are split into two devices that
> > can probe independently.
> > 
> > The problem is outside of the drivers, because fw_devlink in Linux
> > blocks probing until all resources specified in the device tree nodes
> > become available. fw_devlink has no knowledge that the mailbox described
> > by this peculiar device tree node does not actually need the clocks:
> > 
> > 	apcs1_mbox: mailbox@b011000 {
> > 		compatible = "qcom,msm8939-apcs-kpss-global", "syscon";
> > 		reg = <0x0b011000 0x1000>;
> > 		#mbox-cells = <1>;
> > 		clocks = <&a53pll_c1>, <&gcc GPLL0_VOTE>, <&rpmcc RPM_SMD_XO_CLK_SRC>;
> > 		clock-names = "pll", "aux", "ref";
> > 		#clock-cells = <0>;
> > 	};
> > 
> > Without device-specific quirks in fw_devlink, the fact that these clocks
> > are only used by an unrelated clock controller only becomes clear if we
> > split the device tree node like I propose in this series:
> > 
> > 	apcs1_mbox: mailbox@b011000 {
> > 		compatible = "qcom,msm8939-apcs-kpss-global", "syscon";
> > 		reg = <0x0b011000 0x1000>;
> > 		#mbox-cells = <1>;
> > 
> > 		apcs1_clk: clock-controller {
> > 			clocks = <&a53pll_c1>, <&gcc GPLL0_VOTE>, <&rpmcc RPM_SMD_XO_CLK_SRC>;
> > 			clock-names = "pll", "aux", "ref";
> > 			#clock-cells = <0>;
> > 		};
> > 	};
> 
> Above code suggests that clocks are not needed for the mailbox at all.
> You need to be really sure of that. If that's the case, then this
> description looks like correct hardware description, more detailed then
> the first case, though.
> 

Yes, these clocks are not needed for the mailbox.

> > 
> > It is easy to say that the problem is in Linux (and not the DT), but
> > unless you are suggesting to remove fw_devlink from Linux, or to add
> > more device-specific quirks to the generic fw_devlink code, I'm only
> > aware of the following two options to make this work (both already
> > discussed in this email thread):
> > 
> >  1. post-init-providers (as suggested by Rob):
> > 
> > 		post-init-providers = <&a53pll_c1>, <&gcc>, <&rpmcc>;
> > 
> >     To repeat my previous email: IMHO this is a crude workaround for
> >     this situation. The clock is not really a post-init provider: It's
> >     not consumed at all by the mailbox and needed immediately to
> >     initialize the clock controller.
> 
> Clock is a provider - it has clock-cells - and it is post-init, because
> mailbox (parent) does not need it to initialize itself. Only part of its
> functionality - clocks - need it.
> 

Right.

> > 
> >     With this approach, there are no device links created for the
> >     clocks, so we don't get the proper probe/suspend ordering that
> >     fw_devlink normally provides.
> 
> This probably could be fixed in the Linux?
> 

This is probably something for Saravana to answer, but I think
post-init-providers is more intended to break up actual circular
dependencies, where you want to omit the device links for one of the
sides. For this specific case this is not necessary, because we can
avoid creating the cycle by describing the hardware more accurately.

> > 
> >  2. Split up device tree node (this patch series): With this approach,
> >     the mailbox can probe early and the clock controller child device
> >     gets the expected consumer/supplier device links to the clocks. IMHO
> >     this is the cleanest solution to go for.
> > 
> > @Saravana: Is there any other option that I missed? Or perhaps you have
> > any other suggestions how we should handle this?
> > 
> > To summarize the series and previous emails, the dependency cycle that
> > was in msm8939.dtsi before commit d92e9ea2f0f9 ("arm64: dts: qcom:
> > msm8939: revert use of APCS mbox for RPM") is:
> > 
> >   1. The clock controller inside &apcs1_mbox needs
> >      clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>.
> >   2. &rpmcc is a child of remoteproc &rpm
> >   3. remoteproc &rpm needs mboxes = <&apcs1_mbox 8>;
> > 
> > This is not a real dependency cycle, the clocks in the mailbox@ node are
> > not needed for the mailbox. They are only used and needed for the clock
> > controller child device that makes use of the same device tree node.
> > 
> > At runtime this cycle currently results in none of the devices probing:
> > 
> > [   13.281637] platform remoteproc: deferred probe pending: qcom-rpm-proc: Failed to register smd-edge
> > [   13.296257] platform b011000.mailbox: deferred probe pending: platform: supplier b016000.clock not ready
> > [   13.308397] platform b016000.clock: deferred probe pending: platform: wait for supplier /remoteproc/smd-edge/rpm-requests/clock-controller
> > 
> 
> Except missing dev_links you mentioned, this feels for me like job for
> post-init-providers (option 1), but I am also fine with option 2,
> because it fees like more appropriate hardware description.
> 

Great, thanks for the review!

Stephan

