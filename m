Return-Path: <devicetree+bounces-153919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 16741A4E3BF
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 16:39:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABE6317E9BE
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 15:32:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BACA296161;
	Tue,  4 Mar 2025 15:20:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from beeline3.cc.itu.edu.tr (beeline3.cc.itu.edu.tr [160.75.25.117])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4268329616B
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 15:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=160.75.25.117
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741101645; cv=pass; b=CtbCr1GiNezvp7F0SSDmGBic/5wk3hvcgK4JEmDM6kpiDvQCN1BOYEzO7434fv0pPAPRoppwMuX/oHHvtrILFXSTJSbeCCMaExCIWq7EnDKn0R3ljeZGMyOnTWuVhSVqwuxeZnuYwFCPMN308iuw0OiaF/1uRr6NCM3f+bN2nJA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741101645; c=relaxed/simple;
	bh=gCpNNSve1jlt1V5SnYQVpGjhoChNTjthXctFbRk7RpM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=epA4uxmw3KbEjexXNLpvNSZsUyJFboh8Qqyc3JrHImHDV26Mak160fIcg6U0dznnWmna0C3B9s/tmNvCOeefczZweN+3BXAPvsTzaKIhURqCRApJbLIAE3RqkMK7h71TMcSBMBlf3PxVQl+z/6y+292pvdgOfy6pjp4qMLGWjrk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gentoo.org; spf=none smtp.mailfrom=cc.itu.edu.tr; arc=none smtp.client-ip=140.211.166.183; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=pass smtp.client-ip=160.75.25.117
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr
Received: from lesvatest1.cc.itu.edu.tr (lesvatest1.cc.itu.edu.tr [10.146.128.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by beeline3.cc.itu.edu.tr (Postfix) with ESMTPS id 61FC940CEC89
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 18:20:41 +0300 (+03)
X-Envelope-From: <root@cc.itu.edu.tr>
Received: from lesva1.cc.itu.edu.tr (unknown [160.75.70.79])
	by lesvatest1.cc.itu.edu.tr (Postfix) with ESMTP id 4Z6fVt1wdZzG07Y
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 18:19:50 +0300 (+03)
Received: by le1 (Postfix, from userid 0)
	id 9A8FA42735; Tue,  4 Mar 2025 18:19:47 +0300 (+03)
X-Envelope-From: <linux-kernel+bounces-541280-bozkiru=itu.edu.tr@vger.kernel.org>
Received: from fgw1.itu.edu.tr (fgw1.itu.edu.tr [160.75.25.103])
	by le2 (Postfix) with ESMTP id 6707843667
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 12:35:36 +0300 (+03)
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by fgw1.itu.edu.tr (Postfix) with SMTP id F3A813064C0E
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 12:35:35 +0300 (+03)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 522F63AE1FB
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 09:35:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6418C1F131A;
	Mon,  3 Mar 2025 09:35:22 +0000 (UTC)
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3302C1EE7D3;
	Mon,  3 Mar 2025 09:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740994520; cv=none; b=RozIdKeZEGnF5PqKuum/jwpZB2zZ0nRL+i5Wists13JEB8NunO6mFnxPQ1OmKFMqYFVtZmBZYf+YjjX0DHXQzq6mGg+C2riPtWDU6udCv9ToVP8Bv2MkM139A0D99qFykBRm3D7EpLpQU78tQR9ea5zVsnytTxNifRdzDbRrQS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740994520; c=relaxed/simple;
	bh=gCpNNSve1jlt1V5SnYQVpGjhoChNTjthXctFbRk7RpM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jG6W0za3fTapzwPCSeztAPnSGKK8+Qsf4cFdpCRHS9f/T75/kTEj0xk7OqueGsAkxhBLBr24e9F8GJ3iUxRJvG1NCJfJvjs+S6TCR7t490Pt6HwyO3yZITG4CvRe8F/FP9PwJnyBvyIacI09068+PySqbPNPoT0YV0H93UgNWBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from localhost (unknown [116.232.55.252])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 06910342FAE;
	Mon, 03 Mar 2025 09:35:16 +0000 (UTC)
Date: Mon, 3 Mar 2025 09:35:06 +0000
From: Yixun Lan <dlan@gentoo.org>
To: Troy Mitchell <troymitchell988@gmail.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-riscv@lists.infradead.org,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, spacemit@lists.linux.dev,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH RESEND v5 1/2] dt-bindings: i2c: spacemit: add support
 for K1 SoC
Message-ID: <20250303093506-GYA58937@gentoo>
References: <20250303-k1-i2c-master-v5-0-21dfc7adfe37@gmail.com>
 <20250303-k1-i2c-master-v5-1-21dfc7adfe37@gmail.com>
Precedence: bulk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250303-k1-i2c-master-v5-1-21dfc7adfe37@gmail.com>
X-ITU-Libra-ESVA-Information: Please contact Istanbul Teknik Universitesi for more information
X-ITU-Libra-ESVA-ID: 4Z6fVt1wdZzG07Y
X-ITU-Libra-ESVA: No virus found
X-ITU-Libra-ESVA-From: root@cc.itu.edu.tr
X-ITU-Libra-ESVA-Watermark: 1741706393.6222@c45Mm8cATGFFtbrSD+7BCQ
X-ITU-MailScanner-SpamCheck: not spam

On 13:30 Mon 03 Mar     , Troy Mitchell wrote:
> The I2C of K1 supports fast-speed-mode and high-speed-mode,
> and supports FIFO transmission.
> 
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Troy Mitchell <troymitchell988@gmail.com>
> ---
>  .../devicetree/bindings/i2c/spacemit,k1-i2c.yaml   | 59 ++++++++++++++++++++++
>  1 file changed, 59 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml b/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..db49f1f473e6f166f534b276c86b3951d86341c3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/spacemit,k1-i2c.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: I2C controller embedded in SpacemiT's K1 SoC
> +
> +maintainers:
> +  - Troy Mitchell <troymitchell988@gmail.com>
> +
> +properties:
> +  compatible:
> +    const: spacemit,k1-i2c
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
..
> +  clocks:
> +    minItems: 2
> +    maxItems: 2
> +
> +  clock-names:
> +    minItems: 2
> +    maxItems: 2
I'd suggest to give a brief description and explicit clock name here,
you can consult marvell,mv64xxx-i2c.yaml for example

> +
> +  clock-frequency:
> +    description: |
> +      K1 support three different modes which running different frequencies
> +      standard speed mode: up to 100000 (100Hz)
> +      fast speed mode    : up to 400000 (400Hz)
> +      high speed mode    : up to 3300000 (3.3Mhz)
> +    default: 400000
> +    maximum: 3300000
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i2c@d4010800 {
> +        compatible = "spacemit,k1-i2c";
> +        reg = <0xd4010800 0x38>;
> +        interrupt-parent = <&plic>;
> +        interrupts = <36>;
> +        clocks = <&ccu 176>, <&ccu 90>;
> +        clock-names = "apb", "twsi";
9.1.4.61 TWSI0 CLOCK RESET CONTROL REGISTER(APBC_TWSI0_CLK_RST)
https://developer.spacemit.com/documentation?token=LCrKwWDasiJuROkVNusc2pWTnEb#part594
from above docs, there are two clocks 
bit[1] - FNCLK, TWSI0 Functional Clock Enable/Disable
bit[0] - APBCLK, TWSI0 APB Bus Clock Enable/Disable

I'd suggest to name it according to the functionality, thus 'func', 'bus'
clock, not its source.. which would make it more system wide consistent

> +        clock-frequency = <100000>;
> +    };
> +
> +...
> 
> -- 
> 2.34.1
> 

-- 
Yixun Lan (dlan)
Gentoo Linux Developer
GPG Key ID AABEFD55


