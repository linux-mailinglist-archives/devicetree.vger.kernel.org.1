Return-Path: <devicetree+bounces-48902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3DD874210
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 22:35:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1CBF31C21FA6
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 21:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6953318EAF;
	Wed,  6 Mar 2024 21:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0eqKC6x"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436B21B59D
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 21:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709760923; cv=none; b=C2Zqey0i4eGPITugsjtJ9SAn6WBJSusuDccTR2LkLA9ZRoQ7yLDFrQigPAj0HvuxGn6lUETnYUFyTvrXroTJ7Syilui6VS0VMe0qVK5JYidSWXVUllGY16GqFB5YgpJejCJdLm751YzuGRy9XtUjVrIhyQa+QR6IyIRZXMNGaxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709760923; c=relaxed/simple;
	bh=v3pB09c9hUwQJPj+uWy8bW/89Uoz9ktob+2XRAtRAT8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EtDUCD/xonUw9K8GgnQoHQP9lij+Zm+nCqMuY/dy4rNdkQDUV6XTOVYWe9OVJ6z4BEiwdE+nbMXGQKmiyooa7qnhBk827FNTGtQVoz+QupzPuxmEDb5YxOvyoagW63GK+Hf1twWuLH1fQh6OO3emvJdh/ZxMITqCIQdfVA4gF3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0eqKC6x; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97A99C433C7;
	Wed,  6 Mar 2024 21:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709760922;
	bh=v3pB09c9hUwQJPj+uWy8bW/89Uoz9ktob+2XRAtRAT8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l0eqKC6xjXVqkBoIiYhxS++3waY6YjEPT2AOIALgqKNgpUZYH0PUKDcYEklPTWHWJ
	 osDfqIfE9ByepPwJP2oyfcagyAoJZT/mSWk+KOZ8XzpZalCi/A81EV2GVxnCxoyJAP
	 cQsrZY0euOp0a+4IOlItQ383Yho+98g8nTadpHbj0Bhd/pPlMs4OO9i14WLvZGIFgJ
	 /nWpypABzc/uXUKkCOQQsR0fbBfj6DiquXwKIUucSJmppaezWy+mSoPMr9/HIGNBW4
	 N+E87L3iPPRKtdms2VD5Sj0X3MkNo4Wq/hAYV9t+siUO1Qk6GCGTfIO/73s7EsFgzT
	 4ruaihdF3p/oQ==
Date: Wed, 6 Mar 2024 15:35:20 -0600
From: Rob Herring <robh@kernel.org>
To: Mark Brown <broonie@kernel.org>, Zhang Yi <zhangyi@everest-semi.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com, yangxiaohua@everest-semi.com,
	zhuning@everest-semi.com
Subject: Re: [PATCH v1 2/2] ASoC: codecs: ES8326: change support for ES8326
Message-ID: <20240306213520.GA713664-robh@kernel.org>
References: <20240306013414.18708-1-zhangyi@everest-semi.com>
 <20240306013414.18708-3-zhangyi@everest-semi.com>
 <bf4651f8-279c-429a-8337-2211ce0b89ed@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bf4651f8-279c-429a-8337-2211ce0b89ed@sirena.org.uk>

On Wed, Mar 06, 2024 at 12:36:50PM +0000, Mark Brown wrote:
> On Wed, Mar 06, 2024 at 09:34:14AM +0800, Zhang Yi wrote:
> > Removed mic1-src and mic2-src. and changed default value
> > of interrupt-clk
> 
> We could do with a better changelog here.
> 
> > -  everest,mic1-src:
> > -    $ref: /schemas/types.yaml#/definitions/uint8
> > -    description:
> > -      the value of reg 2A when headset plugged.
> > -    minimum: 0x00
> > -    maximum: 0x77
> > -    default: 0x22
> > -
> > -  everest,mic2-src:
> > -    $ref: /schemas/types.yaml#/definitions/uint8
> > -    description:
> > -      the value of reg 2A when headset unplugged.
> > -    minimum: 0x00
> > -    maximum: 0x77
> > -    default: 0x44
> 
> This will make any DTs using the properties instantly buggy.  I believe
> there's a way of marking properties as deprecated, you should use that
> instead.  Or we could just leave the properties there and ignore them at
> runtime.

'deprecated: true' is the way.

Rob

