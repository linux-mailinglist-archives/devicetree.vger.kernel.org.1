Return-Path: <devicetree+bounces-273750-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBvVKQSOsGkukgIAu9opvQ
	(envelope-from <devicetree+bounces-273750-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 22:32:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC7425852C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 22:32:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5941D3210478
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 298A13EDACC;
	Tue, 10 Mar 2026 21:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IP7VIMYA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C463ECBC9
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 21:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773178190; cv=none; b=FzMSS+vPXhMaT0Z0pcFKGeIpiNNXQObeo1s1b2xtv4dS8PzvzTIAodbhHdlOD2CUDhZPrZRvfWApu8vD+nGcgzPbP+yb9JlTShlR/kyFDQiSRI0TGcKsfNGeE6ioRX3pNTCrdPcR97YpV5O8xhW8QT71OtMmQ9M5ljgEmDzqOVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773178190; c=relaxed/simple;
	bh=wOWRM0fj0zIF9OgPiw3EEjqlB/nXAs3pLmqMvkzDdWI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EC/un6yT+WTw8+9w+8aON8/QlYfLDGoNUpKB8i7/5sBjOjwOHRcV3+YLu4nZmFLEtFNQebqFpnOoNb0yIPWlve9m4zbMRNul7hz/Z3OqbQyjeNC7nrgephqDDvqORhe7lcug+QKptwgn3RyG6+ZyyDXgYYCKgECOJ8qgGC+M4eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IP7VIMYA; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-439c4bde55cso5201659f8f.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773178186; x=1773782986; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8n3BJ6hNVZFJuiNqjhI2T3Os99WW4Q8B5O2W84Ma2IY=;
        b=IP7VIMYAgmbZrhKU3QbhSECnJ9grysxAwb96kKgEeUNRbAoAz4B8csp/qI61UgYn7W
         Dv2W0fBH3IeyW6p2Nei9tLC90CKdFc1a6EOQ5g+Dh5gF8lVcubhZqRrVVhDEe/XgyJJA
         h8K9hEsh+spEsK8nFvGrZ+KZ/K3S2uAwYkpj/Lv6kmM0BGfaEEEqbsPpam+WlPL03fVM
         ZHcV2QRQEDm+WnVb39Tx0Dyud08Y/sHfMqUg9H4xRUoyHCJZUetZMZbGRCsIen4D77Or
         WPIyrqoLls24OYiGIAIjlKPXw517Az4QSIaioi5TVE1+WXqLAeUoUogHHh6fA2673NJJ
         8rLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773178186; x=1773782986;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8n3BJ6hNVZFJuiNqjhI2T3Os99WW4Q8B5O2W84Ma2IY=;
        b=g1WfsqVgX0W3Re5LP1MCBmaHjk5EarBfPu/Fm/0LCYSsENU2oSDIGtjnzAdGjFly6r
         /KDw86DS5qiaOCde5GGMO+j9bTqcC93RQBiFB8pr4jLie9rvvojBvRKrdQzi2IT8wEr6
         l9Wm+sddDKKBtBZIRjCInM/pCaTzsM5kOTLpz4ULjdVan6Sh+s33ZWWSKY019OOv8N56
         A33ku7ljLOck2/9O1jvMUu9Qek81dnl1JyIo/NgAh0O2a99Kbz+YlT2PfWqLdHux3mVL
         wZljE1EyDjvbp5AINTR8ZNqA93jHBJ6T+YZ0S1bCqnOpsCQfTFHhljk4er6qjmXDuovJ
         JPIg==
X-Forwarded-Encrypted: i=1; AJvYcCVjeNM/4KNuVPIMDdKrUX/vP+9RgD4tVk5NNycX9xU0RgKxOqgDKcXJr1Slbc7PRTuDzDz12bBheVns@vger.kernel.org
X-Gm-Message-State: AOJu0YxYWmzi++Y/yZqs2fsMvCcKEKiqE1KJqexLtPYhcvj7PEmjtltc
	CwqEuUNim+Mh317ZHfb/AfQy5n8AYaBISOU+3qiId2Xgc+jv+A7AtNA7
X-Gm-Gg: ATEYQzxht40I5no/uq/x9Gs8564O+khMrCumaitw/WsczPDam2keoZ1hS5oAX9iG3nx
	SoV2bhe1mBIKfL/3CL87cy6d4I49En+cRZOZ9JcfKRXTiqr4QeGcj2/Yqrrm+xPhs7Ff3qFQPFT
	bvR67KdHp1rnc53cIoK6s2FE/kMU13xB4IK8ZNd1Rl0EThygwYJqbET1bqRA7b4lREmiTK6toy5
	jD39z0KQO6fgsuwR2HWSvD3NE7Buj4ZeQdXkSVeyT6jRMsm1iYg/P3AijUoygyH/iw7PKgP8KUO
	j2EPoi7rzFQH+5Fr3G2+n+Z5n2I8hOLDqUBBOH28NQ7r4M4Az9d6Jfa26sxitTAHi3Wng0ZdEnx
	6zkjcU+/5ikmIq7qjnMBQFdbmq323KdTZkDMaFwq+BhHEdWl2pOKMCsImPC6TrAGlu8UXypqRzu
	cVbh5CTDhL7b7UZ1M83bnfLeGGU8T3xcQwGRTZsu8bTzkPTDwg2z8PLmOVdZlPXzJ43Bhqh7Dmq
	UE0d4N2Gb0xTkMLM4pg7UXZF6g01jx35JbN9Q==
X-Received: by 2002:a05:600c:8710:b0:485:3f72:3230 with SMTP id 5b1f17b1804b1-4854b0d2917mr4320505e9.15.1773178186201;
        Tue, 10 Mar 2026 14:29:46 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:82df:eef6:d0c5:70a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439f818d37fsm1247104f8f.6.2026.03.10.14.29.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 14:29:45 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/3] Add xSPI support for RZ/T2H and RZ/N2H SoCs
Date: Tue, 10 Mar 2026 21:29:24 +0000
Message-ID: <20260310212927.3372410-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 2DC7425852C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273750-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,gmail.com,bp.renesas.com,sang-engineering.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,renesas.com,bp.renesas.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,renesas.com:email]
X-Rspamd-Action: no action

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

Add support for the xSPI (Extended SPI) Interface on Renesas RZ/T2H and
RZ/N2H SoCs. The xSPI IP on these SoCs is closely related to that found
on the RZ/G3E SoC with some register bit differences in the configuration
registers.

Cheers,
Prabhakar

Lad Prabhakar (3):
  dt-bindings: memory: renesas,rzg3e-xspi: Add RZ/T2H and RZ/N2H support
  memory: renesas-rpc-if: Fix duplicate device name on multi-instance
    platforms
  memory: renesas-rpc-if: Add support for RZ/T2H SoC

 .../renesas,rzg3e-xspi.yaml                   | 60 +++++++++++++++----
 drivers/memory/renesas-rpc-if.c               |  3 +-
 2 files changed, 51 insertions(+), 12 deletions(-)

-- 
2.53.0


