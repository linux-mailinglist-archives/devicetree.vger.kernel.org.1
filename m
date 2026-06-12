Return-Path: <devicetree+bounces-311111-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RDW0G61DLGpDOgQAu9opvQ
	(envelope-from <devicetree+bounces-311111-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 19:36:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1341467B5FC
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 19:36:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eD0cbThO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311111-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-311111-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D0F9C301902B
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 17:36:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55EC4405C49;
	Fri, 12 Jun 2026 17:36:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5038B403EA2
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 17:36:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781285795; cv=none; b=RbOQhA3PRZBLvQbBcXBI2fbHvjg5Ov0bJtWSjf5KtDxXxRPDd4U85ASK5jFOc2lIMmwC3B5W1/FDUqHh2KYfx62NALwg6QMMOgq6d+x7WxbQBQ25iyqxKZrjeTtjkuHwWZCG3HHsRHJ2EMq3Y834KcrU/Qd8+V2GMGf0GGhi3Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781285795; c=relaxed/simple;
	bh=d8eHlCMrkwu1cSGEFfHyF2YBC3fX1z3CiN5d6K0gPTA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Lv+7W5fxAYQG6pnlCEVPc6uO375y2dE8xa9uzcVLJl/dgBG1zRalawxJHIlw07O0Wq65NSgBS2NoY1ZcoTsp2GueY01AOYU9zDBeZ+m3HLMcfGKXc26Au+Zka0Jjv9Ole2eCT0/Djw3KPmB9y7wOWSDj80IOw7GhUE6jXPXDmK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eD0cbThO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5A5E1F000E9;
	Fri, 12 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781285794;
	bh=q+QKyffejTA0Siagoa2psHa78z7Xv2JYlb2GSFKS7lk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eD0cbThOMxhPRQgy1d99+sh2PK4obr+UhJ9axf0IY3MvZkld6Jj3k717N3kOMUod3
	 0j7ndw/RbB3hUdzHkY0Mkk2zfsAKDpSpeXJdNe8Tllepi0FPz2yJ/LwfvKG3ZMC93g
	 P8S+vC7zk7KscpPXv0QR6heMrfXdlG2PHp590JTInZ8BgWI/JOFwTdCkxHQL7hKtxA
	 P0qqqgu+76F+WDKFor3dRIgwiJ5RBTDsdHtUgwpDbuITOLNKhtHrqi9hCEtli8v1t4
	 t8Th7VfnEiWYNwjFhBd7d1C6RibgIcGLFlwFl4acpydjUZaZiEU/wDw6Ie5QoVVJ7b
	 AsUuvXDaoGRZA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 5/5] arm64: dts: qcom: Add Shikra EVK boards
Reply-To: sashiko-reviews@lists.linux.dev
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: robh@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260612-shikra-dt-v6-5-6b6cb58db477@oss.qualcomm.com>
References: <20260612-shikra-dt-v6-5-6b6cb58db477@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 17:36:33 +0000
Message-Id: <20260612173633.D5A5E1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311111-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:komal.bajaj@oss.qualcomm.com,m:robh@kernel.org,m:vkoul@kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:conor+dt@kernel.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,vger.kernel.org,linaro.org,gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1341467B5FC

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] `shikra-cqs-evk.dts` incorrectly includes `shikra-cqm-som.dtsi` =
instead of a CQS-specific SoM file.
--

commit 0c4f6d07dd3b32da53231a5dcf3de036bb58f76f
Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>

arm64: dts: qcom: Add Shikra EVK boards

This commit adds device trees for the Shikra EVK platform, introducing
three board variants paired with a common carrier board. It includes
configurations for retail and industrial SoMs, both with and without
modems.

[ ... ]

> diff --git a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts b/arch/arm64/boo=
t/dts/qcom/shikra-cqs-evk.dts
> new file mode 100644
> index 0000000000000..b3f19a64d7aed
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
> @@ -0,0 +1,40 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/dts-v1/;
> +
> +#include "shikra-cqm-som.dtsi"

[Severity: Medium]
Is this the intended include for the CQS board?

The commit message indicates the CQS board pairs with the CQ2390S SoM=20
(without modem), but this includes the CQM (with modem) SoM definition.

If modem-specific nodes are later added to shikra-cqm-som.dtsi, wouldn't
they inadvertently be applied to this modem-less CQS variant?

> +#include "shikra-evk.dtsi"
> +
> +/ {
> +	model =3D "Qualcomm Technologies, Inc. Shikra CQS EVK";
> +	compatible =3D "qcom,shikra-cqs-evk", "qcom,shikra-cqs-som", "qcom,shik=
ra";

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-shikra-dt-=
v6-0-6b6cb58db477@oss.qualcomm.com?part=3D5

