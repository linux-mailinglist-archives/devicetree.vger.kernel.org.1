Return-Path: <devicetree+bounces-276500-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMjINbgDuWmEnAEAu9opvQ
	(envelope-from <devicetree+bounces-276500-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:33:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9302A4DA3
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:33:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F32953015B9D
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:33:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACF4B39022A;
	Tue, 17 Mar 2026 07:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CA8CgmxO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AB4129A32D;
	Tue, 17 Mar 2026 07:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773732785; cv=none; b=n66yQngxMy9Ovjhyhp4byGTVniNZCN9XjLAFIpXrL3e5xshxhoNh9vUvybi1WxgCDNefiAaXx6DP8KU9neSdnzzF6vZNW3E1l83I5WlwhShOPFwjxZoBi5x3LZ2i1GbzwNwirUVs/RnJ+MlKW2HOVX/DIi6LlckjJCckrIA2S6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773732785; c=relaxed/simple;
	bh=IFqjMBE1/ZQMZCgU1rzj3A/SIfAKjPz7mxOs6XM0BFg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QwSDcyxMp4cyNe9lhiAQGbR5u42JUuTl9KLQRKhzo7AzwoaLhTaq3/fodFdgzP3OZsXJrhpOaWo7o8RILt4ctZw7IAg05NmPYZMhsDr+1t1ASZGo+QqC6llIX5JY117WZiprqKJy+Y7/TxKUSyxpVpGXqKBVu7TXKMLe2RJ/PLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CA8CgmxO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CEB8C4CEF7;
	Tue, 17 Mar 2026 07:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773732785;
	bh=IFqjMBE1/ZQMZCgU1rzj3A/SIfAKjPz7mxOs6XM0BFg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CA8CgmxOrqFgkTQwayqb0nuuNjWAwzUKKxov6JFm4QtcRbPCwhaj7FgM0RLggFo0/
	 assnYE0Hbq8Vq6ZumES14AHqvXSUSO2mVREm3t+0jN/jOSCComIc2iEzmyvg/W1YpC
	 +ISDEjkiwY/Pi8/dgPdYEtPWyexF6Rscd7BR4MZiTg9QdgvSOLQmSwShtA82ZBr3Q7
	 tc2OcdwI6dVXoq0rrAy84ofbC096LkTsGMhCwia/URX/AgMrrwIKW5d8iWWqFF/PjN
	 zs8CoMjYzrSl+nCy7NN9uvguL51IJ4liNlUZOQuQIRzdzXCB7ZT/sJPdwfFPMG83tb
	 kMwceiNcANLgA==
Date: Tue, 17 Mar 2026 08:33:02 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Teguh Sobirin <teguh@sobir.in>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Add ChipWealth
 CH13726A AMOLED driver bindings
Message-ID: <20260317-helpful-proficient-pronghorn-ef5e1f@quoll>
References: <20260317-ch13726a-v2-0-28aa46bcd6d0@gmail.com>
 <20260317-ch13726a-v2-1-28aa46bcd6d0@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260317-ch13726a-v2-1-28aa46bcd6d0@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276500-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org,sobir.in];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:email,devicetree.org:url,bootlin.com:url]
X-Rspamd-Queue-Id: DD9302A4DA3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 12:23:07AM -0500, Aaron Kling wrote:
> The Chip Wealth Technology CH13726A display driver is a single chip
> solution for AMOLED using MIPI-DSI. This is used for the AYN Thor bottom
> panel.

A nit, subject: drop second/last, redundant "bindings". The
"dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

Also drop all references to "display driver", even if you meant hardware
thing.  Driver in hardware is suitable only to motors, haptics and LEDs,
but not to displays. AMOLED driver is fine, display driver too confusing.


> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  .../display/panel/chipwealth,ch13726a.yaml         | 66 ++++++++++++++++++++++
>  1 file changed, 66 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml b/Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..b490c6757bb98c0752ded78b8fea3aaec853c7b2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/chipwealth,ch13726a.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Chip Wealth Technology CH13726A display driver
> +
> +maintainers:
> +  - Neil Armstrong <neil.armstrong@linaro.org>
> +
> +description:
> +  Chip Wealth Technology CH13726A is a single-chip solution
> +  for AMOLED connected using a MIPI-DSI video interface.
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: ayntec,thor-panel-bottom

Why compatible is completely different than commit msg, description and
title are saying?

> +
> +  port: true

This goes before reset-gpios

> +  reg:
> +    maxItems: 1
> +    description: DSI virtual channel
> +
> +  vdd-supply: true
> +  vddio-supply: true
> +  vdd1v2-supply: true
> +  avdd-supply: true
> +
> +  reset-gpios: true
> +

Drop blank line here (it is port+reset-gpios+rotation in three lines).


> +  rotation: true
> +

Best regards,
Krzysztof


