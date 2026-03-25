Return-Path: <devicetree+bounces-280157-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJVLOmxNw2n8pwQAu9opvQ
	(envelope-from <devicetree+bounces-280157-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 03:50:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EC231ED9E
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 03:50:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5155B309D738
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 02:49:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D660029BDAD;
	Wed, 25 Mar 2026 02:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frXEP3sg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B307829B8D0;
	Wed, 25 Mar 2026 02:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774406945; cv=none; b=BlHDx6YIuDaAqSSIW4vVOABRJqTjLkSrbBtIzcmo9V/5NZHHvsvHYxYLTwAHeT5aqwD6Gh0aOzxLP/RRvjsC4JfIO9GjckKzAj6Hu3dyqxGZm+jSFHMqLpDFNlr+ndItrTqwdbKxkmOBJWFlMeqKbeXDdR+Z7NT/F+b4y5ypAP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774406945; c=relaxed/simple;
	bh=NXf2WNHgUrsXctzD8+piqofyVEnIOCaRrGV7Z3iMfXY=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=hlaxWMhaNi56zaB6ocfDAxxY9BlSe1dyDOzkmZjpPvvSuXW/5xEu0WBaA4hhzGlhivnOTBmxCKtbLDFQ65rAu0d9kwRMkIhOcufSmnOuoAi0wetHMTYD8SDd5iHWbBxRikY1OGqntGrQbdSAGInnHPKKO2KnMFFPaKJ9o7EDi0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frXEP3sg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50888C2BCB2;
	Wed, 25 Mar 2026 02:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774406945;
	bh=NXf2WNHgUrsXctzD8+piqofyVEnIOCaRrGV7Z3iMfXY=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=frXEP3sgTwL9btbGzemrAzj0euOr8ss/Sh5SHnDklwKWKklwI+YBkOAeumbzTx5Qk
	 yuWHIRTc7untDvKLJGv1USaWcCItcTftPV/IxNZI0W8odCNGDyS8g4YjZGgwsiavmr
	 e7REuLLsi/FBrCpgngM5SGNtdRWdTWKCOIKbdbImPlTH0RAKzKyBVbSvzrWRjncxKu
	 7tEIxVwjyeFR442QXVo4WkrbTOGeGDtFS9IARuGvSr6W5SzyNbm4f26wfnmeZjpdFf
	 /nWNDI7Xkk+UZ+bGzxrBww09jQ+tLPTq7H36R4olxEkqePnN7/4FLaY+kvVNRJgrQ7
	 3OciKo0s/FHLg==
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260324025332.3416977-2-eleanor.lin@realtek.com>
References: <20260324025332.3416977-1-eleanor.lin@realtek.com> <20260324025332.3416977-2-eleanor.lin@realtek.com>
Subject: Re: [PATCH v5 01/10] dt-bindings: clock: Add Realtek RTD1625 Clock & Reset Controller
From: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-realtek-soc@lists.infradead.org, james.tai@realtek.com, cy.huang@realtek.com, stanley_chang@realtek.com, eleanor.lin@realtek.com
To: Yu-Chun Lin <eleanor.lin@realtek.com>, afaerber@suse.com, conor+dt@kernel.org, cylee12@realtek.com, jyanchou@realtek.com, krzk+dt@kernel.org, mturquette@baylibre.com, p.zabel@pengutronix.de, robh@kernel.org
Date: Tue, 24 Mar 2026 18:59:01 -0700
Message-ID: <177440394165.5403.17868576455504268400@localhost.localdomain>
User-Agent: alot/0.12
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280157-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sboyd@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,localhost.localdomain:mid,5.215.92.128:email,realtek.com:email,devicetree.org:url]
X-Rspamd-Queue-Id: 64EC231ED9E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Quoting Yu-Chun Lin (2026-03-23 19:53:22)
> diff --git a/Documentation/devicetree/bindings/clock/realtek,rtd1625-clk.=
yaml b/Documentation/devicetree/bindings/clock/realtek,rtd1625-clk.yaml
> new file mode 100644
> index 000000000000..6fabc2da3975
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/realtek,rtd1625-clk.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/realtek,rtd1625-clk.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek RTD1625 Clock & Reset Controller
> +
> +maintainers:
> +  - Yu-Chun Lin <eleanor.lin@realtek.com>
> +
> +description: |
> +  The Realtek RTD1625 Clock Controller manages and distributes clock
> +  signals to various controllers and implements a Reset Controller for t=
he
> +  SoC peripherals.
> +
> +  Clocks and resets are referenced by unique identifiers, which are defi=
ned as
> +  preprocessor macros in include/dt-bindings/clock/realtek,rtd1625-clk.h=
 and
> +  include/dt-bindings/reset/realtek,rtd1625.h.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - realtek,rtd1625-crt-clk
> +      - realtek,rtd1625-iso-clk
> +      - realtek,rtd1625-iso-s-clk
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  "#reset-cells":
> +    const: 1

Are there any input clks for the clk tree?

> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"
> +  - "#reset-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    clock-controller@98000000 {
> +      compatible =3D "realtek,rtd1625-crt-clk";
> +      reg =3D <98000000 0x1000>;

Should be 0x98000000 to match the unit address.

> +      #clock-cells =3D <1>;
> +      #reset-cells =3D <1>;
> +    };

