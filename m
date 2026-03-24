Return-Path: <devicetree+bounces-279679-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPlZLCZWwmmrbwQAu9opvQ
	(envelope-from <devicetree+bounces-279679-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 10:15:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0403056C5
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 10:15:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B162D3181718
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 09:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A24543DA7FC;
	Tue, 24 Mar 2026 09:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qykw1c8Q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC0E3D9DDF;
	Tue, 24 Mar 2026 09:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774343281; cv=none; b=rZFe19Lnigai9ccVYzO2Xx6aknw0m6+tpREeZD6SXghhAd3gLtAuiMRkH4VxCdzJqF+ZoET3TGV69+E+/Yie4QD0syRH7TKQpZPsBhx3lp7R/gJqPoc9WkyR5G9OFULCx+9+Pz/bPEor4aDrUF69+aR0ObsdAPc5h4TZzNMmDAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774343281; c=relaxed/simple;
	bh=aloDp/7Ws3xGvuTGLdeYo2Gmfmhdjd5m4AaJNfMivvY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fSZOqXHUO0IOTF7J3WwkXFaKFBboBl3BBz2Ejk1/9UZvFWUdQqdI0E7UrXIgZcA+YQerk7BX9N2JEnDYE8CSwBapxbWZGkeOPXjjrGd8C53f+20SsjQpI8tN0Yjc1v8xHa0jdQ++kh6UP9scCu6BGRi1OUc02sQw8qBDRUyH6ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qykw1c8Q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2C56C19424;
	Tue, 24 Mar 2026 09:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774343281;
	bh=aloDp/7Ws3xGvuTGLdeYo2Gmfmhdjd5m4AaJNfMivvY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qykw1c8QhGvr0CMdMWaZbIIVEdZJSQnfdBvKvw8YB0DB08JYSWRbpM3LC10hB8X43
	 +GHutMbDbU04IZInw4qZUDCTMN9rZv806jJd1tnVwmMOVb2p0dA2ua1mGcsIk7avLK
	 hgQuDNbvRyrPMOsHPb30TMrAFfjXgD9OeCvhqK5GlMwUpgvywag+yKWqpbkmWmkamI
	 p+0lX+5ZUt5gnFVz9X+3Yai8o+LCjQBsLAih32mzZHfcHIMwd0gbBCaamD6p1bLfq7
	 iuQG3lXgbVVsbdz9OTHxutg2/IO9xg8Ve2YYlwiulBydjExA7pGNvKAZLfHpYCTPKG
	 QBCpbDpj25WRQ==
Date: Tue, 24 Mar 2026 10:07:58 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Teguh Sobirin <teguh@sobir.in>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: Add ChipWealth
 CH13726A AMOLED driver
Message-ID: <20260324-dexterous-snake-of-progress-ea8783@quoll>
References: <20260323-ch13726a-v3-0-e28b6f97fe80@gmail.com>
 <20260323-ch13726a-v3-1-e28b6f97fe80@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260323-ch13726a-v3-1-e28b6f97fe80@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-279679-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org,sobir.in];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 1A0403056C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 23, 2026 at 12:08:32PM -0500, Aaron Kling wrote:
> The Chip Wealth Technology CH13726A AMOLED driver is a single chip
> solution for MIPI-DSI. This is used for the AYN Thor bottom panel.
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  .../display/panel/chipwealth,ch13726a.yaml         | 65 ++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml b/Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..5d964900795653401a871994bcf6403cdeaad64f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/chipwealth,ch13726a.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Chip Wealth Technology CH13726A AMOLED driver
> +
> +maintainers:
> +  - Neil Armstrong <neil.armstrong@linaro.org>
> +
> +description:
> +  Chip Wealth Technology CH13726A is a single-chip solution
> +  for AMOLED connected using a MIPI-DSI video interface.

Here you describe the hardware, including what I asked last time -
explain why this is ayntec thor panel, but not chipwealth,ch13726a.

Then also name the file as the compatible. If you do not know the part
(model?) number, then why do you think filename should be called
ch13726a?

Best regards,
Krzysztof


