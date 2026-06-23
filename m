Return-Path: <devicetree+bounces-314791-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V8E5EudpOmrx8QcAu9opvQ
	(envelope-from <devicetree+bounces-314791-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 13:11:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E83A6B6944
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 13:11:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=C0xshVt3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314791-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-314791-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BC985305E48F
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 11:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F033D3008;
	Tue, 23 Jun 2026 11:06:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB963D3002
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 11:06:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782212788; cv=none; b=NaxxsanK2xiDtxIFCwEdMLqLT4nh92plvtW1dP4MfPNBAn3qVvc6sGPwiXNW/jpjKsqMpK3lBd1mtQ2i7QnedfbZlnO8NolcDZW5UZZMmk4o67ZVE1lWAcchv2fM9952RPCS6vlj4g8AfenrCn3IesByyaTuQBBlXlbstcGvT/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782212788; c=relaxed/simple;
	bh=QpzfZnZJqGqH1ERvbgAwrPUS4n+5SGTXMBJhHEIs1Ps=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EWJTto1bevbn3sbnWwg0mv/yRZE/B+mJlTqx+3wlF8sZX0M+sN+wBOyK824+4s7oUSOtq830lDDGNCl+jW/91tzpbYw1bBNByFE0ryttafuFJNuvRfbIts0iEYIX9QwW0t2EqwcLAi7mM6lvvC9pqXHkXAGfzCGMUKlvhHocxqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0xshVt3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 363921F000E9;
	Tue, 23 Jun 2026 11:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782212787;
	bh=HZqZ8Enjc2FTn/VpdnbYAPn77tXP4Ct3rpuelGzP7CE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=C0xshVt3CKd3w/PB7SdmFwZ8FYfHvE66T8et1dh2YRUlqZ6PVGKQ+bhAnPRCk0vkt
	 Wutw92Oex40jSoF9ntP4Aro0atr+Gvf1EJurrUL1IyI+hD3GD51+ZgSjPHjuqDZYaL
	 QrxMFgYSpOEkLG6rWOCNSz26+fbQS0eRvRupuKXiikPXdsNM2vWtYhON5Sej2WRMpc
	 vPVEDBo4bq5navrA0mKg2OQ7t0t2wL4ScLG/FxU/MsDmmjznGKPiJ3pgqE2gRMSRgw
	 RLYLI/H4T/Sku0ECW/UE8TeSRNWg+Zlps7ZFN3R2j+aGTCaUASAijRM+7v4q0m697+
	 ISFJSXIrXiYag==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 01/12] dt-bindings: iio: dac: ad5696: add
 reset/ldac/gain support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260623-ad5686-new-features-v4-1-28962a57db0f@analog.com>
References: <20260623-ad5686-new-features-v4-0-28962a57db0f@analog.com>
 <20260623-ad5686-new-features-v4-1-28962a57db0f@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 11:06:26 +0000
Message-Id: <20260623110627.363921F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314791-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,analog.com:email,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9E83A6B6944

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `allOf` conditional block fails to restrict `gain-gpios` for=
 all applicable devices that lack a GAIN pin.
--

commit 23c63e7ff1a35cdc5b325bc954025b5cf88c49f5
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>
dt-bindings: iio: dac: ad5696: add reset/ldac/gain support

This commit adds optional GPIO properties for the RESET, LDAC, and GAIN
pins to the AD5696 device tree binding. It also includes an if-then block
to restrict the use of the gain-gpios property on devices that do not
support it.

> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml b/=
Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
> --- a/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
[ ... ]
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - adi,ad5311r
> +              - adi,ad5691r
> +              - adi,ad5692r
> +              - adi,ad5693
> +              - adi,ad5693r

[Severity: Medium]
Should the 8-pin dual-channel DACs adi,ad5337r and adi,ad5338r be included
in this enum as well?=20

If these hardware variants also lack a GAIN pin, omitting them from this
restriction block would allow an invalid device tree configuration specifyi=
ng
gain-gpios for an adi,ad5337r or adi,ad5338r device to silently pass
validation.

> +    then:
> +      properties:
> +        gain-gpios: false
> =20
>  additionalProperties: false

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260623-ad5686-new=
-features-v4-0-28962a57db0f@analog.com?part=3D1

