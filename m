Return-Path: <devicetree+bounces-278090-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qKNrFkv2vGkt5AIAu9opvQ
	(envelope-from <devicetree+bounces-278090-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:24:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F188B2D691D
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:24:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 618BB301251C
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DE5735A380;
	Fri, 20 Mar 2026 07:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ac4U48Jh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C7D3590C3
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773991497; cv=none; b=AOfs9UULBN7F8huz2DxdPAhwCMkO3nj+gwylqPnaEA+GFVgTisjpd+Ry5Ink6RuqhRV1cgApT/KdHajI6aHjPvAEt/C/fvOBdUBUQHdBUddQ8af35unGe6ArcREKnvGXG/yVwn5I2djHEO7D36HJ4MCtxrrEnAFeASg00fgrRNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773991497; c=relaxed/simple;
	bh=H39tWg1ZOSRc50e8xwG7LBpD8wa1hBbjOyZEeA2xY4Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NSr/bCSvp49rvfVjfZbTyXlHTt4hjIUiQN1+SzbnnjgsM89XbFWNf3m3aD1Nj2MzocXSSERAeRm3ey4p9BT38+XCWqnZFCMkPPO8ZudphqvEyMIaN0lNlGEkSnymLUC6YqeB7rjIEjW+NH/9yW/x/BYVxHL0RunvvSLPXDY1oXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ac4U48Jh; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-82ae379000fso234132b3a.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 00:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773991495; x=1774596295; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MaodLUre5nVZDHJLR3C0Oza+ras1LIWWAXVNzmeoDOA=;
        b=Ac4U48JhgRvm1QMk+ZX4DMZZghWUYLgE+vdfquTzK9Lb+HHcZzMliGkDcNuG54RBQ4
         XagRSPQxPExNsFIxiRuTRLuj/TghEUTWV62IaGFUAGgZDkLCxoSQJFbA+dqRwIkebexo
         xh8bPW+vQGaJDDUAwV8Cdkd59GEyLTSqszWac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773991495; x=1774596295;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MaodLUre5nVZDHJLR3C0Oza+ras1LIWWAXVNzmeoDOA=;
        b=Cuib2Itcaz2SvNLvBH3K02qERnX+gbhvfpmfBP8tHlcPNoyrhqvVLKH4ECcUHS/zh9
         rz4Er0FgdrKPvwhYRUNocHZR2fW/p5yPTk/QU9BzGQSy47UfLcPzDOQoQJwoU3aUK7U7
         P+e4Vv29f/bsRaTO+D5hAWFHOwEV+y8yM9/2ITYyyoVWrpxGNN79L9Ku9oORX7PjBnIi
         ev2QR1ZL4WNvf51ow3LmgnWYLu37MKLxb41J2LCI661Uldo62M3xAb2Eqkek6hppEpaK
         dxyvFSQslw9Phzct9gJ3Y6pzq6IOwneacnwKSTlwZDC8c2lTqY7I1TkRzK+wxkdTJ8q4
         eiuA==
X-Forwarded-Encrypted: i=1; AJvYcCV/H0lzhI6pjkSK7HwyMn4yR7h3iGsCuN8po3hNQoBk/75soXXUpNvuOhN0gYcalNQl4V/0lyl7KP7Q@vger.kernel.org
X-Gm-Message-State: AOJu0YyIqS1gd9y9UMWxSC9tdRSj8LaiJoIYI20X+LU5IJS6BZwLQDKT
	Ayjdecpkgl8SzdQuxaCegcbh2g4cZ4xV1IMfjfH5IEUw0do2wZqpWN4BJPtKRmSPHA==
X-Gm-Gg: ATEYQzx1BFJzisOx6OwE+UQ3+G3LTpv1lK92Opb9z0gmLPUaJCvoKHI4ksMgxFzZ83w
	1A2B7ul5SE80U3CHjUbDH1soRDgzgLI5VboTeQ30ze6dRVUalLM2VPlWMFXBGM1nBa1Zm9CMQQZ
	gh/XChT/ko5YYCnE45wpizMqvAB3EMYqpCX491qbnJmMsmwlIHGdi6R6j4GPQPmQs9tM2IUDaEJ
	wDZfadKpMVj7hBQQTwSrtPXLVznncr/LJ2ORN0eDpAJIjaDgbGU+hr3Dg6sMyfzaFoKrB6f66At
	h13kJYJ+JWHQBX9GCZ2QuW5qqhLJeJ7ZpcdPXol7BwJe1E7boL+97csyphz+DQfvUcbLgmt1EzR
	A8ctwAXkjGSg84Q5JmSVoNyfgeltoODGAXirZM5ULDOImJmj4/UJ9Bxj7bF1mQmZ7FAnVC/1uqE
	qcX1BrD210RQCc3o8bofE+3PGNBXBGeP9K0NIj9AtumCZc1rBl1y3ia6an6FBAzvsZBjCVBAHfG
	v/qJsvp
X-Received: by 2002:a05:6a00:cc5:b0:82a:7931:d3dd with SMTP id d2e1a72fcca58-82a7a8e9ffamr4767730b3a.22.1773991495003;
        Fri, 20 Mar 2026 00:24:55 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82b04222f42sm1452447b3a.61.2026.03.20.00.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 00:24:54 -0700 (PDT)
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
Subject: [PATCH 0/5] regulator: mt6359: cleanup and add supplies
Date: Fri, 20 Mar 2026 15:24:33 +0800
Message-ID: <20260320072440.2403318-1-wenst@chromium.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	TAGGED_FROM(0.00)[bounces-278090-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.945];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[checkpatch.pl:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F188B2D691D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

This series is part of a broader collection of regulator related
cleanups for MediaTek Chromebooks. This one covers the MT6359 PMIC.

The MT6359 PMIC is similar to the MT6358 and MT6366 PMICs. I've done
cleanups for those in the past.

Patch 1 drops the restrictions on the regulator-name property from the
binding. The name of the supply rail ideally should match the design
schematics, not the PMIC's output name. The DT should be free to set
whatever name it needs.

Patch 2 drops the bogus vcn33_[12]_wifi regulator from the binding. The
two *real* VCN33 regulator outputs each have two enable bits that are
OR-ed together to control the output. This allowed WiFi and BT stacks
to separately control power output without coordination. Keep the
vcn33_[12]_bt regulator, as that is already referenced in existing
device trees.

Patch 3 adds the names of the power supply inputs to the binding.

Patch 4 implements the changes of the DT binding change in patch 2.

Patch 5 adds the supply names from the DT binding change in patch 3
to the regulator descriptions in the driver. This patch has a whole
bunch of checkpatch.pl warnings, but I wonder if it's because the
context size for checking complex macros is not large enough.

One part not yet covered in this series is the removal of the *_sshub
regulators. These are not actual regulators, but a set of separate
configurations to be used by the low power sensor hub or embedded
controller. How these combine with the standard set of configurations
set by the main processor is TBD.

Device tree changes will be sent separately. The goal is to get the
regulator tree as complete as possible. This includes adding supply
names to other regulator DT bindings, and adding all the supply links
to the existing DTs.

Please have a look.


Thanks
ChenYu


Chen-Yu Tsai (5):
  regulator: dt-bindings: mt6359: Drop regulator-name pattern
    restrictions
  regulator: dt-bindings: mt6359: Drop bogus vcn33_[12]_* split
    regulators
  regulator: dt-bindings: mt6359: Add regulator supplies
  regulator: mt6359: Drop bogus vcn33_[12]_* split regulators
  regulator: mt6359: Add regulator supply names

 .../bindings/regulator/mt6359-regulator.yaml  |  93 +++---
 drivers/regulator/mt6359-regulator.c          | 299 +++++++++++-------
 include/linux/regulator/mt6359-regulator.h    |   6 +-
 3 files changed, 224 insertions(+), 174 deletions(-)

-- 
2.53.0.959.g497ff81fa9-goog


