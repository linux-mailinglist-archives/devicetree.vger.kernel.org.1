Return-Path: <devicetree+bounces-277716-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBtwIDjcu2kmpQIAu9opvQ
	(envelope-from <devicetree+bounces-277716-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:21:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7B42CA36D
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:21:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3578B3050EFC
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:20:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D9663C945C;
	Thu, 19 Mar 2026 11:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ek0s9EOC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67134373C1B
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773919220; cv=none; b=J/kKyS2w3DvmhrOGxypgM84TbEr+J9lXll6YkKP9S44vKN8K2qJFmX04yKO9WZswoFpD20T6hIrZ9Oi6IOo4wcQZpQysCLNHvWYBTJ20gYqdY7iSr00jtFimW5o6Cs5ieRyRNkl2uL2+f6EpPBiULlNCh79724fbKsX0SrkChfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773919220; c=relaxed/simple;
	bh=UqzMcUCVsDzfN/fltuXdBAU8SeUCLIViT5qJR1YWqfY=;
	h=From:To:Cc:Subject:Date:Message-Id; b=AO3R1cHjaZWtdWdeldROyQGMDBuy1+vz9JLPWGPSeon17eYNjwFyaDjxKjN338YUBbhd09cHAh5X5mdzSw3V4yH0lZG9aCVdchvcPy9LErRzdRm5/EbkXhmLBxpmEaGIarn/YcBOQC6fi1J6jnTDJlh7ZzZf+DaflmPJg2kNmFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ek0s9EOC; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2ad9516a653so3323485ad.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773919219; x=1774524019; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=atnnDW+Ro2R1v7fBE5ZrpHOxIyh/prlH+2wXPFc8sDE=;
        b=ek0s9EOCoaf+fzUhwYnaIJfAgQyE/FPsAfPvAETnAwjjJAWDhMf+FrQWkApTjCXFiD
         Depy3RCWnWHeSAX/6YUySBgGIHvZLhnVE37Ecg55e2ru2NWILT7KSY3XpKqCaGZZvoTF
         YX/69NCrxv41OyHS1guR/bJGxkJc/NUrFPA66muUe1ekNGlpc6Jv9L3YN3lJ0BW8V/qa
         0cuYeAwPGUMIrDIk3YXqLa6yKeDk3YyNQADTaItwnOHOwGGe5wPTLFZHqT5aGmYBe3c0
         MtQOb4adhsXjP18pJH5wHnykyUUEkQeCekClfSlNY5YADdPdM4Xqhzo7q+tZSHurIRxX
         ApxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773919219; x=1774524019;
        h=message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=atnnDW+Ro2R1v7fBE5ZrpHOxIyh/prlH+2wXPFc8sDE=;
        b=KVIrLPOCIUplio5W54dZRysBfTLV8zHCehOEE36yyN1NaeReQ71zGWQVKSfrkdOfeK
         6ESjCZWRM1TA0l6A72aFSP+KXzqkzdmvFSe1vAUsvqgWza38vWMuk8Hq5rHLlgXTQRAu
         Px8S45pIJlzf4AKeNlT36L6pm9LVTLCp7b0k2PNDl48gIP+MWiB1I4jhTSQw5ifZ6isf
         TqNP2m8t7aU6qpHAid7b401smF4Pdq3OFFlih1bw/C8CkyBKdkQBKyjN2SGM3rABMsUF
         73ZyxCfkYKUs/AqbxNvVxjTgOe1EuabiNSvuQPyOPakCze1N5+IUWzupea3oc2CMYCED
         vJTA==
X-Forwarded-Encrypted: i=1; AJvYcCWXYFUCoCCshM7j/NS4MJ/GS1NjAv0c6Zrow2yRS5A9NIj/gyS/gXQDNAtsgXudCPypcONJj57Kresj@vger.kernel.org
X-Gm-Message-State: AOJu0YwnZk6ug3RmMsuZrdi8TxbgkMGa+P10I8o1CuBHa8pJiOAQVXpN
	AoEyGW2eqq/QGf0vSyEUSGa14U4fVW0WqYesEB7+ZaneZJe4JTv/K2dq
X-Gm-Gg: ATEYQzy8yxLM7BwDa33yxyACeSg+LmWk0ZP2gEw4b97XQ9TyDHPCQvIyjTFdCQ4uudU
	/kdeKf9vEphk0A9aVUHojInIT+HR72t3+lNEyTEMFtCzEsZ3aESbktsT7OZ+rhftcZRi4dgrQ8J
	aK39reFzCZJzN1jEOVltv8uPSteFW7QDgpKQMJ2No7ogoeytIhHComWK6N4/9wuGcX4hoMFUKAJ
	Jju3b2cNydPuaCqg1rSl558SPVC5l9p8tRpeop1WCI+rwGuy+TKAocSbkh/FkaMcBtNnzqlPiBj
	Vfziz0vJKP1xi3cz8koEC7o8yA9RgV3xXrDzb301q9nN2q3MhTLA/07lJzQgda5vClIdNXdpyhx
	/w8OaMBPdP/omgxB3afSlgPRIYQvFFH3fulQgGFDe0dlgQsTnPtF38eR5X5jSK5IzRoTm58FlNn
	CQ7AaygUiVAcwlpGm1h8cYaMwjKCvyVPYG9Gww7L9Wu9TEtNWO3GQ063gTgjNm4mo=
X-Received: by 2002:a17:902:e752:b0:2b0:5548:7d80 with SMTP id d9443c01a7336-2b06e394aa8mr69062695ad.27.1773919218746;
        Thu, 19 Mar 2026 04:20:18 -0700 (PDT)
Received: from ubuntu.localdomain ([27.217.83.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e4199easm76524585ad.5.2026.03.19.04.20.15
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2026 04:20:18 -0700 (PDT)
From: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
To: linux@roeck-us.net
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	zaixiang.xu.dev@gmail.com
Subject: [PATCH 0/3] hwmon: (sht3x) Add support for GXCAS GXHT30
Date: Thu, 19 Mar 2026 19:19:43 +0800
Message-Id: <1773919186-17515-1-git-send-email-zaixiang.xu.dev@gmail.com>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FROM_NEQ_ENVFROM(0.00)[zaixiangxudev@gmail.com,devicetree@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	TAGGED_FROM(0.00)[bounces-277716-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.950];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3C7B42CA36D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds support for the GXCAS GXHT30 humidity and temperature
sensor. The GXHT30 is software compatible with the Sensirion SHT3x
series, using the same I2C command set and conversion formulas.

Since the SHT3x series was previously undocumented in the kernel's
DT binding schemas, this series also introduces the missing
sensirion,sht3x.yaml binding file.

Zaixiang Xu (3):
  dt-bindings: vendor-prefixes: Add GXCAS Technology
  dt-bindings: hwmon: Add Sensirion SHT3x and GXCAS GXHT30
  hwmon: (sht3x) Add support for GXCAS GXHT30

 Documentation/devicetree/bindings/hwmon/sensirion,sht3x.yaml | 44 ++++++++++++++++++++
 Documentation/devicetree/bindings/vendor-prefixes.yaml       |  2 +
 drivers/hwmon/sht3x.c                                        | 16 +++++++-
 3 files changed, 61 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/sensirion,sht3x.yaml

-- 
2.34.1


