Return-Path: <devicetree+bounces-261226-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBRSFrmyfGmbOQIAu9opvQ
	(envelope-from <devicetree+bounces-261226-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:31:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C6102BB0AA
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:31:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ECE9B301DE0B
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:30:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9C7C2FFDE6;
	Fri, 30 Jan 2026 13:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FnJi6NDc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE6B2E6CD3
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769779847; cv=none; b=UaHP+fAFRxFpOoApdjJO0MKmschhjCkPMT000ObX2nJPAUDdTTEN5X80q/xAm4ikAZGnPtQEfJnnTjahlBc4Yqu0iIi3x7FXqb7PVuskSkZHvheDYGBXnf1E3M3bT0jObLxrvFOGVZgTimRm780hvrQxNgbKjJ34B1XDuJeFwwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769779847; c=relaxed/simple;
	bh=d95vyHE5VFHsMR0/siOYn9RQj1yoKkTPxH6ixL5nFHU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=skvtq8LQlcaEhY5yYfOI3q1u+mff5e5H9wX6/EBfoH9lSebKQ1zcsLbKfla4B84U2M3UcD55Q+W72BSqnjnhhhItmlq1nMXrCdOXZtntptT8X5UPmHU59ZTHu05YBsc2zMqplckSfg/jUsAId58YPA62W9DSp/Pg8CxYP4SOp64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FnJi6NDc; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-658cc45847cso3151277a12.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 05:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769779845; x=1770384645; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0EdujWQoBAn/IwVhOEaFp9E9St0lYVYzZ1tCazrBN34=;
        b=FnJi6NDc9S0zErxFYXoUhF+Dv4fxgfl6rC8Wr34c3Cf7JXREXBMk9O/6oHa4Qhp3OH
         /4Qx0lLd2h3KrsK1rW0gylLk+wmm2AwIBDXuBM6dfxCwCCXIeJn/umYlGTclc3efPkMj
         eh/Twi82Qdkzjzaa2yhH0z6UvX1+F8p8BRoNLzFWXLidpzURcSKsjE6RrbUv39N6oLt0
         hlvk/kV5WVev4tlbPpoTBbObRirr5zmp3h+C+4dk1t7HyAWJQ9lfqhxo4rS1i/Bo2uwF
         +LVaUzeFXcVZeFagybIPLDmYX7qvtib/wB69539aHPZMPPQ0w8mw/3Q/o0OQ2UvkjSZC
         Li+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769779845; x=1770384645;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0EdujWQoBAn/IwVhOEaFp9E9St0lYVYzZ1tCazrBN34=;
        b=YUSxjqMY9bfX3IUcvjlRVUrd+L0ddr249s+9YcGfddZfW/a/TF2HJKypAiu5KFl/04
         1u/uBazzf/SuWGvbX1G/RbT1YCixjTPhFMFz4ZdeKAol5noUccuk5C/ZqaiYLs4vtYT3
         g0+32Dt9dQBW/txyUg6L1iT4XBqAHsdq5R7+rkhfzd2500InDZwCTMYRI/ADbZTYpno8
         2u3ZFXBYNrHpvNOF6kkIt9d56p4ljISCZAhrNOywQ9SX4sN5udu5+dYYxWrTiPNEBjj6
         a9KcERxf4hgIv0Rv5HP+jBzfIiFqAI5i3O7DBHVAD2GBzZ+iDM1JVS93VxVqHC2UzbQ/
         ttrg==
X-Forwarded-Encrypted: i=1; AJvYcCUti5uiH8fsxVGOOtjOAGxV2pPSw64xiV9i8uvAA2YxK7tebJDcUTwzM16oZtMPLjant0YIoyyF4/qa@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6d4LJGFHFXE0DT9ncxo0KZLHUEYWk3Bdj4pAOZavnP/WS0pEr
	Z/0CefTXJcUoH80ifyNM1g7yjYO1HDZAmJSG4PpoOP8zSfIOAYOiXHnEXb/HUg==
X-Gm-Gg: AZuq6aL7iqEfIF7Vr4MrWTZdQ0S+doiVPKYHqpgichzzFGDPd48wkNLabn+G46uNaM7
	8TPX4z3aVOEjHCDkWz5nwW/b1D5gukWw3dzoZBKm683oJExwskmuaqcJVsVJKAJS9gs3BKsGA4s
	8AcJvpHytygf4TcxQMaX+RfiSXO21MMnuueAPUSq8+pWJ+kpTtODILFp4QyUF9uZrcAI3imhiL+
	/LmrWjTfoXavYhJT6YbMUFUxxWZy047nH+3qkzGgs57UasM/AAOckba3CgHF9I8rrzd6N8fMzmR
	jdBfbpuM2XVHbGc6l1IGpOTy7M8NRJW88UNQXQLDI8o8dqeaK7nF19FbA53iAucRaLsbyrNWZng
	5blnOV5rWU0jE4JT3E1Jhmar2xIg6WhNbi/88MfLphbbad5E9gMH96VdDqS56FRiRpIiNehUvR9
	2kVQIQQD0+NUD+viaxaFF6FFja2zFushUvDUU=
X-Received: by 2002:a17:907:7212:b0:b87:daee:a6c4 with SMTP id a640c23a62f3a-b8dff6846admr145665366b.36.1769773667338;
        Fri, 30 Jan 2026 03:47:47 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:bd64:2984:fe71:7633])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8de3046abasm243751266b.2.2026.01.30.03.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 03:47:47 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Richard Cochran <richardcochran@gmail.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	netdev@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH net-next v2 0/2] Add support for Renesas RZ/G3L GBETH
Date: Fri, 30 Jan 2026 11:47:38 +0000
Message-ID: <20260130114744.252533-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261226-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,st.com,synopsys.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org,gmail.com];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,glider.be,foss.st.com,bp.renesas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email]
X-Rspamd-Queue-Id: C6102BB0AA
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

The Renesas RZ/G3L GBETH IP uses Synopsys DesignWare MAC version 5.30
compared to other Renesas SoC such as RZ/V2H that use MAC version 5.20.

The RZ/G3L GBETH requires an extra clock compared to RZ/G3E and has pps
interrupts. Document the Renesas RZ/G3L GBETH IP in bindings and enable
the Gigabit Ethernet Interface (GBETH0) populated on the RZ/G3L SMARC
EVK. The eth1, pincontrol definitions and hotplug support will be added
later.

v1->v2:
 * Separated ethernet patches from series [1]
 * Collected tag for binding patch

[1] https://lore.kernel.org/all/20260128125850.425264-1-biju.das.jz@bp.renesas.com/

Biju Das (2):
  dt-bindings: net: renesas,rzv2h-gbeth: Document Renesas RZ/G3L SoC
  net: stmmac: dwmac-renesas-gbeth: Add support for RZ/G3L SoC

 .../bindings/net/renesas,rzv2h-gbeth.yaml     | 77 ++++++++++++++++---
 .../devicetree/bindings/net/snps,dwmac.yaml   |  3 +
 .../stmicro/stmmac/dwmac-renesas-gbeth.c      |  1 +
 3 files changed, 70 insertions(+), 11 deletions(-)

-- 
2.43.0


