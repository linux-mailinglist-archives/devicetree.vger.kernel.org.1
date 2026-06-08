Return-Path: <devicetree+bounces-307954-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id S747ME0vJmrITAIAu9opvQ
	(envelope-from <devicetree+bounces-307954-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 04:56:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1537B6525A1
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 04:56:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jqkDTscR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307954-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307954-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BFCB1301CCC3
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 02:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD1DC338595;
	Mon,  8 Jun 2026 02:54:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B281624DF
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 02:54:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780887274; cv=none; b=rtrw2BZck/W2lNkW9ecQnYCLxwvgvl0Mhi/+ND5sdcJwEdvAPmPMlej9x1X7p/4hrX1Kxm5RcxlwlVzlhreG8gm014vyk9HGU7Xq3LeNp4QBvz67b4/tkYt6KvC5LoPGAU9saAcrP1DhqutVNwAw9+Ag3oAVAdBTVw3oaJpTzPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780887274; c=relaxed/simple;
	bh=+M6KeAmPLk8uOL6Blge9nQl62nixGGlE9fKTClYTns0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=J/H3wo12GW2vvZ7xzVFSps/kzgF8Xdx37XQ41zl5aS6je2GqWtUaRQTtY9dXC/Rs6+sjOV8yFNvXkhIc8It5tLql+FTe0eZ0ej94iNvgFCzn2oCo27CI3vTTm9qkN4qrbYEPMcbglJiqC0j0+enOPkE9RCamERKv8A1HooyUTn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqkDTscR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4207B1F00893;
	Mon,  8 Jun 2026 02:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780887273;
	bh=/22gxNLxS8P7x0QrPNOwK2Io0HzKVGjU17i9ZkUHApo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jqkDTscR24HdCPWCxcrdoqyr+pcnIdd/YT9B5EauGu4zHVjd9ygVGK5AfL1mRfw8q
	 P8tc4dM0zWa1DOvExMyBk9SE75sSmMlYDZKLPKg8N6nX3/c3nSG+1udveddZ8oupDJ
	 4Wot/fXMbRtq8yirKVihbPYenFqJoSTmb2I/TgtiFwqd0MKdcn3D3If3nrMr9sj0nk
	 f5aqnk5pFuLvexgoVZngkzq89DOy/ZXS1Jb3P7KKRegZtLw7IHT/9xtlT55NGve/Xe
	 Q98A1VANhMfucWCPQDntTnUYbWae8DDZxlu9sVou7k+iqjrM+pVbOdl1U1QJtKsfAQ
	 KDQ9aIQI5FqtA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 1/2] dt-bindings: i2c: ls2x-i2c: Add clocks and
 clock-frequency properties
Reply-To: sashiko-reviews@lists.linux.dev
To: "Hongliang Wang" <wanghongliang@loongson.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260608024533.32419-2-wanghongliang@loongson.cn>
References: <20260608024533.32419-2-wanghongliang@loongson.cn>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 02:54:32 +0000
Message-Id: <20260608025433.4207B1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307954-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:wanghongliang@loongson.cn,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,loongson.cn:email,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1537B6525A1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Adding the `clocks` property to the device tree example without def=
ining it in the `properties` block causes schema validation (`make dt_bindi=
ng_check`) to fail.
--

commit e568ab3d299f8c59baf7b2a2ee43cbee837517fd
Author: Hongliang Wang <wanghongliang@loongson.cn>

dt-bindings: i2c: ls2x-i2c: Add clocks and clock-frequency properties

This commit adds the clock-frequency and clocks properties to the device
tree examples for the loongson,ls2x-i2c binding.

> diff --git a/Documentation/devicetree/bindings/i2c/loongson,ls2x-i2c.yaml=
 b/Documentation/devicetree/bindings/i2c/loongson,ls2x-i2c.yaml
> --- a/Documentation/devicetree/bindings/i2c/loongson,ls2x-i2c.yaml
> +++ b/Documentation/devicetree/bindings/i2c/loongson,ls2x-i2c.yaml
[ ... ]
>  examples:
>    - |
> +    #include <dt-bindings/clock/loongson,ls2k-clk.h>
>      #include <dt-bindings/interrupt-controller/irq.h>
> =20
>      i2c0: i2c@1fe21000 {
>          compatible =3D "loongson,ls2k-i2c";
>          reg =3D <0x1fe21000 0x8>;
> +        clock-frequency =3D <100000>;
> +        clocks =3D <&clk LOONGSON2_APB_CLK>;

[Severity: Low]
Will this addition to the examples block cause make dt_binding_check to fai=
l?

The loongson,ls2x-i2c.yaml schema sets unevaluatedProperties: false. This
strictly limits allowed properties to those explicitly defined in the schema
itself or inherited via references. While clock-frequency is inherited from
the standard i2c-controller.yaml reference, the clocks property does not
appear to be defined anywhere in the local properties block.

Because clocks is undeclared, adding it here will likely cause the schema
validation tooling to reject the example and fail the build.

>          interrupt-parent =3D <&extioiic>;
>          interrupts =3D <22 IRQ_TYPE_LEVEL_LOW>;
>          #address-cells =3D <1>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608024533.3241=
9-1-wanghongliang@loongson.cn?part=3D1

