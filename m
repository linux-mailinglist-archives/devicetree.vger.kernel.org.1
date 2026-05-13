Return-Path: <devicetree+bounces-296683-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKn3IiUwBGo/FAIAu9opvQ
	(envelope-from <devicetree+bounces-296683-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:02:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FF552F42E
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:02:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5318B30068CA
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 08:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 168A6379C21;
	Wed, 13 May 2026 08:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qj7+jGEp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD80B36F904;
	Wed, 13 May 2026 08:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778659354; cv=none; b=N8yRDh7Smrz/IdS1Wsazca+3Rgd/Sp4LbHP/M9062B5o4ql2GG0xNx2L4JzneegVF7Y1ZWnnTXqV6H1OXu37+TZPR1vLC/9veMyAQzAElp2KqwLTcJORqLnfqQQ5UN2WiyDxfzIxK2KLcja0Lb8rpFY6beHCRsbN1QXbkW2W5uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778659354; c=relaxed/simple;
	bh=LJ+OZyd1KVqzqQx0da6hI3yv+DimVEexTWPbxsJi33Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IOHRuHU1bK5C2K3fDHKcISafYT95cGHViYj2FPC9PgpuYVkT0aCTMezkBJ/ny392llUMygldwwewa+uZAJoClQTHPEYj+ZT2YOW+t50Lw8A0YSaMcUvKIk8gsAYpiqg1mh3oQEAmPdHXKakAGRtt1qJ7pOeQk6M8kdpTSoihPtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qj7+jGEp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25BEFC2BCB7;
	Wed, 13 May 2026 08:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778659354;
	bh=LJ+OZyd1KVqzqQx0da6hI3yv+DimVEexTWPbxsJi33Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qj7+jGEpuj4CoThb4qZRIfcDLV0hkXt0EX9NQUpYWjAzsxvDvOSmgB6MD14YNlSsG
	 oEO1l34Bq4X9nW6U1dmdkrTMl/R2Gy4Eom0NAlpEGy+wCA/p7LtEwkzzM1vNPnL8WN
	 TCtcwr5b2vMXrerRXp/b44N/icVNVZpqRv4Wysmc6ZmO7RSJIn8F6vy7C0QsKbTqVr
	 w2uDGfzBtQZKmAfBMYFtmTJrek4Q3wQYIvTPaLknQeTrZMXBoAPpHLHp9oFP8tCrbk
	 cHaMPKXB/JXOv2U+luKbEu02L/xZEHt4Gt6Zfi0AD9SgGR7r34aizYSKTQJ0RLTYS/
	 2cHm0Jz7A+UzQ==
Date: Wed, 13 May 2026 08:02:32 +0000
From: Yixun Lan <dlan@kernel.org>
To: Andre Heider <a.heider@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@gentoo.org>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/6] riscv: dts: spacemit: k1-musepi-pro: add PMIC and
 power infrastructure
Message-ID: <20260513080232-GKA3644607@kernel.org>
References: <20260513071958.29574-1-a.heider@gmail.com>
 <20260513071958.29574-2-a.heider@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260513071958.29574-2-a.heider@gmail.com>
X-Rspamd-Queue-Id: 39FF552F42E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296683-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RBL_SEM_IPV6_FAIL(0.00)[2600:3c04:e001:36c::12fc:5321:query timed out];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Hi Andre,

On 09:19 Wed 13 May     , Andre Heider wrote:
> Enable i2c8 and add the connected SpacemiT P1 PMIC with its related regulators
> for the board's power infrastructure and voltage regulation support.
> 
> Signed-off-by: Andre Heider <a.heider@gmail.com>
> ---
>  .../riscv/boot/dts/spacemit/k1-musepi-pro.dts | 134 ++++++++++++++++++
>  1 file changed, 134 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts b/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
> index 29e333b670cf0..e0b585c50014b 100644
> --- a/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
> @@ -17,6 +17,7 @@ / {
>  	aliases {
>  		ethernet0 = &eth0;
>  		serial0 = &uart0;
> +		i2c8 = &i2c8;
>  	};
>  
>  	chosen {
> @@ -33,6 +34,15 @@ led1 {
>  			default-state = "on";
>  		};
>  	};
> +
..
> +	reg_vcc_4v0: regulator-vcc-4v0 {
I prefer to keep this name same as other boards, so let's change it
to reg_vcc_4v ..

> +		compatible = "regulator-fixed";
> +		regulator-name = "VCC4V0";
> +		regulator-min-microvolt = <4000000>;
> +		regulator-max-microvolt = <4000000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
>  };

-- 
Yixun Lan (dlan)

