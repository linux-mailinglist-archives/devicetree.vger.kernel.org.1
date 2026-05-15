Return-Path: <devicetree+bounces-298245-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBlmJBEIB2qcqwIAu9opvQ
	(envelope-from <devicetree+bounces-298245-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:48:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1010C54EC05
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:48:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B81A330B36C7
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 11:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8585247A0AE;
	Fri, 15 May 2026 11:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg3u34xy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EDA46AF06
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 11:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778844591; cv=none; b=R4bHpeBs/ZBsq+9YeD8jTpB1m+14oFWQHmWvFjbkhlv/txHUJf6XNwEgrpQn+nsHFe5TqaxR4gE+FchT2t40z7hDhf9bDG8hIt62LsG5cShpPz4P1XFyD/I3l/BlISxDStFiy9TWi6fj/MyYEPLOa7BncVMLn6C9q2PWaopcQiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778844591; c=relaxed/simple;
	bh=txlxUr5DJVEFtM3LpEoJTYszKxgADy7JI8PLX2y91Ig=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=m9Jq4wYpoPAZohDYPhaNekGa8lNVFm6KBFg+yLWnPwPAo4Fzm2mGMPuQCu+Vy2whh8OxrBw6q7fyV8FWmQ2uA1HEZ+V5717eMZpLBEUKT0oIwqwqM+H2W1qeo/hmyi/Liy8vxCaN4m6tNWXKI3BV3KiIwk1vQELW9ll2atzB6mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg3u34xy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4D66C2BCB0;
	Fri, 15 May 2026 11:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778844591;
	bh=txlxUr5DJVEFtM3LpEoJTYszKxgADy7JI8PLX2y91Ig=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=fg3u34xyLyjtlWCLeSFpoKUteN58aWYwywG5/jsKX0t4M1cGGsmtXbhASTYrKNHF7
	 Ov2cOsPBbD1N2YV1f4O7LY3BqCWJwnWSNDPORudsp7oKxprS6CcGPRb7en8MRaqOmx
	 zZ9p0A9nUA8LfGo3TTpNEKc+lCJgSXUZfW3d6m8caqFcxcTy8txba3CG//OVBbJiXr
	 c1peJGHNrx+XBPw5r414C1K5/GkysyCrNDaoTIBnw5q/sPdhhToY3h152kZ3D/2roj
	 Qb/r67b65QLfTNTx70xzMfUbYm5nQTkVLB3hgY3g71D3S2QGcE9Txd97tBF9Uh/Enh
	 4eNyq78ykSo+Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: arm: qcom: Document Eliza CQM and CQS EVK
 boards
Reply-To: sashiko-reviews@lists.linux.dev
To: "Abel Vesa" <abel.vesa@oss.qualcomm.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260515-eliza-bindings-evk-v1-1-8deb81ed86dd@oss.qualcomm.com>
References: <20260515-eliza-bindings-evk-v1-1-8deb81ed86dd@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 11:29:50 +0000
Message-Id: <20260515112950.C4D66C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 1010C54EC05
X-Rspamd-Server: lfdr
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298245-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,qualcomm.com:email,lists.linux.dev:replyto,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The compatible strings strictly enforce a 2-element list that om=
its the intermediate System-on-Module (SoM) and the specific SoC variant co=
mpatibles.
- [Medium] The compatible strings and commit message introduce typographica=
l errors by using "CQM", "CQS", "CQ7790M", and "CQ7790S" instead of Qualcom=
m's standard "QCM" and "QCS" product naming convention.
--

commit 5133e80c24b03ea2551cf3393bae586847e425a8
Author: Abel Vesa <abel.vesa@oss.qualcomm.com>

dt-bindings: arm: qcom: Document Eliza CQM and CQS EVK boards

This commit documents the compatible strings for the Qualcomm Eliza CQM and
CQS EVK boards, which are built from a base board paired with a SoM that is
populated with either CQ7790M or CQ7790S, PMICs, LPDDR, eMMC and UFS.

> dt-bindings: arm: qcom: Document Eliza CQM and CQS EVK boards
>
> Document the compatible strings for the Qualcomm Eliza CQM and CQS EVK
> boards. Both boards are built from a base board paired with a SoM which
> is populated with either CQ7790M or CQ7790S (Eliza variants), PMICs,
> LPDDR, eMMC and UFS.

This isn't a bug, but there appear to be typos in the product names here.
Should CQM, CQS, CQ7790M, and CQ7790S be QCM, QCS, QCM7790, and QCS7790 to
match standard Qualcomm naming conventions?

> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentat=
ion/devicetree/bindings/arm/qcom.yaml
> index 2741c07e9f416..28a18254b4b75 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -63,6 +63,8 @@ properties:
> =20
>        - items:
>            - enum:
> +              - qcom,eliza-cqm-evk
> +              - qcom,eliza-cqs-evk

If the typo mentioned above is confirmed, will these compatible strings
permanently bake the misspelled cqm and cqs names into the device tree ABI?

Additionally, does this 2-element list correctly represent the hardware
hierarchy? The commit message notes these EVK boards are composed of a base
board paired with a SoM populated with specific SoC variants. Placing these
compatibles in this block restricts the list to exactly two elements, which
omits the intermediate SoM and SoC variant compatibles. This might cause
validation to fail on a device tree that attempts to include the SoM
compatible string.

>                - qcom,eliza-mtp
>            - const: qcom,eliza

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-eliza-bind=
ings-evk-v1-1-8deb81ed86dd@oss.qualcomm.com?part=3D1

