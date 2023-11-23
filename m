Return-Path: <devicetree+bounces-18208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D93487F5AAB
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 09:58:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90928281749
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 08:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53F2816425;
	Thu, 23 Nov 2023 08:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4A3111F;
	Thu, 23 Nov 2023 00:58:42 -0800 (PST)
Received: from francesco-nb.int.toradex.com (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 52474201D4;
	Thu, 23 Nov 2023 09:58:37 +0100 (CET)
Date: Thu, 23 Nov 2023 09:58:33 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Nishanth Menon <nm@ti.com>
Cc: Parth Pancholi <parth105105@gmail.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	Parth Pancholi <parth.pancholi@toradex.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, Tero Kristo <kristo@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v1] arm64: dts: k3-am625-verdin: enable Verdin UART2
Message-ID: <ZV8UOTSTl6spUXt5@francesco-nb.int.toradex.com>
References: <20231121160436.1032364-1-parth105105@gmail.com>
 <20231123071235.omgxs3ixnojpkfvu@greeter>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231123071235.omgxs3ixnojpkfvu@greeter>

Hello Nishanth,

On Thu, Nov 23, 2023 at 01:12:35AM -0600, Nishanth Menon wrote:
> On 17:04-20231121, Parth Pancholi wrote:
> >  /* Verdin UART_2 */
> >  &wkup_uart0 {
> > -	/* FIXME: WKUP UART0 is used by DM firmware */
> > -	status = "reserved";
> > +	status = "okay";
> >  };
> > -- 
> > 2.34.1
> > 
> 
> Do the &pinctrl_wkup_uart0 in verdin.dtsi hold good through these
> variants?
Yes.

Let me add a little bit of context.

In general the way the Verdin AM62 (and Toradex SOM) is designed is that
we have a standard pinmuxing on the module edge connector (SODIMM) and
normally the carrier board that is mated with just implements it.
It's absolutely possible to redefine it all, but to maximize
compatibility across the family what we do at most is to reconfigure
some pins as GPIO.

Francesco


