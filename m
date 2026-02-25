Return-Path: <devicetree+bounces-268270-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ExVFiTRnmnwXQQAu9opvQ
	(envelope-from <devicetree+bounces-268270-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:38:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAD3195DCE
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:38:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AAF830910A6
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EB8D392C3E;
	Wed, 25 Feb 2026 10:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4JJu0Vn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB52392C34;
	Wed, 25 Feb 2026 10:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772015748; cv=none; b=q4oaXP55LscV3zrKTDqkTtljza/2wBoa5aeX+En/uyPx01KLAjQKCum3rODVKTyM8DOy3cOuhvoooLEekTVVqZI+4Ibi22IdE0llnoX58Oz2xeZF3mkHvy1soWXyWznkLJoCxX2zzOmTeXKc/dvQ1UBn7aJ+jVJbJvpvS4K6egk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772015748; c=relaxed/simple;
	bh=4IouABsVBxnfCet02z/uE5QExr/gbSjQyTo+g71W+7w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UNZkyYfN25busUaUHtXouzBIo9ksjmzdQ5hjgTyRYzcH/dA8GL9ajPNXid11MxBD875jxFTJxxpViUCWq728gLDDz4drn6YCdlalzPLwj6zva4xPSj1eaXZMJG1OiW5dL4KpjlauvIZz8D4Lp6J6j3ObZnRrN9+1ZKVJI9J3XSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4JJu0Vn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7637FC116D0;
	Wed, 25 Feb 2026 10:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772015748;
	bh=4IouABsVBxnfCet02z/uE5QExr/gbSjQyTo+g71W+7w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i4JJu0Vn1g+5avdyufhVS0ygPNk0JNQnu5g/ey3flhyc0lu2OaRtL2VVxkLXDTAie
	 +1xNAtF1tuC7qT6eFfLmWfCI7GouNBAJXSyROqxGo+fahNXHkG9jKzsciws8lYv6Xj
	 teUqjnj3nt/kz9N2gxvINGoYw+Wlm2N3NR4t6UQ8zZvpvnq8WbjBy57QIkKlQivlK2
	 puBcSRL6JWCwAoKhFfOj853edTcGtnRTeq3ljzIoIKy+bomaXt/vAsSprhsmwGkfjT
	 vcX95gYff3sh6znL+3pWkFXDYN4Mqysay7FsqYOrZp18gASvIeAPfohz1NP9RfOQtY
	 +RqWClvqUlEfQ==
Date: Wed, 25 Feb 2026 11:35:45 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	prahlad.valluru@oss.qualcomm.com, Prahlad Valluru <vvalluru@qti.qualcomm.com>, 
	=?utf-8?B?5pyx5pmT5piO?= <xmzhu@lontium.corp-partner.google.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: bridge: lt8713sx: Add bindings
Message-ID: <20260225-agile-godlike-orangutan-07abad@quoll>
References: <20260224-lt8713sx-bridge-driver-v4-0-b5603f5458d8@oss.qualcomm.com>
 <20260224-lt8713sx-bridge-driver-v4-1-b5603f5458d8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260224-lt8713sx-bridge-driver-v4-1-b5603f5458d8@oss.qualcomm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268270-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lontium.com,lists.freedesktop.org,vger.kernel.org,oss.qualcomm.com,qti.qualcomm.com,lontium.corp-partner.google.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url,lontium.com:email]
X-Rspamd-Queue-Id: 6FAD3195DCE
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 11:25:35PM +0530, Vishnu Saini wrote:
> Add bindings for lt8713sx.
>=20
> Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> Cc: =E6=9C=B1=E6=99=93=E6=98=8E <xmzhu@lontium.corp-partner.google.com>

Please use latin transliteration/translation, if possible.

> ---
>  .../bindings/display/bridge/lontium,lt8713sx.yaml  | 113 +++++++++++++++=
++++++
>  1 file changed, 113 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8=
713sx.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt871=
3sx.yaml
> new file mode 100644
> index 000000000000..29a773154b39
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.y=
aml
> @@ -0,0 +1,113 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/lontium,lt8713sx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Lontium LT8713SX Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0/DP++ bridge=
-hub
> +
> +maintainers:
> +  - Tony <syyang@lontium.com>

Is Tony full legal name, transliterated to Latin alphabet?

Also Tony, please kindly ack this change.

You already received such question at v3 :/

Also not sure why I am spending my time SECOND time on it. Read very
carefully all the rules:

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

Please read:
https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/sub=
mitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.
</form letter>

Best regards,
Krzysztof


