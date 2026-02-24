Return-Path: <devicetree+bounces-267938-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GE7qMeS5nWnERQQAu9opvQ
	(envelope-from <devicetree+bounces-267938-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:47:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 402F4188A22
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:47:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 065D830333C7
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:46:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1735036CE18;
	Tue, 24 Feb 2026 14:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TF2tKlxx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E605E2264AB
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771944418; cv=none; b=j220ylY8ynjOOjzhWNs14c5miSxMDh+4jnXE9yQRcOD5Cd8DtHqqoLcQysd86ZYtsN05ztAiqausLzPrstS8hhXQc2SfiGXseq5hBnDM8n6IcbqPRDH6Qu6qWLqfkTNDggTfOmd5zjasWoDkh3cw05vhqEf6mz/APEp5Z2FsN9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771944418; c=relaxed/simple;
	bh=64SeaKkHpgz6BTMaEIKRJbmyPzVmVHJ6zHaCVXBHLgw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ZHzeDyLaISyAlivc3HYDLZapXxWtWuqH3GtbUFjp8poUUIc0pDfRxcR948ADi7ZkCgfrL9WJVfBkwm+8qLkB7z/CwLvzbr7ls/re4todxS3rtr49pRReRaLhTe3mleuuPvYiz4qSAOdkAzHELzmO1D6P9SMvxHHEzTW5M9O7QQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TF2tKlxx; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-824ba8f0acaso3224137b3a.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:46:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771944416; x=1772549216; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lZ0XT8CClTVl4GH1aholNqdl4xTunfuNXXEQGvRxkwg=;
        b=TF2tKlxxn9yBlWgUTZFjQcSbeAN6Uty1IWfTw89SCiFERivnafozGSm1nhKXJCNdEO
         epJEbEBiRhMpahuaGNtGA9lVokeI5XvY4miy/iAxk8Jl9M1lVRlthlO3TEQcCBC1W9/l
         2aCvUYbQ/b3NMoL0fJK4rHWpq6m62OCu4BApjmlWRMD/Cqbr5e0Phk/l4sDHyt/6WYkx
         AXwKx+eB39t1TvFNd9MYt6oGpH5XJc/031v7LX7TCR9zgnireaI1fNo2GTwp0Y1sncqi
         5Ot1IUEebbgXvZ6rwTWwZ81Hp8dPgZtD9XraXQUTG+inOmZpVVTmrd0IbgReO+3+OMSu
         X1Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771944416; x=1772549216;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lZ0XT8CClTVl4GH1aholNqdl4xTunfuNXXEQGvRxkwg=;
        b=S1ERypaUXQ13LUxNVLqIm+n1ct+MwYCTy3zlQA40PHhXt0BOTOMF9BebhzW2rzaqP/
         uhv1AOF04H4y1r2VJ9HxBIqWJOL3B5xlYHgeEAg0nyHS5EF1b76q5sJtCGa3DIl/YMoi
         5RNYwLnVNgc4XWilMuNrgAcFxwHMcNbmTE6m1qCPfjTAo+VljVrnFjN+/D9ADGDXnXRa
         aGhFepjcujSZ73AafVu7RQ2jldR3tJU7QmsxDV86W66r+Ghxxj1LBlC/WWwG9nv/ptJW
         RfakO47Ob00NowLMGobifmzJRrYIKk2hrgBH2pKnF6s94EX/3/quoS+cnizZCmW52LZY
         d6FA==
X-Gm-Message-State: AOJu0YwBziAJbXQiKTg+JnHVQT8maIpqaigYtvZjVlYsXjdad7pRAi2W
	nvLmOFE168pPyO0HbCcpXHkrgZTUVMvchNw7L25MEuiNjz/CFRr41Ykp
X-Gm-Gg: ATEYQzzgMK+BKTCKPzi2U63s0Nso2uaHCqUNgJ6THnYjkxLLFvCNS/VT9MFehof1DVm
	BXnhdmlDsuc7hGyOJhSA5RXlFXOLpRlIJEw+uXf5pGyWYNFd7qofmdRBiP5opDWsp85zO1p2pBt
	s9MoNZN0/finzGALyS54wQe/hHfQqmjTA05fRGsDo6RY8vRSbYtM4KEAJo2Yl2ka3Kt2NLisRMW
	s6afQlbs1UEyQJ8rgFCQYuGp9pHt+5b0DTAy7yzdN2P/nvjOpiSq4aECgPvFhtbeJbijypZ/qOC
	ZeV74I6gUzv9WjsPKgADxXJpcVLziccwgThZ1Mgkv/ChkUl+Lb0rawAG4EloxPhHgJO/QV6xMjC
	vPkTzeQ0DpBRFsdzorwpzP+30uVDFs6h/5zInBO3eKFDTZynJWEVYSVnu/E163eooc9s+vpN5U1
	XQOwuPM2GR1MEm02+2LX25brCgdvuFB+Px6r0uvzi9QB38tmkCoLuAJqvHsNM=
X-Received: by 2002:a05:6a00:3a04:b0:81f:45a2:cbda with SMTP id d2e1a72fcca58-826daa8a1bfmr8436121b3a.66.1771944416190;
        Tue, 24 Feb 2026 06:46:56 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.64.105])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-826dd64367bsm11149895b3a.4.2026.02.24.06.46.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 06:46:55 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Subject: [PATCH v2 0/5] dt-bindings: Microchip/Atmel AT91/SAMA system
 peripherals: convert to YAML
Date: Tue, 24 Feb 2026 14:46:45 +0000
Message-Id: <20260224-arm-microchip-v2-0-8bedacd2cdcb@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANW5nWkC/13MQQrCMBCF4auUWRuZRNOqK+8hXYTp2AyYpiRSl
 JK7G+vO5f/gfStkTsIZLs0KiRfJEqcaZtcAeTeNrGSoDQZNi9qclEtBBaEUycusCAmttmiO3EL
 9zInv8tq8W1/bS37G9N74RX/Xn2R09yctWqFybIczdqyRD9cxOHnsKQboSykfhdGq+6oAAAA=
X-Change-ID: 20260128-arm-microchip-c0c0515024e6
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Claudiu Beznea <claudiu@tuxon.dev>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267938-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 402F4188A22
X-Rspamd-Action: no action

Convert various legacy .txt bindings for Microchip (formerly Atmel) AT91/SAMA
family system peripherals to proper YAML schemas. This includes:

- CHIPID (SoC ID register block)
- PIT (Period Interval Timer, old style)
- PIT64B (64-bit Period Interval Timer, newer parts)
- ST (System Timer, including watchdog subnode)
- RAMC/SDRAMC/DDRAMC/UDDRC (SDRAM/DDR memory controller

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
Changes in v2:
- Change email for maintainers.
- microchip,sam9x60-pit64b: modify compatible and clock-names in properties.  
- Link to v1: https://lore.kernel.org/r/20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com

---
Akhila YS (5):
      dt-bindings: arm: microchip,sama7g5-chipid : convert to DT schema
      dt-bindings: arm: atmel,at91sam9260-pit: convert to DT schema
      dt-bindings: arm: microchip,sam9x60-pit64b : convert to DT schema
      dt-bindings: arm: atmel,at91rm9200-st: convert to DT schema
      dt-bindings: arm: atmel,at91rm9200-sdramc: convert to DT schema

 .../bindings/arm/atmel,at91rm9200-sdramc.yaml      | 67 +++++++++++++++++++++
 .../bindings/arm/atmel,at91rm9200-st.yaml          | 65 +++++++++++++++++++++
 .../bindings/arm/atmel,at91sam9260-pit.yaml        | 49 ++++++++++++++++
 .../devicetree/bindings/arm/atmel-sysregs.txt      | 48 ---------------
 .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 68 ++++++++++++++++++++++
 .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41 +++++++++++++
 6 files changed, 290 insertions(+), 48 deletions(-)
---
base-commit: ca3a02fda4da8e2c1cb6baee5d72352e9e2cfaea
change-id: 20260128-arm-microchip-c0c0515024e6

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


