Return-Path: <devicetree+bounces-264727-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJhlEqpZjGm9lQAAu9opvQ
	(envelope-from <devicetree+bounces-264727-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:27:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEA21234EC
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:27:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4BA11301DBBB
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF99E368275;
	Wed, 11 Feb 2026 10:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="lPsbcQDc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293373563C7
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770805670; cv=none; b=lyDlPzts9Gin+sHy8pla8ggMe1HD/MTrOch8yqXADNPTsmVlXlCZuIkYf9XqIlYjp4cccthHpQVI0URoVzxtjQpcuzDEElzmJ9D+TyR0o4MQVDmHrBCpAmkhLBTyYpgOefzRN8olSHjE4V/UWkqkCPZZBz6vXxF4wcTdH6DKq+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770805670; c=relaxed/simple;
	bh=lrAhY6+QpfzhR3CUKyt42tW2guO/yHYDHCPWvOuysKA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ug+G1bcyIMmP/TkHgReALli62i5MDCCFLgqlbHAFN/BT0KhYNvOwTmM4oaM21CoUNeR49zvlSWghkaymtdw3wc7XMKxmfhtI8PdXEji6iKf9spAzjV8ClHF3aqK5BcOoq/IKB5J9AmzNU4DLzSZuYMg2hFXOrSiT7YjlgD8BanQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=lPsbcQDc; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b885e8c6700so1070849066b.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:27:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1770805667; x=1771410467; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cFvWbdBwgEcUXjI4yzNcU+BV58r6gnRAccKEixMkUnA=;
        b=lPsbcQDcxLpMLtIOHckzfG+LFwrmehFFFmt8BWQsBqx2gV8XNm4b/7AklOEPMfwhAR
         Zkov3bKyIC4OgVQBLq259A9jJDaaHf1aRDhMFrQ2oKapRvREFlice7OOlFZbbBjtpWkQ
         dSHw+pr7LHVlnPwoxLtwo5RIRHV/NHqQL+b4C8k35wpZcg112o3BmzrHxNcn/QWDWtVW
         EcK5qDbh5dLk0kji3jjSWUTr+NDHdJu0CArbt4ckmtVGr4nAXYWcSjaVMcpv2GDgTFc5
         CxCir7JOJcE6hVu1K8wCwmGCxODrTM7sAemFrwC/RsVBpQKD9gKXNE6Zj044ZwqMdPmV
         OTcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770805667; x=1771410467;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cFvWbdBwgEcUXjI4yzNcU+BV58r6gnRAccKEixMkUnA=;
        b=Vn2KmlBK5tsIIuS84n7uruI/UPfjdR5UB9HQ1fvoMaf1fTGQ9jQTud4zulttsQRYLG
         eFirvAt2sliJ45z43SefkxqC6scxmw84bZngU2Vq8Z6go+6j98i3CRFpz892+HTr4g8p
         lU3YphR66aIzmxo1uZK3Cc5wT8I+AMQl6FFwjHyj2HqgGtJlAp5yMwTGJtVfD9LnbDnf
         G26CLpQuxNDfFc6LUoGTotoL6kSIZXpw5ETi/DIbCWtfzx0B1rWsUklrX47xVvve6WM6
         icAGvuJEgHRj2jjdQp1IJQUfHOrXdgaR43xMHfMr7gPVOaoOUAYgrxQZGOYvq8pwUGVr
         qlIA==
X-Forwarded-Encrypted: i=1; AJvYcCWjuO3diE7cFg3Jc4g3rYzCiibez4lsExDpLLEe+9SHaP/nPq8RmyT3KF/4dOmxktqPXQy/+xUwFkw7@vger.kernel.org
X-Gm-Message-State: AOJu0YzJ6l41tcgVu7h78eaVEGaI5u1uqjcgEsmuJYfHE3eI3O/TG/Lc
	+De+O1c7Rf7otYbobhpWOfF3yOnMJdgXIYugRpfSHhfbimWU2eV0T7ExbqKtTLwkUu5d3Ikari3
	6V1fh
X-Gm-Gg: AZuq6aLiCy7yIXUtYRghFI/fX042fibbIpmO3C/KjYd5BIVLUy63XJmUxJaGJxXMdzH
	7HGpQULbVijOazI+fF4C1JiNcPJ+su1qyyJHhqfX9+an+zOwGEuwLuvVCMqAFaTIInXCIPcL7ez
	1Gv4zqxwCL4IJqHMxuxRqS7nPbvUrnxTipPOipCsEgx5qUsz2pqxXt2rES2kDCXGEHrmUMVuI5X
	hF2oLs/aEFm5NuHXiHPpjPi/c/vF0KFfFcHFQbMTqDXnWVLzytjD22qBHO/tN0+8P0JsK5mOI8j
	qlwqxP7v0z1us6/uxROtmSyDOWlO+4IsQYYMZVOL6JXgv4Zk73oaXDb88osU+LdFp3SIWSMLMJI
	UNDuL2Q5PLS/EMs8xdWnQ0lGyMwv2aOqwaGPjD4cpnM8LXC6XIri78i2ez9+JXzJt49yWBCXq+v
	+fL3IKYEzojclqraLFJEPjhZ+UEl3MRKEq1n2NtFoQ20BNcjJiBSqklA5qxy/KuWcj37SqSGdGp
	xV5
X-Received: by 2002:a17:907:9289:b0:b73:210a:44e with SMTP id a640c23a62f3a-b8f717080ddmr71193766b.30.1770805667335;
        Wed, 11 Feb 2026 02:27:47 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6ec54925sm44296266b.53.2026.02.11.02.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 02:27:47 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/3] Bitmask logic fix and firmware-name support for
 AW88261 amplifier driver
Date: Wed, 11 Feb 2026 11:27:31 +0100
Message-Id: <20260211-aw88261-fwname-v1-0-e24e833a019d@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MQQqAIBBA0avErBOcIcy6SrQQHWsWWShUEN09a
 fkW/z9QOAsXGJsHMp9SZE8V2DbgV5cWVhKqgTQZTYjKXdaSQRWv5DZWdvCEwfih6w3U6Mgc5f6
 H0/y+H00BSDpgAAAA
X-Change-ID: 20260211-aw88261-fwname-89c21d6c9476
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Weidong Wang <wangweidong.a@awinic.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandre Ferrieux <alexandre.ferrieux@orange.com>, 
 Bhushan Shah <bhushan.shah@machinesoul.in>, 
 Bharadwaj Raju <bharadwaj.raju@machinesoul.in>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770805666; l=862;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=lrAhY6+QpfzhR3CUKyt42tW2guO/yHYDHCPWvOuysKA=;
 b=QZwG9Mo9pYOwFUON1wrF/HQ3xQNMAkT59lgRa+SNZsrXpKDqJbYbyB73rVA+fz8cdpPvU1Mnv
 K95/u6alG3BAx9fakuVcXvkqbrUU0WmB1bKzHtYfoye7OuBD++7u8of
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264727-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,perex.cz,suse.com,awinic.com,orange.com,machinesoul.in];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[fairphone.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9CEA21234EC
X-Rspamd-Action: no action

First a patch which fixes a logic error in the aw88261 driver. And then
we add "firmware-name" support for that driver to support loading
the device-specific firmware properly.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Alexandre Ferrieux (1):
      ASoC: codecs: aw88261: Fix erroneous bitmask logic in Awinic init

Luca Weiss (2):
      ASoC: dt-bindings: awinic,aw88395: Document firmware-name property
      ASoC: codecs: aw88261: Add firmware-name support

 .../devicetree/bindings/sound/awinic,aw88395.yaml        |  4 ++++
 sound/soc/codecs/aw88261.c                               | 16 +++++++++++-----
 2 files changed, 15 insertions(+), 5 deletions(-)
---
base-commit: 6ca87498ba32522a6c10914add7beb2d9a2eb558
change-id: 20260211-aw88261-fwname-89c21d6c9476

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


