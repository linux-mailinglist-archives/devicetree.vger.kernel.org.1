Return-Path: <devicetree+bounces-51147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF4B87E4E1
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 09:21:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C4E311C210FE
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 08:21:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B094C25761;
	Mon, 18 Mar 2024 08:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bit42.se header.i=@bit42.se header.b="OTcNjdW6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.outgoing.loopia.se (smtp.outgoing.loopia.se [93.188.3.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B1C25624
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 08:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.188.3.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710750099; cv=none; b=WrbKOq96lVHC+wzWWk9fR7h0pTurGZ0KXX99aUkPepPPu8NtouQd4vMT5Fz8Z7GPYQ565bGYPVaS9CCCVDKj3ZJuIq2sHxTjWbYgq8OIgtOhk1k8aRAyVo9Mbpttw5HjCz9iybwNRLDqrf5fqR3HgLNrsvBaS1yVAbTJCJ142vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710750099; c=relaxed/simple;
	bh=fQFiZE6AFBXzDqvJ+AVRZqn/V+jM/FhbVRKs1wFtJYU=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=VpLA2Hb8W0vq8n0yodG6QVLNZrYAczz73qHN651SvxxJd44QWzh3JAXijGbzqWttRbF2UaN6Z9NzqF+MYxEvbyR61JZ0avL42IwqSntWjfyoP2JIOPe70KJ7o5Pxdy+724U+WCMAUDHxmXgfga6imfAT4rseIOdlZqJCJJkFHiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bit42.se; spf=pass smtp.mailfrom=bit42.se; dkim=pass (2048-bit key) header.d=bit42.se header.i=@bit42.se header.b=OTcNjdW6; arc=none smtp.client-ip=93.188.3.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bit42.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bit42.se
Received: from s807.loopia.se (localhost [127.0.0.1])
	by s807.loopia.se (Postfix) with ESMTP id 1C8833003D64
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 09:16:19 +0100 (CET)
Received: from s981.loopia.se (unknown [172.22.191.5])
	by s807.loopia.se (Postfix) with ESMTP id 0D1952E285B3;
	Mon, 18 Mar 2024 09:16:19 +0100 (CET)
Received: from s898.loopia.se (unknown [172.22.191.5])
	by s981.loopia.se (Postfix) with ESMTP id 096BC22B1782;
	Mon, 18 Mar 2024 09:16:19 +0100 (CET)
X-Virus-Scanned: amavisd-new at amavis.loopia.se
X-Spam-Flag: NO
X-Spam-Score: -1.21
X-Spam-Level:
Authentication-Results: s898.loopia.se (amavisd-new); dkim=pass (2048-bit key)
	header.d=bit42.se
Received: from s980.loopia.se ([172.22.191.5])
	by s898.loopia.se (s898.loopia.se [172.22.190.17]) (amavisd-new, port 10024)
	with UTF8LMTP id eP2dE-LJK6d1; Mon, 18 Mar 2024 09:16:18 +0100 (CET)
X-Loopia-Auth: webmail
X-Loopia-User: richard@bit42.se
Received: from webmail.loopia.se (unknown [172.22.212.8])
	(Authenticated sender: richard@bit42.se)
	by s980.loopia.se (Postfix) with ESMTPA id 5724522016DA;
	Mon, 18 Mar 2024 09:16:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bit42.se;
	s=loopiadkim1707482520; t=1710749778;
	bh=OUxC+VGLp6plu670ubg2LmPDcfceBZ47SZYaAom2bXs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=OTcNjdW6QEpNGezj5Qza6DMNaK115/XFyOwP+6eJlPxu/YERzcAj8YOx3/lBSl4lz
	 jAMhNSS8gmPSU/cSVAX+DviLOlRmcpExB6/rwHThgQ/ZLcmLivGH+6SewLXF+259iA
	 BOiIzMY+/uioyw28aEOqRtMRm6V5ovKNxFbnhLEH5McQc3vqEkQT8IF/H30eCQteGI
	 rjtEnZuqKpsqF8r4pHressFAYNDFtkVVYKiwZ+gtmkl9+7+RInxyYtWnWMAfW8na36
	 t7G5l61E7eVboHvSNwecz3ldoZggIlLtZrpsP5/c5cw1HWdReDn+uyPxm8bxIWTbvw
	 /r3roKy1d0ARg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Mon, 18 Mar 2024 09:16:18 +0100
From: richard@bit42.se
To: Sean Anderson <sean.anderson@linux.dev>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Rob Herring
 <robh@kernel.org>, linux-kernel@vger.kernel.org, =?UTF-8?Q?Niklas_S?=
 =?UTF-8?Q?=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, Michael Walle
 <michael@walle.cc>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Conor
 Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: Remove fsl,t1023-sfp in favor of
 fsl,layerscape-sfp
In-Reply-To: <20240317211257.GA2317294-robh@kernel.org>
References: <20240316002026.1808336-1-sean.anderson@linux.dev>
 <20240317211257.GA2317294-robh@kernel.org>
User-Agent: Loopia Webmail/1.6.3
Message-ID: <ea71226f785752be26258fb4e47def1c@bit42.se>
X-Sender: richard@bit42.se
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2024-03-17 22:12, Rob Herring wrote:
> On Fri, Mar 15, 2024 at 08:20:25PM -0400, Sean Anderson wrote:
>> These bindings document the same hardware (just different minor
>> revisions). Remove the newer fsl,t1023-sfp.
>> 
>> Fixes: aa1ed6047107 ("dt-bindings: nvmem: Add t1023-sfp efuse 
>> support")
> 
> I don't think Fixes is appropriate here. What was broken?
I also don't think Fixes is appropriate. Apart from that:

Acked-by: Richard Alpe <richard@bit42.se>

