Return-Path: <devicetree+bounces-188604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10354AE4261
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 15:19:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F7E83B76AC
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 13:17:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1FDB2528F3;
	Mon, 23 Jun 2025 13:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y3wBd6M5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D0C25229C
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 13:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750684663; cv=none; b=gTa56wxP9arm92W2BdmesSTHmg5iXqcZZME3hL9clJuhpRQvCDmYJvmgH31hG8/yq+ISZwt8Vdm9y3UUs8ATh8J2nrluQvLNslt73U+BsivYj9taoxRAj/qMmvwUUVtt2Tkdp7O4owMLTNLaXLwDDwwtb4+hWkrJp4a98S/7y08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750684663; c=relaxed/simple;
	bh=UmKYTFFeSV9jOHfwbxiCTnST38hUxBP+0O3P5/ea6fI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r5HQggyrnTTOTX4YW1FP/t1K7HWcg9eKpg4evH+feMA4Nfd5VOfFYP/rceF+su5seaQ2CR5b1KCcQ/LA1QSQ6vz81ipS2PrZ5YeWLrAtnNzAyF+2ZA1cIxslmNzb/Bb3uthIPljvtwFHr7OlYWPfkWbeV/OTfPkI8OWhMvUi10Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y3wBd6M5; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-453608ed113so36672995e9.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 06:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750684660; x=1751289460; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WxhGLTOSbdGZUBImck+Z0lOUfVyulsscQ0JkY0XS5+g=;
        b=Y3wBd6M5IH7vHMxqTMosNc+/XrBBI7IbQIA39uv1yEj3/aJjxGizJ1pKXJknnT+JWi
         1inJi6TXg0OebM82tBxlydd0oZ4evamnPhDhnSRsA1oxr0YwxpI4OlBuA9Y05l5iz1sL
         QsRPxIfNRU2ljuwkYSCy+Am9yUrWbUzblkeUQGrPVvOYsU3qkzNXiz1m+/Dg+DzK3SkJ
         Jj++yyAKkmfFxCIUaTJtCwFnH2SJi+AhqtcVx/QAn3IIbP2btjfKdaqMVRcEkz7fbFpg
         u9uBK2bk7wXk59XmE5GebXMqirFDpk8Mqsua/6vhnNDgzwg52JO9mediL7+m9dzpW0Jx
         nQXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750684660; x=1751289460;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WxhGLTOSbdGZUBImck+Z0lOUfVyulsscQ0JkY0XS5+g=;
        b=vycP/VFpY5z2ZuJvNASX7nby5eXoq5LLkIgPEgw4V36VAo/dbPlLzTNvvBoldXA7T5
         aPZXvyMQS6FOOQLqLiLUm785AEqILLMe23Yd9GSrBIMFPXVcJKeh288kxmf+bUEfW971
         zVYN98XnX38Ib2jO7RHduV3c2d83Tj1I1kZVE05heUJ5qACU8R2ZnAaGe0NfYHrqijQ9
         Tm3M6AZJXj+m18pImmWBChHWPaumtehMgpnsRjDxfEHgI4WJj5TdMpgddisk82qaG4+D
         0eYLIBkpM0o420NwioLKOBMESKrWiQMzr3mj87NBVBBFjtZufnkhiPbRuvM/651iyUac
         cqoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVhJnZRSbxbSfaA2uQBXVNs5iBcUb0iwvJOysorJUCrZAbAUxqltgnfhwZU5ac1mUqBOS9A3RPapW1h@vger.kernel.org
X-Gm-Message-State: AOJu0YxDFJV8bkpQnDHH+pKpe1d9zBtaSKP6SKNzRl51wxt0F6Qvcadi
	m7adGtSA0HVT8AyUzVNOwqQg+tcirb5kZK0rBkZTMB8In3sCJ+3dF45ljAQM2iyK7+c=
X-Gm-Gg: ASbGncspgA3gDG4USwaPD29OkxiU4P3Vt9DLCxLfUa7eCeST8QsOS2ISaJ5GJ5kt3VS
	KXNYFiWErLf4mglBx8wcEyZBjGzzUDn6Vi3CLxIbKzqvKFEqbjcMbUPtUHAJuvnDp85BCqE7fp1
	jmtY49EVkR4htPy6QooVaFS9W45wcebPCFtQgFMyYJdqfa+2RXrTvO/rTMVQKhR9WOzDlAsFxMD
	p/LkaJ7j7De247mAovkrFTZTEKLfmDCMMFfoN2bpP2bT9j/LEUJwqPjVXtZgyHoxN4cdC8zyzAk
	qhsxyz+uk1rKHd7hhfw7F74I4S105usz8mdtgUXRjLkF0juK0Q91aRPJAmSY15SdAfWJsWzZng=
	=
X-Google-Smtp-Source: AGHT+IGF1ChYdi0HdVo0w/tZZ8X8382dEOsP+3IQAytinuQ4JkzJIKY1f45nqyDbj9X+WTLDfaRCMw==
X-Received: by 2002:a05:600c:c10d:b0:43c:f87c:24ce with SMTP id 5b1f17b1804b1-4536877ffb5mr66971955e9.21.1750684659595;
        Mon, 23 Jun 2025 06:17:39 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:b3ca:db17:bc4f:ae5a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4536470903asm112660185e9.40.2025.06.23.06.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 06:17:39 -0700 (PDT)
Date: Mon, 23 Jun 2025 15:17:33 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Rob Herring <robh@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	Georgi Djakov <djakov@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: mailbox: qcom,apcs: Add separate node
 for clock-controller
Message-ID: <aFlT7fLePVmvoxBQ@linaro.org>
References: <20250506-qcom-apcs-mailbox-cc-v1-1-b54dddb150a5@linaro.org>
 <7vszdea2djl43oojvw3vlrip23f7cfyxkyn6jw3wc2f7yowht5@bgsc2pqscujc>
 <aCNGSwL7043GoJBz@linaro.org>
 <20250514160841.GA2427890-robh@kernel.org>
 <aCUHTJGktLFhXq4Q@linaro.org>
 <20250521-psychedelic-cute-grouse-ee1291@kuoka>
 <aC-AqDa8cjq2AYeM@linaro.org>
 <20250523-markhor-of-fortunate-experience-1f575e@kuoka>
 <jvsdn67x2qm2avaktnpqzoixcd46xuuf6i5kpeolsnewgoqt6q@jid7unlmmu65>
 <175053907628.4372.13105365536734444855@lazor>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <175053907628.4372.13105365536734444855@lazor>

wOn Sat, Jun 21, 2025 at 01:51:16PM -0700, Stephen Boyd wrote:
> Quoting Bjorn Andersson (2025-06-10 20:31:57)
> > I'm still sceptical here.
> > 
> > In the first snippet above, we describe a single IP block which provides
> > mailboxes and clocks.
> > 
> > In the second snippet we're saying that the IP block is a mailbox, and
> > then it somehow have a subcomponent which is a clock provider.
> > 
> > It seems to me that we're choosing the second option because it better
> > fits the Linux implementation, rather than that it would be a better
> > representation of the hardware. To the point that we can't even describe
> > the register range of the subcomponent...
> > 
> 
> Agreed. Don't workaround problems in the kernel by changing the binding
> to have sub-nodes.

I can describe the register range for the subcomponent if you prefer
(it's reg = <0x50 0xc>; within the parent component). That would be easy
to add.

Your more fundamental concern (working around problems in the kernel by
changing the binding) is a more tricky and subtle one. I had exactly the
same thought when I started making this patch series. However, if you
start looking more closely you will see that this is much easier said
than done. I tried to explain the problem already a few times (in the
cover letter, the commit messages and responses to this series), but let
me try again. Perhaps in different words it will become more
understandable.

Just for clarity, let's take the current device tree description again:

	apcs1_mbox: mailbox@b011000 {
		compatible = "qcom,msm8939-apcs-kpss-global", "syscon";
		reg = <0x0b011000 0x1000>;
		#mbox-cells = <1>;
		clocks = <&a53pll_c1>, <&gcc GPLL0_VOTE>, <&rpmcc RPM_SMD_XO_CLK_SRC>;
		clock-names = "pll", "aux", "ref";
		#clock-cells = <0>;
	};

Clearly this is a mailbox (#mbox-cells) and a clock controller
(#clock-cells). In the hardware these are stuffed into one register
region, but they don't have anything to do with each other. In
particular, the specified clocks are only used by the clock controller.
They are not used or related in any way to the mailbox component.

We need to have the mailbox available early to proceed with booting. The
clock controller can probe anytime later. The &rpmcc clock required by
the clock controller depends on having the mailbox available.

In Linux, I cannot get the mailbox driver to probe as long as the &rpmcc
clock is specified inside this device tree node (or by using
post-init-providers, but see [1]). This is not something I can fix in
the driver. The "problem in the kernel" you are referring to is
essentially "fw_devlink". Independent of the device-specific bindings we
define, it is built with the assumption that resources specified in a
device tree node are required to get a device functioning.

We usually want this behavior, but it doesn't work in this case. I argue
this is because we describe *two* devices as part of a *single* device
tree node. By splitting the *two* devices into *two* device tree nodes,
it is clear which resources belong to which device, and fw_devlink can
function correctly.

You argue this is a problem to be solved in the kernel. In practice,
this would mean one of the following:

 - Remove fw_devlink from Linux.
 - Start adding device-specific quirks into the generic fw_devlink code.
   Hardcode device links that cannot be deferred from the device tree
   because our hardware description is too broad.

Both of these are not really desirable, right?

I don't think there is a good way around making the hardware description
more precise by giving the two devices separate device tree nodes. There
are many different options for modelling these, and I would be fine with
all of them if you think one of them fits better:

Top-level siblings:

	apcs1_mbox: mailbox@b011008 {
		compatible = "qcom,msm8939-apcs-mbox";
		reg = <0x0b011008 0x4>;
		#mbox-cells = <1>;
	};

	apcs1_clk: clock-controller@b011050 {
		compatible = "qcom,msm8939-apcs-clk";
		reg = <0x0b011050 0xc>;
		clocks = <&a53pll_c1>, <&gcc GPLL0_VOTE>, <&rpmcc RPM_SMD_XO_CLK_SRC>;
		clock-names = "pll", "aux", "ref";
		#clock-cells = <0>;		
	};

Top-level syscon wrapper with two children:

	syscon@b011000 {
		compatible = "qcom,msm8939-apcs-kpss-global", "syscon";
		reg = <0x0b011000 0x1000>;
		#adress-cells = <1>;
		#size-cells = <1>;
		ranges = <0 0x0b011000 0x1000>;

		apcs1_mbox: mailbox@8 {
			compatible = "qcom,msm8939-apcs-mbox";
			reg = <0x8 0x4>;
			#mbox-cells = <1>;
		};

		apcs1_clk: clock-controller@50 {
			compatible = "qcom,msm8939-apcs-clk";
			reg = <0x0b011050 0xc>;
			clocks = <&a53pll_c1>, <&gcc GPLL0_VOTE>, <&rpmcc RPM_SMD_XO_CLK_SRC>;
			clock-names = "pll", "aux", "ref";
			#clock-cells = <0>;
		};
	};

Mailbox as parent (what I did in this series):

	apcs1_mbox: mailbox@b011000 {
		compatible = "qcom,msm8939-apcs-kpss-global", "syscon";
		reg = <0x0b011000 0x1000>;
		#mbox-cells = <1>;

		apcs1_clk: clock-controller {
			clocks = <&a53pll_c1>, <&gcc GPLL0_VOTE>, <&rpmcc RPM_SMD_XO_CLK_SRC>;
			clock-names = "pll", "aux", "ref";
			#clock-cells = <0>;
		};
	};

Maybe it makes more sense with this explanation and the other options.
Let me know what you think!

Thanks,
Stephan

[1]: https://lore.kernel.org/linux-arm-msm/aC-AqDa8cjq2AYeM@linaro.org/

