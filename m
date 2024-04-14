Return-Path: <devicetree+bounces-59198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C0E8A45F6
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 00:40:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75F9B1F21454
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 22:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54582032D;
	Sun, 14 Apr 2024 22:40:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7981101EC
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 22:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713134451; cv=none; b=TvuZZH7ksSgpJ1vxo6v1f3etFdwNYzlRg6YXG5wi7kbicPSeFxLycc7vUtMJEfWIlQQIcyFMHq0Ce1l1VAPy5Ph1mqd8dmx+vm8ZEyPOgHJJhcsCCgvpBsYysG9M04XmwxLZ8wteueLAsjr3761g/KrWHyTqeH3togUQgetPXZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713134451; c=relaxed/simple;
	bh=zmcvPpwCXu8atrOisskY0TkiECf6yXh8ZknD4RqZXMQ=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nBj4qg4gFCKSXM2fcEkwrDAt7OAxykuA+lzsrEj5ldJ6vhKK8ojZy42qzsMIWHRh/CEh/mz161q2W9OVM+9sj/EhyX5rryegSMUtW5gu3tunjfDgS+L2avuQj6QHE9cG/xWjbDUCswxHMZXKv3Vgj9MCSBvycyDz+HMjBhs7d10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D3F0339;
	Sun, 14 Apr 2024 15:41:16 -0700 (PDT)
Received: from minigeek.lan (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 30ACF3F64C;
	Sun, 14 Apr 2024 15:40:46 -0700 (PDT)
Date: Sun, 14 Apr 2024 23:40:40 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 mripard@kernel.org, samuel@sholland.org, jernej.skrabec@gmail.com,
 wens@csie.org, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh@kernel.org, ryan@testtoast.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: irq: sun7i-nmi: Add binding for the
 H616 NMI controller
Message-ID: <20240414234040.4564c4af@minigeek.lan>
In-Reply-To: <20240414170424.614921-2-macroalpha82@gmail.com>
References: <20240414170424.614921-1-macroalpha82@gmail.com>
	<20240414170424.614921-2-macroalpha82@gmail.com>
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

On Sun, 14 Apr 2024 12:04:23 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add binding for the H616 NMI controller. This is necessary to handle
> interrupts from devices such as the internal PMIC.

I think "internal PMIC" is confusing, and I guess it's not really
relevant anyway and you can remove the whole sentence.
Instead just mention that this controller turns out to be compatible
to the one described in the A80 manual.

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml       | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> index 83603180d8d9..4fc8b0320a31 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> @@ -32,6 +32,9 @@ properties:
>        - items:
>            - const: allwinner,sun50i-a100-nmi
>            - const: allwinner,sun9i-a80-nmi
> +      - items:
> +          - const: allwinner,sun50i-h616-nmi
> +          - const: allwinner,sun9i-a80-nmi

It looks like this is the third chip that uses an A80 compatible
version. So I'd say it's time to use an enum to group the A100, H616
and V3s together. Check allwinner,sun6i-a31-r-intc.yaml for an example.

Otherwise looks good.

Cheers,
Andre

>  
>    reg:
>      maxItems: 1


