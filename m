Return-Path: <devicetree+bounces-318389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DVx9OG/3RGrH4AoAu9opvQ
	(envelope-from <devicetree+bounces-318389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:18:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8456ECAEF
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:18:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HksnQm8w;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318389-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318389-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DAB1C31A7093
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 11:11:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F36B643DA26;
	Wed,  1 Jul 2026 11:10:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6464643CEC1
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 11:10:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782904243; cv=none; b=D5Jn3it/2Dju86u/CwsVesFuNs++FK91LRWTUDp1HhnmFOTJ34MuGsrO4swypUYdu5icHo2F9imOZOCQiQvEFA72zghwBjcnSpArDqeZP9GuRpQykiQZPRidR6kdWwkZQ97iK0VI1PGnM1fpha4yVUwbmniiRfDXtntX9VCedxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782904243; c=relaxed/simple;
	bh=gm3DvXZ73Eo0P3xqOQBC8WS7XAv9R1ySXncaY0Zy91Q=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=P+Mbv8X3vNiIuWK7DNY2ioTc5cFi1sbSkvHaVapEM5rsZndxZv3xlDabxORAUca5g05ftfmdAd3bmk8YFuhdBHee0Uxsq0THa4FYMFroIQUlqtQxDqtgbjMSkbHx6fpkMHDULF78WCKdDQgks2u/G97CANDoduTss238w6OJyGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HksnQm8w; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A75C71F000E9;
	Wed,  1 Jul 2026 11:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782904242;
	bh=RV0vMKHp8q5nPO0kurAe73aeLGKtrQ+QLrGf7Dph31g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HksnQm8wXhKL6IzmdSIHYQcV8uS+0bthkiPsYPWtNKGmS8eBzCqjILKH8QU5hOMR8
	 WLMUR3KGooIbr7wse5Bon+MKok/6H9OwalPfrg0usSoW6/7g2qJUgYhPyHlr20HGKV
	 67cq5h2UbhvyNWWd0JljbwTHPvbI4gPdojAE0E926NlLnDdzitG/60c93aB4kRlTJb
	 aGiu2ujhMCb/I9I9tVfLfBu/lOYOyKlnu9HI07syaqtttXrxn4i7/AquGgW06X7Sa4
	 A9aOA6QnRXwI97mpIeEhSwUyQBKjekSy9I1CA0PF6XgbOxBeyMzh32d+y2ypGWXQ2Q
	 G4Et0EgKkGm/Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: rockchip: grf: Narrow allowed reboot
 modes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260701105849.197086-4-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260701105849.197086-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260701105849.197086-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 11:10:41 +0000
Message-Id: <20260701111041.A75C71F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318389-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F8456ECAEF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The patch introduces a new `patternProperties` constraint to tig=
hten the `reboot-mode` schema, but places it inside a conditional `if` bloc=
k that does not enumerate all relevant Rockchip platforms. Platforms such a=
s `rockchip,rk3328-grf`, `rockchip,rk3562-pmu-grf`, `rockchip,rk3066-grf`, =
and `rockchip,rk3188-grf` use `reboot-mode` in their device trees but are m=
issing from this `if` condition. As a result, they bypass the block entirel=
y and evade the newly introduced constraint, making the schema tightening i=
ncomplete.
--

commit 16c4d82cda45faacd19f46f2d3336cc68b841769
Author: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

dt-bindings: rockchip: grf: Narrow allowed reboot modes

syscon-reboot-mode schema allows arbitrary "mode-.* properties but only
a subset actually makes sense and is valid.  Provide negative look-ahead
pattern to disallow any modes not supported by the device, which
tightens the binding.

> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Do=
cumentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 2cc43742b8e3b..7bcb4e2f47ec5 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -239,11 +239,14 @@ allOf:
>        properties:
>          reboot-mode:
>            type: object
> -
>            $ref: /schemas/power/reset/syscon-reboot-mode.yaml#
> -
>            unevaluatedProperties: false
> =20
> +          patternProperties:
> +            # Negative look-ahead to disallow unsupported modes. The '$'=
 has to be
> +            # part of lookahead group to work, instead of trailing outsi=
de of ().
> +            "^mode-(?!(bootloader$|fastboot$|loader$|normal$|recovery$))=
": false
> +

[Severity: Medium]
Looking at the surrounding code, this constraint is added inside a conditio=
nal
block that only enumerates a subset of platforms:

  - if:
      properties:
        compatible:
          contains:
            enum:
              - rockchip,px30-pmugrf
              - rockchip,rk3036-grf
              - rockchip,rk3308-grf
              - rockchip,rk3368-pmugrf
              - rockchip,rv1103b-pmu-grf

Does this leave the schema tightening incomplete? Other platforms such as
rockchip,rk3328-grf, rockchip,rk3562-pmu-grf, rockchip,rk3066-grf, and
rockchip,rk3188-grf also use reboot-mode in their device trees.

Since they are missing from this conditional, will their reboot-mode
properties silently evade the new patternProperties validation?

>    - if:
>        properties:
>          compatible:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701105849.1970=
86-3-krzysztof.kozlowski@oss.qualcomm.com?part=3D2

