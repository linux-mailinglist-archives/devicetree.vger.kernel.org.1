Return-Path: <devicetree+bounces-265356-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFzZKowkj2lNKAEAu9opvQ
	(envelope-from <devicetree+bounces-265356-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 14:18:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 234C8136434
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 14:18:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E0E95301C958
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 13:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAED035F8A6;
	Fri, 13 Feb 2026 13:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lI8b+OSg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733292C3256
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 13:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770988680; cv=none; b=Es+vGYUC0TK1X0ZmrpQp97KiazJL0NSIW1/vaymp2tnRRQEpZ74Zs3yjKckChWSArVpN3rg7lU8ac2UC6Lf9mkbJ/cs4TsV7aI3Z51Sg2ZdXeqdo1x0PnvuMHGDpbcrUs8fMqbTmIZiXc9unsVrnPrtkn6hGI412v49iSmDRsxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770988680; c=relaxed/simple;
	bh=mCqVL0Im1LADrJFZ5SA80XuYkYbq/qWCO3VuRjyCb5A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NiRQijPG+h1/wMaFdWuJuWH8YnzOUB9qaRbq4ZCREN3wQ9UQfKEWEb70BTw4j/4KKtZ0zgR0wykEgCtqR8t6+cGyDcDE0KPyTgX0MHsCygDRkR93ubfwhr8cmpeEhN/oV3tQI4hgeNL/JjTBd/Y4QQL1jeyP2BfxwHsMJKxZrX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lI8b+OSg; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-483770e0b25so3490665e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 05:17:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770988678; x=1771593478; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kb+Yauv/s6iAIjpMHMyZsZpTSzWDpVY1auP+Q51Tow4=;
        b=lI8b+OSguFd69RFL2k3cIDukU7eFxzJ0q/DBagWDm6gIFfU2nyBziDMTMPSC5tdqh6
         Llj9o6RxSmzu0vNXNf4WpoXwzyJ9OnOgkI77yDUtE7mwjsA0rbMK5fEalb7vLOEvuSzo
         RQ3YSpCj24cNTKHTElJmvekT8bzkyLD0Rdclc299L7bpJB2+CMnJooUC1tlHjwcvYIRa
         BLm6S/dQplnilw0BhRTLhX3cu+tsc/YPLwhAtHz+dFihHgzDGM8aoGNvJLREryEjTB+x
         T1RN94I/P1T2jJU27KiNhUM6f8s1q4JOKSxnVFuFcshBx3mG+/hOnY3iAuGBtlN+UUX9
         FlpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770988678; x=1771593478;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kb+Yauv/s6iAIjpMHMyZsZpTSzWDpVY1auP+Q51Tow4=;
        b=oiJK+IRA+jpDPW8C+jJmKn8dNJQW0E8i4vKQEHZXFaVcGGvDAhpM777M7ULIiDgHyu
         K9g9Q16t5b2iingM19KVeMyvSa+ZaZTyUCa6z7rPMTZ52hUqEDpENTE/O+9XCq9NnsNN
         XGxVfUdkelSOSbGT924c+GGdQVR9SBRYnweRzYGK8dqKKYZbcjmr5qsw3ZtB319GHNYJ
         OJ7bv9aKvHuo+mPFOl+hlc17l9R6p1duTx39lMH0B6pV2RjZKPZJS+cRATe7OIyEdYNV
         Vq9HjRbYK/V/hZa1KMQwyAezoLTL32rF7uEY24tpGHVoZLKLIhWXbSl5ccE8RYfI4xx/
         S2aw==
X-Gm-Message-State: AOJu0YxLQaxnR5s2tuF+UixIVT9KxyA2yEQu2tSuvCItCFL6nfvVA4wG
	b1Gq12TdTBKMiUkr2NvfrBsFeS8DawoiPaRF6+WclH1038QRtfZUhmZg
X-Gm-Gg: AZuq6aKEyxiWtP5XKNBdGJ5gOMkB0tsViJCpfrj2xLemOCjidtBSbxls5XKFXk6BWnb
	O/yq0LdDwFhz5eYQGDQ+NLdkFqoi5TtQwK1/Xz6ZbEbQRhp4JAzOZB0vgvpvdON2oImqjd0eBpk
	yKGzpb0mw0PsGffDXWC0RBYza+XQb/IPIy1eGilMF25H9YngEOz0GNJsr9fnFLFwkqkUkVeC+yq
	X9EAJVeVvXMA3OV0SZ07sHzR1NcJnj8hvfa78Cpvm9sNlSDWnfxtgZlN75J0m2rUZQyj01NCEte
	c79R82SX2q1uqYT9fOPcxKHiCjtd1ui38uSxnXSBnul6w65aTdbubgqb7wWE1MKX0kW4siZtPPK
	3yWGRrCQ6So7AYKZKl9ZvcZoC2tLQe3QxMcDOmclHu3EzQVjKDqnRPb5TAA/LfNZw6LobmYwRNC
	rXTZrBuC99gtLGtemOoMd9nMEvxSA89mP7h6Jkbb3J6H5RwOuJum2ZJJ8xjoUk3noXoZyNTL/5V
	2KFsTUkyrOZFHQIJiBQoQeyWYZyDt8zDnzVzA==
X-Received: by 2002:a05:600c:1547:b0:477:6d96:b3c8 with SMTP id 5b1f17b1804b1-48371085837mr42372955e9.23.1770988677560;
        Fri, 13 Feb 2026 05:17:57 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:ed1d:fb0d:baf6:e4d9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4836ff00332sm60942925e9.2.2026.02.13.05.17.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 05:17:57 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/2] arm64: dts: renesas: r9a09g0[77/87]: Fix CPG register region sizes
Date: Fri, 13 Feb 2026 13:17:40 +0000
Message-ID: <20260213131742.3606334-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-265356-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,renesas.com:email]
X-Rspamd-Queue-Id: 234C8136434
X-Rspamd-Action: no action

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

As per the RZ/T2H HW manual below regions are used for clock generation,
low power consumption, and reset control.
- 0x80280000 - 0x8028FFFF (64KB)
- 0x81280000 - 0x8128FFFF (64KB)

The CPG register regions in the RZ/T2H and RZ/N2H DTS files were
incorrectly sized. This patch updates them to match the actual hardware
specification, ensuring that the correct memory regions are mapped for
the clock controller.

Cheeers,
Prabhakar

Lad Prabhakar (2):
  arm64: dts: renesas: r9a09g077: Fix CPG register region sizes
  arm64: dts: renesas: r9a09g087: Fix CPG register region sizes

 arch/arm64/boot/dts/renesas/r9a09g077.dtsi | 4 ++--
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.53.0


