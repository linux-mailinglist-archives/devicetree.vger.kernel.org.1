Return-Path: <devicetree+bounces-280990-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHBDMOnrxGmj5AQAu9opvQ
	(envelope-from <devicetree+bounces-280990-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 09:18:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 217FE33125D
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 09:18:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0656303A27D
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 08:11:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F571364EAA;
	Thu, 26 Mar 2026 08:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="A7wP+9X/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB87346AC0
	for <devicetree@vger.kernel.org>; Thu, 26 Mar 2026 08:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774512674; cv=none; b=FbLqGM8GtJrYuNR2v8krrf6A0tzThaMmnW+mywzJRIlubnHjT7oTPYLZlX/Jx6Ex1GA/qaavJXhYl8AIYfNVFHgLZpqjqx28k/hVob+5YK0WugvExdy82UP8Lg4HJp+et58JPe6r4Is6fZmrBVlj+Cju/hZCrhTjpW+wCVNVNhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774512674; c=relaxed/simple;
	bh=2zlaEDaROISinVqtSwCTGVhWXIC8chYqjnn4Qnd8dPI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Imi4EIoM61mH/anhyPmwHJI6DfSuat2jd+jlYny+r2cb4k/rfbF+eNJnP4QT+fXDStMuCnG/ERDTzJY2onf31Gq6/UmPbFeSOR6Np46PgXr9mZRoMadZSrpcVRVhDo9Y6ixC8HyIokElHSvcjuYUsiAUa9CZhJElNwlqr5He718=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=A7wP+9X/; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-35a211df8e3so505928a91.2
        for <devicetree@vger.kernel.org>; Thu, 26 Mar 2026 01:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1774512672; x=1775117472; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oI7ncm47EFLHRAd6LbtDz8JRD0+IusIPO58qA+zSWN8=;
        b=A7wP+9X/Mv9aMU9ueN9bscYideuaaOtO1cX5g/K6uYwtNd/yPMM6R/Zc3un47nShiV
         GLhBvjBkQ9cOTnnOn2hKNT9H/d3WxQzU+/IEhNwL987oUAaEvCQgECoDr29SWN6bAihv
         kkv4GLo3nyKN5oDKVkpGQJ+h9s17G7aN6YlCg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774512672; x=1775117472;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oI7ncm47EFLHRAd6LbtDz8JRD0+IusIPO58qA+zSWN8=;
        b=U0KhMrHSdZLMTKiJ5CV4wFhlafyYqFONJupNoPQiYBIegrvP6W4t3fdrz+Q4HPX3MZ
         7QjW4M0bPA0COMb8J5wO/sE4/gj8KDvr9BtH+muehV8L7MDikn9JoaScBumGvZoaYmBZ
         VoGTlpQkPXutaIgwPNpT/Uf8JrNcHtdbna7eUEY6TAEBhso0YlYwEBrhXDe6rrQJzewh
         Vocy5rZGu0bwwHOTUr9mHyQtdtEZT2hUJKkE4nzxsti3V5OdIfrW7fnZkONJAStJiX7C
         6eMvmbOrQB0ouvAM+xfdWBidOFsUHUnYgkEP/OfpF4ejqmgz+9KbS5qr7xhbY0/UmLj+
         /a0g==
X-Forwarded-Encrypted: i=1; AJvYcCURIb9SEGkjL+zdlQgVqiuc2iAU0VZfvP0Ewt0NFiBBxfQ/o3Z+iVptmMk/OnL3hu1cgQ4C4K6FNSdE@vger.kernel.org
X-Gm-Message-State: AOJu0YwVKPbK386tYbewWPA0G9MIiSEqjWT79Lx8c1KzVncPtOHVNbwA
	xnaCyWjEAQyNCzL81wTuYD9QUpH5LK0rjiWKER9jkbG5vLD2sjetzxEE65f5GEuJrg==
X-Gm-Gg: ATEYQzwIb8lfMQifrkNKewCYbg7bYDTs5NyFl+TdIF/vDaAjcTjMtfZ+xQBb3kW0sJ1
	GHLYdfrcFQl2yt9PlOEWiTtFSQPesUjkkqq5JAE0rWdiWd7uMtr7E57/BxOljbiALvJDqkGndYb
	XHsOo6iPYpkPFhITNoJPRi9WqXceFPA9ITmWwJ/mH5rGba5dZT29Fk1DcsPvewEsVW2+LP0Gm4F
	BUNmNISXu3KRjOIZ7BjucNB0iw6jrM93B6tlW9AGFC4CI7AJ9zpj/o/bmW4HP8Nai/yPyOu4G1q
	YjYaeIfBpbbkuoONCPGeacLezeDd2OsUY9vd5JXRlA5MqK3UrfJw6oxGDfnyL8VNLV/tYurSH2E
	HO3SKg+5tV3AwMJ6idDeUPEbDkadgrf9/K/88EbfLRBmRuEUB9UfprPbWA3hGKZM3YNN/pz/mJF
	G9TkfBTKKTK76kuit3QdxpZ55mnErxdzLSaqKizExmhqsjRLY96uaxVBoinPYMhdERNh9gFtnGN
	jusKfs0i35LfrIZYzc=
X-Received: by 2002:a17:90b:37c8:b0:359:fe72:3559 with SMTP id 98e67ed59e1d1-35c0ddad8e2mr6144191a91.21.1774512672187;
        Thu, 26 Mar 2026 01:11:12 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:3ed5:7e63:b37c:a7d7])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35c22d09573sm823452a91.16.2026.03.26.01.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2026 01:11:11 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-kernel@vger.kernel.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] regulator: mt6315: add regulator supplies
Date: Thu, 26 Mar 2026 16:10:47 +0800
Message-ID: <20260326081050.1115201-1-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.1018.g2bb0e51243-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280990-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[checkpatch.pl:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,chromium.org:dkim,chromium.org:mid]
X-Rspamd-Queue-Id: 217FE33125D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

This is v2 of the "Add MT6315 regulator supplies" series.

Changes since v1:
- Link to v1: https://lore.kernel.org/all/20260324053030.4077453-1-wenst@chromium.org/
- Move supplies to top level node, at the same level as the compatible

This series is part of a broader collection of regulator related
cleanups for MediaTek Chromebooks. This one covers the MT6315 PMIC.

Patch 1 adds the names of the power supply inputs to the binding.

Patch 2 adds the supply names from the DT binding change in patch 1
to the regulator descriptions in the driver. This patch has a
checkpatch.pl warnings, but I wonder if it's because the context size
for checking complex macros is not large enough.

Device tree changes will be sent separately. The goal is to get the
regulator tree as complete as possible. This includes adding supply
names to other regulator DT bindings, and adding all the supply links
to the existing DTs.

Please have a look.


Thanks
ChenYu


Chen-Yu Tsai (2):
  regulator: dt-bindings: mt6315: Add regulator supplies
  regulator: mt6315: Add regulator supplies

 .../bindings/regulator/mt6315-regulator.yaml         | 12 ++++++++++++
 drivers/regulator/mt6315-regulator.c                 | 11 ++++++-----
 2 files changed, 18 insertions(+), 5 deletions(-)

-- 
2.53.0.1018.g2bb0e51243-goog


