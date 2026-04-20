Return-Path: <devicetree+bounces-288675-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8C25BZ0c5mlurwEAu9opvQ
	(envelope-from <devicetree+bounces-288675-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 14:31:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C19942ABA3
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 14:31:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EC3FE3012A99
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 12:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CE4B39F164;
	Mon, 20 Apr 2026 12:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwWh3krC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E7C2E8B71;
	Mon, 20 Apr 2026 12:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776687776; cv=none; b=RenEipbaos7sVGPpKVe8dnkMrIa/Px1wMbLCQfX46Ixvk+vsJfNsHA4QmVwntgaZZKV/fi7JeX5ZH4TwablkMdB3BvcwXpvhamSPeWmKyGeaeWbiQVL5Hq/u9PrYJt07ICP4zQmHoXsovkQIgdxLgavsQrwgqonp317ol6dW5c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776687776; c=relaxed/simple;
	bh=FWT2AHE8AHc5mbnJuF7YTb4hMU+BSua0uQas/x6u7aE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UHCqt1d/vLf+u6mSKTQAUIfPBbolJ/yjS+ofu72BGMThhndn0IM3CskPJvUw/rTPlz6Q1iel8k2BhYIfXv9QJciEHvXpF1+zdfKgONCeK93BWwbtTMGppT/SeKUWLpXsAF+KkJl0Z5U1YSetDdmReBcFuj11Hzjhy9wkI4xRptE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwWh3krC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA295C19425;
	Mon, 20 Apr 2026 12:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776687775;
	bh=FWT2AHE8AHc5mbnJuF7YTb4hMU+BSua0uQas/x6u7aE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=fwWh3krCsa6eLMRjKVFuyfO6jWzFfJkasUdYZ45vsjgb38ZVHmXcAwaQ3Mj/JhdSy
	 /F/L7Zo+Asa1onUEy5vF6EiLqPVsvzPnAzKjEeA5zvsEimExeN/1S1BWJKsZWmE0qr
	 aFT+D2GHacpz5NWDIg7O/ljNWuWVA7z4qzp7Q6wh5rBaDrK5LNxjmfW2M4+cPXgu/B
	 e1oRHH6hqQZBnVK+KMCmFpjSRqfSNPWAEvRAx11EbJTu3rCD2j0GhGFkK7S5Weykij
	 CS89itfiUl081RB/MOBckGSDjrBYdjFhTq0uGUf3siXCmPlohfz3HwVK3nv+dFvJjY
	 IeGj9k1TFrEwA==
Date: Mon, 20 Apr 2026 13:22:48 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Ariana Lazar <ariana.lazar@microchip.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, "Andy Shevchenko" <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Conor Dooley <conor.dooley@microchip.com>, Jonathan
 Cameron <Jonathan.Cameron@huawei.com>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: iio: dac: mcp47feb02: Fix I2C address in
 example
Message-ID: <20260420132248.466cdc84@jic23-huawei>
In-Reply-To: <20260420-mcp47feb02-fix6-v1-1-ae1808fea11d@microchip.com>
References: <20260420-mcp47feb02-fix6-v1-1-ae1808fea11d@microchip.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [5.34 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288675-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,body];
	RCPT_COUNT_TWELVE(0.00)[12];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	R_SPF_ALLOW(0.00)[+ip4:104.64.211.4:c];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.997];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.60:email,microchip.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: 0C19942ABA3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 20 Apr 2026 13:36:02 +0300
Ariana Lazar <ariana.lazar@microchip.com> wrote:

> Change example reg value from 0 to 0x60 in order to use a valid I2C address
> 
> Fixes: 4ba12d304175 ("dt-bindings: iio: dac: adding support for Microchip MCP47FEB02")
> Link: https://lore.kernel.org/all/dd0dbadb-604b-4f12-8674-268b7db096fd@baylibre.com/
> Signed-off-by: Ariana Lazar <ariana.lazar@microchip.com>
> ---
>  .../bindings/iio/dac/microchip,mcp47feb02.yaml     | 32 +++++++++++-----------
>  1 file changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb02.yaml b/Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb02.yaml
> index d2466aa6bda2106a8b695347a0edf38462294d03..95ddc8321eff34ed27dab8ce712210d2cb9ae785 100644
> --- a/Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb02.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb02.yaml
> @@ -280,23 +280,23 @@ examples:
>  
>          #address-cells = <1>;
>          #size-cells = <0>;
> -        dac@0 {
> -          compatible = "microchip,mcp47feb02";
> -          reg = <0>;
> -          vdd-supply = <&vdac_vdd>;
> -          vref-supply = <&vref_reg>;
> +        dac@60 {
> +            compatible = "microchip,mcp47feb02";
Why is this indent changing?

> +            reg = <0x60>;
> +            vdd-supply = <&vdac_vdd>;
> +            vref-supply = <&vref_reg>;
>  
> -          #address-cells = <1>;
> -          #size-cells = <0>;
> -          channel@0 {
> -            reg = <0>;
> -            label = "Adjustable_voltage_ch0";
> -          };
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +            channel@0 {
> +                reg = <0>;
> +                label = "Adjustable_voltage_ch0";
> +            };
>  
> -          channel@1 {
> -            reg = <0x1>;
> -            label = "Adjustable_voltage_ch1";
> -          };
> -      };
> +            channel@1 {
> +                reg = <0x1>;
> +                label = "Adjustable_voltage_ch1";
> +            };
> +        };
>      };
>  ...
> 
> ---
> base-commit: d2a4ec19d2a2e54c23b5180e939994d3da4a6b91
> change-id: 20260417-mcp47feb02-fix6-bd6694d84750
> 
> Best regards,


