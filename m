Return-Path: <devicetree+bounces-261690-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLfYME9igGlR7gIAu9opvQ
	(envelope-from <devicetree+bounces-261690-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 09:37:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEC7C9B9E
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 09:37:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1F1243001F91
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 08:37:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F5D030FC22;
	Mon,  2 Feb 2026 08:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kDzjVy9M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0C023D2B4
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 08:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770021451; cv=none; b=WWiJu0arzYZ7Keavgs8b/cluZh+Atz3zcFKaIYvfeVaQdo8eRUkQDpqoGvoxCgwKJoBhRMuV/4PEBW2PqYV1wVVAwA0lJSzmlUcnDfV6T3vn805iS/hc68HN9z2lq3xwAzQn71TKxr337FnAjnKhfLwkOgTh9t73rsHNnmXYk1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770021451; c=relaxed/simple;
	bh=cmqMih4MUx+xdsxqRaw6RKXabUbqmRn2ZVQMLIr1M7U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JPAYF+dvz/1vJJIVg+Rg8BSIvPuALF4QbU9z/KN6J/Rt8C54rhka99JYRAOh0gBBYtSc5Vt/MO0U6JSm85dp9HTtKp232D1JYmV1CCafggB2dd26v1wNKLuwKdtlENCpYmqUd+q9k1L7C6LO6pk2WocjYCjepM/99u9PvreqVfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kDzjVy9M; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-4805ef35864so34664355e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 00:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770021448; x=1770626248; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=joUE9EOzP/3mRELBtbdhIrRdcsM6ON8pu5mMACf9Xr0=;
        b=kDzjVy9Mr8R3mBr86h74N4yPEvak9vBqc5E3eBKeJFaiiFRktChipuAbLOi94DyP8Q
         DXuWErN4ZrxasXKuhzMTC/ZhenMc4pda7frwiNY74RsttMJPnewaw/6Jxqmn5ukFoGBj
         FirxjbQFMmDw/T4TjDXayNcLRi7DIISgv7on7L7Tx5fAS2yxyAuPw8aCpkmD+5oOn+QL
         2WZobYX2ClMU8EkexWI/GrMAZyyQemieGpo4UcCFVNk75zD8TgMHZ/Afh2cbupYQqfe/
         1ZOe1K7Ybw/5eVBEGsN3fLiLdaumuZIIdXpIsjI39BiAFED89n+tTF5OLFurfkY0PE1R
         KNsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770021448; x=1770626248;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=joUE9EOzP/3mRELBtbdhIrRdcsM6ON8pu5mMACf9Xr0=;
        b=cPHAhqSF/okQTaumNTQRwBbGTIswPeGVu9UC2DkA7GDfJMmuMOPQ0NeFuzqZpElJ90
         by+kEW9nkoPw3ogYH7xfxe6oP22/ONN/jz07mFhsozuoKki2NICDvD7RiERftl1eb8eo
         5kbft4UukGzEv/lqyE8mR432/kMInwE57ejF24Eok/cSZ+8Rk0r89QwYDgDpBi6M18/a
         EPHs5T2d59radB/Zq+FYoUFKlpofrmqMtE52Z8+LZcG7xUwqlqrXI4Q/PMnd4OTERLbl
         TdZkOC4SDpKLeuCDz9mxcqi7ZVKam1DjO1/tlqk2If6xjdymt1eyKKgjkKyMoirCP+sw
         ViLg==
X-Forwarded-Encrypted: i=1; AJvYcCXjnUw/cznYZlIoNHvWDjWHynB/Qr5YOIMC4N/if/gBdVJESEzja+RpomXnjV3MRCbnUBKvCB2oP75K@vger.kernel.org
X-Gm-Message-State: AOJu0Yxtk/E5uwWnRiyyWQl2dVvMqh7C66kMXAZxVK8pHsNC+O8N1GFx
	u9gApsPTQAFccFXXSxpvaHSwlkMtKL6BGcoc99474lH075OFUhbOIwAI
X-Gm-Gg: AZuq6aKHrmIBA+0/iNNQgCmlNS1BcZj2WN5ZFgyQTPGX+QuzwrMQL7sXcA9kswc/aQG
	8BPHZvbx5ZRZkgPnCf6Gy8JRBNdPGI8VnqB9LVhLfxhiqXne1wvNNqFdM2723Jig8/sEAQjCM+A
	fYp7FG+8fk5v64tFS6Jp+CMQuvEmYui4AR3pwBkLI+jpjiUxrpA5qVlR2DsfPu3JG3pycbCxV3p
	u8Lg5e/8QCFu8Z/Y4QQ2FO8bxZASJ4OEBXVwF/1uBGkavsElHAB1R2RntXjoTavNpfo4QBexWR+
	dsZFXAgNhjQYQNgxFGhUDn81hNR5loRuxoW9qCo44Hu2ai8cizSz8lrfpcpIqinsoe3/vLXlUzC
	Ekx9lhGyCShO5X+t+JhxuJ684p+G86/x3aVDL6Lhl2vmOvQCUo/pYKRD0Rwl5WpQ52J6AKLkSLN
	uA2SmnHjp3X0jPw9Ta9Isg3VIOx16ChFPKUexdN+3l37LJvU2mtijZHbOTsyAQsq1fCHI46ckqd
	9D+LORyqy5WUGkH3bKn2yr0aVaDzjODBgNCQ90XYPxFLNL+XdE34bGFzDIoGxa6Sew2xCfWn2NU
	NUdUU/eFTyPwVVtrRik=
X-Received: by 2002:a05:600c:4e56:b0:480:53ce:45d3 with SMTP id 5b1f17b1804b1-482db47cdc5mr123484685e9.18.1770021448326;
        Mon, 02 Feb 2026 00:37:28 -0800 (PST)
Received: from franzs-nb.corp.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806ce564f9sm399535415e9.14.2026.02.02.00.37.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 00:37:27 -0800 (PST)
From: Franz Schnyder <fra.schnyder@gmail.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Franz Schnyder <franz.schnyder@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH v1 1/2] arm64: dts: ti: k3-am69-aquila-dev: Fix DP regulator enable GPIO
Date: Mon,  2 Feb 2026 09:36:00 +0100
Message-ID: <20260202083604.325060-2-fra.schnyder@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260202083604.325060-1-fra.schnyder@gmail.com>
References: <20260202083604.325060-1-fra.schnyder@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-261690-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fraschnyder@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[toradex.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CEEC7C9B9E
X-Rspamd-Action: no action

From: Franz Schnyder <franz.schnyder@toradex.com>

Correct the DP regulator enable GPIO to index 21.
The 3.3V DP regulator was not being enabled by the assigned GPIO, as it
is routed to GPIO index 21 and not 37, which was causing instability
with displays connected over DP or via an active DP-to-HDMI adapter.

Fixes: 39ac6623b1d8 ("arm64: dts: ti: Add Aquila AM69 Support")
Cc: stable@vger.kernel.org
Signed-off-by: Franz Schnyder <franz.schnyder@toradex.com>
---
 arch/arm64/boot/dts/ti/k3-am69-aquila-dev.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-aquila-dev.dts b/arch/arm64/boot/dts/ti/k3-am69-aquila-dev.dts
index f48601ae38b7..d3677c2c2547 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-aquila-dev.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-aquila-dev.dts
@@ -33,7 +33,7 @@ reg_3v3_dp: regulator-3v3-dp {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_gpio_21_dp>;
 		/* Aquila GPIO_21_DP (AQUILA B57) */
-		gpio = <&main_gpio0 37 GPIO_ACTIVE_HIGH>;
+		gpio = <&main_gpio0 21 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 		regulator-max-microvolt = <3300000>;
 		regulator-min-microvolt = <3300000>;
-- 
2.43.0


