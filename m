Return-Path: <devicetree+bounces-321873-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3QNrDqrFTGr2pQEAu9opvQ
	(envelope-from <devicetree+bounces-321873-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:23:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C3B719B4C
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:23:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LOl21z9e;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321873-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321873-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D821A30363D6
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 09:15:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F024331A057;
	Tue,  7 Jul 2026 09:15:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BB01D63E4
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 09:15:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783415757; cv=none; b=KmisjX6+W01K5bhA1YVpQJjGnQ3u9MRPJuH2/lOfWZhU1Wd7I1vzqPolajrhAajjimX+TKfmM4YHvGnKDVt5GXqaCpXEIXTIFS/iTXZa6o1KFaUkSZc1YfXoKYwt1klNGvm1inuYm+tNBMvBNojQxZ/lOFWsHOiiNeN7ftTTQS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783415757; c=relaxed/simple;
	bh=+4nEaVKXQQ4ftsR6/2SxPrPllmBFFydYmaAne/DZM8Y=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FvuYQJlRYZx11nvNetED2PX+F8syxD/Ka4Au4N4eTuiuP5Xl5rAakK7do+DzHT55n/JaOWs8hy0CLnr08cMUhbpvqJFJnpGeV+S7kpvRjF/CSCQu7APF9G7bQHq2gQGWth/BkSCkns5c2xSGujkEEWr33oTzuKSeMRbHdJwynP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOl21z9e; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57A0D1F000E9;
	Tue,  7 Jul 2026 09:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783415756;
	bh=t6WaWqubdX3oa5pER078oejVxBfQJ4MHKzO+/K0kHDg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LOl21z9eLnhI6eUj/POH2WAwQcY9p6HMaW6/5K8G44mtyKt1SuvaBATwDFd2XsSZ0
	 CkqHXIU0OViI9kspbHUY1FbB18zF/XWp/OD5NhiZy9kPiHmkT2Bk1sgbYxY9DJbf71
	 o1L5yEq95qVam+b4wCbGkSVSgdp24ELZV6G5Ip1lRw3H4BAq/X2OOCL0YAQOALgpqe
	 963/AAWrtww8xRJyeE7simzpJp8g5B1GJCyX+GKqqkYvSw1cqi95P7Gd+ukdQ6cTPC
	 U7T8/9SSD4mIh+spZvZ0azt/E4374S5+AP/rdV5+GWUaIIcu6gDxzT2KFEjcEAMn1L
	 y11lvd8BBkwrg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/5] dt-bindings: arm: rockchip: Add Alientek
 DLRV1126
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yanan He" <grumpycat921013@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260706-rv1126-alientek-dlrv1126-v2-2-ff3176ca362b@gmail.com>
References: <20260706-rv1126-alientek-dlrv1126-v2-0-ff3176ca362b@gmail.com>
 <20260706-rv1126-alientek-dlrv1126-v2-2-ff3176ca362b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 09:15:55 +0000
Message-Id: <20260707091556.57A0D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321873-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:grumpycat921013@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 97C3B719B4C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The new board entry is not sorted alphabetically within `rockchip.y=
aml`.
--

commit e33fe7223e96705f47efcf1b94f1097936d189f9
Author: Yanan He <grumpycat921013@gmail.com>

dt-bindings: arm: rockchip: Add Alientek DLRV1126

This commit adds device tree binding documentation for the Alientek DLRV112=
6=20
carrier board and CLRV1126F core module, based on the Rockchip RV1126 SoC.

> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 1a9dde18626d0..9058f2a461d57 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -162,6 +162,13 @@ properties:
>            - const: coolpi,pi-4b
>            - const: rockchip,rk3588s
> =20
> +      - description: Alientek CLRV1126F SoM based boards

[Severity: Low]
This isn't a bug, but should this entry be sorted alphabetically? The list
appears to be maintained in alphabetical order by description, and "Aliente=
k"
is being inserted here between "Cool Pi" and "Edgeble".

> +        items:
> +          - enum:
> +              - alientek,dlrv1126
> +          - const: alientek,clrv1126f
> +          - const: rockchip,rv1126
> +
>        - description: Edgeble Neural Compute Module 2(Neu2) SoM based boa=
rds
>          items:
>            - const: edgeble,neural-compute-module-2-io   # Edgeble Neural=
 Compute Module 2 IO Board

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-rv1126-ali=
entek-dlrv1126-v2-0-ff3176ca362b@gmail.com?part=3D2

