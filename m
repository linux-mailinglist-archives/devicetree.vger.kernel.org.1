Return-Path: <devicetree+bounces-299965-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DBsGuQuDGq0XwUAu9opvQ
	(envelope-from <devicetree+bounces-299965-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 11:35:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FD457B624
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 11:35:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 02333312EB44
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97BE53F8EC0;
	Tue, 19 May 2026 09:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzQLzfJO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685D93E1220
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 09:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779182757; cv=none; b=K9ayGLloXwmFjNdQcWK5R4gquLT0ejZ6/ufjczJMohMJQ2uku4s1arKfwK/lRv6aCnXAdQ3IBa2SVoQJ69AZCk6njXZzAnQipZ1ambdcdUF15y8TuEhDAyyR638mY+9nOEwNFtPtqzAFm8XKSqfWfTVlfVe8A4GI2AX6OhNZbZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779182757; c=relaxed/simple;
	bh=GtuOY6q4bTbJM9azaY+ssquKiGh41o0eV8c+Do8/7n8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=J+v4hwhrk3/zISB5gl8943qhFvYNEWFOCBDa0R0ANUdjeehYI9rNat9HSH2GeyqjLT5Ok8fD4f9/TPrFCrU+3LVxcIjpx98ihvUEv4U5KLt62l5dmXQyTVrj1EdmzmjUpcorseKkjbAo2IjV2BuUxyyIjU0z848L8rkKNWx8d24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzQLzfJO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C62B4C2BCB3;
	Tue, 19 May 2026 09:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779182757;
	bh=GtuOY6q4bTbJM9azaY+ssquKiGh41o0eV8c+Do8/7n8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=KzQLzfJOuik1EdbdVilTGjeJZZ4Xq+OwdgWgFrusVAVISgQ7EGzuKAJmGJMJMCNtU
	 qS9/oqk7SPEb6nQ0BIOosQX/+/de12HOxOGcwzrTqSCI1dTxxCxdp3ugIb3hKkCU+b
	 98VWRh6S8HwweLOY3xFEqnIexnAiie+km+f9sLYeyz/02m1mr0IOw1Q69Aj9uNRWhv
	 3yoBXhOh6YCg1n2QsPZpKP8XdF6QbfP6r+KWa6VPy8aYErNIDGoUE2qpRyI676i6mk
	 4HVAcFEirEUucbXFR8Dkabah0CoJLqJhzSK34LUjS7CXQT9xXMJkrDuq+25cjwygoA
	 +nQ9KnnBjb4Jw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 6/8] ARM: dts: qcom: apq8064: Fix USB controller
 clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alexandre MINETTE via B4 Relay" <devnull+contact.alex-min.fr@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260519-mainline-send-v1-sending-v3-6-3dd7aa125353@alex-min.fr>
References: <20260519-mainline-send-v1-sending-v3-6-3dd7aa125353@alex-min.fr>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 09:25:56 +0000
Message-Id: <20260519092556.C62B4C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299965-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,contact.alex-min.fr,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.190.188.32:email]
X-Rspamd-Queue-Id: D2FD457B624
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Moving the transceiver clock (`USB_HSx_XCVR_CLK`) to the "fs" cloc=
k causes it to be permanently disabled during normal operation, breaking US=
B functionality.
- [Medium] Adding a third clock to the `qcom,ci-hdrc` nodes violates the `m=
axItems: 2` constraint in the `ci-hdrc-usb2.yaml` device tree binding schem=
a.
--

commit 5a018643b67a319b143bcd44640fccd2fe85acc0
Author: Alexandre MINETTE <contact@alex-min.fr>

ARM: dts: qcom: apq8064: Fix USB controller clocks

This commit reorganizes the clock descriptions for the APQ8064 HS USB
controllers. It maps the RPM Daytona fabric clock to core, the AHB clock
to iface, and the transceiver clock to fs.

Link: https://lore.kernel.org/all/20260516-qcom-ci-hdrc-clock-fix-v2-1-aaec=
8d33d0aa@smankusors.com/

> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts=
/qcom/qcom-apq8064.dtsi
> index 09062b2ad8ba5..d64a162abdad4 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> @@ -813,8 +813,10 @@ usb1: usb@12500000 {
>  			reg =3D <0x12500000 0x200>,
>  			      <0x12500200 0x200>;
>  			interrupts =3D <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks =3D <&gcc USB_HS1_XCVR_CLK>, <&gcc USB_HS1_H_CLK>;
> -			clock-names =3D "core", "iface";
> +			clocks =3D <&gcc USB_HS1_H_CLK>,
> +				 <&rpmcc RPM_DAYTONA_FABRIC_CLK>,
> +				 <&gcc USB_HS1_XCVR_CLK>;
> +			clock-names =3D "iface", "core", "fs";

Does adding a third clock here violate the maxItems: 2 constraint in the
ci-hdrc-usb2.yaml device tree binding schema?

The qcom,ci-hdrc compatible string is validated by this schema. Expanding
the device tree node to include three clocks without updating the
corresponding YAML schema will cause the device tree to fail schema
validation.

Will mapping the transceiver clock to the fs clock cause it to be permanent=
ly
disabled during normal operation?

In drivers/usb/chipidea/ci_hdrc_msm.c, the fs clock is used exclusively for
a hardware reset sequence during probe. The driver calls
clk_prepare_enable(ci->fs_clk), toggles the reset controller, and immediate=
ly
calls clk_disable_unprepare(ci->fs_clk). It is never re-enabled.

Previously, the transceiver clock was mapped to core, which the driver keeps
continuously enabled during normal operation. Since the qcom,usb-hs-phy
driver does not independently request or enable the transceiver clock, this
change appears to guarantee the transceiver will be clock-gated while the U=
SB
controller is actually running.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-mainline-s=
end-v1-sending-v3-0-3dd7aa125353@alex-min.fr?part=3D6

