Return-Path: <devicetree+bounces-72147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2C28FAF1B
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 11:43:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF4A41C234FE
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 09:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5129B84D3B;
	Tue,  4 Jun 2024 09:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="HjhmIG6x";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="PB1JsX56"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2CD12C7FD
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 09:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717494179; cv=none; b=JSHn+uvIejMbMiXdIA3Q8Tm7y4cZ6R6u6gFX2nG+i+x0pPB6myS74QTlRvOWNgoppiW099TBzY/DeFRRxK7K+us+mFSVUN1ZprH6nA3S3p+EY0DgFcHBweGX1CbfLx0ZisNqMhBGi7Sxm/nGlDOTE0SP02aBWSjCN2NLFyenJok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717494179; c=relaxed/simple;
	bh=hCYgCVzcly839P7j8uQKNz3cFtb3tvp76WT8KQTrKoQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DuKYP+PQzK71Il7twaNPWxaxQWkcHQ+YyLzO6DN5T9jccSVXADjKxOvZVs61zco8QOgVl77ellMK3L831cg2fyHF6JfUxx21LXhzV72LDhKs87p12HQ1K2D4GBB3Oadbrrm9tUPc0V9lLUCebTck7axPKzhS3Zav0CLVP/QuaXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=HjhmIG6x; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=PB1JsX56 reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1717494175; x=1749030175;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=svAI1JboStfD84dfVuxqSvEOVccLXXv55IV3kYQLbm0=;
  b=HjhmIG6xGfcibcu//O4La6QyMhw+X5NSZLq7nRGq7KPfG6oQqSwPneeo
   RyFl7hZ4xvr1JdKoI/UMRdCJ4CiRN5IvIsHCxneOsOHApKGNBDEA7UT/q
   3t6hlH+BQjcem81FNVBNntU5fgkXk1ghR+xNHPNtOY/U7QbRePuYZ92Bm
   74v5Xp7R5iVwWx5ETbiQv9HVXNF9e3UeFoFi4WmlcBx+olngbe+KmDV+Z
   zOeBW9yt460kQShwBA/IV8Grt5K2rAYoUEbKgrSDlbBIbnuXoNvvOaB1V
   U9Gv9PAhr17vtJ/fnRqtAcBmgv4CmWpK83jmoEbE/nlJFG53fD6q/EjsL
   Q==;
X-CSE-ConnectionGUID: aVCeU9HuTrOdeIvHyCdScQ==
X-CSE-MsgGUID: mas+Gni8SSy/OoM7QlHXDA==
X-IronPort-AV: E=Sophos;i="6.08,213,1712613600"; 
   d="scan'208";a="37208825"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 04 Jun 2024 11:42:40 +0200
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C3E0E166CB2;
	Tue,  4 Jun 2024 11:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1717494154;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=svAI1JboStfD84dfVuxqSvEOVccLXXv55IV3kYQLbm0=;
	b=PB1JsX56EPGOSY2DRDov4BWf/KeB0EZ0e3RRH5MWM6iY0tXNQwtJP8ikn9o6mbe1MP97s2
	+TqHmsaIvPYjOFOFYULpUT/UX2VV1I700/ayoW6U632Ki9qXE1AWU0jEhy4ttga+GqO4hk
	CSzxc36h5KDbAT75/Ra9jMSymroF1iCN38xTMSeKeqzcW5fGv7To9s4ZJH2dsrDPwsIuhL
	uLurFSU/jMeSQYuvKm/wcJwaA0UyoN5CKn6QdQZyIfiLfirnTxwyySB8kKCGYyTzrWfEin
	A6NgMW4PdZaEHi73sLv6vfho2njW+4cmEE6InKh6ICi1OWR5cPhMGNBGnZoYQQ==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: dri-devel@lists.freedesktop.org
Cc: Marek Vasut <marex@denx.de>, Andrzej Hajda <andrzej.hajda@intel.com>, Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Lucas Stach <l.stach@pengutronix.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, kernel@dh-electronics.com, Marek Vasut <marex@denx.de>
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: tc358867: Document default DP preemphasis
Date: Tue, 04 Jun 2024 11:42:31 +0200
Message-ID: <3302939.44csPzL39Z@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240531204339.277848-1-marex@denx.de>
References: <20240531204339.277848-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Last-TLS-Session-Version: TLSv1.3

Hi Marek,

Am Freitag, 31. Mai 2024, 22:42:03 CEST schrieb Marek Vasut:
> Document default DP port preemphasis configurable via new DT property
> "toshiba,pre-emphasis". This is useful in case the DP link properties
> are known and starting link training from preemphasis setting of 0 dB
> is not useful. The preemphasis can be set separately for both DP lanes
> in range 0=3D0dB, 1=3D3.5dB, 2=3D6dB .
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Robert Foss <rfoss@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: kernel@dh-electronics.com
> ---
>  .../display/bridge/toshiba,tc358767.yaml       | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc3=
58767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358=
767.yaml
> index 2ad0cd6dd49e0..dcf56e996ee22 100644
> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.y=
aml
> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.y=
aml
> @@ -98,6 +98,24 @@ properties:
>              reference to a valid eDP panel input endpoint node. This por=
t is
>              optional, treated as DP panel if not defined
> =20
> +        properties:
> +          endpoint:
> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              toshiba,pre-emphasis:
> +                description:
> +                  Display port output Pre-Emphasis settings for both por=
ts.

Is this a property of the port or the endpoint?

> +                $ref: /schemas/types.yaml#/definitions/uint32-array
> +                minItems: 2
> +                maxItems: 2
> +                items:
> +                  enum:
> +                    - 0 # -6dB de-emphasis
> +                    - 1 # -3.5dB de-emphasis
> +                    - 2 # No de-emphasis

Is there a reason you reversed the notation here? de-emphasis <-> pre-empha=
sis.
Commit message also says:
> in range 0=3D0dB, 1=3D3.5dB, 2=3D6dB .

Best regards,
Alexander

> +
>      oneOf:
>        - required:
>            - port@0
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



