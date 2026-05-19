Return-Path: <devicetree+bounces-300128-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHUQEN5ZDGodfwUAu9opvQ
	(envelope-from <devicetree+bounces-300128-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 14:38:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E6D57ED5B
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 14:38:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C212930390C7
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:37:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03A634DC528;
	Tue, 19 May 2026 12:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DR0cpmWs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBCE4DC54C
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 12:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779194260; cv=none; b=IuleCaZcGWlGSXd8wY4R+DMS5NLULxWxy0afzH2HgedQbb3IUpw1qIagyB/Zdh5vMm8HdAzbJraKx5Hh/tvolOEc/S6qCKUYxkVU8TmamB1xUeeEz9bMsLJSDW4kq9PkgkemTORAL/9JzX1y4YWmgj7FDoVpZk8QTLfVoL6sBa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779194260; c=relaxed/simple;
	bh=L7JK1gcKM7XKCe2n937PVWSkpUHU1UiF00vrV9Zwo6Y=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=KpVfZLUORJhpeawcHp/X2q3jiB/t8pPqgE1Q7cDkIK1AjmGNR+TvtuDMDQfXYkbOPV4JEad6vPcMChhGWDB/KPl0Q5dupkC4fvZ/JgM4K5Iwkbv+AqFrk5U7atWVAx3UxBvBKIzalaPOSAPg1EXYcYqmDpeqHxJEJ4/VFL9IXU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DR0cpmWs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD9C3C2BCB3;
	Tue, 19 May 2026 12:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779194259;
	bh=L7JK1gcKM7XKCe2n937PVWSkpUHU1UiF00vrV9Zwo6Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=DR0cpmWsBNZkSY1Qee+OrGjSjCkE5x0PAejExelgF9Q00nX/RzFC1mix48USvW7DN
	 XfpwoYgLBDLp3I1yY16Z0nxOyiFVBzJYacpcls2cW/EeRXh8bc3nToDPn0qhn8+lUu
	 1Fw7/yLH9Wv3DbSp7HnyK/YzetMDlJ6UnRkD3ZN5KDMku9XhYZ4hD0+zot87C/20TZ
	 SeSUgICnnhm5NUpIGA+wM5yHZDNAOMXq8/b+y+J/VUqQax1Brd0qa+14R0YuimGDEk
	 UM7g9Gabq4B1a1bn7gexgKK1M8WH4xaIfhA9AVucxE7VLeuj4MsKN2WeE2IuO2m04j
	 BknMjvNjEqHZg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: Add Shikra EVK boards
Reply-To: sashiko-reviews@lists.linux.dev
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260519-shikra-dt-v2-5-c01b90fb4395@oss.qualcomm.com>
References: <20260519-shikra-dt-v2-5-c01b90fb4395@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 12:37:37 +0000
Message-Id: <20260519123738.BD9C3C2BCB3@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300128-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,linaro.org,lists.infradead.org,gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,qualcomm.com:email]
X-Rspamd-Queue-Id: C8E6D57ED5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] shikra-cqs-evk.dts incorrectly includes the modem-enabled SoM dtsi=
 file (shikra-cqm-som.dtsi) instead of its corresponding CQS dtsi file.
--

commit f25002d6be7ef75f4f5e2dd5f32e45a22f06fc01
Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>

arm64: dts: qcom: Add Shikra EVK boards

This commit adds device trees for the Shikra EVK platform, combining differ=
ent
Shikra SoM variants with a common carrier board. It introduces three specif=
ic
EVK board configurations: CQM (with modem), CQS (no modem), and IQS (no
modem), along with a shared common include file.

> diff --git a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts b/arch/arm64/boo=
t/dts/qcom/shikra-cqs-evk.dts
> new file mode 100644
> index 0000000000000..ee460d8c6a877
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
> @@ -0,0 +1,61 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/dts-v1/;
> +
> +#include "shikra-cqm-som.dtsi"

The commit message states that shikra-cqs-evk.dts pairs with the CQ2390S SoM
which has no modem support. Does this incorrectly include the modem-enabled
SoM file instead of its corresponding CQS dtsi file?

Inheriting the hardware description of the CQM board might lead to incorrect
behavior, such as wasted reserved-memory allocations, or potential probe
failures when the kernel attempts to initialize the non-existent modem.

> +#include "shikra-evk.dtsi"
> +
> +/ {
> +	model =3D "Qualcomm Technologies, Inc. Shikra CQS EVK";
> +	compatible =3D "qcom,shikra-cqs-evk", "qcom,shikra-cqs-som", "qcom,shik=
ra";

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-shikra-dt-=
v2-0-c01b90fb4395@oss.qualcomm.com?part=3D5

