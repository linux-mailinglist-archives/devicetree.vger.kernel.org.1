Return-Path: <devicetree+bounces-59201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5588A464A
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 02:12:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A61E280F30
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 00:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02E6C193;
	Mon, 15 Apr 2024 00:12:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9EE933C9
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 00:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713139942; cv=none; b=Je4CSaQ0z0pMGkZubId1eppOEeHAhr+lGRXm/HU3MBCbs2FRnx1XaG5Ecg/3jHyKyjICbrSJ1crw1gzj5oLNywcJrxrsVuaEUWEf6wXNlFvwnZS8VPp7kdfaMxqnKKH2+g/suIT2lMUG6O/0JujX++ccyrkX/WxXmY4N9+MoN1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713139942; c=relaxed/simple;
	bh=2PPfPgdcAz4o/J+ipIVptKfW7BqeAT/8tVYSnfF8l+k=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Z6eDSYf5gZFqoxKfQe8LXojEduAGBJaPLadluHWkuSwMZBBr+Jvt/ZCqLsP7FBFC2vqTOQb0GFVY7YylVLhVrngCrm/92OjXHGX/UNz/ePCU3VB6rWKKEC9M0b1VPmHXZ5S5rn4OFdgtahz2rSxKQaqPVKDvnZx6jn2YaZEkOws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 68EE2339;
	Sun, 14 Apr 2024 17:12:48 -0700 (PDT)
Received: from minigeek.lan (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E2573F64C;
	Sun, 14 Apr 2024 17:12:18 -0700 (PDT)
Date: Mon, 15 Apr 2024 01:12:11 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Ryan Walklin <ryan@testtoast.com>
Cc: Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel
 Holland <samuel@sholland.org>, Chris Morgan <macromorgan@hotmail.com>,
 devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 4/4] arm64: dts: allwinner: h700: Add RG35XX-H DTS
Message-ID: <20240415011211.77c643e2@minigeek.lan>
In-Reply-To: <20240414083347.131724-7-ryan@testtoast.com>
References: <20240414083347.131724-2-ryan@testtoast.com>
	<20240414083347.131724-7-ryan@testtoast.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 14 Apr 2024 20:33:48 +1200
Ryan Walklin <ryan@testtoast.com> wrote:

Hi Ryan,

> From: Ryan Walklin <ryan@testtoast.com>
> 
> The RG35XX-H adds thumbsticks, a stereo speaker, and a second USB port
> to the RG35XX-Plus, and has a horizontal form factor.
> 
> Enabled in this DTS:
> - Thumbsticks
> - Second USB port
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>  .../sun50i-h700-anbernic-rg35xx-h.dts         | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts
> new file mode 100644
> index 000000000000..5b7de7bfc458
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts
> @@ -0,0 +1,38 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/*
> + * Copyright (C) 2024 Andre Przywara <andre.przywara@arm.com>.

Please remove my copyright, I didn't have my hands in this. Copyrights
are not that important anyway, since it's the license that rules.

> + * Copyright (C) 2024 Ryan Walklin <ryan@testtoast.com>.
> + * Copyright (C) 2024 Chris Morgan <macroalpha82@gmail.com>.
> + */
> +
> +
> +/dts-v1/;

Same as in 3/4: redundant line.

> +#include "sun50i-h700-anbernic-rg35xx-plus.dts"
> +
> +/ {
> +    model = "Anbernic RG35XX H";
> +    compatible = "anbernic,rg35xx-h", "allwinner,sun50i-h700";
> +
> +    gpio-keys: gpio-keys-thumb {

Is it intended to be in a separate node from the other keys? Just
reference the existing node (below, outside of the root node) and add
the keys in there.

> +       compatible = "gpio-keys";
> +
> +        keyThumbLeft {
> +            label = "GPIO Thumb Left";
> +            gpios = <&pio 4 8 GPIO_ACTIVE_LOW>; /* PE8 */
> +            linux,input-type = <EV_KEY>;
> +            linux,code = <BTN_THUMBL>;
> +        };
> +
> +        keyThumbRight {
> +            label = "GPIO Thumb Right";
> +            gpios = <&pio 4 9 GPIO_ACTIVE_LOW>; /* PE9 */
> +            linux,input-type = <EV_KEY>;
> +            linux,code = <BTN_THUMBR>;
> +        };
> +    };
> +};

I missed that in the first DTS, but you should move the 'status =
"okay";' lines for EHCI1/OHCI1 from patch 2/4 into here, since the
second USB port should stay disabled on those other two boards.

> +
> +&usbotg {
> +    dr_mode = "peripheral";

That looks odd. I do understand that a second USB port allows the
first to be dedicated to OTG, but I feels still weird that the default
for the only one on the other two boards is host.
Can you say what the expected use case is? Are people connecting things
like controllers to the only USB port? Otherwise I would expect this
more to be a charging port, to which peripheral would be a better fit.
I guess ultimately this would be "otg", but we need the AXP717 USB-C
support for that, which is not ready yet.

> +    status = "okay";
> +};

If there is an enable GPIO for VBUS, then the respective regulator
should be referenced here.

Cheers,
Andre

