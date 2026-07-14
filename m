Return-Path: <devicetree+bounces-325938-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JfbUEhfcVWrTuQAAu9opvQ
	(envelope-from <devicetree+bounces-325938-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:49:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 979B7751A3A
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:49:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZzB9BE2u;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325938-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325938-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D2C4304D5D0
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 06:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1555E3E3C47;
	Tue, 14 Jul 2026 06:47:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DF83DABE3
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 06:47:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784011655; cv=none; b=lAAvWRmPm0JWP1d33q7bo7eTK0MPhJljFFNJ8Oo3P5tIYaHU0kyAjv88HmACr+UHVtUotSw23NXSnIsI4YwUjRsJwV/HRbypo+8g4m7dhCvMaxF+MDgWmAXhyGynYCT2wSMMTPQUbHUlsXm7f89oJjdMOVnsHCVqqp1V+WiTrLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784011655; c=relaxed/simple;
	bh=d1M518qPpyFgtR0+gCHLkBVt5E63UjD9PFRQ/1Zdl1o=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qL07J68TFfWTs43e0iiyODdIVqPeZWUL+oT33goUpwJwu/CFuyC9JWpaUChIkg0iJeCYP15f7N0IEyU3xs+C6oNEAYnBfZGMLVFGo/2euplRGKQvm4rlza1ExmdwjGgF5kAtlSkYMwHt/aU9CbW8bylJ0MA5X1L4uRlsoo5JfnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzB9BE2u; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B15A51F00A3E;
	Tue, 14 Jul 2026 06:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784011653;
	bh=vqSVe486xy3axacXEVxCjyRQLCq5PLAFx+/5LdK6weM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZzB9BE2uuTJcxQSkEMRHZ2TpHWwUaVBBeSNXam6asJst+/qpEbdeboh0jvWECe1vH
	 mBbMIEoUI1ScNi66g32AYjnDpNM3FjiVG9rsv7RFGIDxmwmqJ5oFqfED1NCy86CvYt
	 BMwfQYnY9rwf884KPWjzBKYvMjVwsjqHi7rRAhkap+531r2kUfpOLcwQb+I5VV3HVD
	 K8jFev1GpRq7dDCXshralefuFzrNjd4QBi7orTgdTV6b6yDFErSM6SK1cZRqqZZLjq
	 +8BnL8WFcD07oMzUaBHG9woJXmblRWvHvgxP0oWMncJoFlROihqzhrEgE9IrQefOa+
	 fKqEoSlSYPsXA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add SM8475 QMP PHY
Reply-To: sashiko-reviews@lists.linux.dev
To: "Esteban Urrutia" <esteuwu@proton.me>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260714-sm8475-bup-v1-4-b2871be2b4ec@proton.me>
References: <20260714-sm8475-bup-v1-0-b2871be2b4ec@proton.me>
 <20260714-sm8475-bup-v1-4-b2871be2b4ec@proton.me>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 06:47:32 +0000
Message-Id: <20260714064732.B15A51F00A3E@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325938-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:esteuwu@proton.me,m:vkoul@kernel.org,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:olteanv@gmail.com,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,vger.kernel.org,gmail.com,linaro.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,proton.me:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 979B7751A3A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message claims to add the proper init sequence for th=
e SM8475 QMP PHY, but the corresponding C driver changes are completely mis=
sing from the patch.
--

--- Patch [4]: [PATCH 4/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:=
 Add SM8475 QMP PHY ---
commit c753fce6c555d9ac5d6bd48a5ef0db8aa40286af
Author: Esteban Urrutia <esteuwu@proton.me>

dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add SM8475 QMP PHY

This commit adds the qcom,sm8475-qmp-usb3-dp-phy compatible string to the
SC8280XP QMP USB43DP PHY binding. The commit message notes that the hardware
requires a specific initialization sequence.

>     SM8450 init sequence for this PHY varies significantly and can't be u=
sed in
>     SM8475.
>     Add proper init sequence and bindings for the PHY found in this SoC.
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb4=
3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb4=
3dp-phy.yaml
> index 4eff92343ce4f..b9d0de25f43c1 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy=
.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy=
.yaml
> @@ -37,6 +37,7 @@ properties:
>            - qcom,sm8250-qmp-usb3-dp-phy
>            - qcom,sm8350-qmp-usb3-dp-phy
>            - qcom,sm8450-qmp-usb3-dp-phy
> +          - qcom,sm8475-qmp-usb3-dp-phy

[Severity: Medium]
Is the driver portion of this patch missing? The commit message explicitly
states that a proper init sequence is being added because it varies
significantly from SM8450.=20

Since only the YAML binding file is modified here, the corresponding C
driver changes for the initialization arrays appear to be completely
absent from the patch.

>            - qcom,sm8550-qmp-usb3-dp-phy
>            - qcom,sm8650-qmp-usb3-dp-phy
>            - qcom,sm8750-qmp-usb3-dp-phy

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-sm8475-bup=
-v1-0-b2871be2b4ec@proton.me?part=3D4

