Return-Path: <devicetree+bounces-261941-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJ6/HJkAgWlyDgMAu9opvQ
	(envelope-from <devicetree+bounces-261941-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 20:52:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C5132D0CBB
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 20:52:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 216983013DD4
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 19:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1D9530B52A;
	Mon,  2 Feb 2026 19:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="eURwga8R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF91E35972
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 19:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770061621; cv=none; b=ZPGuzzO+P3bQuAlRFIIettM01V/pZBreChJDkfOYqHlRTm2EeZETBaqWV4dI2b3Y5yWmP4h7LIqEc8B98wbMpeaTwdmrunSspj1fKR6ZV1myiwO1CX+5D/0i7b4vsJwSbf5GJGiSnLDw1CZFLDjzB5flXs2pEDUyiZUudAwSsUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770061621; c=relaxed/simple;
	bh=eQU/XZ64Wclw2y2Fa9l2QuLfg/GOnWVXwSFwhzeu+OM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=EQvfKOH5MVpe48ntDmgNgyoi8BR3Z631QSK6eLe9Dh8h3MUiCW318lCWg+lPQy026JC8OZTOwhbyJn/PUWmeVSs6pEsH4h0YVkw2ccSnp9H79dIxVYGJqu31uZtHp2MXRvBqmK2CUHJOCmi1J+LnZ6P43WpU7mth+KlOFvQOWL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=eURwga8R; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-794ed669269so1857277b3.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 11:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1770061618; x=1770666418; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u82dPfWkZFveIydXJfE5pfWEOGw2ni/TqG+rcgpwY6Q=;
        b=eURwga8RgtSpUcILxTdtCGcelfaYo3fjnqQMq96dh1qdpGyKoThPR+rWlThgaH79B5
         qmJ3WgJLda4WJKTIjC6gOG1W1d0AVJTH3OxdRx35EEdP/2TCbOVhqBX//s6cefwV2kUw
         g263FyQd5QuOhHjWBJEb0F3ctPpl+IW5SFz0GsincPoZ11Un0LT4mg9VZHk3GBuXtMgR
         9RAap4lL8s9chuMcgVN5QtP4e6wPQIahNa2mJ5amVteFT14YPx0grQ+XJSPABVgxPrIq
         f++mHA2BwhYLfYskZ5c6EjF8Pd801g7uAMQoMxQLlFSiFu9hRJK5+7vFd9MJNhpylMP3
         YVhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770061618; x=1770666418;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u82dPfWkZFveIydXJfE5pfWEOGw2ni/TqG+rcgpwY6Q=;
        b=FRBcZ/D5OyspS72F/wf4esjqVPkoW1lCaT4qU9cMCGxwX1NwheJabPmuLQ5AbEj9ck
         tJGvPBCGvWAFuDJkjqV8LUwmO4Grvkezx2ITaYPxN9ZR/Vuw/3Hwn0AIQynk4VS8VYc8
         Gu3TOiGXiAE+LlgdnnAJfvF3ddfsCx50tdW5X8fOCnWLC36UI1ntXN+Lamqh++uZsUYy
         CR7+S1feOM/oNifSmTs4FYYLlO4BmypQS4FAT3RAmRlzkcOlvBCIC0wy9OjK2xlJ1lEw
         FoypzkARKYck49MtVE3wj6v+ZTcvVydwH9xS5helIiXbmBUCZA3GxAKRAe5Ua8eRozOb
         nPUg==
X-Forwarded-Encrypted: i=1; AJvYcCUjAq2VGoNtCPL9O7HUxU7JYLv9LqQR/tb3SMMOIvtatoCVtDypJUjrD5bT0R2SabW7oodtdEBZrWJZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/ctoY0Z010aUO6NnC37KaFB1z45zNfTNKuEQeK2bNagPAbEL6
	G1vroQ8DR09imYAehKFMpMQ2QwjDn/IgzlKzcFMGQR4Q4Va/Nw8sznnjzhc+GrnlZqg=
X-Gm-Gg: AZuq6aLX9cbyjqv7TUhEYcVz456EG8fBVWLUuqXKCLwde4JLWPYsXxT+/B/+KO6v73F
	Yb+NjdnAccUFjkyDG9zs0N06Af+Qsh72zKOowkaJHmwJDNFi58tIw0vhknh9YMPqeq7UwcdwJPN
	YLdI/5Bm6NZG7/vVACbkow4z+QevVuGOWQ3OBvlewfP4vkOc5to28UT0bz3cn9nUatlR6Q8Nf3b
	vIHSuved2SzNyRMYE9AnSr19n5Zlpv4GMaCTOB36YdS8x9C4r7CDEgrOIrgzTKfa16+UR6QoJMK
	5ewMXdVEPoHI7+fFHfCULc34L4I1YtVE666ciCI+t8rB4OYntMNLpQ6HJGK6kkSIEi7AIFcpZQS
	DYOvqxwNsiJ+zRpGEaspruu+7o8BQsEQsrD0MwCDULkRddMqaDW0/ZfR1ZnrY2aDqV2ZmkMqnZS
	aYcr38KLUQOoxdvilRiP1+Awh9+GMB5w72bnEylqvUV7tMonfPmwDXbUjFrC5oONqUBj/sdqLp
X-Received: by 2002:a81:b813:0:b0:794:bc47:df1 with SMTP id 00721157ae682-794ecdcb28fmr4723137b3.22.1770061617857;
        Mon, 02 Feb 2026 11:46:57 -0800 (PST)
Received: from [192.168.5.15] ([50.231.163.162])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-794cd7241c0sm39493667b3.24.2026.02.02.11.46.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 11:46:57 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Subject: [PATCH v5 0/3] Add Tenstorrent Atlantis Clock/Reset Controller
Date: Mon, 02 Feb 2026 13:46:48 -0600
Message-Id: <20260202-atlantis-clocks-v5-0-0922e43acaba@oss.tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACj/gGkC/3XOwWrDMAyA4VcpPtfFkmOl2WnvMXpIHGU1a+1hG
 9NR8u5zCoVA2uMv0CfdReLoOImP3V1ELi654GuY/U7Yc++/WbqxtkCFpABQ9vnS++yStJdgf5K
 cVKcsdGo40ijq1m/kyd0e4tep9tmlHOLf40CBZfq0zMYqIJVstSGmFiY8Dp8hpUNmvxCRfT7Yc
 BWLWnAl4farglWyRLoF0h0TvZf0WqKtpKs0KCDQxhgY2vdSs5K02kpNlRoa2eBosMPmtTTP8z8
 Q+nFelgEAAA==
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261941-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tenstorrent.com:email,tenstorrent.com:dkim,oss.tenstorrent.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C5132D0CBB
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
Changes in v5:
- Replaced to_atlantis_*/hw_to_atlantis_* macros with static inline functions in clk and reset driver
- Add Rb tags from Philipp Zabel
- Link to v4: https://lore.kernel.org/r/20260130-atlantis-clocks-v4-0-46de52d52924@oss.tenstorrent.com

Changes in v4:
- Dropped !rcpu prcms and custom property used by them. Will be added
  later with rest of clock tree
- Link to v3: https://lore.kernel.org/r/20260126-atlantis-clocks-v3-0-b016135551b7@oss.tenstorrent.com

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

 .../bindings/clock/tenstorrent,atlantis-prcm.yaml  |  54 ++
 MAINTAINERS                                        |   5 +
 drivers/clk/Kconfig                                |   1 +
 drivers/clk/Makefile                               |   1 +
 drivers/clk/tenstorrent/Kconfig                    |  14 +
 drivers/clk/tenstorrent/Makefile                   |   3 +
 drivers/clk/tenstorrent/atlantis-prcm.c            | 945 +++++++++++++++++++++
 drivers/reset/Kconfig                              |  11 +
 drivers/reset/Makefile                             |   1 +
 drivers/reset/reset-tenstorrent-atlantis.c         | 163 ++++
 .../dt-bindings/clock/tenstorrent,atlantis-prcm.h  | 103 +++
 include/soc/tenstorrent/atlantis-prcm.h            |  58 ++
 12 files changed, 1359 insertions(+)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20260112-atlantis-clocks-f090c190b86d

Best regards,
-- 
Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>


