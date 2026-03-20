Return-Path: <devicetree+bounces-278087-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oP8wG0P2vGkt5AIAu9opvQ
	(envelope-from <devicetree+bounces-278087-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:24:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DBB2D690F
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:24:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C21B130067B5
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E92A35A3AA;
	Fri, 20 Mar 2026 07:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="I9jIY9Xg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070B935AC35
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773991394; cv=none; b=LoV+Yr4RY9ZNuDiPmHw/os4GutuONf5M+5RJMg6yOSi5Two/04Rgc3acFhwHGvhZrDvu2eUYEAOq+2V6a6Ah9hRqja7f8jG1Jw8yIRErSpvRlcONaRpVdmQvjTUPa6ztkEd8guYNtLujxGBilzcf9rqTnOQq5XEFAuNiuWvZxrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773991394; c=relaxed/simple;
	bh=RG9R+rzOfM2axVBVHs2DM+NzJG7yLj1jZeSHmKPoCV0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NksNfn4uLvjZ7tjVDdclGmX7kemeBERcmEMwT8cPyxjvJtXmHTD3ZE/ZuXdVqzO8La+4LRAt5tk5grWsNZAkl/zlV9bs1p8RSe0ocvjZP+LkUN5OYplpWtRlQygxMtV1qKPOdqc5/KIMBQWgdXRl+PJK3Cwmiw5w8kb9m9WJjmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=I9jIY9Xg; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-c73e9e4cdf7so120748a12.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 00:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773991392; x=1774596192; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L/i+XiMvo4RBkCmrsB/NhsQRMMdemw4kFlJaRryPfTs=;
        b=I9jIY9XgyjbqiHRLUxprkiF1xAJBe54EDEfcpD7S0t/2zEsB4+bhyKOqb/+2f3XpNQ
         qYDmfDkCMIlZ2NL+ta0W/bdHDxYIwCrcmlN9w+9K7UDEDAeNF71iXi8Jk3jmnr1PdhTF
         5H7f++rRzv0pbqJlpY4MStbQoT/BKEuS60NVw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773991392; x=1774596192;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L/i+XiMvo4RBkCmrsB/NhsQRMMdemw4kFlJaRryPfTs=;
        b=lEiVms77XGo7/fzav4m/PKY2a9Z4rGuKpVN99k4YRKdckosWo07iV09EnOZG1fg/Bo
         buQrkesSeTa1ZaTS7DKyVEq0T2A6VvoRgepWaYTTQNi0rzTNHK9noaCS9mEFGhHCHXRZ
         C83wU4NA/I1knKBSKn9Pcr0jM1rGxIowj3fcv4GrruTKtmjWLtRcZ1lR55Mz7HrIGxv7
         t/BBoISBYf56RIZoUKPwOm9Z1SfPuUSgnH+4BFTvOd6c9ID9MnVK+a0n1CP9xNGEvlvM
         NckuhsK1HMD0BVvvQRXfNxKEFXxnUgDE9DbgFI7KcC+0xM126RnDI1gHFQxAEhqMk7Nz
         Yz5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWZVtdu67EFj60R8ctFGqWzUbpBSx4xaI0g2tS00p7kWgP74e2o5dwU5MlQSwFIDoIbJbGveRM/f0KP@vger.kernel.org
X-Gm-Message-State: AOJu0YyU3Q1i3Z5x/YB8pe/bq37UI/oH6KlIfEZHNrSaKdfHVEXhnP1C
	06RbYUG008NotPPMakbtxbWRRqa0cjPZEoIAff8Ghmu9+pr0JFaivhRe82A61pixTA==
X-Gm-Gg: ATEYQzyexqduVb2JCabmWl57Fh9VQ0UR9WeBGTGqpzngXfIwOFfSRwF6tUa2MZwvlxY
	iJ/cbvatbahq0ROI42OGgGf0ABWXlj/9IpzfNpqdgzHG2ejbh//+IUEOvXV5+/aNLcoEquQIWgT
	Kfm5P2GyjaOlMeuEY48U+nXWBiF9/0VJuFzkuMTaazcqGRJ6LXey/7D9uBcvq0FVCzpBcQU2dXv
	Dgfu9WSUoC7mqf9r2qXHHQIFDIvGjjNrYL4+OgiEs2M/S+d++BqrLOtgKDQgHgnrLuvUXpNK/2B
	nVuj0qw5IrmbNPeW15JGQUZxbwSN+9tR2dAJb7uY8UbqGF9tmX1dnIojT0SAPi2QIPP7Aoqif+G
	KJE43ZTR9PMJZDom92ezOWvvQMNqXpubO02KcaSlMBBeia2BXXYAl8Ha9BCAaeXW1nYm+B8+Q0W
	E57l9xzPCQHaJ0o3jhMyFGSjnhHEOT+z/f6PBOLaoO9KswD28sOGI46WdxrtpSSq/dFX3bCb1ja
	DIBadQ6RwkWh+6/Yg8=
X-Received: by 2002:a17:902:dac7:b0:2b0:7224:a4f3 with SMTP id d9443c01a7336-2b0827eefc7mr19316025ad.48.1773991392395;
        Fri, 20 Mar 2026 00:23:12 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b083516b96sm16728365ad.7.2026.03.20.00.23.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 00:23:11 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] regulator: mt6359: cleanup and add supplies
Date: Fri, 20 Mar 2026 15:22:59 +0800
Message-ID: <20260320072302.2402489-1-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	TAGGED_FROM(0.00)[bounces-278087-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.946];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,checkpatch.pl:url]
X-Rspamd-Queue-Id: C4DBB2D690F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

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

 .../bindings/regulator/mt6315-regulator.yaml        | 13 +++++++++++++
 drivers/regulator/mt6315-regulator.c                | 11 ++++++-----
 2 files changed, 19 insertions(+), 5 deletions(-)

-- 
2.53.0.959.g497ff81fa9-goog


