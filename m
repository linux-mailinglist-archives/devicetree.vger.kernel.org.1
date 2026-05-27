Return-Path: <devicetree+bounces-303366-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFyvLBPFFmrOqgcAu9opvQ
	(envelope-from <devicetree+bounces-303366-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:18:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB025E2843
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:18:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4B32E31D18F0
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 10:12:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27BBF3ED13E;
	Wed, 27 May 2026 10:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtFCRlGK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC88377ECF
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 10:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779876759; cv=none; b=FUrGbSgl4RiTsSsSC3otWDU4nfqqpeKyXx4AETCflufMIxw5BakHblJwrFgXA6Uq/2aq0P02RrYW7PqcxdauuWJAem0FAqelthQtUPgPQALjXwiTfzzqbjBzz1F07W12GmspKfcqXWNQC35put9PWMGH/ZrwAgG0lA4Ll7BUKKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779876759; c=relaxed/simple;
	bh=5hhJZ3Wskkwa8hcoeZLDMhxdsetMcenlnyfJas38k5c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=at8GZI0xlMRdulE2X8DEfClan2DyDxS6tiW1dWNZ5ASM2vcOUQrvBUK/Hgvk2+c4RLCPlTpklDnUkJlC1IXmq4iWl/AL9ipVbjPoeEZxTdQs1T0/jrqCQ+8OCmvXKbDXMwg4fEjfzpg9VmYG9/aFBbnpW95UC9HDAcH4iXFChIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtFCRlGK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA2DD1F000E9;
	Wed, 27 May 2026 10:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779876746;
	bh=lPlWZmiNVUPg5MoZd2M5bIxt3Qpn+2Evo3PeHnfofsE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jtFCRlGKk0aNlN2wrbcj4ZWG6IabN9V8vLJg4babTTlWtogushzDLS6mBFO3b37gn
	 gZBm/ea6zhKV5qREp0R/lh4AWqOG0iG383bMOiDO0nqVG+EwTcFlqCbg7rocmnAygj
	 Bu48uf+MyFrCYmyHsxJH6Ow5LIVjfTSnRSS1myAKGxd0A5Tmt2TExtheqOlGDrHSmk
	 jJpM+SvvzMJLpRnizahyElnILMRMSRjw8ZgBfrKjBAO/ZxNwf638WbRofEgropzE6q
	 cgZGuO0XQQvrpA1LrVrkfePGJ9gWSgE2UKqe3mpue7EF5gzy6/IWWZGtuDoZJQKL9F
	 Fityj+5ZS1jNA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: pinctrl: qcom,pmic-gpio: Add
 level-shifter function
Reply-To: sashiko-reviews@lists.linux.dev
To: "Fenglin Wu" <fenglin.wu@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260527-pinctrl-level-shifter-v1-2-1965461d0a7c@oss.qualcomm.com>
References: <20260527-pinctrl-level-shifter-v1-2-1965461d0a7c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 10:12:14 +0000
Message-Id: <20260527101214.BA2DD1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-303366-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 3DB025E2843
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Unconditionally requiring `qcom,rpmh` and `qcom,pmic-id` for the e=
xisting `qcom,pmh0101-gpio` compatible breaks device tree validation and ba=
ckward compatibility.
--

commit 4ef6fb2ad4a4a7f20f7b6195e05c09b5f1ccf313
Author: Fenglin Wu <fenglin.wu@oss.qualcomm.com>

dt-bindings: pinctrl: qcom,pmic-gpio: Add level-shifter function

This commit adds the level-shifter function and related device tree
properties for RPMh firmware control. It introduces a parameter to enable
or disable the level-shifter and defines allowed groups for pmh0101.

> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yam=
l b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
> --- a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml

[ ... ]

> @@ -330,6 +345,25 @@ allOf:
>            contains:
>              enum:
>                - qcom,pmh0101-gpio
> +    then:
> +      properties:
> +        gpio-line-names:
> +          minItems: 18
> +          maxItems: 18
> +        gpio-reserved-ranges:
> +          minItems: 1
> +          maxItems: 9
> +        qcom,rpmh: true
> +        qcom,pmic-id: true
> +      required:
> +        - qcom,rpmh
> +        - qcom,pmic-id

[Severity: High]
Does unconditionally requiring these properties break backward compatibility
with existing device trees?

Existing device trees using the qcom,pmh0101-gpio compatible might not have
the qcom,rpmh or qcom,pmic-id properties, which would cause validation
to fail for those older platforms.

Additionally, if the driver unconditionally relies on these properties
in subsequent changes (such as calling pmic_gpio_register_level_shifters()
where a missing qcom,rpmh causes rpmh_get_ctrlr_dev() to return -ENODEV),
this could cause the entire GPIO controller probe to fail on older device
trees.

Could these properties be made optional or strictly conditional on actual u=
se
so that the driver can gracefully handle their absence?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527-pinctrl-le=
vel-shifter-v1-0-1965461d0a7c@oss.qualcomm.com?part=3D2

