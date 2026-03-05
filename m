Return-Path: <devicetree+bounces-271728-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBkaMfXvqWlGIQEAu9opvQ
	(envelope-from <devicetree+bounces-271728-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 22:04:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 292EE218617
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 22:04:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71CA630CA571
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 21:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82D2E34B1A4;
	Thu,  5 Mar 2026 21:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1B1nrJIC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3204434B67F
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 21:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772744635; cv=none; b=C2gyWUvCHWkKBE4uMnvVIP3EZg5TXH1H1fLMA69p+mHZ0JXjYdYN/bVOTAkj6E2LI3n5zGKMHfKjUSKJshdQb176piBZLRoqm27dAVgQbfi5kO8pl5+zgRNQrEiCejEUaiIUg+0jLjODfRCggZVg4u/004+EgFsX/i4N1NCu0EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772744635; c=relaxed/simple;
	bh=/r4SI0+l+6elgaFXyZuBmLqw3XZThStXnYZaeAp4zQ8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RQ5ilD+8aIoyKoLzWoWCL6OkoMcqCs+vl0SjWrP9eSaMWhGVYskTf7zPSSqc9d3dBeDccsZ8tXCDN5+B9K4+FfImdg88y0NbwdV4CBmC9XvdyLfccIn2NnIxBskgDLd0RXQqhVADGKN5UHqT+32itCkwyYhyTUjbugwvDwQkyfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1B1nrJIC; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-4648448e387so5650147b6e.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 13:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772744633; x=1773349433; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yLUdw3G1Oa8h+gUfTU4WhFpXDYDSf42qjb0ihw6v2cM=;
        b=1B1nrJICisEJEyBjOC/HU8XRdyP3uqUaoNfHynKVukdUbQ0SprK+FUWB9OcNgbgepQ
         3XaRvENTuSWZ9FsHa0E4fsM7VBXUy5Pi+3eSaarvKi6CxxP/Y78Rbyhk57EfCfspHPRh
         2qHtVgs/kxB+2U5bwznTdf+QF9OmPU9HIi5hWwM3I7eSZ+WS82p6Vd3XJ7lX/CCbMgsJ
         jQ6TSVYSRBPb5HsYNcAsMtBasx+wR2TLn0xFUn+O+iq2spzWrkqOSRnyFybPQnd7rG0/
         VdEZ4QrMfzbEdab+ZIXMvn3p7GVuzWPAkgGOlSpDsk51nrpn32+wjYhokeZAXkvC3GkW
         DldA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772744633; x=1773349433;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yLUdw3G1Oa8h+gUfTU4WhFpXDYDSf42qjb0ihw6v2cM=;
        b=fVzMuv3RjS0LQkDtr+MqFRGjOCKK4ECYa8xwxh/PAkaGzolkold8zfLrz9ZlTj7h8q
         LmhKtDne+DDRrQ1GeNMcaNNieN6QHaWjznuwHP+NpdH9QqIG8LFEV0H5q4Mc0IBB35S8
         wn4U/Oq46u824yIwfiLzwXcj9U+sbY8NU2bucu1qJThoQBvRzpolyvQUONxD7dzUR2us
         ufGnGTSguhfkceYifR7mTZR7pZn1rA9iydQvTNCOKbG7r6Tbgv4lssi9ohC0CPFtriD+
         iP7rdV3dFkHXlazbAGxCsOw+C8pYeQMGJgxahNUQ39+xjxbp6CJxsp3kkyJGZdRpfY9C
         dbhQ==
X-Gm-Message-State: AOJu0YxTnPpqHtIDwTN0fGN9UsCEb+IkCrsWzcpAOLU12toYmLeZC4RX
	VuW/JYmG+Ht1HEyvWf7LluqHE7n6lVLAKW7Ysxu0nrvJi+c8tZCsL243KDvGNELZDDg=
X-Gm-Gg: ATEYQzyv7oQzQif1fI9D1CU2VQzz9Tr2Livuyct7FmgzTKemTjS0D6WZjtCG72OVCCE
	09I9ShcLvnZ69GisCVoUoCSLRtfqZt/EPVASrvkAMfGjUWskhveoIVXSjWwY+1alUwbBgun28rj
	JKi9YNK9bDvU0POZnjiFlUEVhqN91nIHurh/QdJjfnqgmREbbhDtizAtVK46f1aNF/a6BT9bEdQ
	Bg4NioWzFM4dTcRHMCtyEUyspyX8y/9KgL47MG2BWXCMcCWMs4ujmceA7416N5xfYHd80Lnbb3h
	dywjTaBie/RB/m6biBEwoKDdnfFTzkoaqWgvxh9DHgfE9Q+lnX6rZWYWrZPm1E5H0fkGRq0XvEB
	qYMCQGh7DCglM9J7qbq12os5UUPwG+HLlLUyPHaqo/Fkz2f5c9EpLt+DJhzgrhlTXATDsE4sY/d
	GmHX4JHjZsvIWEGIIklS0up1E1B33z
X-Received: by 2002:a05:6808:2f19:b0:450:5e3a:6f1a with SMTP id 5614622812f47-4651abba7b9mr3988299b6e.20.1772744633230;
        Thu, 05 Mar 2026 13:03:53 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:874e:e775:4f67:b3a5])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-464bb5d0a8csm13729227b6e.14.2026.03.05.13.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 13:03:51 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 05 Mar 2026 15:03:18 -0600
Subject: [PATCH v2 3/3] arm: dts: mediatek: mt8135: fix pinctrl node name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-mtk-fix-mt7623-pinctl-name-v2-3-a68854a51065@baylibre.com>
References: <20260305-mtk-fix-mt7623-pinctl-name-v2-0-a68854a51065@baylibre.com>
In-Reply-To: <20260305-mtk-fix-mt7623-pinctl-name-v2-0-a68854a51065@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=853; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=/r4SI0+l+6elgaFXyZuBmLqw3XZThStXnYZaeAp4zQ8=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpqe+q61fQg0Se4w258lQkpeMgGkcngGiz+mQG2
 PE0OP0joRCJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaanvqgAKCRDCzCAB/wGP
 wB4FB/44iUz+SQ+oBg1sMW6mRRlWtbIgyWdNLTCnbkmFf5/Wt/t1uBg7CWi+dmFQLWJT14tLQD8
 SAokLqmtlADTwENqEwAoVt0yHBpfOi8wVJeGpEduZ/XzYwtrrkyu1HxqlItk/xOSoBwMYbB28tq
 sDVTUzJH5rVjw/RhpTtfl1G/Xr5Wj+ObdMiYx5g+7SeWj701+9ZvcJAKexlYq7/Cis6jxpBanK3
 u1pQdLMP4X+lyvjNeTTJgm+bQMZr87PmTWo8w9HNXDggixpEmBv4x158fQjNyz8iH5DhNwqfOQ1
 7Y059ibhtO92ANFuKyStFLcOJZGoZDdByIbMZfmvok6i2M2f
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-Rspamd-Queue-Id: 292EE218617
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-271728-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.152.162.56:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre.com:mid,baylibre.com:email,1000b000:email,0.152.170.8:email]
X-Rspamd-Action: no action

Correct the pinctrl node name to use the same address as the reg
property.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 arch/arm/boot/dts/mediatek/mt8135.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mediatek/mt8135.dtsi b/arch/arm/boot/dts/mediatek/mt8135.dtsi
index 0f291ad22d3a..b03bd980ec37 100644
--- a/arch/arm/boot/dts/mediatek/mt8135.dtsi
+++ b/arch/arm/boot/dts/mediatek/mt8135.dtsi
@@ -148,7 +148,7 @@ pericfg: pericfg@10003000 {
 		 * Pinctrl access register at 0x10005000 and 0x1020c000 through
 		 * regmap. Register 0x1000b000 is used by EINT.
 		 */
-		pio: pinctrl@10005000 {
+		pio: pinctrl@1000b000 {
 			compatible = "mediatek,mt8135-pinctrl";
 			reg = <0 0x1000b000 0 0x1000>;
 			mediatek,pctl-regmap = <&syscfg_pctl_a &syscfg_pctl_b>;

-- 
2.43.0


