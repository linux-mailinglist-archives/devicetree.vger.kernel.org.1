Return-Path: <devicetree+bounces-46918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D0486B39C
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 16:47:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 515DCB214D0
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 15:47:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B23AB15CD60;
	Wed, 28 Feb 2024 15:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HacrkOlz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8316915B98C;
	Wed, 28 Feb 2024 15:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709135242; cv=none; b=gnA4l7Iowg+E3TJpU8jRghT7XXzB9vcylAe/70HcmIiYRrqXeWWDXLe+AqSEInvezYqmIDJFfIuHSdiwom7DT0loQB3Lk6Im4Nb3+fujLW2eZtQmKfQ3CPn+xSbwyuEqKnkJEHsmjr109S7X8SCYsSUtdG/3okllw0kX7KBX9GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709135242; c=relaxed/simple;
	bh=bWI9Jt/Qt6QN8PnWaeP0R2Vq19OQke6FCBwozsWe5Xo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N3o2uXWVzh5wNrBimcgwWh+yWoIvHdtw/uimSzFcSVOmNHw23qUls7tH/nVIDsFh6QfQlA9lw0SIpOaYoJJqzwD35qhMgJw3W9CskEysVxfHIzAwEp40ynfpn7zM3NoYzf6z2DvRAWiwiEwsYdK5H7THoh156BiYWpmF6KCYUXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HacrkOlz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2462C433C7;
	Wed, 28 Feb 2024 15:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709135242;
	bh=bWI9Jt/Qt6QN8PnWaeP0R2Vq19OQke6FCBwozsWe5Xo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HacrkOlzUV4lDVR2fL/sUm+le+hDTERV12t40fZOrseR9zEHFe4wXD7qX1YfZtA2I
	 h3nPF+/g9owNTAx8gY9qQr/rzS1iogvORh9eY5G4Vja5rolAVcJ7O2GH3uWz4mB3Tb
	 LaUIUgGKrLGrS66xKmbEOJE8Yd6n7GgYn55H+pbgnnB2ddsAQgelZluCqdB/N8Ixjj
	 lhTDt7yq4+sAw66Do03+tV9aROH31Qx7xN+niuxEv9BOS0PZCiFcuwbt8qwo4haBzs
	 +0yXyN0vGzOMRP+OWFmrFPb0nYydPtjiGCjrkL0EM9K9xcp6YkG1D6zmP3TpfMqu55
	 3XYdXC/lhpBEg==
Date: Wed, 28 Feb 2024 09:47:19 -0600
From: Rob Herring <robh@kernel.org>
To: Eddie James <eajames@linux.ibm.com>
Cc: linux-fsi@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	andi.shyti@kernel.org, alistair@popple.id.au, joel@jms.id.au,
	jk@ozlabs.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, lakshmiy@us.ibmcom
Subject: Re: [PATCH v2 08/31] dt-bindings: fsi: Add AST2700 compatible
Message-ID: <20240228154719.GA3933171-robh@kernel.org>
References: <20240226165321.91976-1-eajames@linux.ibm.com>
 <20240226165321.91976-9-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240226165321.91976-9-eajames@linux.ibm.com>

On Mon, Feb 26, 2024 at 10:52:58AM -0600, Eddie James wrote:
> Document the 2700 FSI master compatible string.
> 
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
>  Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Would be nice to see some ASpeed stuff converted to schemas...

Rob


