Return-Path: <devicetree+bounces-295827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 1rS3KBpQAmpUrAEAu9opvQ
	(envelope-from <devicetree+bounces-295827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 23:54:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 325EC516866
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 23:54:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EC8A53015865
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 21:54:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF06A4D2EF7;
	Mon, 11 May 2026 21:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6kffboM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1F92C11E6
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 21:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778536470; cv=none; b=aCvShOQA/YxK0+Q6daunIlAwmM/T2thrr6jy0UAvyh38H05xbjp83GiN1jf+aov5r6hXB56UWrcESDZ84F6BHemYfQgziFpjQZW0cZTHE/JVitKLkJPZAeaYRGGF+yB2Gc7UbkaZ0EDSuAB6sGo5shgvWI7AqhS58n2iC9RUBBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778536470; c=relaxed/simple;
	bh=Wy1AvQIcsJmell4zzVpOgol7ox0yFYD5rMyHUKBtO6Y=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OvEc5srrzWEXBuDPpiI4dVzlB2v7XKGbyK3Btm/ukp+6aOBBmKKC40i8PW4NRfiLVLHy8oSkS+eY5XQDn+V+9SGOU9hHE5gCAs7Z5xGEfkWFZLgeZHLYZ3bHhY4M8XP3cRGBNKH/uu2hVQjR081RcPA6+2nCx3AsvjA71vYCXIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6kffboM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4441FC2BCF5;
	Mon, 11 May 2026 21:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778536470;
	bh=Wy1AvQIcsJmell4zzVpOgol7ox0yFYD5rMyHUKBtO6Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=s6kffboMnRICvh/TX7/TVTkqzRoprV+/CjJuyK+4JNNvWyRiHluYGdGl29S/uSqMu
	 FmaEkpyoUZ5Kc0jw5Syu3AyYFMG4/kjVlzr3Q/PJBsuB3x8LGA1JI4FeZVmm1DQ/ej
	 wqav3iyRlB0MOLT5nkEksMR8LlrP0Gr9+dorZh+kPO/5yEwOD4BVgmwJKFP9J/bZmE
	 sIyttSAgt17XkSrkRbt8w5Q8Vz6m4tNoQ1KvZd6x0Ze0Q4g2mGeo3ulNsjB1evXYRL
	 z0t6g7jQQCozUPX6vBulKz3jC3Tv7WbAvNp9hsbzy0ByF8a3QLAFbQLLQar43rkqKr
	 bu/WHBiti6CXw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 04/11] dt-bindings: iio: adc: hx711: add HX710B
 support
Reply-To: sashiko@lists.linux.dev
To: "Piyush Patle" <piyushpatle228@gmail.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260510194947.31997-5-piyushpatle228@gmail.com>
References: <20260510194947.31997-5-piyushpatle228@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 21:54:29 +0000
Message-Id: <20260511215430.4441FC2BCF5@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 325EC516866
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295827-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `dvdd-supply` property is incorrectly permitted for the olde=
r HX711 variant, violating the intended hardware constraints and contradict=
ing the commit message.
--

commit b2ce63274d21d343a80ad3dfc6983d09ccc4fbdc
Author: Piyush Patle <piyushpatle228@gmail.com>

dt-bindings: iio: adc: hx711: add HX710B support
   =20
This adds the avia,hx710b compatible string and documents the hx710b-specif=
ic
dvdd and vref supplies. It also adds constraints to forbid hx711-only
properties on hx710b nodes and requires vref-supply for hx710b.

> diff --git a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml b/=
Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> index 9134bbe413796..b2b5c7bdf05e6 100644
> --- a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml

[ ... ]

> @@ -44,6 +49,17 @@ properties:
>        RATE pin state is determined by the board wiring.
>      maxItems: 1
> =20
> +  dvdd-supply:
> +    description:
> +      Digital supply voltage (DVDD). For the HX710B, DVDD must be
> +      greater than or equal to AVDD. When DVDD is a battery rail and
> +      AVDD is a regulated supply, one channel monitors the DVDD-AVDD
> +      difference for battery level detection.
> +
> +  vref-supply:
> +    description:
> +      Reference voltage input (VREF).
> +
>    clock-frequency:

[ ... ]

> @@ -53,6 +69,21 @@ properties:
>      maximum: 2500000
>      default: 400000
> =20
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          const: avia,hx710b
> +    then:
> +      properties:
> +        vsup-supply: false
> +        rate-gpios: false
> +      required:
> +        - vref-supply
> +    else:
> +      properties:
> +        vref-supply: false

The commit message states the intention to document the hx710b-specific dvdd
and vref supplies.

Since dvdd-supply is defined in the top-level properties block, does this
else clause also need to forbid dvdd-supply for the older avia,hx711 varian=
t?

Currently, omitting dvdd-supply: false permits the property for the older
hx711 variant. Should dvdd-supply: false be added here?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260510194947.3199=
7-1-piyushpatle228@gmail.com?part=3D4

