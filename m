Return-Path: <devicetree+bounces-324207-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NS4RMhVgUGoBxwIAu9opvQ
	(envelope-from <devicetree+bounces-324207-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 04:59:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CC7736DC2
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 04:59:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HfkpLMrK;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324207-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324207-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3E5273022DED
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 02:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A69E22E974D;
	Fri, 10 Jul 2026 02:59:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813011ADFE4;
	Fri, 10 Jul 2026 02:59:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783652369; cv=none; b=BmNp0wWHxnppUYvSw0zmZxNfQPTY9ktHV1i9fiE//8NaqIaxHRl9HjMIFpA6kSwe4frTp4APKBsa5P9bdSbwn3GyBmfkwO9r46qAsT4m6TyW8LXQ8GoikyiY8LMM818TW47HuwSXP9A+NStJBkM4J5FxlBEwQNj466coOYPcfEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783652369; c=relaxed/simple;
	bh=pqRr51xxeO/3akV14L6fyr92b9pEPuruiNtMHyLycaE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UlLXcE5GGh4RQzkoEHLB3ffC37HI7q8D572D3vYrGNMcHi6l4CSnTYd7W6aN4nkJFx91t4ErZHMgsh3uoNYCNkzcdZlLSNfRQShkuC4La3MNM0KoJZu72uQCzBPGvAdJIrQI/dvFdAJkM/+og4BrXAq7i+4c2fWusdPiFtveYZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfkpLMrK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBD481F000E9;
	Fri, 10 Jul 2026 02:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783652368;
	bh=2+88EhhmYXZJEYGzee8+IETuCOYKRxocjH6dA/MIc9c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HfkpLMrKEFOtOTnA7Lmazemoh8TRPojpWAg9vEvza3X5lydu60XPw7Cst08k/Qqu5
	 HGsYKc8PsRXf+RNLT/WiWNJEq4x2wPzIm2WVoAhDcfqUmbdWEia9/8x/Eu7caiMOFH
	 D6nueh6X2RmK9XzMbzSIhR7baX52YhPgoMnjaPiSbg/yfrdSekmGo9KGgJbC8uHlWr
	 Vt7BOcE4USzbbA5jRhy+uuY+ctGe+gQvhyoMbUwP6njI8BR4fJZh77k7Ec4TTsEU0U
	 NuwskmVMnO0wHZ9IcUBjTRpWnPIAl2IgljLfXjROAqDyWFdEraZ21DychVpP04YLhg
	 5Af63/0reKVvw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: thermal: imx: Document calibration
 offset property
Reply-To: sashiko-reviews@lists.linux.dev
To: "HaoNing Cheng" <Haoning.CHENG@cn.bosch.com>
Cc: robh@kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org
In-Reply-To: <20260710-b4-symana21-11221-imx-thermal-support-upstream-6-18-v3-1-db9fc2947c55@cn.bosch.com>
References: <20260710-b4-symana21-11221-imx-thermal-support-upstream-6-18-v3-0-db9fc2947c55@cn.bosch.com>
 <20260710-b4-symana21-11221-imx-thermal-support-upstream-6-18-v3-1-db9fc2947c55@cn.bosch.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 02:59:27 +0000
Message-Id: <20260710025927.BBD481F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-324207-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,bosch.com:email,smtp.kernel.org:mid,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:Haoning.CHENG@cn.bosch.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 39CC7736DC2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The newly documented `fsl,temp-calibration-offset-millicelsius` =
device tree property is not implemented in the corresponding thermal driver.
--

--- Patch [1]: [PATCH v3 1/2] dt-bindings: thermal: imx: Document calibrati=
on offset property ---
commit fabff9a1c8bc1005fe350da46dd065d5e508aee0
Author: HaoNing Cheng <Haoning.CHENG@cn.bosch.com>

dt-bindings: thermal: imx: Document calibration offset property

Some boards need a small per-design correction to align the reported CPU
temperature with board-level measurements. Document the optional
fsl,temp-calibration-offset-millicelsius property, a signed offset in
millicelsius that is added to the calculated sensor temperature. Update the
binding example to show its usage.

> diff --git a/Documentation/devicetree/bindings/thermal/imx-thermal.yaml b=
/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> index 949b154856c53..704bf2fa48cf5 100644
> --- a/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> +++ b/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> @@ -59,6 +59,15 @@ properties:
>    clocks:
>      maxItems: 1
> =20
> +  fsl,temp-calibration-offset-millicelsius:
> +    maxItems: 1
> +    description:
> +      A signed calibration offset, in millicelsius, added to the calcula=
ted

[Severity: Medium]
Is this property actually implemented in the corresponding thermal driver?

Without parsing and applying this offset in the C code, the device tree
property will be silently ignored when provided by the boot environment.
This could result in incorrect temperature readings for boards relying on
this calibration, potentially leading to premature or delayed thermal
throttling.

> +      sensor temperature to compensate for board-level measurement
> +      differences. When absent, no offset is applied.
> +    minimum: -28580
> +    maximum: 28580
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-b4-symana2=
1-11221-imx-thermal-support-upstream-6-18-v3-0-db9fc2947c55@cn.bosch.com?pa=
rt=3D1

