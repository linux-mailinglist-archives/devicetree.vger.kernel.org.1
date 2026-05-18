Return-Path: <devicetree+bounces-299572-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKGoCEFHC2rgFAUAu9opvQ
	(envelope-from <devicetree+bounces-299572-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 19:07:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7528A5716A3
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 19:07:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13F9130C136D
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 17:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA305355813;
	Mon, 18 May 2026 17:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFLooS1T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80B834F474
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 17:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779123675; cv=none; b=GF849zp5u1acZJ6xx7Qlr05DUaNQo4N7pLZIj0kgEaTZ35upBQ77yTG/Qwh49/fxCw1xegwLG23mtU0ef4RsLs+ZJNsGog6MI7SeyHuu4J+lJ/d6u/6bZGGg+wZHW38uvwCFY+cCSQAAiWtz4/l+rW5KMWNzCsACNzWPpnfRRZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779123675; c=relaxed/simple;
	bh=xy0gv9yeC3o3DN69vqcirFBF5EfH7V5AclKXWhDPn+I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Jwnak9EA2lohC0DovOgr9elrbwsUZC6DjtGhwWhmI0NXEeAfun4q6aGfgewypoQTqmW0oApM8cBQhzMXGMSq83dnRRjuxixmcjCdOjtjOIX9Fhk3BM9Kwk4Ylilpq4LEF9u4DcIr5Ej8Hw42bB7xIz+s31j68funLumMoFBbDiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFLooS1T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37A43C2BCC9;
	Mon, 18 May 2026 17:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779123675;
	bh=xy0gv9yeC3o3DN69vqcirFBF5EfH7V5AclKXWhDPn+I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=pFLooS1TCagsNTjNwjxobCcpipp/seNhrguWid1vIgohp+R4Py97uOoFpk78GOQj2
	 dcr8zkCP7ZJ9tfn0DCCgnIr8eW2vO7qX9KdgN3hia8pC2QcjxJuSqVJAUF9pjl01kQ
	 /UR9aRFPzp3HQJrpiMZxGyJYadz2WPe0nuWW/tJfWw+zOWv8VnqxwMbvCc2Ag0mGdx
	 qm9ODLQ9jLFK9m0Fmku0UYHJD3jlqDHb3X3GF0crfq3BRcq28SOEMqrX8ZvytVMYr1
	 C1t12CA471aCG1Uu2mxb8G5OAF+VskvUnkAMEV5EQVRytFhwHpVuPJ2A8jTBEo+3R+
	 uacvr0zcMbZxg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V1 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add
 Hawi UFS PHY compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: palash.kambar@oss.qualcomm.com
Cc: robh@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260518165346.1732548-2-palash.kambar@oss.qualcomm.com>
References: <20260518165346.1732548-2-palash.kambar@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 17:01:13 +0000
Message-Id: <20260518170114.37A43C2BCC9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,vger.kernel.org,lists.infradead.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-299572-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,qualcomm.com:email,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Queue-Id: 7528A5716A3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `qcom,hawi-qmp-ufs-phy` compatible string is missing from th=
e conditional blocks under `allOf`, leading to incomplete schema validation=
 for clocks.
--

commit ef81b61a1b44f94e3b68451c007cd7fcd7dfb417
Author: Palash Kambar <palash.kambar@oss.qualcomm.com>

dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY compatible

This commit documents the QMP UFS PHY compatible string for the Hawi SoC.

> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-=
phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.=
yaml
> index 9616c736b6d46..2326dcf38a467 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -37,6 +37,7 @@ properties:
>                - qcom,kaanapali-qmp-ufs-phy
>            - const: qcom,sm8750-qmp-ufs-phy
>        - enum:
> +          - qcom,hawi-qmp-ufs-phy

Should qcom,hawi-qmp-ufs-phy also be added to the conditional blocks under
allOf?

When a new compatible string is added to the top-level compatible enum but
omitted from the existing conditional blocks, it falls back to the top-level
schema validation.

This loose validation allows 2 or 3 clocks with any names, which means
device trees for the Hawi PHY with incorrect or missing clock properties
will silently pass validation.

>            - qcom,milos-qmp-ufs-phy
>            - qcom,msm8996-qmp-ufs-phy
>            - qcom,msm8998-qmp-ufs-phy

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518165346.1732=
548-1-palash.kambar@oss.qualcomm.com?part=3D1

