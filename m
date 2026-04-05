Return-Path: <devicetree+bounces-284726-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CE2uM04O0mnFSwcAu9opvQ
	(envelope-from <devicetree+bounces-284726-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Apr 2026 09:25:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 430C939D9AA
	for <lists+devicetree@lfdr.de>; Sun, 05 Apr 2026 09:25:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E98BF30097FB
	for <lists+devicetree@lfdr.de>; Sun,  5 Apr 2026 07:24:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA5CE346E43;
	Sun,  5 Apr 2026 07:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZeOq7YR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96D342874F8;
	Sun,  5 Apr 2026 07:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775373860; cv=none; b=spPF+zJ8XZqjx6+8p4r/cgL+aEe4FfexI/GC7pkWs1b9edfaDTkMYu4bHcJaqjkachHry3MFVptIyvlIM/TPc3N5pJpSj0gCA/vMCg1sW9Nu1zLi03DRCsq2hKd7O6DisqGzYJTT8vzsdP4tSnFiIZ8csLbKyR0JKVNm16rOEao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775373860; c=relaxed/simple;
	bh=42DZ9rar70RXNUvx2S1gEIaFxTQbJSiqeamqnAWSqcM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Oac6lrv3JK4JqCawKdlcCSSY2so9ksHkizkWWLzw4TSNBIb298DkqejqG5nrAgfO/DDxm2FSAjA8q77zGt19fFHri17+sgbbj0zz4EO5K3eNqcd/fAymIzUtbM8T+VAflRcFiqRkmZXBFm7eT1gkeveYyWiConsgAi5qrwDfzD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZeOq7YR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93D30C116C6;
	Sun,  5 Apr 2026 07:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775373860;
	bh=42DZ9rar70RXNUvx2S1gEIaFxTQbJSiqeamqnAWSqcM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gZeOq7YRjP1LVYl3Kflux+L7naoVUxdq0P0bSQ7Chd/ljnZliQdMZ7mN+zihk4dY4
	 QQpfRpcaL2TK+W2CFUXbyaW5/5T5gh9+p8Fi5iL3/ItVU05miHlw9QXgX9hmXSQ1BY
	 NJa5t0Bs1eBSBX6ndpQkbEkBZnOEUmxmZTQOsHGrVNII8Qc0py29GvU1YiDVBs2JTT
	 rIyWavDOl2KoRxRPlTJuqOKuasM/8iWiaDNUpbUXQLxW7WTcST4ClExJwxEVr9BjM/
	 0ijjER6GwKoBxktcbMOBPvBrSZgzwlurFl6kNMXc+JyutplXN3fZpoSmMSvnMvf4lQ
	 +uoMlz4xYWsnA==
Date: Sun, 5 Apr 2026 09:24:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: dongxuyang@eswincomputing.com
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, 
	huangyifeng@eswincomputing.com, ningyu@eswincomputing.com, linmin@eswincomputing.com, 
	pinkesh.vaghela@einfochips.com
Subject: Re: [PATCH 1/3] dt-bindings: clock: Add ESWIN eic7700 HSP clock and
 reset generator
Message-ID: <20260405-resourceful-amethyst-tarsier-0cdab6@quoll>
References: <20260403093459.612-1-dongxuyang@eswincomputing.com>
 <20260403093548.670-1-dongxuyang@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260403093548.670-1-dongxuyang@eswincomputing.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-284726-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14]
X-Rspamd-Queue-Id: 430C939D9AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 03, 2026 at 05:35:48PM +0800, dongxuyang@eswincomputing.com wrote:
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: HSP configuration top clock
> +      - description: MMC top clock
> +      - description: SATA top clock
> +
> +  clock-names:
> +    items:
> +      - const: hsp_cfg
> +      - const: hsp_mmc
> +      - const: hsp_sata

Drop hsp_ everywhere

> +
> +  '#clock-cells':
> +    const: 1
> +    description:
> +      See <dt-bindings/clock/eswin,eic7700-hspcrg.h> for valid indices.
> +
> +  '#reset-cells':
> +    const: 1
> +    description:
> +      See <dt-bindings/reset/eswin,eic7700-hspcrg.h> for valid indices.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - '#clock-cells'
> +  - '#reset-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    clock-controller@50440000 {
> +        compatible = "eswin,eic7700-hspcrg";
> +        reg = <0x50440000 0x2000>;
> +        clocks = <&clock 171>, <&clock 254>, <&clock 187>;
> +        clock-names = "hsp_cfg", "hsp_mmc", "hsp_sata";
> +        #clock-cells = <1>;
> +        #reset-cells = <1>;
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 76e91d47d2f4..bcbb9578c043 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -9506,8 +9506,11 @@ M:	Yifeng Huang <huangyifeng@eswincomputing.com>
>  M:	Xuyang Dong <dongxuyang@eswincomputing.com>
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/clock/eswin,eic7700-clock.yaml
> +F:	Documentation/devicetree/bindings/clock/eswin,eic7700-hspcrg.yaml
>  F:	drivers/clk/eswin/
>  F:	include/dt-bindings/clock/eswin,eic7700-clock.h
> +F:	include/dt-bindings/clock/eswin,eic7700-hspcrg.h

Why this cannot be eswin,eic7700* pattern in each directory?

> +F:	include/dt-bindings/reset/eswin,eic7700-hspcrg.h
>  
>  ET131X NETWORK DRIVER
>  M:	Mark Einon <mark.einon@gmail.com>
> diff --git a/include/dt-bindings/clock/eswin,eic7700-hspcrg.h b/include/dt-bindings/clock/eswin,eic7700-hspcrg.h

Best regards,
Krzysztof


