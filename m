Return-Path: <devicetree+bounces-4260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F53C7B1C1F
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 14:23:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id E1430B20ABC
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 12:23:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C54738BCA;
	Thu, 28 Sep 2023 12:23:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF5838BC0
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 12:23:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68D49C433C7;
	Thu, 28 Sep 2023 12:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1695903790;
	bh=FhiCLuXE8xs5g1A7GLVUNFyMEugHawIxGqltKFYikQs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C4LSdgPYPgVEwS6xsCENhOeWsGBpCMYKUdabc/3c0vS1/50rScD+6wB+OtF/r1KdN
	 Z1cAaMCwTV97ZYYwDussm0Y8XhNQL29pqDaCYkkjg/ptMiJ1WjSu65DOFhGq22KTyR
	 AAkZSqOcJH16/b5tgVyhPoYPQy7sYDvadILrgqbQ=
Date: Thu, 28 Sep 2023 14:23:04 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Eliza Balas <eliza.balas@analog.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] drivers: misc: adi-axi-tdd: Add TDD engine
Message-ID: <2023092835-educator-cardigan-1ae0@gregkh>
References: <20230928092804.22612-1-eliza.balas@analog.com>
 <20230928092804.22612-3-eliza.balas@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928092804.22612-3-eliza.balas@analog.com>

On Thu, Sep 28, 2023 at 12:28:04PM +0300, Eliza Balas wrote:
> --- /dev/null
> +++ b/drivers/misc/adi-axi-tdd.c
> @@ -0,0 +1,780 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-3-Clause)

License comment, why is this dual licensed?  You are calling
gpl-only-marked functions in this driver so attempting to say it is also
BSD is quite odd, how are you going to resolve that?

Has a lawyer agreed with this licensing?

Please get a lawyer to sign off on your next contribution of this with a
dual license to ensure that they agree and that you all fully understand
the legal issues and complexity of attempting to have dual-licensed
Linux kernel code (hint, it's not as simple as you might think...)

And document in the changelog _why_ you want this to be dual licensed so
that we can all review that as well.

thanks,

greg k-h

