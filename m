Return-Path: <devicetree+bounces-177434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E357AB77B5
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 23:15:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D650C1B62084
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 21:15:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97F9C2951D8;
	Wed, 14 May 2025 21:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kJzgl51T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2E31286D56
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747257299; cv=none; b=VyfrJFRduNCTtP5Vb+dbzaJ0rYtm+7L+jw58bmDClZFXYTPQnzmZ0I7EwtqTHhDRLxOpnSfQsQs7rDm+XfKFUEO/nuRXxgrud6CFa0o4FXSOHVFK9iB6imVOHuMl0RbVPMxrPCVRsuJ5XJJKa8m06gG89Xh15orvz7YindPfZVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747257299; c=relaxed/simple;
	bh=xy48Ke49o0MQQP+WVGAW8zjJEqic+HLbYecWDxrve5Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iTQtChZhA9S5F3PbKXrXp0hkVJ/rTUwRRqECqa3wr60rMYca5DiDudcm/Pn+UxIKzeB4mo6vECaJ4f0+o/4aZzfI+UYlZhntHeAugxu1uNQQSvXlLJJCPcqYmSJinUkPoZtseV7AWaihVvvfNke0JXXqobeujZ/rJ6A4BxEmG8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kJzgl51T; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a0ba0b6b76so179945f8f.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 14:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747257296; x=1747862096; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=K2iv4lSpsksuKGweGaE94y/cYcxuHI7ZTis4Uim2sZI=;
        b=kJzgl51TFeBusPG/OhqEPkuvDoTglpXcpHZkcn+1oYmEeWxmUgw3xRtbcZcxXdnKd9
         wMOL/l3sLatPlkr5UjYWeu2KRsyYhBnJhj7kqET1b3Lf/f4snkt/jG9swdnJzJZ4WVUK
         XDljAQc75lexSQFJJVEEZyMs1d0sFdytQ51pjw09IKS0KevEYSL1I5Ai0W3JqdQe2Tz/
         ZldWot6J5Nr4Bbs6YgXUZNLH1hu4dCBAITWb6c+Tl24lMeSZtBOjDqG61BUAu4TCRtWF
         eAj0/kQ6cnqzDoolK0iVBHLWQ//XjgTLbZeLYa3LznH0Ikg31OxfgPCVtVRTMwiFt5s6
         8ZRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747257296; x=1747862096;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K2iv4lSpsksuKGweGaE94y/cYcxuHI7ZTis4Uim2sZI=;
        b=TRMA0u67M5WtCfEqtM1BNl1hCkbScrT0dDyIfOC6YT1IJ6YPg8YpmE6OXGhXi9zsYU
         pANaQ6AeRj83ONDSH3tyGEFrnO9QZrovngxT1CoTtG7jn8+0mcYXZXVb+VcVKDg3z1Dp
         ofbxDKW7G6QsHxaCHE6YXWoPSoODewGSLfrz/fBsaswdw55iDSiWye0hzhsFsl5JvvMa
         hhFEbfnoibwpvh8LA34Q+tTLYXBL94VqQqbdgsZOCEl8X9NwTY0tC60zUj4fVGwysS/K
         Ta4GQOZGpzQdSqQOxxcGFm4Opygnfm9fngmQnB4+qtG9vpc33G8fMerim9yuQUhoKn/z
         DSew==
X-Forwarded-Encrypted: i=1; AJvYcCVP6wmu34RWuM66N/x9NXGpFV727vYNOZGQgePdzdqB+2WPasQGmUjpn71vxQunStgziG2bZwgPnWJe@vger.kernel.org
X-Gm-Message-State: AOJu0YwoqAYlvqgazabbnw1vtDGvvyo9ohAdaEkRrqr9inGIMSNwWEy0
	3stXYf8uRdEYtZ5gMJfj2z4O418Wwj8Z2kFRmWFTYEZh9qvM7phO/AMVtsEYyIo/6VL1fKwxIaX
	5F4IHtyl+
X-Gm-Gg: ASbGncvrZs+y3SaK5ETHv4eVTOeaQRgzf+qqD5i0ciXw0EvgHHYq7TfD/j1YcQplUGG
	z6KyJbOKS/7c+bmXq938Nur7cw33fykP7kdpd30mhb7BzKl+wtaKa8i5eVikEQq0jPWqZsDn/kv
	6ngQvmu09LOUy2sEH8CueH8VtCVpGk/2eN7XWZnZQmOnfds1AwwKbi361Sp8yAw3QF87XoozaH6
	DAt4crlr6C3/9ZUbEAHwJuKpRw2z8glWQYDNC6IA10T0/Qs471YX4lbNmD89S/rBBrothjKjTe8
	Arf6f/YBO31gPtc+H7krsunWEH9fiQV3iMcTtkSZxz8mHZmXDsv4RcaaK1o0MzkhbIuUP5PjQqW
	Mx5gPr7s5yQ==
X-Google-Smtp-Source: AGHT+IGiTo87vlzfm7YxlUUnc8Xs6uMppHhulyIK54p68iyjckl+Nn9ZStWI2jzn16jLSxRNaQVZ4w==
X-Received: by 2002:a05:6000:438a:b0:39c:2665:2c13 with SMTP id ffacd0b85a97d-3a3537ac263mr52909f8f.54.1747257295851;
        Wed, 14 May 2025 14:14:55 -0700 (PDT)
Received: from linaro.org (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f5a4d21esm21038746f8f.99.2025.05.14.14.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 14:14:55 -0700 (PDT)
Date: Wed, 14 May 2025 22:12:44 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
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
Message-ID: <aCUHTJGktLFhXq4Q@linaro.org>
References: <20250506-qcom-apcs-mailbox-cc-v1-0-b54dddb150a5@linaro.org>
 <20250506-qcom-apcs-mailbox-cc-v1-1-b54dddb150a5@linaro.org>
 <7vszdea2djl43oojvw3vlrip23f7cfyxkyn6jw3wc2f7yowht5@bgsc2pqscujc>
 <aCNGSwL7043GoJBz@linaro.org>
 <20250514160841.GA2427890-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250514160841.GA2427890-robh@kernel.org>

On Wed, May 14, 2025 at 11:08:41AM -0500, Rob Herring wrote:
> On Tue, May 13, 2025 at 02:16:59PM +0100, Stephan Gerhold wrote:
> > On Sun, May 11, 2025 at 05:48:11PM -0500, Bjorn Andersson wrote:
> > > On Tue, May 06, 2025 at 03:10:08PM +0200, Stephan Gerhold wrote:
> > > > APCS "global" is sort of a "miscellaneous" hardware block that combines
> > > > multiple registers inside the application processor subsystem. Two distinct
> > > > use cases are currently stuffed together in a single device tree node:
> > > > 
> > > >  - Mailbox: to communicate with other remoteprocs in the system.
> > > >  - Clock: for controlling the CPU frequency.
> > > > 
> > > > These two use cases have unavoidable circular dependencies: the mailbox is
> > > > needed as early as possible during boot to start controlling shared
> > > > resources like clocks and power domains, while the clock controller needs
> > > > one of these shared clocks as its parent. Currently, there is no way to
> > > > distinguish these two use cases for generic mechanisms like fw_devlink.
> > > > 
> > > > This is currently blocking conversion of the deprecated custom "qcom,ipc"
> > > > properties to the standard "mboxes", see e.g. commit d92e9ea2f0f9
> > > > ("arm64: dts: qcom: msm8939: revert use of APCS mbox for RPM"):
> > > >   1. remoteproc &rpm needs mboxes = <&apcs1_mbox 8>;
> > > >   2. The clock controller inside &apcs1_mbox needs
> > > >      clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>.
> > > >   3. &rpmcc is a child of remoteproc &rpm
> > > > 
> > > > The mailbox itself does not need any clocks and should probe early to
> > > > unblock the rest of the boot process. The "clocks" are only needed for the
> > > > separate clock controller. In Linux, these are already two separate drivers
> > > > that can probe independently.
> > > > 
> > > 
> > > Why does this circular dependency need to be broken in the DeviceTree
> > > representation?
> > > 
> > > As you describe, the mailbox probes and register the mailbox controller
> > > and it registers the clock controller. The mailbox device isn't affected
> > > by the clock controller failing to find rpmcc...
> > > 
> > 
> > That's right, but the problem is that the probe() function of the
> > mailbox driver won't be called at all. The device tree *looks* like the
> > mailbox depends on the clock, so fw_devlink tries to defer probing until
> > the clock is probed (which won't ever happen, because the mailbox is
> > needed to make the clock available).
> > 
> > I'm not sure why fw_devlink doesn't detect this cycle and tries to probe
> > them anyway, but fact is that we need to split this up in order to avoid
> > warnings and have the supplies/consumers set up properly. Those device
> > links are created based on the device tree and not the drivers.
> 
> Does "post-init-providers" providers solve your problem?
> 

I would expect that it does, but it feels like the wrong solution to the
problem to me. The clock is not really a post-init provider: It's not
consumed at all by the mailbox and needed immediately to initialize the
clock controller. The real problem in my opinion is that we're
describing two essentially distinct devices/drivers in a single device
node, and there is no way to distinguish that.

By splitting up the two distinct components into separate device tree
nodes, the relation between the providers/consumers is clearly
described.

Thanks,
Stephan

