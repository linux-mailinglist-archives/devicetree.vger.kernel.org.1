Return-Path: <devicetree+bounces-134279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F739FD1E5
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 09:19:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E12518824FD
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 08:19:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53AA81494BB;
	Fri, 27 Dec 2024 08:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unro+TWK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE784204E;
	Fri, 27 Dec 2024 08:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735287591; cv=none; b=OVRQ6BI/+QGO9v2cu1cl2hHx4HUJ+rvUQOToDSzjaVLpbjRkW3B3k9qMf2LdwqAQNQIl4vEIdOz/C7nXv6KR5GKGkS5xghacs5PjQP1P15sif2AXAE6EtV589n6JwBM7FFq5CwDED2SsXFTAJOIJMhRMgrDCKCPebeGKBASNpJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735287591; c=relaxed/simple;
	bh=0agEqi+5wy6dQCun+Z5776mCYbsO105lHFh4cC3fVss=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rA0aFpNyTOrVJi6unXTQa5mVcxIO0RTV3msI786V6zn0f/6peJewFdymdQIS7d8PV7yoSYhmDdaZxdZnZpJ/nSYA+qUWOXfYtUQHvdTljaqHXvJuxK9igmw0Nlsk7svo1bE7MvdCpI4Ng2uqYXFfc2iv8bvGPOPi239cGw1mV1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unro+TWK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D53F3C4CED0;
	Fri, 27 Dec 2024 08:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735287590;
	bh=0agEqi+5wy6dQCun+Z5776mCYbsO105lHFh4cC3fVss=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=unro+TWKsFjwnlQEzLbzqHKh4IKhT5lvQIxljrTMtuGSHUKqkeGeCxI46CyB+GhxS
	 8dQntWzKEYLpIWgSXajYEG9fL8OIQQAGekOZ1jGGdg1T8I7llCLXLgrLua9kXVZwAx
	 jtpRGh281Ru3iIFANmHpk9vNI1uE+9SagfYWQXKTYECYyDmtI7Rc4EwJl4ZlWU/usM
	 b8luzAhs7czcnDVzMJ9My1zG3d3UeRb1uIJIh5/bWLCpKTzSukENqnfJ69EFVEM63s
	 iMuMWepmOufWdhKrpsaxZLNbkIvst7gAHUp6sbfask0q7pVv6Bgl4vFAODnz0xpkOa
	 5DPbSP4V+8pcA==
Date: Fri, 27 Dec 2024 09:19:47 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ivan Sergeev <ivan8215145640@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add BigTreeTech CB2
 and Pi2
Message-ID: <rchtzv3pkzef4jznrxnqwws5cexdsheccsu2jpu2p65zkdeya5@tnlps3gs35sb>
References: <20241227-bigtreetech-cb2-v3-0-91c556adcffe@gmail.com>
 <20241227-bigtreetech-cb2-v3-1-91c556adcffe@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241227-bigtreetech-cb2-v3-1-91c556adcffe@gmail.com>

On Fri, Dec 27, 2024 at 06:10:13AM +0300, Ivan Sergeev wrote:
> BigTreeTech CB2 and Pi2 are Rockchip RK3566 based boards
> 
> Signed-off-by: Ivan Sergeev <ivan8215145640@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

<form letter>
This is an automated instruction, just in case, because many review tags
are being ignored. If you know the process, you can skip it (please do
not feel offended by me posting it here - no bad intentions intended).
If you do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
</form letter>

Best regards,
Krzysztof


