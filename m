Return-Path: <devicetree+bounces-297949-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AsOApbKBmrynwIAu9opvQ
	(envelope-from <devicetree+bounces-297949-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 09:26:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8775F54A89F
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 09:26:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 81CBA3009517
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 07:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 063933E51F2;
	Fri, 15 May 2026 07:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iz8WGVuZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1CF37BE8F;
	Fri, 15 May 2026 07:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778829587; cv=none; b=UtQK4hMVsd8VJP2DmUXKE3yX2L/W0BzKpJ21XwxczbCQN8xS5qOEeSlFnZyn8kr+Z8QuN/BnwylI1rJEf1YSMPV4weQz0DoMg7+Psn1io01zBoHo4DT2NkOLqRCnCRRJ6nOn8jEYrtMU8Syr6Ln61/qy2wbFACuB6OlYJAtOqaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778829587; c=relaxed/simple;
	bh=t5fRpD3EnkE+Nxq5LbviM57nXqk9kkAaeHVvlVAGcXQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mHkmPtnNm+ED5QLYhMVqu2s+ltV8pc9BM50QZKzR/vCCHGDr3Vz5Fz35jywn2/yU/7GdYSRM//87hLopNrMIDpTX+6RPftpbN4tWr8WCZogrbmf5OobKJYrZFytk8YafBZfrxyzA7G8XAZMuyQjojoR4XvTkWWrw8YdRi1efHAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iz8WGVuZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70600C2BCB0;
	Fri, 15 May 2026 07:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778829587;
	bh=t5fRpD3EnkE+Nxq5LbviM57nXqk9kkAaeHVvlVAGcXQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Iz8WGVuZoGyvtgFS0FCc/rRdTDLsTmyRn5uTK77uogNixh04xLVHMPw9WjkNoLMhy
	 5IsqYVx9hu/W5XjRh2fNALK+14aZevRSM2EFobC4iOJ0qWAjfJOWHo4gOfj12dpUxZ
	 e016cgHG6cufWojNA2wEidcSSnsEqD6htECQ5FOUuxzTrLLbnaCbZJhiAxlD6Xk1Mv
	 YDm+rzgs1QfpZJFw2tOTFtFkH0ea6awXR9dF3T5rm6rC+ZTjJXM8VbVdWxtSJIaoz5
	 99Rw0urcPLT6hI/D9yEu+aWP6IdEO4POUpshZvw1r3N/FU1zJVirQFUCLf+7Mbrm9E
	 n0QLFPy0zoBpQ==
Date: Fri, 15 May 2026 09:19:44 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chancel Liu <chancel.liu@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	Frank.Li@nxp.com, s.hauer@pengutronix.de, festevam@gmail.com, 
	mturquette@baylibre.com, sboyd@kernel.org, kernel@pengutronix.de, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 2/5] dt-bindings: connector: Add fsl,io-connector binding
Message-ID: <20260515-resourceful-singing-roadrunner-ce25ec@quoll>
References: <20260509024846.2094049-1-chancel.liu@nxp.com>
 <20260509024846.2094049-3-chancel.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260509024846.2094049-3-chancel.liu@nxp.com>
X-Rspamd-Queue-Id: 8775F54A89F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297949-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,baylibre.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,nxp.com:email]
X-Rspamd-Action: no action

On Sat, May 09, 2026 at 11:48:43AM +0900, Chancel Liu wrote:
> The NXP I/O connector represents a physically present I/O connector on
> the base board. It acts as a nexus that exposes a constrained set of
> I/O resources, such as GPIOs, clocks, PWMs and interrupts, through
> fixed electrical wiring. All actual hardware providers reside on the
> base board. The connector node only defines index-based mappings to
> those providers.
> 
> Signed-off-by: Chancel Liu <chancel.liu@nxp.com>
> ---
>  .../bindings/connector/fsl,io-connector.yaml  | 94 +++++++++++++++++++
>  1 file changed, 94 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/connector/fsl,io-connector.yaml
> 
> diff --git a/Documentation/devicetree/bindings/connector/fsl,io-connector.yaml b/Documentation/devicetree/bindings/connector/fsl,io-connector.yaml
> new file mode 100644
> index 000000000000..8b5038a2332e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/connector/fsl,io-connector.yaml
> @@ -0,0 +1,94 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/connector/fsl,io-connector.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP I/O Connector
> +
> +maintainers:
> +  - Frank Li <Frank.li@nxp.com>
> +  - Chancel Liu <chancel.liu@nxp.com>
> +
> +description:
> +  The NXP I/O connector represents a physically present I/O connector on the
> +  base board. It acts as a nexus that exposes a constrained set of I/O
> +  resources, such as GPIOs, clocks, PWMs and interrupts, through fixed
> +  electrical wiring. All actual hardware providers reside on the base board.
> +  The connector node only defines index-based mappings to those providers.
> +
> +properties:
> +  compatible:
> +    const: fsl,io-connector

Everything is IO. Everything is connector, so your compatible does not
match requirements from writing bindings.

> +
> +  gpio-controller: true
> +
> +  '#gpio-cells':
> +    const: 2
> +
> +  gpio-map:
> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix

You do not need to redefine the types. You need constraints, though.

> +
> +  gpio-map-mask:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +
> +  gpio-map-pass-thru:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +
> +  '#clock-cells':
> +    const: 1
> +
> +  clock-map:
> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +
> +  clock-map-mask:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +
> +  clock-map-pass-thru:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array

I do not see these defined anywhere. I also checked cover letter for
references for pulls to dtschema.


> +
> +  pwm-map:
> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +
> +  pwm-map-mask:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +
> +  pwm-map-pass-thru:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +
> +  '#address-cells':
> +    const: 0
> +
> +  interrupt-controller: true
> +
> +  "#interrupt-cells":

Use consistent quotes.

> +    const: 2
> +
> +  interrupt-map: true
> +
> +  interrupt-map-mask: true
> +
> +required:
> +  - compatible

You need to require the properties. You have a FIXED connector, so it
has fixed set of features.

Best regards,
Krzysztof


