Return-Path: <devicetree+bounces-315367-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VdSRCugtPGotlAgAu9opvQ
	(envelope-from <devicetree+bounces-315367-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 21:20:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 198F76C0FEC
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 21:20:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WjtISoCg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315367-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-315367-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 17121301C19E
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 19:19:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 606DF382380;
	Wed, 24 Jun 2026 19:19:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1E03822A3
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 19:19:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782328782; cv=none; b=kAsyq2OkoqF8eCb4VbDnu8JJMAraj83WtqnCcpRRJh9Pi//ZDFPnx5JRv0a61KQzKTUtP4yNZmiNR4cEYqLIDO79CUa8lutIeTNYaP7ewJj+Wu2hg2tJNucCuvK3wRoQwaSIh4Y4madgSUKk86NczuAlc1T4S/v6lHBe4exEFMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782328782; c=relaxed/simple;
	bh=Nu3iqyNwKQib4WJMWemYragilzw3uW/EscXyR5dpvMo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=KCaYkKnxCnBXFgZ16VJnk9hdx6DbYAUPvpVtUUVH5jra2LuGv7oS+fkW4d+/UX2smuI9XBzx1upfTjz56pplg5h3YCL7KIeCbrZU78Wci9LnBkxhuwzBpsVm9fDexM2HNnG4iJkSOuX6IpTie8bb08X6ayGGhFY6Z7ZERAFwDWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjtISoCg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0BBF1F000E9;
	Wed, 24 Jun 2026 19:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782328781;
	bh=XIdrsZTqs3IOhD9OEbbwrnzCfcMo646KeHZHcwgBZd0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WjtISoCgrrdN8X6T710U8C/Mg6z49QjtOio9aohXq0uTvOP8ZPJ90fr4sikilgWkz
	 Jc/BHHipokbGmUDfYePeuQmPqecvzWo8l0wrgaLSdbV1GXuOmVNmMq3Ldvk3qiyzWW
	 npHpqz6pIrR96RXvWA1strDsifYEKdzPXrm9ejNF+kPy0YLoJLqmOSJ5S+ikvkc1NQ
	 +u1Ct890pFwZzAIRTbL3u3q1Wk448/96lxbianM3Nuk4gcbqYvFJk5rv5HsdZ5vv/a
	 cy2VC5KeYrzgXsBwFNqpf/cQqMEC7wg8rEC4sR7PprQaqQ6M/WH5bPc+eOaCkGCK0+
	 Z+uvCHEJkXwyA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 01/19] dt-bindings: firmware: qcom,scm: Add minidump
 SRAM property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260624190830.3131112-2-mukesh.ojha@oss.qualcomm.com>
References: <20260624190830.3131112-1-mukesh.ojha@oss.qualcomm.com>
 <20260624190830.3131112-2-mukesh.ojha@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 19:19:39 +0000
Message-Id: <20260624191940.C0BBF1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315367-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mukesh.ojha@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 198F76C0FEC

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing property type reference (`$ref`) for the `sram` property in=
 the dt-binding schema.
--

commit 6acd1cecaeb951d30398f9208dd4e87b7cfd156e
Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

dt-bindings: firmware: qcom,scm: Add minidump SRAM property

This commit adds a new 'sram' property to the Qualcomm SCM dt-binding. The
property is intended to contain a phandle to a region in always-on SRAM used
for minidump download destination configuration. This allows the OS to share
information with the boot firmware across warm resets.

> diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/D=
ocumentation/devicetree/bindings/firmware/qcom,scm.yaml
> index 7918d31f58b4a..82c661db0b616 100644
> --- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> +++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> @@ -127,6 +127,13 @@ properties:
>            - description: offset of the download mode control register
>      description: TCSR hardware block
> =20
> +  sram:
> +    description:
> +      Phandle to a region in always-on SRAM used to store the download
> +      mode value for boot firmware to read before DDR is initialised on
> +      the next warm reset.
> +    maxItems: 1

[Severity: Low]
Does this property need an explicit type reference, such as
$ref: /schemas/types.yaml#/definitions/phandle?

Without a type definition, the dt-schema validator might infer the property
as an untyped array based on the presence of maxItems: 1. Could this allow
malformed device trees to pass validation silently since it won't enforce
that the provided value is actually a valid phandle?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624190830.3131=
112-1-mukesh.ojha@oss.qualcomm.com?part=3D1

