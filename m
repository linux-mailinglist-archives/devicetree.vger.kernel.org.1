Return-Path: <devicetree+bounces-269693-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id LRDiL0kdpGlkXgUAu9opvQ
	(envelope-from <devicetree+bounces-269693-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 12:04:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7761CF3F5
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 12:04:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7822F3014941
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 11:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C88E2175A6D;
	Sun,  1 Mar 2026 11:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWAAaZ5o"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5121430B98;
	Sun,  1 Mar 2026 11:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772363078; cv=none; b=IMm/IA5d25P+cqsAJhVHhsQLEaCczMIrZIubSpzO53dw4w1x0ZbKs9JhuGu6ilYULMByk1w8Sf73IG7MWu/KeRTjcI1MGnJx003lyRt4XA+r16xyc+DAgdejo+hoV8nOeqcNXzSXYYQp+S/70hxDe5G0ZgDCGmJnvysX73pmEcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772363078; c=relaxed/simple;
	bh=ylmTjATbvHfZga1k1dOK+qTWjLVm2OYkgeB75RI/xTw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Im3jcx+fCk0oZ1IHN5H+rxv+jWmZ4MHloFF8qBvV/n1ZDiF01hqUXlXeV1Vh2HD8UTpWKVwgKfzEc1JGKKSu/v1/FAdhiNHc0mZI+sh0ajTaECTkBrunz7hfeDiH2y7PVQ2sr2F+UWOhH4BUb4xhMJisWZ+fkdWb7WgVf85uDrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWAAaZ5o; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CC04C116C6;
	Sun,  1 Mar 2026 11:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772363078;
	bh=ylmTjATbvHfZga1k1dOK+qTWjLVm2OYkgeB75RI/xTw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SWAAaZ5of/44uYkxrocd9pXgKinzb3iMXGqlETfd97TEXApMesZ+oCcTn2KstjkBZ
	 mt668pLJWQqJ6V2O8TqmekHLb38Rv5+0VYVJZZMtTGIanWecpVKvxxfz0NYAHRywlt
	 8coZbkAfUUqEMz+efP9DW5CxKTkbMQCSR0iYtjz41OegFbC5SJmbmzIeasBF5VtNnG
	 A1C6jXvOO8mk90LI40TSJrnOFtkxZ5WeriLb77TgoNDz8RsDb/LUTkx6v3w3nhIGSR
	 cUQx+lUCphY4g+0HPGVwj+Jlm45lB5AP6G1ursG2E+2pjPhkrAi3gvjaLqy8hLZV7Y
	 WRMd53M6y0eXg==
Date: Sun, 1 Mar 2026 12:04:35 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Xueyuan Chen <xueyuan.chen21@gmail.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Chen <peter.chen@cixtech.com>, Fugang Duan <fugang.duan@cixtech.com>, 
	Gary Yang <gary.yang@cixtech.com>, 
	CIX Linux Kernel Upstream Group <cix-kernel-upstream@cixtech.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: reset: add sky1 reset controller
Message-ID: <20260301-capable-elated-squid-ad2be7@quoll>
References: <20260301070910.6169-1-xueyuan.chen21@gmail.com>
 <20260301070910.6169-2-xueyuan.chen21@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260301070910.6169-2-xueyuan.chen21@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269693-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,cixtech.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0F7761CF3F5
X-Rspamd-Action: no action

On Sun, Mar 01, 2026 at 03:09:08PM +0800, Xueyuan Chen wrote:
> From: Gary Yang <gary.yang@cixtech.com>
> 
> There are two reset controllers on Cix sky1 Soc.
> One is located in S0 domain, and the other is located
> in S5 domain.
> 
> [Xueyuan Chen: Refactored to a flat syscon architecture to fix v3 review issues]
> 
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> Co-developed-by: Xueyuan Chen <xueyuan.chen21@gmail.com>
> Signed-off-by: Xueyuan Chen <xueyuan.chen21@gmail.com>
> ---
>  .../bindings/reset/cix,sky1-rst.yaml          |  51 ++++++
>  include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 +++++
>  include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++++++++++++
>  3 files changed, 257 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h
> 
> diff --git a/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml b/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
> new file mode 100644
> index 000000000000..27b6df71c3e4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reset/cix,sky1-rst.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: CIX Sky1 Reset Register Region
> +
> +maintainers:
> +  - Gary Yang <gary.yang@cixtech.com>
> +  - Xueyuan Chen <xueyuan.chen21@gmail.com>
> +
> +description: |
> +  An assortment of registers that control elements of the CIX Sky1 SoC,
> +  including resets, clocks, among others.
> +  The Reset block acts as a system controller (syscon) and provides
> +  reset capabilities to various peripherals.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - cix,sky1-src-s5
> +          - cix,sky1-src-fch
> +      - const: syscon

I don't understand what is happening here.

Something VERY similar was sent as v9 and this is v4. Compatibles look
different, yet similar.

It looks like you just duplicated a lot bypassing 5 rounds of comments.

That would not be acceptable, we don't review just to be ignored.

Best regards,
Krzysztof


