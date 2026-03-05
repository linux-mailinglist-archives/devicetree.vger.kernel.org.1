Return-Path: <devicetree+bounces-271727-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAJAONrvqWlGIQEAu9opvQ
	(envelope-from <devicetree+bounces-271727-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 22:04:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4555F218606
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 22:04:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D52E830A4567
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 21:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61F0B34A791;
	Thu,  5 Mar 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sKbjXaJ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DF934AB19
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 21:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772744633; cv=none; b=Nq2+tB+MrpLxHf6s5yahRQEQhF+tEU4+uDs95z1FTACUzw/j9Pet2SU7qcLVaGcz/EHStUaQWVWdR+l/OVqpYUZ4yL41/nU/hLI1lzWngj3JGG4ZL/EewmPunY8hZlMwyWj+trgDRz83tF5zjBd9AiKLL0pwAnRu7kAFzI+zQ5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772744633; c=relaxed/simple;
	bh=eCmJ2QYY/pzXcaJOToFECzaVPUqi4rn0enxXy1DnBG8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OEy7ROfNJpHaykpAvlFslzvAVnAdQhSG0Y0GIRq7Nul9Z0NBILrcBqHqr1+fav+LxonSgVENe0IxU4PHIF9/UouOrWc45D+YFEc5L5SrXnex3OaRfDn/2YzhWmAF/+5avyGa0g+kwW17EeACloLgOv5yhzINiFjNY61I4o27gjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sKbjXaJ3; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-45f053b7b90so5595415b6e.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 13:03:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772744631; x=1773349431; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UcA4dGEpWdmHw4cn/b0YaR4yqWgiR2CVpGOd1+AB5JA=;
        b=sKbjXaJ3jgbQHid7nZnF1cVVm7ktuSiAwAS+saLsyDEBoojvjTcS5+s1lpMLbpd4p4
         2pQf4lXSQ0QGS6DN/Jo400Tka8wQGLoZD2FoAqOLeMpHacr1G28YV22Cex0Un1NlkqVM
         DqV4xglvwwemK8WF7RWouw20bfgM/qknA6v/z7UdxysFjzbTTljo4y85bovWWx+J2+xI
         DkUwoCr/TqMx2CQyrrYOCdTTBitRnoIULLNp86EkBNe2TBhUxKZbyMAtuPZs53DkgMe2
         7JE3J3jTjqLVjJ2KSRv8BR9Vx2ZorkJxrgt/aQqZ0WeE2TPwOW5uixAUTsXoAxoqXpfO
         7CBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772744631; x=1773349431;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UcA4dGEpWdmHw4cn/b0YaR4yqWgiR2CVpGOd1+AB5JA=;
        b=NSAxc+6AafIOVi6tqXpAq3kw6FSd5uxSDkh0Pi1Z6bqO0xicsB66vMvv8X5QRm2JXe
         jtDjBDMXDSSyC/Aez5diJA1tvRVx/ccxrrXZIXIZ8AABlMX34aJ2BHHBZqtuFas3H3wA
         FLjqr3jqiZN3hO/FNZL5itcGkPWI4zjJ8g4HzQ0n+CYvjNSww/wskTRrlzcLMZNdc9ew
         YK3z0mBC0R4P5KGuJxz1yWqGG1j5TEHe61RYLyCYUniHSQriWtQVzexWhnupRCDmSedz
         rTg/TrmorO6PUE+lAJcSdhfLhuELhcL3zgeQTYQ/V5UsLHkxCth8ZnGsFZftGrNefBkN
         bfpg==
X-Gm-Message-State: AOJu0YzZv6TdaAbgfHRbC+FY7RaJ9WiIrrt+u7kmmRGPbAquAcHy9udH
	Pn3/HXxbF43AmNpq7R1iFikTJri0Jld2IfiTqECJeYziJKMA9cGJYe63Y661jfulfAo=
X-Gm-Gg: ATEYQzxtprxEPj2/kPlBgEPRYzQX76L7K/muifVd7S9G4IQjjxjbY1sj4lsCVeCM289
	ftX/V0qo7ta5r+2VwfwldeOiqr07JYeTuVYgD+PWmFACN9KHZDhTVc8JD5XNFoLCjMwzQd3kdQ3
	CVyGLxQUDHhDO6Sg/nrdW5BWWrnOZJGBkuL5lBk2qYrz2eFx1zgn1S0sBjpQsZWB49OmylMHoB5
	sN8sqUtiGooE/T54XNj13MA4c3nXmqFT1erPo6+SV4o8stBGS06e1QNb87OE49wHTnH9QwiWcmB
	C4DJJgZDMHGZC52WUQvigAtuhlomKYw7TOBnAOZoEdxpelpp5FX8NckR+TAEWRv2TyNuebq+gJL
	fjsd6BNvZHitp9XYH6qwt7Yf91hxf0TX4GHeWZWhKmjhi7m90jqhJzw0XRMVBU6sOfkiZmh8jtg
	xSKqj7jx2URq6z/eAeB27S/PQUmtaU
X-Received: by 2002:a05:6808:3a1b:b0:45a:770c:d77b with SMTP id 5614622812f47-466d868336cmr549783b6e.35.1772744630984;
        Thu, 05 Mar 2026 13:03:50 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:874e:e775:4f67:b3a5])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-464bb5d0a8csm13729227b6e.14.2026.03.05.13.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 13:03:49 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 05 Mar 2026 15:03:17 -0600
Subject: [PATCH v2 2/3] arm: dts: mediatek: mt7623: fix pinctrl controller
 node name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-mtk-fix-mt7623-pinctl-name-v2-2-a68854a51065@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=748; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=eCmJ2QYY/pzXcaJOToFECzaVPUqi4rn0enxXy1DnBG8=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpqe+keeDzlj/E9xT/ACGFnG7mZ1wqlrX2M/rwS
 3c+QMzSXkOJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaanvpAAKCRDCzCAB/wGP
 wPkSB/9rDXk0Atd75mMJ7zGgLiDNplnqqhch8xpKQT3e9Hrrvm4iPLGSt+OGOW205Azmy+tC/wI
 V02tpJATSjdnLprbEYQvZwXlAyJ6AxL7C4EQJO55whtjDwp96tVdYsdOq37NizfgirQDCONMJoI
 P63sli4TVU1sOfExOxVoKxV7i9KfdxuGEWYsLIwPew6A2tX7waOgNQB2JQT33CSnNFaxbQISdTC
 U0HHTprNfh8M069tJGkqrS0uYLUY0DeY68TgBMwIbquiB1J6K0ZTJpXBwxLUCeMc/wB1QvVzU+W
 aYD8s63dWpUxCzNW7hbBKeH573kI4/JE+9A07USkrsXZPLnm
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-Rspamd-Queue-Id: 4555F218606
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
	TAGGED_FROM(0.00)[bounces-271727-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,1000b000:email,baylibre.com:mid,baylibre.com:email,0.152.170.8:email]
X-Rspamd-Action: no action

Correct the pinctrl controller node name to use the same address as the
reg property.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 arch/arm/boot/dts/mediatek/mt7623.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mediatek/mt7623.dtsi b/arch/arm/boot/dts/mediatek/mt7623.dtsi
index f34f60cde594..aa42377b47da 100644
--- a/arch/arm/boot/dts/mediatek/mt7623.dtsi
+++ b/arch/arm/boot/dts/mediatek/mt7623.dtsi
@@ -249,7 +249,7 @@ pericfg: syscon@10003000 {
 		#reset-cells = <1>;
 	};
 
-	pio: pinctrl@10005000 {
+	pio: pinctrl@1000b000 {
 		compatible = "mediatek,mt7623-pinctrl";
 		reg = <0 0x1000b000 0 0x1000>;
 		mediatek,pctl-regmap = <&syscfg_pctl_a>;

-- 
2.43.0


