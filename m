Return-Path: <devicetree+bounces-262040-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJzMKKCKgWnuGwMAu9opvQ
	(envelope-from <devicetree+bounces-262040-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 06:41:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F15A9D4C7E
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 06:41:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2238F30067A3
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 05:41:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9278358D04;
	Tue,  3 Feb 2026 05:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="n1ECajAI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB33271464
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 05:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770097288; cv=none; b=udgqqw3nG2iEXwbURsyBEtIklGVX5pcz5KbSvAotjYazJvM6hPngSUBOZoy72RvNudoJ+s0qHmvA+V1uhNl0V79RdBzTgDx0KuUWpeRhC5DkniPNlAgvq3vZW66EFx71TTSswZ3vUP8JkJS9/mfvtjBXUxqSbZJCkvgr81XGc8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770097288; c=relaxed/simple;
	bh=XPgMl1BiOGaDuA6iZpRlivuKmcBP0JLjydfabOk5gAc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=I/v9UNau87s4pTS+cEK1XoKt0HxtS3fKW9dr4K+I394RhoDbAna9e1zqzT5m8y7oDvthgvvAlVFJr37Np5/yfFefDbfD4C+4FSv6o9h5GKyR4pEKHa0DVH9ri5Xs+TWfdRfbOE2qZjBCbedcaly1IWpQQWb6G4nxTG4DJWGyIek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=n1ECajAI; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-c551edc745eso2496502a12.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 21:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1770097286; x=1770702086; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D08eqWaNz/g58oq/9WRuxN3nwvX07U65CVm0PjSPoH8=;
        b=n1ECajAIc2w5fhnUQTXMiRBlj9yDucB9HNFiCLjSh4/eGJImUTpeGGef8CSt7ZItAo
         d/GIha7cZWg6ITlgx9odV8flQgeVf6DvDVdQa9fw4GrMqyG1WtgmOswbZ+GylYcLIz9p
         lix6NjylpSaXj0yyQuvQQPISolSl+/0XKhO8DjRLAV1MnOBPXaveqPEvOFtopsYC3Ykp
         tonIi3cUFjRrx4ag2uCJ7yOvyYI2v+Q/ABElG37GtuzSm0+9Y2Zyo5gC9dcix0Tb20oE
         VUmvFjgDL8FHA/rGFrvkl9oulW3XWZzsNCwi0QTiuI8vUu+Cw/sCDvMu0CvB2Qrqwyqt
         rQDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770097286; x=1770702086;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D08eqWaNz/g58oq/9WRuxN3nwvX07U65CVm0PjSPoH8=;
        b=m4sRfgBEQUQb8umCIwnGvrOg4uWbFhmD/kKhRZ0IALGqKmOpgfZnUu0sLyBr47WNWh
         ecI43dBSdYJZnTy1V4xuxK4aZdPwDe5elz4A5Tqaat1l533xNC/HuVrxdWl+2E36yhM5
         OSuWyretYfAXwvhSt+NhPMa2Zn4JxgduGYr6dsb9u5GETEsErSUqzm05EPgPoOlGIOdT
         +hpPAZ+T6oYNVPI2c8MIsyowEJCq8skTXcRuZEg/9cA2M/UOTrYSV88GNH1SkkCE5M3/
         lbuTmirLIvfEbceqB/Zgk8TVwtd892VKOFxRIomlIzsleUWb06b6bsbkNyBWUbL26z5B
         8Xtg==
X-Forwarded-Encrypted: i=1; AJvYcCXg4A2CtJ4ZA3Rcm8KauD8WS/4pHYUjHKvr9BM7Je+k1swmwPi8GpqvLdw2UQlSWj7Poo68XkFEc3cM@vger.kernel.org
X-Gm-Message-State: AOJu0YzGhg+BijXR6uD9TgZgwbIEerEwTnLjeJCWAk8R67r17dEZMKVp
	X7HbtQW87kp19yUWxoihq/CkhaPAz4ECi3IpQvOti9noMU2fNHcHSZ01vo8hu6WgiGo=
X-Gm-Gg: AZuq6aKWxo+D8U/ffIyZZ0mXgecso739gB1CR8hwCr2xBlvGR0A1FeMCNJlQdeeQwWH
	Dj4Khnhk1S+Kk9F48qjQYulC+8exu7WkQ8eoj/6lccrhlQtzsTw2q1bY05qw8BCx3ekmHpNxgwS
	e7BNfTGnTnxeVhFLS9UzvUEAqywmwsbtVo36qO7HKnb1agicU30xpmOLeaXQQXjgCmkTtES7h/X
	u+6eM+y9ZPljGXgd46TsSIvIfug2qR9L4KXxgmmFMsSPtbQVodgSvosaM/CDUU86DbUeQbdDqPL
	0zYy1+vTeef3J2XPrrtk4UXzR648KiqnyNrjSYWRt9gflYfK0dVmmMbfSsJLf6iqtlQR8/ZQwAs
	Q4HwDTTm3yVNotYu1n7ZMhCE44V9U0H0YX85xSbHSp/Vm3Lvt1MBbzU1b4xUcbInAioCeRBeQAl
	Is9ctcincie5ApLsYjzYN4+meZeHfk
X-Received: by 2002:a05:6a20:72a0:b0:366:14b2:314 with SMTP id adf61e73a8af0-392e016e452mr13386544637.71.1770097286379;
        Mon, 02 Feb 2026 21:41:26 -0800 (PST)
Received: from z440.. ([2601:1c0:4502:2d00:361d:bbce:3ed0:c3b6])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6427da845csm16051669a12.12.2026.02.02.21.41.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 21:41:25 -0800 (PST)
From: Igor Reznichenko <igor@reznichenko.net>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	"Kael D'Alcamo" <dev@kael-k.io>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] drm/panel: Add support for the FocusLCDs E35GH-I-MW800CB
Date: Mon,  2 Feb 2026 21:41:18 -0800
Message-ID: <20260203054121.335441-1-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[reznichenko.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-262040-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[reznichenko.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[igor@reznichenko.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[reznichenko.net:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F15A9D4C7E
X-Rspamd-Action: no action

Add support for E35GH-I-MW800CB 320x480 MIPI DSI panel by FocusLCDs.
The panel uses Ilitek ILI9488 driver IC.

v2: Added comment explaining the "focuslcds" vendor prefix
v1: https://lore.kernel.org/all/20260131034101.307486-1-igor@reznichenko.net/

Igor Reznichenko (2):
  dt-bindings: display: panel: Add Ilitek ILI9488 panel controller
  drm/panel: Add Ilitek ILI9488 controller driver

 .../display/panel/ilitek,ili9488.yaml         |  63 ++++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   6 +
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9488.c  | 299 ++++++++++++++++++
 6 files changed, 380 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9488.c

-- 
2.43.0


