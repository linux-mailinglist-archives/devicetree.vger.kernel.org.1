Return-Path: <devicetree+bounces-271725-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFr4G77vqWlGIQEAu9opvQ
	(envelope-from <devicetree+bounces-271725-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 22:03:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5392185D1
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 22:03:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C79430715C6
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 21:03:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3775934A79A;
	Thu,  5 Mar 2026 21:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OKe9BTIr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8CE7349B1D
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 21:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772744631; cv=none; b=hNybQ6sg85mTbw0tjgxm81XajWarXiNVN92o74yfI4yzXruEUE4BQRo3KE2JBFEzWxt4QSa0KykoANvIhMF1RO00fv4EWiSKIzs3eVnJ0rCqkE0dOr+J3w+YxAnVIyNuuphCQZ5OeBlOwaEeXmLmqve9WLr4bVfNVRehqpc3clY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772744631; c=relaxed/simple;
	bh=nCZZHuCOrSues8QVWXqMC3+FI2MpOSDkCrCh9OXFww0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LXSE55pg6YTrNMYE47PwDQAVaXGRUoXdfl+bBg/YKFYehKlI1N2yhVOAz1cyCBCIQ0wZq7smFaPRZELJ4pUl4x38YE6QEWGEJoitq19B9+ervRQpAubw1o+rVvKKB6qm0qvd/RHaqBqmP0lhXQt9q7FDQcDzIbD4N8N1mRhT4YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OKe9BTIr; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-46394090d2fso3014588b6e.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 13:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772744627; x=1773349427; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uMUvcEj/jfsJXhZHMSm5BagEwceXMMjDcklR+tqh0YI=;
        b=OKe9BTIrbGjHZUbE6Xcmezzp8oSopmK9DeAusQ7OorDzQf3E5f1amaumKpc//OSbyw
         bRP6LNrTybWiERo/zBRpVG6LToJxZTzyn6Xh8zEiHiqB4mvJj5w6cLPrBokHgXxPyR13
         1L6B6V8L2I4JrFZXjLWmfvXMK9Rpl0xhYRFHf/D92rQPgIF6s+E69cShJxUVPhbHS3IL
         yjdo9ThrIQN48GO7UqjPYmoKmP2ckRJ11Ek0MKFK1B8trxtUo5KcBtFbMGaHUQK6pogm
         vKP04TH90TyurAjcdpywWxaRb/reMsxfZPEg2jPN43KO4FpAaoqQZzAU8dMo664wpXcP
         l51Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772744627; x=1773349427;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uMUvcEj/jfsJXhZHMSm5BagEwceXMMjDcklR+tqh0YI=;
        b=CYVP33q+anD0VjhH6MwuLrvkk5o6BLqbhtW6JHGJjd8fhVHNFk0FsE50536pybPshm
         3v9BcgHDNybYUqXlOvtKaFAO281XaP3gyBiZE1kz9qFsw8xBwwQXBh8VeFTwzbvceuHu
         rcy744TXrVKGRKvqNGbnTTYjGrajVzRqkYex4Gklm6DA2vGcoOUOqbrHR65U0iM8YJhV
         Hikc89ez7rMLv044wZ9Cg8fHZouqAZcq6scIV2x8/KXC4uENP0PL35BLqPnWKYoX/LKu
         UeTlx6prNRSVs2uoUw5yKS9/hHhX3liVM+XTNkz34N+/kV+RGcjW7dJFQpBNOGDzdN6e
         rhNw==
X-Gm-Message-State: AOJu0YwIC0L9gpsHVJGbvzm254lkf1ELROdodCgx7KiWfR5XjzmRuj5S
	uoUoXS5G7v2xrgFOwkaOBvsnMgeX7voAPscLVPPoO64B950IVGSmnkFKp60VAPZfX88=
X-Gm-Gg: ATEYQzxlbJMDFG8nFtGmfaMQMI3oCgtF7FLOIXzsQV+IBW6gW6Y/+PSJmALo0N2MAq/
	D8Tcsd0lxMGmmC5uyRKn1cxndZpJ8VhsDWgxufxTu4JOcG3ZLJQxIHSTJ3WNGZ2A6g2HdYOcynY
	IJYyZWYLW02E01MAK0AqVcLp1lR4yzdMfYFrA1O5q1VCHv63A0Q6vMA3FHQy1iV58bpyDYqfVTc
	fHXgi4kT+gstbjpZHgvpOq/hMkB8SVYpamyDHGh4cgqsFrJXApKPqW2Q/j6zGjBZjT4KTcbaH4J
	ze9u9cJfGYg+hp2wkwuwuSWewFMHRoPYxCB8gAMmbk81ls9VcfdNI0HpVbIBmPedLMoYkcOnI95
	bzRFIjyQBMWTDJcUWUc5WlVEXT7xjmVE8YSBwqIraWFjvBdfwH/vDcCqHs1Gp5eg5Ao9+GIGghs
	cf95cExniArvsU18K1/T5UnSJzTgW/k5yYIhfZttA=
X-Received: by 2002:a05:6808:c2ab:b0:455:bf27:e95e with SMTP id 5614622812f47-4651ab1d6b0mr3573703b6e.1.1772744627481;
        Thu, 05 Mar 2026 13:03:47 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:874e:e775:4f67:b3a5])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-464bb5d0a8csm13729227b6e.14.2026.03.05.13.03.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 13:03:45 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Subject: [PATCH v2 0/3] arm: dts: mediatek: fix pinctl node names
Date: Thu, 05 Mar 2026 15:03:15 -0600
Message-Id: <20260305-mtk-fix-mt7623-pinctl-name-v2-0-a68854a51065@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/42NTQqDMBCFryKz7pT8oNGuvEdxoXGsQzWRRKQi3
 r2pJ+jq8T0e3zsgUmCK8MgOCLRxZO8SqFsGdmzdi5D7xKCEKoQUBc7rGwf+pDSF0riws+uErp0
 JhzKvdJXrjnoDSbAESstL/mwSjxxXH/bra5O/9i/tJlGg1qU01gymJKq7dp+4C3S3fobmPM8v7
 sTGrMcAAAA=
X-Change-ID: 20260106-mtk-fix-mt7623-pinctl-name-f8593953bed7
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1024; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=nCZZHuCOrSues8QVWXqMC3+FI2MpOSDkCrCh9OXFww0=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpqe+WhDO5SBkuyTXjQeMiDCxhJ+2B7nXDuoYIk
 5tZG2mjU7CJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaanvlgAKCRDCzCAB/wGP
 wEg4B/9KENu8eGKx2Ux1CiqezA+SY9HupqER78ey4oFPO7seJ+znvkbjM4suVHJAMQSh+5NQ3U4
 g+49D/Nuf1O5XelRqVdmivXh9lSisE4Ae9a63KYim9Pcz7IvqGYctovpdU3KJ0wfY/DBKwCOetQ
 u8/RI8RLlhEzT+4O6drd63mip9IeCFaEE8eMpGxpDqUQbk6wr15DwI+AdJ/UqrXPal5mJWLx6NK
 RyJ8E2dGk7YDiYsRxm3WsTYkN4EZIqEa3gO18FhkUSLjpGohV/fahZT9qjbwQan1X6I5i4VmdBO
 p/Xc200kZ37fidWvtIbQ6Ed/8obcxanvcm7eCdo1IjBmUKiY
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-Rspamd-Queue-Id: CA5392185D1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271725-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

While passing by, I noticed that the pinctrl nodes in a couple of dtsi
files did not match the addresses in their reg properties. Here are some
patches to fix that.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
Changes in v2:
- Add a new patch to also fix the pinctrl child node names in the
  mt7623.dtsi file.
- Link to v1: https://lore.kernel.org/r/20260106-mtk-fix-mt7623-pinctl-name-v1-0-33817c7f78ee@baylibre.com

---
David Lechner (3):
      arm: dts: mediatek: mt7623: fix pinctrl child node names
      arm: dts: mediatek: mt7623: fix pinctrl controller node name
      arm: dts: mediatek: mt8135: fix pinctrl node name

 arch/arm/boot/dts/mediatek/mt7623.dtsi | 64 +++++++++++++++++-----------------
 arch/arm/boot/dts/mediatek/mt8135.dtsi |  2 +-
 2 files changed, 33 insertions(+), 33 deletions(-)
---
base-commit: 3f9cd19e764b782706dbaacc69e502099cb014ba
change-id: 20260106-mtk-fix-mt7623-pinctl-name-f8593953bed7

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


