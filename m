Return-Path: <devicetree+bounces-137568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E845A09825
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 18:11:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FD57188D436
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 17:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 136D3213230;
	Fri, 10 Jan 2025 17:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="SGLNghZt"
X-Original-To: devicetree@vger.kernel.org
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF56207E0C
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 17:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736529056; cv=none; b=sUDRAjbfwqopoLYIqx2CoTckfejz9oKRYRppA/aEsSt3SFbYuhNu+97eDAyviACm9ny5JWM7L33iAvPWw+6g1dXihTXTLuQy9edC1tGlmPEakMUmZxU+McXLMSRe9uq0m2JAMTV97iyNc349pdaf1Z9ZTMcTOuBYOUtem+iYYDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736529056; c=relaxed/simple;
	bh=AOmEQRuXjkSD5R3WL5P7ffE1L4Z0MFgQj5vEGPUPTx0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KDa2edDjBqmTk4Q+fkqSCWtDnXZYc/oayS/7UayzgHJa88m/t7WbIRV5dZSxEELJln/ydaT1DaKQsiGvn+xQlCEev0ZKEWH9/vHjLTEiT2lWtq50/blbjPzPsFNNfT+eRS2cYPkUElonzwkI3GyErYgM0qwVv7KnRozuOI+lh0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=SGLNghZt; arc=none smtp.client-ip=185.67.36.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 9AB0D240029
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 18:10:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1736529053; bh=AOmEQRuXjkSD5R3WL5P7ffE1L4Z0MFgQj5vEGPUPTx0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=SGLNghZtZWUvYW9e8yNrfReqiIiOidejL+5a8H3lEclTuNXgd5iSAKsBLOb74sPsY
	 yO8Gk4Q0kDBQntn3VlZ5ZV21/C+NlohZyqzMkn7CsPhR83Y2G5VCGpyjn1eotU7RQW
	 pJrh0NqYHW9Tfpe6wxa9x1bUfbnfrAekuvGl+qcv6HSSLqhfjUBzwT7lCfdX0NnQ/v
	 2QEIqLjNPCbAyh7NhZL8YwoDDJ/8z6MtdnxLWzXNqoAig746/VcAE+ZOYcn03NorKv
	 4/7LF97uuOtrM4aAKGRRIfdfv7GFgbA6VXIdMxKSOkJsxJyN50c9Q0VOD8ms2D+vVL
	 q3o3qp2f7YwXQ==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4YV7TR1mHbz9rxB;
	Fri, 10 Jan 2025 18:10:51 +0100 (CET)
Date: Fri, 10 Jan 2025 17:10:51 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: j.ne@posteo.net, Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Naveen N Rao <naveen@kernel.org>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Frank Li <Frank.Li@nxp.com>,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [PATCH 16/19] powerpc: dts: Add LANCOM NWAPP2 board devicetree
Message-ID: <Z4FUmxeokwjGhdCJ@probook>
References: <20250102-mpc83xx-v1-0-86f78ba2a7af@posteo.net>
 <20250102-mpc83xx-v1-16-86f78ba2a7af@posteo.net>
 <b1e0fa68-6f55-4c21-8d61-f8d58d932afc@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b1e0fa68-6f55-4c21-8d61-f8d58d932afc@kernel.org>

On Fri, Jan 10, 2025 at 04:24:27PM +0100, Krzysztof Kozlowski wrote:
> On 02/01/2025 19:31, J. Neuschäfer via B4 Relay wrote:
[...]
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/leds/common.h>
> > +#include <dt-bindings/input/input.h>
> > +
> > +/ {
> > +	compatible = "lancom,nwapp2", "fsl,mpc8314e";
> 
> Missing bindings. Please run scripts/checkpatch.pl and fix reported
> warnings. After that, run also `scripts/checkpatch.pl --strict` and
> (probably) fix more warnings. Some warnings can be ignored, especially
> from --strict run, but the code here looks like it needs a fix. Feel
> free to get in touch if the warning is not clear.

Alright, I'll write the bindings.

> > +	model = "LANCOM NWAPP2";
> > +
> > +	memory {
> > +		reg = <0x00000000 0x08000000>;	// 128MB at 0
> > +	};
[...]
> > +&localbus {
> > +	status = "okay";
> > +	ranges = <0x0 0x0 0xfe000000 0x00008000>;
> > +
> > +	nand@0,0 {
> > +		#address-cells = <1>;
> > +		#size-cells = <1>;
> > +		compatible = "fsl,mpc8315-fcm-nand",
> 
> Compatible is always the first property.
> 
> > +			     "fsl,elbc-fcm-nand";
> > +		reg = <0x0 0x0 0x2000>;
> 
> reg follows.

Ok, will fix.

