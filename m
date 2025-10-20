Return-Path: <devicetree+bounces-229095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F65DBF3A2A
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 23:05:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 552FB540DC4
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 21:04:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8081F2E3387;
	Mon, 20 Oct 2025 21:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PD8Blozi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CE9224AF9;
	Mon, 20 Oct 2025 21:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760994196; cv=none; b=bAJrL4+3EvTZ0AFEAEyiCYp4QT1WfjhrJqsbsoxV5yOKVzvxiZjche36RciVLCN5npZF6swaDwNleDltQTRq30Cq/i1GzjEKA/vLKWZCIAPryJMmdw0v/fZtQElfjpDrUDYT0msdjaCH8ISfk6g7OHHe3R2Q3wX8CK9oa/iqGhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760994196; c=relaxed/simple;
	bh=Ou0q9+vDky6WmZGd0SxbtKlr44TKXu7QETyYG4jlv/Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jg10KUf+rHxA9Dpo1jEJK0FTmqWhQS/xz3vpmUkWUmPAkbxmwru1h0grJO2CktdVfXrBFCBxJijcvwSFAN7N0Rk8ogW2/+tPjALdHCLt8SMqnrjNuHEhP9TbmTw5I7hDANuZ9Tw+X8RXokAXP/HGi3pCQo9WB/NGtTXNxZp0u04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PD8Blozi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE54EC113D0;
	Mon, 20 Oct 2025 21:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760994196;
	bh=Ou0q9+vDky6WmZGd0SxbtKlr44TKXu7QETyYG4jlv/Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PD8Blozi+5D10vbjjn8gNtF52ctf2Tmff9XLBQX/XHhEroeYkQB8e/PpUXiKa8ZTn
	 0GDfxisJFJAhnRXyXDEkO7Ksr2UrD0024yJo8jo01gI2eMLvk98KchnvZMM0g2hoPJ
	 yUYljrN52TzXvN/TQO2efysVbkqpZFSSaNW7HTQD6pBZzD6dBNx9oL310gmyRkIpCB
	 1ONJJVDMMaR9omJGiQgJxBX7teiX4A8gBDoEbS6zhGiAWPGSWV0JMBHUPifGK/QXiJ
	 oOsAbceut+xOTImco6FABJLphQKPX2QtuQMfsJGaIIN8gi/FTnuhcXAZBGuiSUgKSt
	 GYJ2MZIjI6AGw==
Date: Mon, 20 Oct 2025 16:03:13 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: niravkumarlaxmidas.rabara@altera.com
Cc: krzk+dt@kernel.org, Matthew Gerlach <matthew.gerlach@altera.com>,
	linux-kernel@vger.kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2] MAINTAINERS: Change Altera socfpga-ecc-manager.yaml
 maintainer
Message-ID: <176099419186.1821570.3377055200887970860.robh@kernel.org>
References: <20251017083849.3213192-1-niravkumarlaxmidas.rabara@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251017083849.3213192-1-niravkumarlaxmidas.rabara@altera.com>


On Fri, 17 Oct 2025 16:38:49 +0800, niravkumarlaxmidas.rabara@altera.com wrote:
> From: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
> 
> Update Altera socfpga-ecc-manager dt bindings maintainer from
> <matthew.gerlach@altera.com> to <niravkumarlaxmidas.rabara@altera.com>
> as Matthew Gerlack is moving out of Altera.
> 
> Signed-off-by: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
> Acked-by: Matthew Gerlach <matthew.gerlach@altera.com>
> ---
> 
> changes in v2:
> - Update maintainer name in yaml bindings as well.
> - Use correct maintainer list for patch submission.
> 
> Link to previous patch Acked-by Matthew Gerlach
> https://lore.kernel.org/lkml/91cd7ccb-e821-48de-8d52-f8889af80a08@altera.com/
> 
>  .../devicetree/bindings/edac/altr,socfpga-ecc-manager.yaml      | 2 +-
>  MAINTAINERS                                                     | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks!


