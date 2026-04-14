Return-Path: <devicetree+bounces-287206-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EG6AARbq3WmulAkAu9opvQ
	(envelope-from <devicetree+bounces-287206-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 09:17:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 751A03F685B
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 09:17:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 008793020108
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 07:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1926437D103;
	Tue, 14 Apr 2026 07:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6lBR2e6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD3437CD50
	for <devicetree@vger.kernel.org>; Tue, 14 Apr 2026 07:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776151059; cv=none; b=uE4xgLhsKxNLlaeg9VbLMsRzxlsNYR46fc/GFmaT9ZkRczoBMQMBRW4WACo2PcFR3cM6ShxBTdC0b4KTEcmRGw/y5spfNOQp95S2Mv7N9V3Le2YvPNTIgxXkG+446I4GGB/YiGEYYbuKzz+hBfiYFqg9/U4ZkCyStzwD8oLbBK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776151059; c=relaxed/simple;
	bh=7Dmt/MiAmo5xB+PDGE2wLhfeSkGGhjTNlGfwTXY8+nw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AGK2rNYN7B3DyhGiVKCmirk9r+DkaP/bQKd7eEmNX+QsLSCNSUkh9nei/bhuE2lM6MBFSpChzo0j+hE9rwMxrsPlV797B2FYEpkgo87peIx5m52EV7E5x/Y5LS/vNdxeDSlFEhkXBeB59OOkIWbU3taddfKMbNCSDW2li/8buM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6lBR2e6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3BEDC19425;
	Tue, 14 Apr 2026 07:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776151058;
	bh=7Dmt/MiAmo5xB+PDGE2wLhfeSkGGhjTNlGfwTXY8+nw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o6lBR2e61fUSwrhVQQmt9aGxbbVeMr9eHmRVEole98mZDqnqrvjwSyCcmfKxlQauC
	 CZLN20Xs3Tuv8wtrDPNl/PegDMEYzw6cPIZGpY/22ZvOjy9O+cTgF9SeDkDTnG8LOw
	 GZMd1L09EtFelyHM+oLwlhZtPzUl4bscMCiXz2awyqWkdxaAcolPk2QszbD2Nenz7G
	 JKHxutyohzg3satWsxNEIO75P3dLjSbczAoPHXfTVUKTzK6u8/kszXDH4/EwHUa0/v
	 9eDUxuyDx3htzv93DQI3heNAYouWvIIne0phgtMQjI7ClCmuIJ0WTzJqqCsflx1ayw
	 qpkj9idpk16NA==
Date: Tue, 14 Apr 2026 09:17:36 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: socfpga: Add the Agilex7 series SoC's
Message-ID: <20260414-certain-puffin-from-avalon-29ceeb@quoll>
References: <20260413144553.132737-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260413144553.132737-1-dinguyen@kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287206-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 751A03F685B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 13, 2026 at 09:45:52AM -0500, Dinh Nguyen wrote:
> The Agilex7 is a series of devices from Altera that are derived from
> the Agilex family.
> 
> The Agilex7F device supports PCIE 4.0 and DDR4. The Agilex7I device supports
> PCIE 5.0 and DDR4, while the Agilex7M device supports DDR4, DDR5, LPDDR5
> and PCIE 5.0.
> 
> All other peripherals from these devices are the same as the Agilex
> device.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/altera.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
> index 206686f3eebc..5ee09f8d4698 100644
> --- a/Documentation/devicetree/bindings/arm/altera.yaml
> +++ b/Documentation/devicetree/bindings/arm/altera.yaml
> @@ -115,6 +115,16 @@ properties:
>                - intel,socfpga-agilex5-socdk-nand
>            - const: intel,socfpga-agilex5
>  
> +      - description: Agilex7 series F, I and M boards
> +        items:
> +          - enum:
> +              - intel,socfpga-agilex7m-socdk
> +          - enum:
> +              - intel,socfpga-agilex7f
> +              - intel,socfpga-agilex7i
> +              - intel,socfpga-agilex7m
> +          - const: intel,socfpga-agilex

And separate question - why previous soc "agilex" is used as fallback?
Even more confusing.

Best regards,
Krzysztof


