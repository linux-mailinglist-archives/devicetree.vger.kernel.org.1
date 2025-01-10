Return-Path: <devicetree+bounces-137563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAEFA0977F
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 17:30:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37BB316AF58
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 16:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8E38213E7B;
	Fri, 10 Jan 2025 16:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="WdpPGeH9"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DB3213E84
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736526516; cv=none; b=YqUrSyOaOaUvXr0Ar787RRjxF6YCmVrqZMTrX3QCnZSWGzVQrdbpC/DTuIVR/Dewsa28gqv5L+QA5lQSE5zH9BQV0E3E6CC2Nvu7lLuwsBBxB4F5/rCmFKcxFbrul8Wjv/olH1PQIEsyZum4Dv1wMxTlGdMg7fPHVN0luv30o5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736526516; c=relaxed/simple;
	bh=OWts1cTfEcqvunfpgiC/6+tnJNk+ma0tlrEZc31g47A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cdvGIaspPz4n4ewSCnFN1Dk8XBkdtJIxA9cx2ozsElwjpZPR/bRs0OJJhI7ZViQZ1dAm7oXj2ONKMIBfgTX3Kzp4tMlqV/YDTshHYfcY5ZPFcs2qTrp2tXQVoQ1kdX6gpse4alqyn8DQsngZMegFs2sAXRkTMZbMTMaqTwgIGhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=WdpPGeH9; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 937BC240101
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 17:28:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1736526512; bh=OWts1cTfEcqvunfpgiC/6+tnJNk+ma0tlrEZc31g47A=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=WdpPGeH9npb33QnUOY81diFY2jW+kyyugTdHJvEGF9G1zEGqfaHygQjPTDm7UKCk/
	 XODtKbK5/zkMQq0bnsn88xVPtv5G3mTxL+2zuIPAhUXocsyDWkeB4iJMKmqM/YPcfq
	 0JYd6Jdo/D7qUbErY0X9l0skU86O9QV+pmS2T0MklAIlRGrdZION88sxqbUUTKi7xo
	 hUrQu9IbnbIN9cpZScAEgnqBVP4LNiQCvlggmDSpj6k3IqcogSH9ZwG8hLQ+ugbt4/
	 dzIAqPYeUQAazbBgdAE/RvL8TIzZG14jcE8aQJmJ+0C98uUDVKnoIXp+cTT49Cn2NF
	 1nD3E2eP4C0eg==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4YV6Xb2P9Xz6tw1;
	Fri, 10 Jan 2025 17:28:31 +0100 (CET)
Date: Fri, 10 Jan 2025 16:28:31 +0000
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
Subject: Re: [PATCH 10/19] powerpc: dts: Add MPC8314E devicetree
Message-ID: <Z4FKrwH1oEssxuWi@probook>
References: <20250102-mpc83xx-v1-0-86f78ba2a7af@posteo.net>
 <20250102-mpc83xx-v1-10-86f78ba2a7af@posteo.net>
 <e1c8ebd5-b01d-4338-a465-889853d1ef9f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e1c8ebd5-b01d-4338-a465-889853d1ef9f@kernel.org>

On Fri, Jan 10, 2025 at 04:21:58PM +0100, Krzysztof Kozlowski wrote:
> On 02/01/2025 19:31, J. Neuschäfer via B4 Relay wrote:
> > From: "J. Neuschäfer" <j.ne@posteo.net>
> > 
> > The MPC8314E is a variant of the MPC8315E without SATA controllers.
> > 
> > Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
> > ---
> >  arch/powerpc/boot/dts/mpc8314e.dtsi | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/arch/powerpc/boot/dts/mpc8314e.dtsi b/arch/powerpc/boot/dts/mpc8314e.dtsi
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..65a96a485dded5d4918d96b38778399d2f348190
> > --- /dev/null
> > +++ b/arch/powerpc/boot/dts/mpc8314e.dtsi
> > @@ -0,0 +1,7 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +// Copyright 2024 J. Neuschäfer
> > +#include "mpc8315e.dtsi"
> > +
> > +/* MPC8314E does not support SATA */
> > +/delete-node/ &sata0;
> > +/delete-node/ &sata1;
> 
> 
> You should not delete nodes. That's not really maintainable code. Either
> this is in base DTSI or it does not. If it does exist, then this delete
> is incorrect.
> 
> If it does not delete, you are not supposed to include other SoC/device
> which is not the subset of this one, so your includes are not correct.

With that in mind, I think it makes sense to structure these (up to)
four devices the other way around:

- MPC8314 as the base, because it has the least features
- MPC8314E, MPC8315E, and the currently unused MPC8315 based on MPC8314

I'll do that.

Best regards,
J. Neuschäfer

