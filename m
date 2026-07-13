Return-Path: <devicetree+bounces-325782-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sCRkECdgVWp6ngAAu9opvQ
	(envelope-from <devicetree+bounces-325782-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 00:01:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C59FE74F65F
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 00:01:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=JrwoFjLA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325782-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325782-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3C591301B00A
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 22:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBE4B37CD2E;
	Mon, 13 Jul 2026 22:01:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F853353A61
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 22:01:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783980069; cv=none; b=nRfAjRmsWdDvUGa+lj8bg8eJTZRpxSmsQrtrXVyVl17OZS9WsfO/IaX4ePmrIHwMOltTEULJTkqiBs/aEX4Cw9PerFB9yED7sj7Fq5GJpB+tl+EcMD1e8c8lXMEmjRq+wtNK8BfOVyrWhMXgi141yEqiD8mDUMgA+8qOP943zvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783980069; c=relaxed/simple;
	bh=A88hQpU4gvevyn/wMC8LlE1D/v2qPQHhtPxMc3pde1k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cWb0uggfvaQ82Zwn/raxN0MzIpbxTWQRrklK+u6ZQkgX00ADiGR6Gtvb6O1Lw1wMka5ZJ40Ojm0VNxoMjyJXrLk9vj+iYC/+YOlVZ5fH4kUGRFCRu1QL977dXfpSaL9nOdUoJdFT47Ff+u7a/g5BzKFTFZ0LQE+xbsKGZKL9cts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JrwoFjLA; arc=none smtp.client-ip=209.85.167.175
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-495b27007d0so257628b6e.1
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 15:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783980067; x=1784584867; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=U3MCSu0Vj44YX15WVLsrx07UD0x7rviAz6FLqVYGZxQ=;
        b=JrwoFjLAZYbIxGGuNqw2DaYhQpkH720ITFTfJOR1vnHDz77HdCh5CJ6fecbd7T8Ke2
         +X7ER9hc2kpTzU9FP4FGQgN+q9a6MlSNpbcB0thIYFCbHANtzz0/sM+WMNOX5bwr45Tb
         1BhEpp8zAYiHI2i6wPQhQG/WkjgM/fil6AOx3d/Ju0tJPV4IqmcOoMWzCRxZop+W7d0K
         QT9soB0us4K8xEU351NRbZSM1QF51aCpZnPTw87tO3Mp3Y2W9N7NCtSoy3eN+bDp3Ibd
         U7NZsHaMw/hWp+44ilV4wuQOeIirrluIViZlMf0N4DcJhHRFGLoa2hkmAl4XkWWsO4yf
         wZRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783980067; x=1784584867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=U3MCSu0Vj44YX15WVLsrx07UD0x7rviAz6FLqVYGZxQ=;
        b=A113hx2D0ZBo1i9Qoks6ieRiT8J0q7VUYnI79f4b6CkyFihvBlhqTPA7R38yezJTys
         1rwhOnmQFAVnP6iovLuvj78UI1M/IRIu5XL8mPvKpoakB8jjJ7L0O8r5udHzZqoWzEhN
         jgzMf1Zs5qlxXetbpCc1SvQzOyyvvJcXATLmylORns1JmKAVEQirShQVxCgObzii4eEz
         zk+6e7KwBK7rQzmyntzXzs72cI2ycyE3OA9qEqJRTsKhPr8A/dspMJdAZh5xE60EfMnI
         hzjCVpCx/vd4K4hpU+R3tudfgxNJOvr7Cy2t4LXcIjb9HITn5+lykARqmUi7KNcYlXRM
         E8iQ==
X-Forwarded-Encrypted: i=1; AFNElJ+s5KC1jQablFGvF+Qq8goHyDMF8cG3oswOD1Rj8eG1v5IXxe2N4y5CzKSoV7vwLXIeO57+qpK941/+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6/iZtBGkPbuPfcdZpHfhaR2Bfp6GZwGWorq3ZlvrRkVG5a1ly
	Eqt6RUAPBDR5MsBUyFsjaOP2Xr99Vw0JbYYwnmdR3tYTNAi3c5BDcwNS
X-Gm-Gg: AfdE7cl7l8stNxZalSTKgjWzhOeap6YJMQontqbX1XVolIgENbtdyYyr/IObMd10Feh
	wNnIt1dDsAW83jkt8Ms2T/2ssecuiyyTcMjAShjBXa4QGMtvt/YQn2i/NQyydppaHCEx55lm8NF
	ajY17XZ23ssXzwig5u+GuAcsFlEC86lUTyrrsbEIbAOPuGQdhft2hJCuEfOmWmSE+uL10YJpdvq
	kDF8mGR1mmy8XD+JJBvzfeDnBAiRi1E4nG7sZp2zbwVj5GFYamDroj640uBVHG6PbwnubqyeIqI
	c1r7vHIl7RXGp4DWRa065dvtywsmPBb8WZjiBlYcdE7+f1+Ip32zaOqKAcvmK4tsGTCtdJUGzmw
	pG2Xh98wjjSYbQfBjKUUKYYJQtbqM+nH4WaADLebi4ciQjWF9M78B5yOOSjTm06PZKM51GfZ1Bx
	iBrGZPzL9ocJfXVuS0yfg5VQ==
X-Received: by 2002:a05:6808:2507:b0:496:dfe1:e8ce with SMTP id 5614622812f47-4a42af91aeemr7105476b6e.22.1783980066993;
        Mon, 13 Jul 2026 15:01:06 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a1acc82f3csm12939785b6e.3.2026.07.13.15.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 15:01:06 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v16 02/10] dt-bindings: iio: imu: icm42600: Remove interrupts from required
Date: Mon, 13 Jul 2026 16:58:32 -0500
Message-ID: <20260713215842.69097-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260713215842.69097-1-macroalpha82@gmail.com>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-325782-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,vger.kernel.org,sntech.de,intel.com,hotmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:nuno.sa@analog.com,m:dlechner@baylibre.com,m:jic23@kernel.org,m:jean-baptiste.maneyrol@tdk.com,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:heiko@sntech.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:andriy.shevchenko@intel.com,m:macromorgan@hotmail.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C59FE74F65F

From: Chris Morgan <macromorgan@hotmail.com>

Interrupts are almost never required for IIO devices per upstream
maintainers. Remove interrupt as a required parameter for the
devicetree binding.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml         | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 9b2af104f186..f6f97ea03038 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -67,7 +67,6 @@ properties:
 required:
   - compatible
   - reg
-  - interrupts
 
 allOf:
   - $ref: /schemas/spi/spi-peripheral-props.yaml#
-- 
2.43.0


