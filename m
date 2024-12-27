Return-Path: <devicetree+bounces-134284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2779FD1FA
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 09:31:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CEE7B161F33
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 08:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6D7D12FB1B;
	Fri, 27 Dec 2024 08:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzxifEoX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACC542BAF7;
	Fri, 27 Dec 2024 08:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735288277; cv=none; b=SuoQFAsdQL6GB8/nIu0asFKwdK/nX3Ys4b8vhlmEYmTJ35rI+8iu8ynyJL5A7s9LRSojAw/Rg6OD1tZCdNATFl+v4GXtXaDx02viWZ8PM0zWDt1AhGpyLM5tzHod2a/9q6rzcDA3ubjB8hJ/ev5Yc6b4Fdymx4W0TByo2Rs8ygE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735288277; c=relaxed/simple;
	bh=1J+WJdIlpcxBIfm9WuI/6Vi2vpa1pvsJuHCfl4h/3ac=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VQChw0/dYELzPKp1WTdD4Rsuc3EQLbgnJmFVS1HaHU/ozV2Rf3gmN/Y1IvpQvDOX6g7JS4TPAhHqcVorAe7jXcLxY4bTRmtWJH84SiuSxNau8q32QmXM1yt2cnlbC4vaKYg2w1711E+BUx3+KTkQKAKg2dft8RNLXO/mRGxc7hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzxifEoX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD139C4CED0;
	Fri, 27 Dec 2024 08:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735288277;
	bh=1J+WJdIlpcxBIfm9WuI/6Vi2vpa1pvsJuHCfl4h/3ac=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KzxifEoXPYoAubCx4KW/WpzJUbauZZd54NrBpkh0sBV4fzJn0gFzV8wQXgi2cH954
	 Jm3zxXAgT1DKNORuU/xmYsrfJqR/sxWCgtDflOZiQIYsE10AsdJY4gviX0AFqYkKqJ
	 +M8OgphyWpuf/1Ho5WwK/N7lRa0aKZRxikZJTLyiTTZvy/NZzRQ76i/wNZ1RvXjq87
	 7wSPOnD+nKKMATSXGLv4AIscvi4RMbc/rSjrLpD4cJxdeMcUaPGxCCzJwGt5TGFT5Q
	 RE+eFYWw9MfDvdSCuUqWbWx+c9EhHl1mmwkIxfQqw5qeukvXJT96tPULgXvxi/KCtw
	 5EgOIUQreDIlg==
Date: Fri, 27 Dec 2024 09:31:14 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	Finley Xiao <finley.xiao@rock-chips.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: power: add power binding header for
 RK3562 SoC
Message-ID: <f32nzf4x4mhmiyvby7b5g5ypre2457a7ziewglhjqfndfxhhnz@qxfagfw3bcsx>
References: <20241224093920.3816071-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241224093920.3816071-1-kever.yang@rock-chips.com>

On Tue, Dec 24, 2024 at 05:39:19PM +0800, Kever Yang wrote:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> According to a description from TRM, add all the power domains.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v2:
> - rename to rockchip,rk3562-power.h
> - update the subject
> - use dual license
> 
>  .../dt-bindings/power/rockchip,rk3562-power.h | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)


No, where is the actual binding?

Your split of patches is not bisectable, illogical and not helping.
Bindings always go with the drivers.

>  create mode 100644 include/dt-bindings/power/rockchip,rk3562-power.h
> 
> diff --git a/include/dt-bindings/power/rockchip,rk3562-power.h b/include/dt-bindings/power/rockchip,rk3562-power.h
> new file mode 100644
> index 000000000000..d728c9ee908d
> --- /dev/null
> +++ b/include/dt-bindings/power/rockchip,rk3562-power.h
> @@ -0,0 +1,35 @@
> +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */

And why not license requested by checkpatch?

Best regards,
Krzysztof


