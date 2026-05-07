Return-Path: <devicetree+bounces-294150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMXKJvnB/GnSTAAAu9opvQ
	(envelope-from <devicetree+bounces-294150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 18:46:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC944EC62B
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 18:46:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 075B2301387C
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 16:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD3523002D1;
	Thu,  7 May 2026 16:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKdZzMm3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887101EA84;
	Thu,  7 May 2026 16:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778172404; cv=none; b=AMVmEb8j0IIjGg089enM+WZnXW3uyg0HBm2VuBa0YKNdCtLR/GkMBbNieR6EDWdb9Q5X5vB8ZfbGGe2NEEnm56/S5TUh3r14EBOcLRkQAKhWYmfM2VX5zHtWEtXl1wsSEkIRS5szxjkt4oy42RTHXdpHkn4Ih7ER664045RW5Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778172404; c=relaxed/simple;
	bh=gr2tAwqGlFnhIKUgJNchAl1HFJz4XoMsyeCP+60+hSA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=O5sRiTtWPcpZhsu5XLju+YdJ/3p3laduu37eB2ZVu/Zb6urH2rysGR165w4m1/GpSJQN3l7jfsKgXbJJRLVWBKNAWDklCBsWTA0x0EI6uckfHckRRdDvlDOX6RDvSn9xtHnQ65g9HWVFZWfd8ulE9FX4/w8U1+pDdgulJ76BKnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKdZzMm3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94FE7C2BCB2;
	Thu,  7 May 2026 16:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778172404;
	bh=gr2tAwqGlFnhIKUgJNchAl1HFJz4XoMsyeCP+60+hSA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=SKdZzMm3dlo76Unb/KkGyeiOqoU9b94aYXW5hmy2CFOs3VJHMNqW35kWK13owC6Hx
	 ZvUcBp4hqlPkmi3Q/WvGkHQw9oz2qVWeLuYOJ3VIVgObkM1DWLh+nWU1RkR+dWhfid
	 u1deCG03NiyQIcWjT8jBRD1iUspijwMTq0A+u4g6+t+axqfW3ujtAdigXPDA1fpVlH
	 V8ierxmQDPedZFzGM2dsdg2F6Z+flbYlNnoZqHpbV23dWutHKCatu3++Kwoi0apBbv
	 qin0Xm5kGFE4DRHMiykvVTQeOLrFgFIYEqAQH1B1vpTEC9POz+WTcBFEZO8oy0+3nj
	 GB0Rst2yAzjsw==
Date: Thu, 7 May 2026 17:46:34 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Vladislav Kulikov <vlad.kulikov.c@gmail.com>
Cc: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: iio: magnetometer: add MEMSIC
 MMC5983MA
Message-ID: <20260507174634.7d82d837@jic23-huawei>
In-Reply-To: <20260507124724.813043-2-vlad.kulikov.c@gmail.com>
References: <20260507124724.813043-1-vlad.kulikov.c@gmail.com>
	<20260507124724.813043-2-vlad.kulikov.c@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 0DC944EC62B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294150-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Thu,  7 May 2026 12:47:22 +0000
Vladislav Kulikov <vlad.kulikov.c@gmail.com> wrote:

> Add device tree binding documentation for the MEMSIC MMC5983MA
> 3-axis magnetometer connected via I2C.

HI Vladislav,

Usual question to answer.  How is this different from existing memsic
magnetometers that are supported?  Even if the driver is different
is there a reason to have a separate binding?  Note that same question
will apply to the driver - just provide some brief notes on how it
is different enough from existing devices. 

The others are all in trivial bindings.  They maybe should not be!

A few other comments inline.

Whilst you comment you've left the SPI side out, it would be good to still
have a DT binding even if the driver doesn't support it.


> 
> Signed-off-by: Vladislav Kulikov <vlad.kulikov.c@gmail.com>
> ---
>  .../iio/magnetometer/memsic,mmc5983.yaml      | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/memsic,mmc5983.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/magnetometer/memsic,mmc5983.yaml b/Documentation/devicetree/bindings/iio/magnetometer/memsic,mmc5983.yaml
> new file mode 100644
> index 000000000000..bbe2aa597f75
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/magnetometer/memsic,mmc5983.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/magnetometer/memsic,mmc5983.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MEMSIC MMC5983MA 3-axis magnetic sensor
> +
> +maintainers:
> +  - Vladislav Kulikov <vlad.kulikov.c@gmail.com>
> +
> +properties:
> +  compatible:
> +    const: memsic,mmc5983
> +
> +  reg:
> +    maxItems: 1
Binding should try to be as complete as possible, even if the driver
doesn't yet use some features.  Looks like we have an interrupt to 
describe.  Also vddio is missing based on the datasheet google found for me:

https://media.digikey.com/pdf/Data%20Sheets/MEMSIC%20PDFs/MMC5983MA_RevA_4-3-19.pdf

> +
> +  vdd-supply:
> +    description: Regulator that provides power to the sensor
> +
> +required:
> +  - compatible
> +  - reg
I'm guessing it doesn't work well without a power supply
   - vdd-supply 
should be here.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        magnetometer@30 {
> +            compatible = "memsic,mmc5983";
> +            reg = <0x30>;
> +            vdd-supply = <&vdd_3v3_reg>;
> +        };
> +    };


