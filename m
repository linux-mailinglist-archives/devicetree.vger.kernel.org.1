Return-Path: <devicetree+bounces-259654-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFS+MZjXd2mFlwEAu9opvQ
	(envelope-from <devicetree+bounces-259654-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 22:07:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2838D847
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 22:07:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CC6430075C5
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E83A72DBF78;
	Mon, 26 Jan 2026 21:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="VB/NVeK+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1532DCF67
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 21:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769461643; cv=none; b=NgoPJUT0Q8W1cMYAFJc32RZnj7AFLwxvwcXCEcSmBeaoW282FnPyqXqSLsMnQ8vq65unozJx4D99k/JVCwdx5EZ8IGBBk2BWur+IKLUKxYVyg7bw2hIoySfCcA828r1jWDp8ap0CUXkN6cSQ3+X2WqyuzdwHQxOoahMJRRRO5NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769461643; c=relaxed/simple;
	bh=4OBH66/ndxjvzebFUaDdQ90XWGj7VJOTgeMg342/j9c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=I2Q4Ml2KF9KTbOWQdZoSdVXkDaX5T56UqwDwkmOGcJLmyQbqjV2WJgUIlnufkh3sXEGMW05zk9McF9INpFa++Ie/FY2/O+12X44yDew7nL1Jx+eyH+FLWOfiitpci8uMpwHDn/6kM09nsBezqAFr8KhAwku7Ffbe5F7otTpER7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=VB/NVeK+; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-78fdb90b670so43545457b3.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1769461641; x=1770066441; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JQ+ZbTntkP2HXui9Ym0Sh9Ym8nTlNYxOBU+DQFXOvjc=;
        b=VB/NVeK+DyUulOg5WRfiC1Z6O5Zv7NzREwRCemIeNH2tPEohdTqthOWYtVhTQ7uWou
         RMZNPHmJtsHk/CePaEn4InCklFy9Jl2SDb40ysfDguq+6cNvqsKey954MR5PPvmexK8h
         BFMB4P/7u9S17iw9Y+/M3N1olZWINeYLe0y24D10Gf9G6Ccy2srOP8NK/Xga8MpISqvz
         2drsRZmkcEP1oUwdC/3SArV1BJmA68V3jKT3Ex7jC+J1sCWwxYfjReIMZpKljSKAdcA+
         022HQ+yxq8+QSVUw1c2aaaxNCw/aS86QQQQ4VN62Tl5dn3h/J9NCxuFlnJZt/5uglQEG
         zRYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769461641; x=1770066441;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JQ+ZbTntkP2HXui9Ym0Sh9Ym8nTlNYxOBU+DQFXOvjc=;
        b=IzAsI0/FGzQFq+AD8CaW7H4woFn/knpV9G3l7yAmcrI4zLDqHkTD30+Q3+RADXqZ9R
         oGXzmhoCTaTyGlx4VxvM63tqZNqnwVQwhsoIrj6Tryu+AjvgLKGjoDHO/YOYWiB9N6nd
         aAetu4FQfQFwiNWAh3oK+TI7pyvlwDNpI8pnw+Uoto+H2SIijTgopI3Ahy9mu7vmlmat
         EqguTTHQtyllIJjNDVfA0a0scFVIUh0qQC/Id6TVOkkDQUAAolbn38Wkb6lUgnxKmlPE
         VxqR+LSQFXaavWGr6vKYb2Oqee/W4TnMP20QibQhe1EMj9LK4aF/OvT6uzsSLwcpKCyK
         EQYw==
X-Forwarded-Encrypted: i=1; AJvYcCUYSZ9ClffoEDqsoAiHM/YbfviGvTi5bctSOpx+4n8H5dOeI6bIc0cfPLPHyeIserL/tMlH7kaojHPZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8t/of8cwcmQNxraPsPRABCPDx4975NnJSy6btyLaCa9CR7aGl
	ad7HIF6aMfpXsiU0co52UX34ROxj+NivJvLujDjhkTsX8HKPtiQlSWryA3Tka9et0Fk=
X-Gm-Gg: AZuq6aLu+j09/629stq1Zdm81z8kvE//xTgQPF5klPNKjxoTqLovvrtKo9qmMvlF+pR
	M3xytVP/dA12bjMOOYpKHWPqlq/cAapmFdpdVBuG66t4kwjuRBe6YmwXpu0a46+OIH/4xiXxF0L
	sZqeXOw2fLMaeFZ7uxmKvfn/BbpMmRrK8nsm9W7XsFN+dnQTtJ4i5lR79RkskbUSK8rs4sfvJJn
	pCTe63jA9SVRx8QU16VjpbOKMhSeS0tcDdW7A8jaDBuoLzXsUCjqBpgROKAtY79wcG8nVuthHv/
	q+fsWuv8/b8UD/vW/EWDtbLVg9fuq4HzYBh7Fz6HVs4xFAar1lp/HDE6sTQ5M+8VQ1lNdDLf8bc
	7wPP9a9R8ZNPXb4ZR7wFMtGJ52eSqrcslXmorwf/P9V+xSFeilazJmaA/9gav14d8reYTCQTfYj
	J8205PEhV9Zyr92QWgxa+qlar0ZxJdof3ddDSaOWP/yROl9oNhAfurNWy/PQ1SSdrqXhHV65mHU
	7xgxL/IrA==
X-Received: by 2002:a05:690c:ec7:b0:794:198e:943b with SMTP id 00721157ae682-7945a845621mr46975107b3.8.1769461640816;
        Mon, 26 Jan 2026 13:07:20 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7944bed27casm37948757b3.7.2026.01.26.13.07.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 13:07:20 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Subject: [PATCH v3 0/3] Add Tenstorrent Atlantis Clock/Reset Controller
Date: Mon, 26 Jan 2026 15:07:13 -0600
Message-Id: <20260126-atlantis-clocks-v3-0-b016135551b7@oss.tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIHXd2kC/23OzQqDMAzA8VcZPa/SD4y6095j7KA1zjLXjqaUD
 fHdV4XBwB3/gfySmREGi8ROh5kFTJasdzn08cDM2LobctvnZkooEFIq3sapddESN5M3d+KDaIS
 Rjehq6FneegYc7GsTL9fco6Xow3s7kOQ6/VrlzkqSC17pEhAqOai6O3uiIqJbiYAuFsY/2Kom9
 SOp/VdJZckA6EqCbhDgv7QsywfrNyQvAgEAAA==
X-Change-ID: 20260112-atlantis-clocks-f090c190b86d
To: Drew Fustini <dfustini@oss.tenstorrent.com>, 
 Joel Stanley <jms@oss.tenstorrent.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
 fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
 npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com, 
 bmasney@redhat.com
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259654-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2C2838D847
X-Rspamd-Action: no action

This series adds support for a multifunctional register block
called PRCM in the Tenstorrent Atlantis SoC, whose main functionality
is to serve clocks and resets. This block is instantiated multiple
times in the SoC, with each block covering clock/resets from a
different subsystem. This series also adds a driver that covers clocks
and resets from the RCPU subsystem, which covers most low speed IO
interfaces found in the chip. The reset controller is implemented as
an auxiliary device of the clock controller and shares the same regmap
as it.

The first commit adds bindings documenting the PRCM block, along with
clock and reset indices. The second commit adds the reset controller
driver along with the auxdev definitions needed for it. The third commit
adds the clock controller driver, and the reset controller is created as
an auxdev of it.

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>

---
Changes in v3:
- Fixed warnings reported by kernel test bot
- Addressed comments on reset driver bit set/unset value
- Changed auxdev macros to use inline functions
- Renamed bindings and clock driver to use block's name of "PRCM" rather
  than syscon
- Link to v2: https://lore.kernel.org/r/20260122-atlantis-clocks-v2-0-c66371639e66@oss.tenstorrent.com

Changes in v2:
- Improve the documentation about the syscon block in bindings
- Implemented all clks using custom ops
- Removed custom lock/lock handling functions for regmap
- Addressed comments on header file ordering, newlines and typos
- Removed code for mux parent setting
- Squashed down multiple commits that added reset/auxdev separately
- Link to v1: https://lore.kernel.org/r/20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com

---
Anirudh Srinivasan (3):
      dt-bindings: clk: tenstorrent: Add tenstorrent,atlantis-prcm
      reset: tenstorrent: Add reset controller for Atlantis
      clk: tenstorrent: Add Atlantis clock controller driver

 .../bindings/clock/tenstorrent,atlantis-prcm.yaml  |  82 ++
 MAINTAINERS                                        |   5 +
 drivers/clk/Kconfig                                |   1 +
 drivers/clk/Makefile                               |   1 +
 drivers/clk/tenstorrent/Kconfig                    |  14 +
 drivers/clk/tenstorrent/Makefile                   |   3 +
 drivers/clk/tenstorrent/atlantis-prcm.c            | 941 +++++++++++++++++++++
 drivers/reset/Kconfig                              |  11 +
 drivers/reset/Makefile                             |   1 +
 drivers/reset/reset-tenstorrent-atlantis.c         | 160 ++++
 .../dt-bindings/clock/tenstorrent,atlantis-prcm.h  | 103 +++
 include/soc/tenstorrent/atlantis-prcm.h            |  58 ++
 12 files changed, 1380 insertions(+)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20260112-atlantis-clocks-f090c190b86d

Best regards,
-- 
Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>


