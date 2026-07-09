Return-Path: <devicetree+bounces-324068-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jXp9HZj2T2rArAIAu9opvQ
	(envelope-from <devicetree+bounces-324068-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:29:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0D7734F6B
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:29:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Pnkbbwv0;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324068-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324068-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4FBAF30166C9
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 19:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 919553B8412;
	Thu,  9 Jul 2026 19:26:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7795A3B8BA4;
	Thu,  9 Jul 2026 19:26:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783625218; cv=none; b=fD2xZcsqIekW0WI7W/eQpusZAn05HiN+2HQpuA8taqtQd3MSTZIHqJYemuBr0/GvKje012Lg5bEqPjCBi0pMo2jk5z1aMnKGz1+ZuwTgOeCcmP1skvvcc23FRmdZ02Mrbw+BqD8pj5U4VD/+OFXO3Y8O6J8BlOsg/0UDG2V0CRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783625218; c=relaxed/simple;
	bh=WYcBq+2OehXUkps9RBfzqulNDwbhuWbGqAnSWT50caA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GGwhq7gHTKoqm92EqNehEfYIaxZt6VMIIilxInGPhkCOYeB+xWcc+d9+IOzHkHpdGdHVyrIUuEd6v3i6I+hifHg5oKl5yA118vBEj6/cVFkR3y/Ee0T5PPeDJ/hx3GccGsLNV7pY6Nz8H6MSLviTGRV/7zRrZ+PkaC9trvSv/Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pnkbbwv0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C41AF1F000E9;
	Thu,  9 Jul 2026 19:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783625217;
	bh=3YNXmK8iqaVmcFh0KFC0kmph0vK3sC1aXnxnkc76EXk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Pnkbbwv0i2TLMQrlHfxFYvONIbzh4I2luXYHAQHWd6+lafkFjfI486YC2Ycm5xF1/
	 dTU4t2Nilpwul9W1fHGuQz28NZOXm0dBPXcc0cWh2/my0aeOwD3dDtUiy8yeBxpqyl
	 i2YCyoCkN1cRflPgvsMx9qVMeZbJZdOzdYhSnx2BfcjMPR0fIZgSeWrOYOuSLDNMS9
	 k99ampotjKJPixUd3HSQm4sCbJNGpeVKok0F+oCHTDENBSwRstPFtG6oL2ePRRcNzb
	 M0j/1FVuoOp9Ypx4CBKxWQ+KguLSD7St3gnTmYaK2vuOKRqbMSdQNCAqqP+R6p1O6C
	 PR+sFlkJEEKow==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: perf: Add Arm Bus Monitor Unit
Reply-To: sashiko-reviews@lists.linux.dev
To: "Robin Murphy" <robin.murphy@arm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, linux-perf-users@vger.kernel.org
In-Reply-To: <1cd17d9c07e9695e1dffdeaa5409f0a1db8ccb81.1783439341.git.robin.murphy@arm.com>
References: <cover.1783439341.git.robin.murphy@arm.com>
 <1cd17d9c07e9695e1dffdeaa5409f0a1db8ccb81.1783439341.git.robin.murphy@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 19:26:56 +0000
Message-Id: <20260709192656.C41AF1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324068-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,arm.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robin.murphy@arm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CE0D7734F6B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The YAML device tree binding schema is missing the mandatory `examp=
les` section.
--

--- Patch [1]: [PATCH 1/2] dt-bindings: perf: Add Arm Bus Monitor Unit ---
commit d43448a74f2d7de7e06899d55b1561b64c21375c
Author: Robin Murphy <robin.murphy@arm.com>

dt-bindings: perf: Add Arm Bus Monitor Unit

This commit adds a new device tree binding schema for the Arm Bus Monitor
Unit. It defines the required properties, including a mandatory label to al=
low
end users to correlate instances with platform documentation.

> diff --git a/Documentation/devicetree/bindings/perf/arm,bus-monitor-unit.=
yaml b/Documentation/devicetree/bindings/perf/arm,bus-monitor-unit.yaml
> new file mode 100644
> index 0000000000000..3cdc3a05b9a63
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/perf/arm,bus-monitor-unit.yaml

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +  - label
> +
> +additionalProperties: false

[Severity: Low]
Does this binding schema omit the mandatory examples section? Standard devi=
ce
tree bindings typically require an examples block at the end of the file to
provide a reference node implementation and allow full validation by the
dt_binding_check tool.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783439341.gi=
t.robin.murphy@arm.com?part=3D1

