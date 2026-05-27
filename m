Return-Path: <devicetree+bounces-303523-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBJ7IhMnF2qu6wcAu9opvQ
	(envelope-from <devicetree+bounces-303523-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 19:17:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAA75E8405
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 19:17:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25AB23004F57
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 17:16:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AD603BB13E;
	Wed, 27 May 2026 17:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1sSPOjO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444292F1FFE
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 17:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779902189; cv=none; b=muVME379tUQThEuNKxOTZGO+jzDYDyt1OZJIj3OY5scFu25dcU24GcGEFvzw1SZKwySs13i73g9W9nPtVP9aEUIAIk98Ew9FCTdzMIlz1vorink6mDaH9ZU8j0wUVNN+/8Qt+k+/F6O1dmSmxn0LVnLMrFB94UdrY50cq71Jvvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779902189; c=relaxed/simple;
	bh=//1LxycPeCX6jeH92g9kW1QzJjslxlBqF5kGMQohPBQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=AVVtNKa0RkZXT3ZF9g6bFg3VZRK4+XiIqoRBDDkaix9+UAKhCl6TzfoDlHjGo0aAlFUMqXtAER59C06o1fJf4aPrr5H+EnmE2f5v6rFwX1drv2v194mnXf77xd/ktnofOv0JZFUqSTyJVtdABP1roKUDAk8Gn0QgZFcfjPZ5DlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1sSPOjO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FE671F000E9;
	Wed, 27 May 2026 17:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779902187;
	bh=fVo3w1d55s41ASEpphnmuEEtqOCEUseak1yesK6LZrw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=f1sSPOjOkDiAdrooohwGe4INXtrl9DFcRzTIUH+FQqUQIgivQez2vFWC2ez0v5Mfa
	 Th4AfZx8elNUvjPoB4TJyB1rarhaPdgCFSrHKiUUVN/eh38c+kdw68nStJBOXUhmX1
	 buzAElG5Pia50B9DldoCx4oWNjiIYtGzWyEShm7SmVxqZwhZXqnjtJ+hu1QnbQyA7f
	 NwP0z2XaEmXFGbQebEUBXOQRUyU2c/iGIRXkwPA+rthx86RpMLcNKkuR8CVQM98G2r
	 W/RPmIzZsqiJwl+1y6lv8M4nE/4uegZ0CEwtoq9EwEGNDJsi2pK+1tzHIrH+LnPJTd
	 AByrNbsVsbYMQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: Add Shikra EVK boards
Reply-To: sashiko-reviews@lists.linux.dev
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260527-shikra-dt-v4-5-b5ca1fa0b392@oss.qualcomm.com>
References: <20260527-shikra-dt-v4-5-b5ca1fa0b392@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 17:16:26 +0000
Message-Id: <20260527171627.8FE671F000E9@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-303523-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,qualcomm.com:email,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: CDAA75E8405
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] shikra-cqs-evk.dts incorrectly includes shikra-cqm-som.dtsi and is=
 missing its dedicated shikra-cqs-som.dtsi file.
- [Low] eMMC (`sdhc_1`) configuration is erroneously placed in EVK carrier =
board `.dts` files instead of the SoM `.dtsi` files.
--

commit 16ca8db4fa36b37efe1548399766a7dfdca794da
Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
arm64: dts: qcom: Add Shikra EVK boards

This patch introduces device trees for the Shikra EVK platform, supporting=
=20
the CQM, CQS, and IQS SoM variants. It combines each of these modules with=
=20
a common carrier board definition to enable the respective EVK hardware.

> diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts b/arch/arm64/boo=
t/dts/qcom/shikra-cqm-evk.dts
> new file mode 100644
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
[ ... ]
> +&sdhc_1 {
> +	vmmc-supply =3D <&pm4125_l20>;
> +	vqmmc-supply =3D <&pm4125_l14>;
> +
> +	pinctrl-0 =3D <&sdc1_state_on>;
> +	pinctrl-1 =3D <&sdc1_state_off>;
> +	pinctrl-names =3D "default", "sleep";
> +
> +	non-removable;
> +	supports-cqe;
> +	no-sdio;
> +	no-sd;
> +
> +	status =3D "okay";
> +};

[Severity: Low]
Should this eMMC configuration be moved into the respective SoM dtsi files?
Since the configuration is duplicated across the EVK files and differs only=
=20
by the power supplies tied to the PMIC on each module, it suggests the eMMC=
=20
hardware physically resides on the SoM rather than the carrier board.

> diff --git a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts b/arch/arm64/boo=
t/dts/qcom/shikra-cqs-evk.dts
> new file mode 100644
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
[ ... ]
> +/dts-v1/;
> +
> +#include "shikra-cqm-som.dtsi"
> +#include "shikra-evk.dtsi"
> +
> +/ {
> +	model =3D "Qualcomm Technologies, Inc. Shikra CQS EVK";
> +	compatible =3D "qcom,shikra-cqs-evk", "qcom,shikra-cqs-som", "qcom,shik=
ra";

[Severity: High]
Does this board include the incorrect SoM file? The commit message notes
that CQS pairs with the CQ2390S SoM, but this include pulls in=20
shikra-cqm-som.dtsi instead. Additionally, it appears the required=20
shikra-cqs-som.dtsi file is entirely missing from this patch.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527-shikra-dt-=
v4-0-b5ca1fa0b392@oss.qualcomm.com?part=3D5

