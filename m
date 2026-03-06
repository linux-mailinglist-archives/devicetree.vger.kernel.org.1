Return-Path: <devicetree+bounces-271854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFydODKIqmn+TAEAu9opvQ
	(envelope-from <devicetree+bounces-271854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 08:54:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DB021CA61
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 08:54:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C18C301AD2A
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 07:54:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33799368297;
	Fri,  6 Mar 2026 07:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opteaZ+8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEDA35E934;
	Fri,  6 Mar 2026 07:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772783653; cv=none; b=b5Wzmb5gPNkoRTyBEKpcHn+4eFWgFeE/vZkxqOBDgxRtKykiYYCj7fqvo0z2s80D2FHBbrRdlGDxWK3pTKGW+fT4+NOfvGMV1U5Vx/Gpn7gv9NyXDxji8yuUoStwrX4u6O1RZiK3tFaoUN5dtDt6XmERJ8haukuVXefQ5NtKFCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772783653; c=relaxed/simple;
	bh=GXmz6BTpGK+jTPUV6IY+IZaiaRT9ADtCvgXApmHzADU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o0zAOFXJYvwx0ZtcfOJhyVMG1E8u65sT/l/5Z8v5CENA1up35m/zP1WTkuTdBfUfnVxuV1hVoTDQf3A1M/08GirrxIU1nTfC1DMc2z8+3Sd0c1bZlmP/PQ9jcV7L3mm3KmNu9xJ43GMLe8XnzJAsa0v+EoBxJH/pkQ83dvGLPJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opteaZ+8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16838C4CEF7;
	Fri,  6 Mar 2026 07:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772783652;
	bh=GXmz6BTpGK+jTPUV6IY+IZaiaRT9ADtCvgXApmHzADU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=opteaZ+8k0vP2twmulu+5sd8tN06bI+pRkXVa35b6bmvrq4rmXHiiFs9Yf7NuCAiD
	 SZJTKF9umkEFGio1z2JdUw7W3AYnteviukEyVvpxuy/oTGbd25bt0Ew+aijDvZnXre
	 yomurj2EBIogRyx5fWOjWBFrLtNa/NhVY7f1gRlBIMyYiSVkEqEV5s9eTOixLeYnEv
	 LYwvsjuJO4ZyTi/bw2P+lDVUSmkfQWdYZSl4pkXAJ2csoj7zEccdNUDWpSZ0KIy5je
	 rFxq9EcznaUYCt7dDbwwqrJez2LFpBFnsbszG3Gy5hzs5J9yaRjsPGlpl09YUp72ub
	 riX0mvASUwyrw==
Date: Fri, 6 Mar 2026 08:54:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Add Himax HX83121A
Message-ID: <20260306-ethereal-pumpkin-wombat-cb9cb1@quoll>
References: <20260305084810.370024-1-mitltlatltl@gmail.com>
 <20260305084810.370024-2-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260305084810.370024-2-mitltlatltl@gmail.com>
X-Rspamd-Queue-Id: 60DB021CA61
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271854-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 04:48:09PM +0800, Pengyu Luo wrote:
> HX83121A is a driver IC used to drive MIPI-DSI panels. It is found
> in HUAWEI Matebook E Go series (Gaokun2/3) with BOE or CSOT panels.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  .../display/panel/himax,hx83121a.yaml         | 92 +++++++++++++++++++
>  1 file changed, 92 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
> new file mode 100644
> index 000000000..b6bcace29
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
> @@ -0,0 +1,92 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/himax,hx83121a.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Himax HX83121A based DSI display Panels
> +
> +maintainers:
> +  - Pengyu Luo <mitltlatltl@gmail.com>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  The Himax HX83121A is a generic DSI Panel IC used to drive dsi
> +  panels. Support video mode panels from China Star Optoelectronics
> +  Technology (CSOT) and BOE Technology.
> +
> +allOf:
> +  - $ref: panel-common-dual.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - boe,ppc357db1-4
> +          - csot,ppc357db1-4
> +      - const: himax,hx83121a
> +
> +  reg:
> +    maxItems: 1
> +
> +  reset-gpios:
> +    maxItems: 1
> +    description: phandle of gpio for reset line

Drop description


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


