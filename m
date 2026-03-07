Return-Path: <devicetree+bounces-272495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFFyKk5ZrGnzowEAu9opvQ
	(envelope-from <devicetree+bounces-272495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 17:58:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 302A222CC7F
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 17:58:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 591A630300D5
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 16:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1970832E6BD;
	Sat,  7 Mar 2026 16:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ecpkkt0P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6B22FDC5E;
	Sat,  7 Mar 2026 16:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772902712; cv=none; b=FqFFPeZFcHtvmu+7aFzFEuE7zc2XYUnGYZuoFhsVJ2Moi/h9W1FKUTigzKzs0G8Z8L3Bv///FyyRMWuUF3zqdYgdJr2wH8tF44JxixXcHLJA+QMka3p4gugvxiWIS4/eyueUCD/rIm5oJ+5qy5ktYXL+i32FafLFUr8/0lvkXXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772902712; c=relaxed/simple;
	bh=/n8/OpMY+6dULbiTfTC5ROSM1gs9LvfF4qTCbwCFEcs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=BTCVGtjpB0VCcVbNKKgdvdk4FB3d7SPnT10WritCNBiW7yngl0xRZs9CySpHMrzEeLu1IF0PC8nLb8ZdDpijdKkwF54Ux1GvN1MT9OgUzbGxpr5809+aOE5i64B/TpO1N+KUE9BhLxGWbF3qQTgxZiygYX5u2bytEQSzIVBW/F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ecpkkt0P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA06CC4AF09;
	Sat,  7 Mar 2026 16:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772902711;
	bh=/n8/OpMY+6dULbiTfTC5ROSM1gs9LvfF4qTCbwCFEcs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Ecpkkt0PlRrKOIFW+Dny3SbYijVlDJsO6IZth3SXkg2fSF/SGrGQ7Ac1LmB0eNXUa
	 /tO10qlEmU/Ie1G1CY/Q92PPEJwPu6h2gT1Eaf1VC1xeac1otwZ6LJrZ2h3iOp/ZJE
	 Ov4yPz5UMFTlcIpzpS8AvPJjC/UL1+qENzOq8d5YZwX0j1LtAJoMJ6TlryQtpvWeig
	 THZO7zWDA8dn7XbrZtHKDP+GAB51espZpzJNyZ++DGCpdCGLL63k7DCLQgMjGRM2Np
	 DHINR1+/YUkDj8mHRnSPQG0ZZrWwfccNkyj6dDIYUYNPl0z2bmdnOEp/XxWpHUUMge
	 d3RVJ+vQufZBg==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Juan Yescas <jyescas@google.com>, Amit Sunil Dhamne <amitsd@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260302-max77759-fg-dts-v2-1-12f1109a6fee@linaro.org>
References: <20260302-max77759-fg-dts-v2-1-12f1109a6fee@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: exynos: gs101-pixel-common: add Maxim
 MAX77759 fuel gauge
Message-Id: <177290270852.40662.10572796737662873762.b4-ty@kernel.org>
Date: Sat, 07 Mar 2026 17:58:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 302A222CC7F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272495-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.975];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action


On Mon, 02 Mar 2026 12:35:22 +0000, André Draszik wrote:
> On Pixel 6 (and Pro), a MAX77759 companion PMIC for USB Type-C
> applications is used, which contains four functional blocks (at
> distinct I2C addresses):
>   * top (including GPIO & NVMEM)
>   * charger
>   * fuel gauge
>   * TCPCi
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynos: gs101-pixel-common: add Maxim MAX77759 fuel gauge
      https://git.kernel.org/krzk/linux/c/3d7bd20e026687db513887e4d066121cb0a49852

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


