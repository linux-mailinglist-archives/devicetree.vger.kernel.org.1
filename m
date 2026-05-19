Return-Path: <devicetree+bounces-300083-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCQ2No1PDGqXegUAu9opvQ
	(envelope-from <devicetree+bounces-300083-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 13:54:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E62157E1D2
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 13:54:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2B51F3017BC7
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 11:32:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CCD235202B;
	Tue, 19 May 2026 11:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quINonbO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48686352025
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 11:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779190355; cv=none; b=a63036C5F9VSXD+gOtzecVzsj9E1SMI9Ar/t4f+2CP8SYp6jLrN9XtRwHiNg+nRVYzzACP2bFJ8/8KE+oujQO4EQFwoTfXP9CAngOx3YaUyrruM8oHmzSf1E1v2ggTn8e8h2vFMWjqTXrqvMjGWDKNgYVgeb5U1r3qXptvj/58U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779190355; c=relaxed/simple;
	bh=Rc/1QPOrAH3lKzrTIRvCpJUMZXKgWvr+Afu42dLtwIQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jhgLY12D9dzjr4c96MwysRACrmcut9zIQ4UXPEDxkpYabrVZCJhhAUju5Cf4VdWC/t7JCrn0OTrqalAuCj4rL87ggzTU+tMyABvQWHDnGx4SeyPI/HHtA30QLsVpu+lrju7Bu5damSqhc77nV2ruKV345oDaeR17g39rQUpio7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quINonbO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA75FC2BCB3;
	Tue, 19 May 2026 11:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779190355;
	bh=Rc/1QPOrAH3lKzrTIRvCpJUMZXKgWvr+Afu42dLtwIQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=quINonbOIjpDQ8+QEizLegeC5VVTJPfh1PRVHqPRP2jUsYjVmwq9O5ZwQdos2Dirm
	 sulBQ8X6tBZqlDRTXjXkAvRdYpbUL8FNYhcJICawoOXlljxXE0u3Sxe2+3Mov1EOy0
	 yGCOV8MX+xqJ7aVi/A6OD9c3f9cjSF1DLEgIj2KVoG0vkifj8wCaMb81IrmSLHIQck
	 8Dt46U6WMHQ21dR50+zSF6eXFRab69bsfIXkpmH0Mn0vm9ekMz1Q9B/BfJI7HZyvND
	 dXaUKHEJSUM2lpPopENs38bpLEkwUXfNrKyh41uCcr4sM9cuzFBIAVUkTB62zfVVK8
	 K1xThhQubh+zw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: arm: qcom: Document Shikra and its
 EVK boards
Reply-To: sashiko-reviews@lists.linux.dev
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260519-shikra-dt-v2-1-c01b90fb4395@oss.qualcomm.com>
References: <20260519-shikra-dt-v2-1-c01b90fb4395@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 11:32:34 +0000
Message-Id: <20260519113234.BA75FC2BCB3@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300083-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,qualcomm.com:email,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 4E62157E1D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Device tree compatible strings use generic abbreviations instead=
 of specific hardware part numbers.
- [Low] Alphabetical sorting violation in qcom.yaml.
--

commit d5de85f1dcdd73430dd4bed54ebebe0837ba7f5e
Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>

dt-bindings: arm: qcom: Document Shikra and its EVK boards

This commit introduces compatible strings for the Qualcomm Shikra SoC in
System-on-Module (SoM) form factors and their corresponding EVK carrier
boards.

>     Add compatible strings for the CQ2390M, CQ2390S, IQ2390S SoM variant =
and its
>     corresponding EVK boards.

Should these compatible strings use the specific hardware part numbers
(CQ2390M, CQ2390S, IQ2390S) instead of generic abbreviations like
qcom,shikra-cqm-som?

If the generic abbreviations are kept, can the schema map these
abbreviations to the specific part numbers to document the ABI?

> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentat=
ion/devicetree/bindings/arm/qcom.yaml
> index af266d584fae6..7c5c5f4fc30f7 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -968,6 +968,24 @@ properties:
>            - const: qcom,qcs9100
>            - const: qcom,sa8775p
> =20
> +      - items:
> +          - enum:
> +              - qcom,shikra-cqm-evk
> +          - const: qcom,shikra-cqm-som
> +          - const: qcom,shikra

This isn't a bug, but should these new blocks be sorted alphabetically
based on the root SoC compatible string?

Since 'h' comes after 'd', could qcom,shikra be placed after qcom,sdm845
instead of after qcom,sa8775p?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-shikra-dt-=
v2-0-c01b90fb4395@oss.qualcomm.com?part=3D1

