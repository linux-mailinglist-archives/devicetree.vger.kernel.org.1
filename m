Return-Path: <devicetree+bounces-300253-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMCwLOWfDGq8jwUAu9opvQ
	(envelope-from <devicetree+bounces-300253-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 19:37:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A125832D5
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 19:37:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD23030107C9
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 17:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4487240912E;
	Tue, 19 May 2026 17:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmtLfSVj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1963C408003
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 17:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779212089; cv=none; b=QFeE1YTNqfEW7swXx0BHuZWvtC3Mm+rk3O5tgSoPMmkb5avskQNfFNFWMoqG90Dl9cNkE4VpSfDZ/vJDfTvHVCBnuQ1fEd5bZX3I3LVCllS/NDqQ1FVFBrck8aCc3ksw+lxAb4ImeVel6rhxWW3Mq1i/nZgCoqTjnRQ41I4aNQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779212089; c=relaxed/simple;
	bh=JbneXY1CzNVbNYPAHDYVQLaMmUBX73FRUOV2mZdJTMM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=o6RqcVvcF8YCBQ+TV+9N9egEzk0Yriz7B9jM398EFj+nUhoUwmw0ZdNK4y5xPt9y+4xEvIrg9Q3wfe5fcb9+kRnn4FeM5gTw73d9h3nVzAnQlAhLTAAv141+4Vt6oXMukW9OIMz3nap107xfjXiWW+T+Ri3MKyjRB7l3tn6pNm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmtLfSVj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5684FC2BCC6;
	Tue, 19 May 2026 17:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779212088;
	bh=JbneXY1CzNVbNYPAHDYVQLaMmUBX73FRUOV2mZdJTMM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=jmtLfSVj4qFCbdrtfsoaMAU/S8Dv/xxivKu79EIPoyjkhEAYF7VEU3WL7MHaqDGTt
	 VSCXFLS3c7Bi3lvbYDDF/SMqeGLGPa56MvVKxpReSNvROAkf1oVBClj8cXmgRTaf5h
	 DVgouPEuJq0nbkgU5BjB+KramZ/eR4doJ3VJCWy1PHXMGd9r9EMfSCeoZjZjnP3OcE
	 KybSi3fq7uEAhe0QgxS9iXyLBdT+OqC7b98vKXiMMH748LHcPsX7bjawpZtslO39la
	 gPYF7VY5o5JT43jDvxKtTJAQytYsjNdMqOzCNnxpAHjSWLz5cdmshUE1K3REG01Zbx
	 h8AU2yQyVKEWA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: firmware: qcom,scm: Add minidump
 SRAM property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260519171442.1582987-2-mukesh.ojha@oss.qualcomm.com>
References: <20260519171442.1582987-2-mukesh.ojha@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 17:34:47 +0000
Message-Id: <20260519173448.5684FC2BCC6@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300253-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 10A125832D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Missing type definition ($ref) for the `sram` device tree property.
- [Low] Violation of device tree naming conventions by using the generic na=
me `sram` for a vendor-specific property.
--

commit 657534134734a0a9c527c2bb59cf5ebc948cf8b5
Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

dt-bindings: firmware: qcom,scm: Add minidump SRAM property

This commit adds a sram property to the Qualcomm SCM binding. It describes
a region in always-on SRAM where the minidump download destination value is
written so boot firmware can read it on warm reset.

> diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/D=
ocumentation/devicetree/bindings/firmware/qcom,scm.yaml
> --- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> +++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> @@ -127,6 +127,13 @@ properties:
>            - description: offset of the download mode control register
>      description: TCSR hardware block
> =20
> +  sram:

[Severity: Low]
Would it be better to use a vendor-specific name for this property, such as
qcom,minidump-sram or qcom,dload-sram?

Using the generic sram name for a highly specialized firmware feature might
prevent the qcom,scm node from using sram for general-purpose SRAM attachme=
nts
in the future.

> +    description:
> +      Phandle to a region in always-on SRAM used to store the download
> +      mode value for boot firmware to read before DDR is initialised on
> +      the next warm reset.
> +    maxItems: 1

[Severity: Low]
Should this property explicitly reference a standard type, such as
$ref: /schemas/types.yaml#/definitions/phandle?

Because the property name lacks a standard type-implying suffix, specifying
maxItems: 1 alone might treat it as an untyped JSON array. Devicetree
validation tooling could fail to enforce that the value is a valid phandle,
allowing malformed values to pass the dt_binding_check silently.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519171442.1582=
987-1-mukesh.ojha@oss.qualcomm.com?part=3D1

