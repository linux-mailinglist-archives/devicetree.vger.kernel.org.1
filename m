Return-Path: <devicetree+bounces-248716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CABB9CD53F3
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:09:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4764D3005AA2
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:09:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23D8C2D5436;
	Mon, 22 Dec 2025 09:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qt30uHvU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEAC28287E;
	Mon, 22 Dec 2025 09:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766394553; cv=none; b=uok+BbR9zJRjSy1ylWrrxzjeZgtJ8J580uCbYgyJAeNYEjpPNI3vRA46uEO1NBPTTWmY71TpTUTWlB7LUUcz3lHNzoLj38ytV5ZN4rn3wGZe7Yu2FmNpnxjE4JItbr2EACRn9QO2DdThvFDOMoMfo1SPQsOtFzvTlVxdMV/3/Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766394553; c=relaxed/simple;
	bh=dPA58icEyl1d1Y7YNyGO4sB5sX1GTGyKNMTI6sWHddQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rprI3ZXgDBeCtrBRWGRLZN+izl1MwreeIr2ELYLHF9QX1kk4iqK0KPIEyH5Xh69bCcmg46SPHh9YuktF/oMG5oVmiao/22P/gjEiBbbY+rhOYkSi3/joInnP20kTu6oPef4JLyAHP2m5MuVH454Oh2KSHjyCe3WIXlvB+NawCZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qt30uHvU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 981CDC4CEF1;
	Mon, 22 Dec 2025 09:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766394552;
	bh=dPA58icEyl1d1Y7YNyGO4sB5sX1GTGyKNMTI6sWHddQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qt30uHvUOqOKmrFaZsHXSxR7WqZkFYcq6JqlNlxnG2w/XWtFACiJBfp/76nf1OcUY
	 QIy9bmQnwDxJkcD+OETOzNTiaqwljx82r2Cas/Kl3wf/z9iigyH8Np4YfU0Tp0XMRy
	 j/o7DBkziUUMApKOt+bydQbK5owl8TiivJ2yuttsrCUgE0nQhWci5zRymtjtqfmOS7
	 HRgGZvizUYA+XbggJWUeTRH2EAtarMxRzamlpubmbrDOwVi/jvMIobsF4RDq6jaZEe
	 WgsC1Ca4u3i3Wevuzayglg2eYxBTgLmjIMinkDDugny+ix7qwjANjW+UeoVAQr4lU4
	 VSwSxGG+zNb5w==
Date: Mon, 22 Dec 2025 10:09:08 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Harini T <harini.t@amd.com>
Cc: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, michal.simek@amd.com, shubhrajyoti.datta@amd.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	git@amd.com
Subject: Re: [PATCH] dt-bindings: mailbox: xlnx,zynqmp-ipi-mailbox: Document
 msg region requirement
Message-ID: <20251222-funny-aspiring-seal-05c4ae@quoll>
References: <20251222044653.1757886-1-harini.t@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251222044653.1757886-1-harini.t@amd.com>

On Mon, Dec 22, 2025 at 10:16:53AM +0530, Harini T wrote:
> Add description clarifying that for Versal IPI mailboxes, both host and
> remote agents must have the "msg" register region defined for successful
> message passing. Without both, only notification-based communication
> works.
> 
> Signed-off-by: Harini T <harini.t@amd.com>
> ---
>  .../bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml           | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml
> index 04d6473d666f..8fdf77c7935c 100644
> --- a/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml
> @@ -165,6 +165,12 @@ allOf:
>          reg-names: false
>  
>      else:
> +      description:

Else block cannot have description.

> +        For Versal IPI mailboxes, the "msg" register region is optional.

So it is optional...

> +        However, for successful message passing via mailbox, both the host IPI

And it is not optional. If nothing works, then it is not optional.

And why would it be optional in the first place? You generate your same
IP with different settings?

Best regards,
Krzysztof


