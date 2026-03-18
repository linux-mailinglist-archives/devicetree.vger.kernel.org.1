Return-Path: <devicetree+bounces-277204-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOHDFiufumkkZwIAu9opvQ
	(envelope-from <devicetree+bounces-277204-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:48:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C37092BBCE7
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:48:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A21A3082A58
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:45:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 525FF3D6CB4;
	Wed, 18 Mar 2026 12:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GKNM7hP+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8464A3D75A6
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773837918; cv=none; b=Y1KaqBLAGIt+5n45GoL8Q75TMUxlGT39USJaOds5CD0nP8ZjjZfK5VclZ+4uL/ie6wVh0PwJSuqkNmOS7av/sRw9rEUwt35ITYxbkY+1z3MK5yP/FRm1gxAe41wSxVtveqKApxVwPeTjoWLcErSUKgoCf3wVBSJLkPL6tdr9PYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773837918; c=relaxed/simple;
	bh=y/c7YJ4/WBiR1is5iKdiPia7zTBbuMjAOEBqoP1c5EM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YAEWgJeQH7uhg+gNdinCIEmUZAIc9fWLR3m83rXD/aFX3bFJ/sjrZRT8A2Yx2QwXsGGNNGoL8f96ChxoHDLlM5XBceF+MNaJVb5l7FqDJgNhXh0B1MZdBMvLEXbBWuMZVv5aXIZJaO8UkRNDKm2bcLFzOqtmGmVNQTppkEFXeaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GKNM7hP+; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4838c15e3cbso62987875e9.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773837911; x=1774442711; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yDiUi7ubyDY0I4Yajxf6etnCfMlRy3CfGIC+JcvXXq4=;
        b=GKNM7hP+oEv8kRCRntSmAPteez9fNj4jOJ9PsocWzGRJ7U6//qz5LyCyfWI/QadSMd
         GeQWYR1b0fKnbHbuly006OWdY5j5NQSxqKqUp/igy0rgDAByDyzNKsB30igR1tZnRdg8
         Um3+MQnk8jupI81kGWHHq3MK5pxTNr3KJAKNDgXR8J86Cw2tZKun0s+pDWDjwGc+bs+E
         6kU2cFDAWKxOHCSwair4+NMqtptdNnVpPiwwxMh8tZIf4mBaqwB6sHnbSlojTb70IWlH
         YXuF4qMdYyrqGh3TtRYicPKoGQfxi4f7t1rg/QTY5KJ77JSfFOF7DXpSuF6LRRl1dc8x
         4OKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773837911; x=1774442711;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yDiUi7ubyDY0I4Yajxf6etnCfMlRy3CfGIC+JcvXXq4=;
        b=JGN81m2udPzTx44cVEbI9tdUe5VHQ8RnJsCM1Zt7626MJdCPWOuATqNMciKXN1Ccri
         u+9fxsCHWBHIeV3MaV7gmzMPhS2uvjq8IrWx4Y/FpMNFmgw5NuJCSJsTyscDbcj4Rx7r
         xVnt4ZU9pAUm3s7LPfgc2U78DOyTPIG4eQwu3DCMtYtwabLeww549pBHsh3k+eoeOSo3
         Snh0qNGTpFYMYfXPkGBOK7A8mkS7waWmOFPxjEQzQbUNDUKTTLDNoXJ6vDmwrlzTPKq7
         ZWAyixN7ZTA5LPnu084bIT2q6mErfnFhF/42d09f/gQyWnqAeW+MUPwxJzMccsjfmVu1
         GveQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1ksFDGIXwRpvqxdxlXvbUPLJPrWx7cm03PMbiveza7E9XKbwjgHICJQtva0l7PUhvPiaU+ZFe59Ms@vger.kernel.org
X-Gm-Message-State: AOJu0YyZUOCpCA9kXkhz1napGmPlcwaVr45ktiMmhRrDygV8JLy16dG6
	xsxcciPX+1WtibiouVehL2gPhJ9xs6Hu0/LqL6ce0FWTZkBdc81iTOEC
X-Gm-Gg: ATEYQzwSBZo4fyOFFbZfNIXvV7gZ39VJSkdqHWGUXO3SAx9b/Wn0SGGogP9j68bwi78
	TWx7fsXpDpbiYDYiygCT5XJPHvGtErHOiF04iMsTwpOHLW6Ob0SuWW7V1EOqadGA1rxEhk1aT8k
	NhLvZXpR7tg8qIuLR2Qt/58UGfMY7JMJH4OsrlBpefr9ocG40lIuMQpn7awxLbGRsFTed/Qbb7G
	hFPE14Wdfkyjm4ikbBeLSq0kFtnzKEAQt+NdKLMN4RXilcE+dyLHhXfIJwWSMOg2RX8FOwNblR2
	fSa6Xe2uYMuZQfTHsbg6cvs8Jp50yzyT87Nzn3XRV0hVWayD3HEN03omNXbrL5TkRXWOL2JYGio
	iLUJaOHtfboaM53N+3udGQfaJdR9+m4r965kGsl/PVcWe7laAKXWfWtnMqV3VmkOJvV03Z1Amwr
	hxYNC7XP279KZW6Mjtbl2xWq03pZcitwv34N8kn6Q1rQMpEX0LduX1guBRlUaPjiv3lyEtJBSqw
	8IuF4IYrCZOkc2FM+Sv6hQnVbKEaNOoX3Z7eatZeX2qEYk=
X-Received: by 2002:a05:600c:1f95:b0:485:2f4a:6ae6 with SMTP id 5b1f17b1804b1-486f441fc07mr51141725e9.6.1773837910464;
        Wed, 18 Mar 2026 05:45:10 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:5f14:a98b:b4be:efbd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b518985f6sm7888162f8f.25.2026.03.18.05.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 05:45:09 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 3/5] PCI: rzg3s-host: Use shared reset controls for power domain resets
Date: Wed, 18 Mar 2026 12:44:48 +0000
Message-ID: <20260318124450.163471-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260318124450.163471-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260318124450.163471-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277204-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[bp.renesas.com,google.com,kernel.org,pengutronix.de,glider.be,gmail.com,sang-engineering.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,renesas.com];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bp.renesas.com:mid]
X-Rspamd-Queue-Id: C37092BBCE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Use shared reset controls for PCIe power resets to prepare for RZ/V2H(P)
support, where multiple PCIe channels share the same reset line.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/pci/controller/pcie-rzg3s-host.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-rzg3s-host.c b/drivers/pci/controller/pcie-rzg3s-host.c
index bfc210e696ed..c61e011f8302 100644
--- a/drivers/pci/controller/pcie-rzg3s-host.c
+++ b/drivers/pci/controller/pcie-rzg3s-host.c
@@ -1276,9 +1276,9 @@ static int rzg3s_pcie_resets_prepare_and_get(struct rzg3s_pcie_host *host)
 	for (i = 0; i < data->num_cfg_resets; i++)
 		host->cfg_resets[i].id = data->cfg_resets[i];
 
-	ret = devm_reset_control_bulk_get_exclusive(host->dev,
-						    data->num_power_resets,
-						    host->power_resets);
+	ret = devm_reset_control_bulk_get_shared(host->dev,
+						 data->num_power_resets,
+						 host->power_resets);
 	if (ret)
 		return ret;
 
-- 
2.53.0


