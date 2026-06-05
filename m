Return-Path: <devicetree+bounces-307410-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rrZMIkrBImrvdAEAu9opvQ
	(envelope-from <devicetree+bounces-307410-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:30:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEB7648263
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:30:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QhUo1yzZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307410-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307410-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E9203300CC98
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 12:27:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75C8D36A35E;
	Fri,  5 Jun 2026 12:27:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20ABA309F00
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 12:27:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780662449; cv=none; b=MWAiQVEGOogsaogXu56B/3sqI4h5iUPtyNnFFDgiH0ivz6wv/6r91TSg7/UDfgH4WUhcS5U9vPXMB27vi8BfF1aU0h6FRhFD0T+YH97XXAMJA6HMbBd9xZ4sa1NWS2yIKumRhwIQTHt4G7SixV1hQYn/IziWbMMoujVVwGyLPg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780662449; c=relaxed/simple;
	bh=DSs/O8yRPgrUVUL9RQqbHH5BvNuzEPmECjLMuxV1I1o=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bMIha9Pa1e4F2Z2VFsoAQxvblzaZzkQVTV+JKGzKfaC921/9JL6bE6Kdm13F5dYoUHV7dT7iLgH92L9c91rH+pgliiHOwcrq8fcXEOaRfwm6Nd1Pwo9QEQTRslDplTYgLmRDr7ltIzNGBYF2bksxM+h718ahWfzCVfiB+gmHivQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhUo1yzZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EE961F00893;
	Fri,  5 Jun 2026 12:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780662446;
	bh=0SlAbDp5ntVnDxPEE+O60hDPQZplwP5p4N+El/+BZzA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QhUo1yzZYj5xb7Ct2f2nqeWLW76XoOnRhyhz20bzxdKOfXr8ej0JM9ySfL87THEAK
	 NVJmmiZ68GN/EZvMypuYHqp4UZkP5Nn/e5QDiVCso87YtEGeEOchheMVt5l+OR6flo
	 s+hCllvqQCEjAgxEVYTM0O7Etru8zKyun2gAVRAVc94j752OTAh+XSgJTLDaoLQe1K
	 Auf389/LlSeW9h6q6saCOy0E8lqzFH0y2XbxRCadZJpYjDjq8ju9DI758rI8H2L7b4
	 7bl21rnp0gEzVvP+T/Lh7oElIgG/cxs54Bs5D9CyOPxkr5dYgq3c7ibb1V9aZk+hCl
	 xV6Jjrd4/xXJw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 05/14] arm64: dts: st: add ltdc pins for stm32mp25
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dario Binacchi" <dario.binacchi@amarulasolutions.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260605121957.78409-6-dario.binacchi@amarulasolutions.com>
References: <20260605121957.78409-6-dario.binacchi@amarulasolutions.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 12:27:25 +0000
Message-Id: <20260605122726.0EE961F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307410-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dario.binacchi@amarulasolutions.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amarulasolutions.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EBEB7648263

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The LTDC pixel clock pin (`LCD_CLK`) is configured with the lowest=
 slew rate, which is insufficient for the 27 MHz pixel clock required by th=
e panel, resulting in display signal corruption.
--

commit de5f7f89d005f509af18ad70e07e79ff7c7c79aa
Author: Dario Binacchi <dario.binacchi@amarulasolutions.com>

arm64: dts: st: add ltdc pins for stm32mp25

This commit adds the LTDC pins used on the MicroGEA-STM32MP257-RMM board.

> diff --git a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi b/arch/arm64/b=
oot/dts/st/stm32mp25-pinctrl.dtsi
> --- a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
[ ... ]
> +	/omit-if-no-ref/
> +	ltdc_pins_a: ltdc-0 {
> +		pins {
> +			pinmux =3D <STM32_PINMUX('C',  6, AF14)>, /* LCD_CLK */
[ ... ]
> +				 <STM32_PINMUX('F',  5, AF13)>, /* LCD_B6 */
> +				 <STM32_PINMUX('I',  4, AF13)>; /* LCD_B7 */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate =3D <0>;

[Severity: High]
Does configuring slew-rate to 0 for all pins, including LCD_CLK, restrict
the signal bandwidth too heavily?

In the STM32 pinctrl driver, a slew-rate of 0 configures the pin for
low-speed output (typically designed for 2 MHz or less). Since the
MicroGEA-STM32MP257-RMM board uses a panel that requires a 27 MHz pixel
clock, will outputting this clock through a low-speed pin degrade signal
integrity and cause timing violations at the display driver?

Perhaps LCD_CLK should be separated into its own pin configuration block
with a higher slew rate to support the 27 MHz clock requirement.

> +		};
> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605121957.7840=
9-1-dario.binacchi@amarulasolutions.com?part=3D5

