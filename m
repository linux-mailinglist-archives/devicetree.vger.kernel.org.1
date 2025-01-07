Return-Path: <devicetree+bounces-136328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B79AA04CE4
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 00:01:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 616FF3A562F
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 23:01:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90F901A83E1;
	Tue,  7 Jan 2025 23:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="mbWNCIVd"
X-Original-To: devicetree@vger.kernel.org
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90D1199920
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 23:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736290865; cv=none; b=c9/AZLVpnNaaFAWv9QBafPINHbfWzs0/OOhpFyuvLppWPnXdvPA2cMfJ7VlOFiY5wyPo0yOM1o2tZpVVJwMfkOIdeFBFZuq3OggX0kXqT5RyGdAElCNCa65B8WxpQongezhcCSpz6hdr7MVM+4Ruisre7tt9zDqWNgQ3iCp2syM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736290865; c=relaxed/simple;
	bh=ql/VMdwMNYI4OeumrsAV90Qo71dCO+1E5E929QhrV7k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rhw83330VgtbfvvVu2RFUsMyCte0A1rJoyYR2/imo/7ODPchZOr4TY1KCueOK+4/sZ3R11q9CyG66BxSCb7Z3lFPy3RJhFsTfhhJ6ZF6bxyjiORa/bAYcyrthkmG9EbFgGivhzTJpxnMbF3zM2IjZqt7lGzcD5Orq2jvm53ceFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=mbWNCIVd; arc=none smtp.client-ip=185.67.36.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 1505C24002B
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 00:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1736290862; bh=ql/VMdwMNYI4OeumrsAV90Qo71dCO+1E5E929QhrV7k=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=mbWNCIVdf7W+//FaBBJw39+KdLxo8Ymi1tmmHyuWehn4vslPFgfne7mpg1whR72PD
	 llWhC6BbH/deWJdqfA6e+SG4aDXmdcZJkzlwpphJTQTwvyeeOXl8wbrvLU1HkJyNN/
	 8EueOmBSdQo80mgCftPBtHHT/RhmTuBEZanwkkUuslRwoTsA2VlwFNqkBIcQ5SUzis
	 y1RZgrOp486x8oa3jO4y8By5oaUanR/z00O0Vvgm3dSiPwrCiFB2BxRfhJK6sy1d9O
	 OYNZgW3SMFXsXF7OaNQQwgMH6YLiUCZ1YZXPMZnDEAWSEUZkxuSBP9JsQkY8OAO10i
	 2gHisC6RFjO8g==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4YSRNp409yz9rxP;
	Wed,  8 Jan 2025 00:00:58 +0100 (CET)
Date: Tue,  7 Jan 2025 23:00:58 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: j.ne@posteo.net, Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	Naveen N Rao <naveen@kernel.org>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Frank Li <Frank.Li@nxp.com>,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [PATCH 08/19] powerpc: boot: Enable FIT image generation
Message-ID: <Z32yKoW2ozZs2oA_@probook>
References: <20250102-mpc83xx-v1-0-86f78ba2a7af@posteo.net>
 <20250102-mpc83xx-v1-8-86f78ba2a7af@posteo.net>
 <f4552e33-87d9-4b71-be21-f6884e4b5fa1@csgroup.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f4552e33-87d9-4b71-be21-f6884e4b5fa1@csgroup.eu>

On Mon, Jan 06, 2025 at 02:52:59PM +0100, Christophe Leroy wrote:
> 
> 
> Le 02/01/2025 à 19:31, J. Neuschäfer via B4 Relay a écrit :
> > [Vous ne recevez pas souvent de courriers de devnull+j.ne.posteo.net@kernel.org. Découvrez pourquoi ceci est important à https://aka.ms/LearnAboutSenderIdentification ]
> > 
> > From: "J. Neuschäfer" <j.ne@posteo.net>
> > 
> > The Flat Image Tree (FIT) format combines a kernel, a set of
> > devicetrees, and optionally additional resources into a single file that
> > can be loaded by a bootloader such as U-Boot. Generating a FIT image as
> > part of the kernel build reduces the need for additional build scripts,
> > and produces a single boot image without falling back to one of the
> > many legacy methods implemented in arch/powerpc/boot/Makefile, which
> > would require additional changes for arch/powerpc/boot for each board.
> 
> Will that allow compressed vmlinux ?

Yes, the make_fit.py script can compress included data (kernel, dtb),
and the logic in scripts/Makefile.lib makes use of this feature.
By default, gzip is used:

# Use this to override the compression algorithm
FIT_COMPRESSION ?= gzip

quiet_cmd_fit = FIT     $@
      cmd_fit = $(MAKE_FIT) -o $@ --arch $(UIMAGE_ARCH) --os linux \
		--name '$(UIMAGE_NAME)' \
		$(if $(findstring 1,$(KBUILD_VERBOSE)),-v) \
		$(if $(FIT_DECOMPOSE_DTBS),--decompose-dtbs) \
		--compress $(FIT_COMPRESSION) -k $< @$(word 2,$^)


Best regards,
J. Neuschäfer

