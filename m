Return-Path: <devicetree+bounces-3020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DD37AD23D
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 09:46:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id A26281C2082B
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 07:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF48F10A35;
	Mon, 25 Sep 2023 07:46:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B298CA5D;
	Mon, 25 Sep 2023 07:46:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B95AC433C7;
	Mon, 25 Sep 2023 07:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695628003;
	bh=2sFcJjO6vweBZD1dA6y5ae93AX6/OfgrPv0y7AZnJGg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QcXZWsHzpbLcsAH106g9p1NoL77BfdXfDkvw3dzO+VdLunFU823IW62Mz8+hx+F1R
	 97H0HLrRGe42yGxl6r+ML9EHwa6HT1cy2XnM4dde34AJBZBnES0HZjKxqv5QWmVlxG
	 tBTFklPETQZ6hY0q80DI/SxJLrA6trMKFmICIFWmPFWdh2N8iErUlJQ9B/Y0MGnOwT
	 h0MP4uFipo+lYLZ5O+o0MVn4HDDywQPsFVOTAE3yVQd4wBB3969cZ2YTiAvTaJPnTy
	 X7f/pytrF5GiZG/sC1njCYnxOVa0M/pLIHYgnXy29l2yMCapUKbHecMEbEEYWiP5z+
	 F9PI2zj26TpiQ==
Date: Mon, 25 Sep 2023 08:46:36 +0100
From: Lee Jones <lee@kernel.org>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc: Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Icenowy Zheng <uwu@icenowy.me>, Mark Brown <broonie@kernel.org>,
	Samuel Holland <samuel@sholland.org>,
	Shengyu Qu <wiagn233@outlook.com>,
	Martin Botka <martin.botka1@gmail.com>,
	Matthew Croughan <matthew.croughan@nix.how>,
	linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: mfd: x-powers,axp152: make interrupt
 optional for more chips
Message-ID: <20230925074636.GA9999@google.com>
References: <20230919103913.463156-1-andre.przywara@arm.com>
 <20230919103913.463156-2-andre.przywara@arm.com>
 <2900712.e9J7NaK4W3@jernej-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2900712.e9J7NaK4W3@jernej-laptop>

On Sun, 24 Sep 2023, Jernej Škrabec wrote:

> Dne torek, 19. september 2023 ob 12:39:12 CEST je Andre Przywara napisal(a):
> > All X-Powers PMICs described by this binding have an IRQ pin, and so
> > far (almost) all boards connected this to some NMI pin or GPIO on the SoC
> > they are connected to.
> > However we start to see boards that omit this connection, and technically
> > the IRQ pin is not essential to the basic PMIC operation.
> > 
> > The existing Linux driver allows skipping the IRQ pin setup for two chips
> > already, so update the binding to also make the DT property optional for
> > the missing chip. And while we are at it, add the AXP313a to that list,
> > as they are actually boards out there not connecting the IRQ pin.
> > 
> > This allows to have DTs correctly describing those boards not wiring up
> > the interrupt.
> > 
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> 
> Should I pick this patch through sunxi tree?

No thank you.

-- 
Lee Jones [李琼斯]

