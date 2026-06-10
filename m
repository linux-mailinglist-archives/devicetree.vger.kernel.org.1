Return-Path: <devicetree+bounces-309618-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yShUKSkqKWpXRwMAu9opvQ
	(envelope-from <devicetree+bounces-309618-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:11:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E11FA667AD2
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:11:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oJtIEPGc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309618-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309618-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C27D0358C1C0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CC7839657D;
	Wed, 10 Jun 2026 09:01:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D11371885
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 09:01:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781082111; cv=none; b=uDt9z+qwRgLurMLIgfxVN05Xh8yXHXt/KPTAO9Q+BfYfO8WKK7F0PEyRWdz9C9LD6gp4h1lkgI+cJBDxG211wHCYljpxtAoXDHO64eaCqWSC2KWy23VW4QO1bUfSJppynfm1pysxDrbIX0jmWntuzwMQL+zll4TKsdav7bA4BP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781082111; c=relaxed/simple;
	bh=6Rg2Ul7Fyi77ORk9j086xg0wLokvHp9xy8SWChl6n3c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=D1cQ4BhITkBqnGglXSXi2Ui/kskqXsXA/IodktMuWyTdYaGlLdUQogVpwGh97ygWP08KFoi1T49yXmqsb5egcELb3WAj+1D7cZ3dSJh3VpvL/YzI7OU2tx8p6SAGZHjsHWqA3TGZzCP2JWwtVMXuYgKWtmIlIAgex+1aCnAe+k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJtIEPGc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC91D1F00893;
	Wed, 10 Jun 2026 09:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781082109;
	bh=zZoyF2OrIAVoOzypWbOD9neqIyKs0Ciw9sPwebmmGRQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oJtIEPGcx8LwCsJdTMHVEhC+9vFI3GxNj5q02qSBOZRQGNaFRoA2KEi2AgWy014wK
	 6FRPEoTHeqztAStYKI6UTtUt5EWfkuS50v6I9u/WFENRhGpnfYRW+lOPZaubqPdsGb
	 IRgmW/ZXJB33Yrmb6w1FI11SYWWURhR4NDPvpYrUGLXgrncWkXMOAe5NDrOqkW6TwV
	 C2LOCoi5c5w6oKOm6inS7asLaM1G8+Kk9XuULlwKoTiIDg2+dzMq/H6nHyIEk57LQa
	 CRnWnBmzmwoogfV5PdaDPJSs59QE8EBPQRKg2LLadZAzNAen5BXPfX685r/WH3UuDp
	 YkLTb5HtfUFGA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v7 2/9] dt-bindings: firmware: arm,scmi: Add
 Qualcomm Generic Extension Protocol
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pragnesh Papaniya" <pragnesh.papaniya@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260610-rfc_v7_scmi_memlat-v7-2-f3f68c608f25@oss.qualcomm.com>
References: <20260610-rfc_v7_scmi_memlat-v7-2-f3f68c608f25@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 09:01:43 +0000
Message-Id: <20260610090148.CC91D1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309618-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:pragnesh.papaniya@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,qualcomm.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E11FA667AD2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Adding `qcom,generic-scmi.yaml` to the unconditional `anyOf` blo=
ck silently bypasses strict schema validation for all other vendor schemas =
(e.g., `nxp,imx95-scmi.yaml`).
--

commit 4cdbbb0bcf03bec0f34cb611707f09de406a9cfa
Author: Pragnesh Papaniya <pragnesh.papaniya@oss.qualcomm.com>

dt-bindings: firmware: arm,scmi: Add Qualcomm Generic Extension Protocol

This commit adds the binding schema for the Qualcomm SCMI Generic Extension
Protocol to support Bus DVFS on several SoCs.

> diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/D=
ocumentation/devicetree/bindings/firmware/arm,scmi.yaml
> index d06cca9273c48..aedc57dd3b389 100644
> --- a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> +++ b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> @@ -24,6 +24,7 @@ description: |
> =20
>  anyOf:
>    - $ref: /schemas/firmware/nxp,imx95-scmi.yaml
> +  - $ref: /schemas/firmware/qcom,generic-scmi.yaml

[Severity: Medium]
Does adding qcom,generic-scmi.yaml to the unconditional anyOf block silently
bypass strict schema validation for all other vendor schemas?

Due to JSON Schema evaluation rules, an additionalProperties: true keyword =
in
the newly added QCOM schema evaluates to boolean true and annotates all
properties it matches as evaluated.

If an NXP device tree has an invalid property (for example, wrong types ins=
ide
protocol@81 or protocol@84), it correctly fails the nxp,imx95-scmi.yaml
schema. However, because it is evaluated against the unconditional anyOf bl=
ock
here, it then falls back to qcom,generic-scmi.yaml.

Since the QCOM schema does not define NXP's specific properties, it accepts
them via its additionalProperties: true directive and annotates them as
evaluated. The anyOf condition is thus satisfied, and the top-level
unevaluatedProperties: false check in arm,scmi.yaml passes, silently
suppressing the NXP schema validation failure.

Should vendor schemas be conditionally applied based on compatible strings
(for example, using if: properties: compatible: contains: ...) instead of
being placed into an unconditional anyOf list?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610-rfc_v7_scm=
i_memlat-v7-0-f3f68c608f25@oss.qualcomm.com?part=3D2

