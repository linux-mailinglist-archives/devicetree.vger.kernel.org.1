Return-Path: <devicetree+bounces-11437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F877D5C8D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 22:37:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93036B20FA2
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E049118E2E;
	Tue, 24 Oct 2023 20:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWNQNuaY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C149D3E47F
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 20:37:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DB6AC433C8;
	Tue, 24 Oct 2023 20:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698179846;
	bh=x7ktYcUkMNtPmHlHAYqJ+4Z7/N2PKnK+TRSa4Xb7n3M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dWNQNuaYvlSc3NTRCuoHcnwQ/eWqsLl3FW43KutTC9zOxYR5ODKuH4KGr57SwcFeJ
	 hzULR4rYgraQ+CtwFsbBFvLzgLydTX5Eidvje08Fjb3cDFeCMJRfdMyEuVgTtktShV
	 4/SMKe/28TnRflu4xZXySy71eygJpKbaSuiNunZ0AMN0JCB0fj036485xfapYfle0S
	 JFYw2w9bwLn1InCnKXIp1U/QpV9nga2bf1c1wWbYC0spjVRk8jW123PCD7NJWuRW2x
	 gVIVqKprj61qz9szutCcHR1dhrwWGNJ1xzu6EfHhhXc+6lk/VXNsyKjJ/wlYUE3i40
	 PGnV/OMXtoEuA==
Date: Tue, 24 Oct 2023 22:37:19 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Cc: "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/2] i2c: mv64xxx: add an optional reset-gpios property
Message-ID: <20231024203719.bbk7g4q7e4mzar36@zenone.zhora.eu>
References: <20231018210805.1569987-1-chris.packham@alliedtelesis.co.nz>
 <20231018210805.1569987-3-chris.packham@alliedtelesis.co.nz>
 <20231024191801.kofb6cbczswp7xxn@zenone.zhora.eu>
 <4b548124-d1d5-4746-a5bd-03757013282d@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4b548124-d1d5-4746-a5bd-03757013282d@alliedtelesis.co.nz>

Hi Chris,

> > as you are working on the v4...
> >
> > ...
> >
> >> +	if (drv_data->reset_gpio) {
> >> +		usleep_range(reset_duration, reset_duration + 10);
> > I'm not against this, but it's not optimal unless we know more or
> > less what to expect from reset_duration.
> >
> > Do we have a rough idea of what reset_duration is? If we don't
> > then you could consider using a generic "fsleep(reset_duration);"
> > Would it work?
> flseep() would work for me. All of the devices I'm testing with seem to 
> be fine with a very short reset pulse, they'd probably be fine with no 
> delay at all.

you know this better than me :-)
If you say that a delay is not necessary, then I'm also fine.

In any case, we are in probe and I don't think it's time
critical, so that a little delay wouldn't hurt and make everyone
happy.

Either way I'm fine as long as you use the correct sleeping
function.

Andi

