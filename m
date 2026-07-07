Return-Path: <devicetree+bounces-322112-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zmZaNuwLTWqguAEAu9opvQ
	(envelope-from <devicetree+bounces-322112-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:23:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC2271C8D4
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:23:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=enDqMtlq;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322112-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-322112-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E9A8F30473DD
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6083C3064B5;
	Tue,  7 Jul 2026 14:11:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F552346A02;
	Tue,  7 Jul 2026 14:11:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783433500; cv=none; b=eiUnko1bSPzXoDdhZgxuqrqFPrC9faGS0FTtQXFCxFgv9BrdImDO84Gfr4PywbvmVrtG0CrN4Pbx9PDcVZRBqtyhiyDCVNSW2Z2C3F5oumEnmYljuU0FWNIRB/HHSeQ+6Zaxoa8rprZ7HRGx5/PQv9/I5hpCxCRsMFSF6HFBkKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783433500; c=relaxed/simple;
	bh=ckq5dzFJ3uvu3aiOcWFE9vWICSPlLmaKPIODkiQTrIM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Mt29wAnwNmu+C/4OxgmXdPLzIP8TqTDq3NiplY5FVlAl85InenGfyoPTyBw/VJiQzd/d9KvKiD2n3pa0lYyxxMOH/hlvN8Ku/ZV9LYiIaaGuQcmJjgndvtF0foSLx20DYFoU2TY7v4yNzc//EqjFPg0do5XY8fHqRHYOrwTfFJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enDqMtlq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B90881F00A3D;
	Tue,  7 Jul 2026 14:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783433498;
	bh=QvOkRjNNXyNBULDO3YhwROa7FJoE/Fu63a+r6ZP3gGM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=enDqMtlqswZM7ZTmdcuIHCv25Z2Hi52Wa3SWLflYMCgX9F39TJL9hMFOw3PgxYos5
	 9wBYzqcAVkiIUIODHls/QGbZAcj8h9+wYV1uGETMT1ak2iwzx3qGXlLjZKOVm1fBL+
	 FF8AxzWzzrcpDvHOyVqWUVTELGqYtxJPt7YoUbwG4LKOI89uc0nc4CleJ7Cq+vprFQ
	 2NCBwp6PoKbSY6A6pDnxpgZe5mGOEOiMNdMdwS1FTk6Jsu9Q/OVAfy4z0PVBh8+07z
	 tMHdg51Vrvm3nveYs6yDl6RERMLaI6GYPwzklR/47F9o1G7l7uvcvoE2kaQJpHpZt1
	 GAVlpAQ8aHPPA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v12 3/7] dt-bindings: net: qcom: document the
 ethqos device for SCMI-based systems
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, linux-amlogic@lists.infradead.org, Frank.Li@kernel.org, neil.armstrong@linaro.org, imx@lists.linux.dev, wsa+renesas@sang-engineering.com, conor+dt@kernel.org, linux-sunxi@lists.linux.dev
In-Reply-To: <20260706-qcom-sa8255p-emac-v12-3-e3ab1ecf2901@oss.qualcomm.com>
References: <20260706-qcom-sa8255p-emac-v12-0-e3ab1ecf2901@oss.qualcomm.com>
 <20260706-qcom-sa8255p-emac-v12-3-e3ab1ecf2901@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 14:11:37 +0000
Message-Id: <20260707141137.B90881F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322112-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-amlogic@lists.infradead.org,m:Frank.Li@kernel.org,m:neil.armstrong@linaro.org,m:imx@lists.linux.dev,m:wsa+renesas@sang-engineering.com,m:conor+dt@kernel.org,m:linux-sunxi@lists.linux.dev,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5AC2271C8D4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The device tree bindings for Nuvoton MA35D1 and Spacemit K3 DWMA=
C were not updated to restrict `power-domains` to `maxItems: 1`, contradict=
ing the commit message claim and inadvertently relaxing their constraints.
--

commit 172a7357589e2c110ace7edfdec50dee477c4a83
Author: Bartosz Golaszewski <brgl@kernel.org>

dt-bindings: net: qcom: document the ethqos device for SCMI-based systems

This patch describes the firmware-managed variant of the QCom DesignWare MA=
C.
It introduces the qcom,sa8255p-ethqos binding and increases the power-domai=
ns
maximum to 2 in the top-level snps,dwmac.yaml schema, while updating existi=
ng
referencing bindings to limit their power-domains maxItems back to 1.

> diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Docu=
mentation/devicetree/bindings/net/snps,dwmac.yaml
> index 2449311c6d28e..d3aff1df3070d 100644
> --- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
[ ... ]
> @@ -185,7 +186,8 @@ properties:
>            - const: ahb
> =20
>    power-domains:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2

[Severity: Medium]
The commit message states that existing bindings referencing the top-level
snps,dwmac.yaml were updated to limit their maxItems for power-domains to 1.
Were Nuvoton MA35D1 (nuvoton,ma35d1-dwmac.yaml) and Spacemit K3
(spacemit,k3-dwmac.yaml) missed during this refactoring?

Since both of those schemas inherit from snps,dwmac.yaml, they will now
inadvertently inherit the relaxed maxItems: 2 constraint, allowing invalid
configurations to pass validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-qcom-sa825=
5p-emac-v12-0-e3ab1ecf2901@oss.qualcomm.com?part=3D3

