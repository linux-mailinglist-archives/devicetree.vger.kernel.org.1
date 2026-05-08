Return-Path: <devicetree+bounces-294618-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEPTGmsp/mngnQAAu9opvQ
	(envelope-from <devicetree+bounces-294618-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 20:20:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BF60C4FA830
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 20:20:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5778A301A1DD
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 18:20:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19C4E3CF686;
	Fri,  8 May 2026 18:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLeIMwDC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA523CBE9A
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 18:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778264425; cv=none; b=W6iexvmwWpIVkE+c6o0fHjtaVwDYgRJptIi6lpLaW7jOZWUad0Ivkys+nkKTaGa2/HlUYIj2vjcxL70OP+9dslCF5rpl3sohsQv9fZhw70InvYyQ3AZiB8E/xKr80Ei4PB8EmMaqXl1maZ2fa6pJkgD2phcDIH1dmOr71mchAbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778264425; c=relaxed/simple;
	bh=uHZlyadycP7g+vCQiPGYp9bzrFWfNnlBw9y2PGlxomo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hjqQkdRvelPEXpASSpHu9DMlK9cBQQ9TaQMs2qn3pLl1DoLbeS1LDFuTa6qQEsLxzkfkqfXkjxhmpQ2e+6Xu6OxptHcIKMrIavwpbUeadPtcKrRMBe+BZqiR6/t+o9PiQh7rrjyVLK6gukz6lJib0qyOIptPK7UHzHKZpQw+EaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLeIMwDC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85C6BC2BCB0;
	Fri,  8 May 2026 18:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778264424;
	bh=uHZlyadycP7g+vCQiPGYp9bzrFWfNnlBw9y2PGlxomo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=gLeIMwDCHkX2yjJy4ONvXsc2UHgEeFOyahw3jurFIchyw6BuabjPHh+/jjB9pzU7J
	 TlQsPEPzgiWwdSL+nJb92N/BoOBeuH+2q4tEI+sgUAWmioGaHqk2OEdK5+dx//q6m+
	 H3Ts1slPDHH3uGvcWzyCXHg156DXOIN7nHMlCSFVm3LlTKwnLukgHjZOHLn8Bgya7Z
	 V+TbYyZBIExBCckCnHFAkBWbk8fpXYzhp3RSs1MGwyaih/+seNsI0K2oDXwE6wSvCt
	 xAPnKXbM5ZAioW7uEWdZ89M9v/QwcW2PjEWnwcM/nVVeSjE2wAB61qR0JPj2hxQePj
	 M48MIvLbW4xoQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/8] dt-bindings: net: wireless: qcom,ath10k: Add
 NVMEM MAC address cell
Reply-To: sashiko@lists.linux.dev
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260507-block-as-nvmem-v2-2-bf17edd5134e@oss.qualcomm.com>
References: <20260507-block-as-nvmem-v2-2-bf17edd5134e@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 18:20:23 +0000
Message-Id: <20260508182024.85C6BC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: BF60C4FA830
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294618-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The patch defines `nvmem-cells: maxItems: 1` and `nvmem-cell-nam=
es: const: mac-address`, which explicitly invalidates and prevents valid de=
vice tree configurations that use NVMEM for calibration data.
--

commit fb9ea9036c91c7c939b039f47a6a36361ae2f2fe
Author: Loic Poulain <loic.poulain@oss.qualcomm.com>

dt-bindings: net: wireless: qcom,ath10k: Add NVMEM MAC address cell

This commit adds support for an NVMEM cell provider with the standard
mac-address cell name to allow ath10k to retrieve its MAC address from
non-volatile storage.

> diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.y=
aml b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml
> --- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml
> +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml

[ ... ]

> @@ -92,6 +92,15 @@ properties:
> =20
>    ieee80211-freq-limit: true
> =20
> +  nvmem-cells:
> +    maxItems: 1
> +    description:
> +      Nvmem data cell that contains a 6 byte MAC address with the most
> +      significant byte first (big-endian).
> +
> +  nvmem-cell-names:
> +    const: mac-address

Does this restrict the binding to only allow a single NVMEM cell, and
force its name to be exactly mac-address?

The ath10k driver natively fetches NVMEM calibration data via cells named
calibration and pre-calibration (see ath10k_download_cal_nvmem() in
drivers/net/wireless/ath/ath10k/core.c).

Existing upstream device trees, such as
arch/arm/boot/dts/qcom/qcom-ipq4018-ap120c-ac.dtsi, actively define
nvmem-cell-names =3D "pre-calibration" for ath10k nodes.

Would setting maxItems to 1 and restricting the name to mac-address
prevent a device from defining both a MAC address and calibration data
simultaneously, and cause dtbs_check validation failures for existing
hardware configurations?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260507-block-as-n=
vmem-v2-0-bf17edd5134e@oss.qualcomm.com?part=3D2

