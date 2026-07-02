Return-Path: <devicetree+bounces-319520-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /Ba3FRShRmotagsAu9opvQ
	(envelope-from <devicetree+bounces-319520-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 19:34:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B56FE6FB72A
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 19:34:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="ohA/yMml";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319520-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319520-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0A73230506A3
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 17:30:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E4D133F58E;
	Thu,  2 Jul 2026 17:30:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69393349AF5
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 17:30:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783013405; cv=none; b=KXWUx1/z7UrRriage4TTPHTEz+E7UlUzh8tdLNXEu1nEOvXQ4ABVE8RUDWdGJfmIR6rHLgDFhqcY709C6TB0P531OQpND1ngm/wS6ZJePVH0y116d68uyw8jix2ASjcGZlv5+q4oqMseNJivj1wIKPP2h/GVT3bR4+Z/a9Drqao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783013405; c=relaxed/simple;
	bh=RlUoIzmsvU5FdPnsuPTf+Q4BBqRDJ5ScMRNvfXZ91ZU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=R0qWk+h7A71rJ31P0/TCWbohyUgGOMWhyf0jddosA0yvu5m5VhlaL+Fs63q9ImqU+gu60KWT6eCJRs1GUhkEcJRN2gHhcEA6nIZlilRfNz+Du2nfzCnqokis4eHs8fv7PhbuoWykNVDBN4P3gdeFMAABDbHL9Ah9KROry3hindQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohA/yMml; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7FBD1F000E9;
	Thu,  2 Jul 2026 17:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783013404;
	bh=vSR/PnTza24pZPOZ41yYm98am9qU10zypTt4Jvcq9Dk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ohA/yMmlv1dAfb7B8dW2rDaN0axZUDRTgcS5PDFMG4rmVTP5mY6jwLEYBzcsglkYq
	 YqShLxMlKOMmhSgwRWAPqUfriHtGa0+2M/vcIpcRTcMCTBPrwMoLHG1wsNE0IESu4G
	 +uRQ8d+y/NN3lV5TUFe2MPZDeT6SVSKxlps4Wc8Dg6RqJHt0Iq+x8ziW0IADNSfQqe
	 /O0k+Z1UTq1RigOIe1Q1u/6NPl4yxVdXRp6/2Q/+mr4pkVOzNTjzb/UoeyMENZaYMe
	 J2B6V0Pkijo4jbEYK8kgy4C8YBt/zFe7TCvmHLDI+HifzUfym0pJRP9q550tga/kbz
	 9tUIQjsYQTTNg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: power: limits: Describe Qualcomm
 SPEL hardware
Reply-To: sashiko-reviews@lists.linux.dev
To: "Manaf Meethalavalappu Pallikunhi" <manaf.pallikunhi@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260702-qcom_spel_driver_upstream-v3-2-434d50f0c5b0@oss.qualcomm.com>
References: <20260702-qcom_spel_driver_upstream-v3-0-434d50f0c5b0@oss.qualcomm.com>
 <20260702-qcom_spel_driver_upstream-v3-2-434d50f0c5b0@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 17:30:03 +0000
Message-Id: <20260702173003.C7FBD1F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319520-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:manaf.pallikunhi@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B56FE6FB72A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The YAML `description` string will lose its structural formatting (=
specifically the bulleted list) because it is defined as a plain scalar.
--

commit 2a8dfbf8a7cefb27618383801964875a7eaac9ea
Author: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>

dt-bindings: power: limits: Describe Qualcomm SPEL hardware

This commit adds a DeviceTree binding to describe the Qualcomm SPEL
(SoC Power and Electrical Limits) hardware block. SPEL provides power
monitoring and limiting capabilities for various power domains in
Qualcomm SoCs.

> diff --git a/Documentation/devicetree/bindings/power/limits/qcom,glymur-s=
pel.yaml b/Documentation/devicetree/bindings/power/limits/qcom,glymur-spel.=
yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/limits/qcom,glymur-spel.yaml

[ ... ]

> +maintainers:
> +  - Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> +
> +description:

[Severity: Low]
This isn't a bug, but should this use the literal block scalar indicator
(description: |) to preserve the line breaks?

Because this is currently defined as a plain scalar, the YAML parser will f=
old
single newlines into spaces. This will cause the bulleted list below to
collapse into a single unformatted run-on sentence when the documentation
is generated by tools like dt_binding_check.

> +  The Qualcomm SPEL (SoC Power and Electrical Limits) is a hardware bloc=
k that
> +  provides power monitoring and limiting capabilities for various power =
domains
> +  in Qualcomm SoCs.
> +
> +  SPEL enforces power consumption limits to prevent thermal overload, ma=
intain
> +  system stability, and comply with platform power budgets. It provides
> +    - Hardware-enforced power capping with configurable power limits
> +    - Time window controls for power averaging
> +    - Energy counter monitoring for each power domain
> +    - Automatic throttling when power limits are exceeded

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-qcom_spel_=
driver_upstream-v3-0-434d50f0c5b0@oss.qualcomm.com?part=3D2

