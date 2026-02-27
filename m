Return-Path: <devicetree+bounces-269415-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBpSMAD6oWlkyAQAu9opvQ
	(envelope-from <devicetree+bounces-269415-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:09:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEC81BD402
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A02E33078A31
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 20:09:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2253472792;
	Fri, 27 Feb 2026 20:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PZhXKhfx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 823D92D73BC
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772222949; cv=none; b=h9b2nRcYyIXxmTxXIadSb8vDXudBfZVHW0YPZWODnTPtagyjLYKAGAUGZEADDIg3QjBNebgCPUrFQn6MkYX531zQTtE8Vryn6RM1K86hstwkraidd+3e6UnlPjHPlZp8oRIS60hce242bHSdQj4PKE5MUxykXXmRPQlLOk2p25g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772222949; c=relaxed/simple;
	bh=rMhJdt8IxJAWNFTx24wNqpH2Ye7R9gzSa0MlyRRUKzI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hLd7boTVuR7u7JecUc0l8LDZMrm6kq+q3jSHpHQMy+Jqtxk72EZXzipaw4A61jaIdC64gDy867SBsp0Uvrj5vNMkYCvBI/r313OvcMJ6aY43Hw1J6YRTuNJpf6CTzg0a2rD7eeDQe86OQCNVCIeRUUhOvCsoQv87ggCXbdH4h38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PZhXKhfx; arc=none smtp.client-ip=209.85.222.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-94dddb3c3f0so708830241.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:09:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772222947; x=1772827747; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=35L099EC72Osu0PGPiVEZCVNp0VZX/D582fSy7pRUEs=;
        b=PZhXKhfxipoOEzvHju4OUz4oOtmdRtIWqy/9UOCm86mjgBiMBogs/fReN+SDBzTO1M
         TWUlgPOL4JD3H+dG3t2mo4s2FA74pH/dEUHttHPv3b3PwCstZCOkN2GerDC4QUnrC7tw
         DnXpfohpd7SfKV4AsoC1Z2kZ31rD1QT28t5YvfzYLRTECCwC19TY+5V8HKG8r9PM0w9S
         ozEqSkUyRYvyTXMyUGz2NBnWS8KYUJqVLLvsiinCpvPjxSMqrGy2xUIO4V00uHnq5ROI
         Zx8bo824fKEuYeYiOg68peFDuab2ieGhzS40PoZ4DbcF+rrrTLJ7lwYk+VBOkMZ0au+b
         AA4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772222947; x=1772827747;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=35L099EC72Osu0PGPiVEZCVNp0VZX/D582fSy7pRUEs=;
        b=SK5hhvEmtnGGmwqbqMNiVnei2elzyuvid2+JaMwbKiI9LJPuOkRiAWcI/xsH9RCWbC
         0HgMFfhZqoNt6a3+riVED/A4r2621jY9BC3OBhfS0Un9RJPcUO7lmazsIJrLNj/CLtjI
         Z2lnzuCrkKlr+fdM01TATsSc8P9ByIIav7KiZooq2Ga/L5fY448k0UEbPBH4Fad+0h2f
         hFFWTUty2ghaYXF+RbPekmt4p7iLw1gsELiew2r8dB/hKOIZpUIJRXfuoDOZUjXuVnm8
         Uk4YilNzOx5n05hoE8jJGAHYWwERZdSXvHn0BM7HogI5ySSmAMel2e+ApwPgjK0xTziZ
         T5VQ==
X-Gm-Message-State: AOJu0Yx2YecyGitkFiEsysHDaBDqHJhG1a7uVe392Ew71bkI0blndsBB
	6jM9SaXK2Vxn3eWQb7Pd6Vsgv2haCOdb5SDp93D8Od9Qb3uBeBDeRTfQ
X-Gm-Gg: ATEYQzwGEGV+OKBjImH8DKWi8WcDx3P3r5X5wOHbL/GSx7k4uuqAkymrw5i3wUPPNi0
	z1VZU3rBQSQteRS6xxBaSpigosf4E3M0xY0INoclt5vmg0tkxWhDyGHCiGK7cED7j8UXO4z0Dw8
	FfYCrlZ94phvmaXsIAJRMEvKzjWDah3O04G8Cy6TE3eOG4ccNQoYGU+QSpbAGgQDfgZwo0YJU0h
	jH5GbJliTqsVjdam9jc/ZsUdivZiymVJvCgn3vi38ppxQUMzBodkmQRRTbQ9bI+C9Sx2H4zlisb
	pEV6Qaz4A32QF9YpR/rOxdLAhmSL8PONBrO2bnvmFeEhVU/e0iOfEAL/BEkOysBKAeCQN59F/Ag
	JNXcBqaCrcpU4KTyZbKFJIQGteuYO313LqYxPG+dX45gJnL0HMTqqHwLGpG1wjTMESEGnA4NtrO
	uXju4OYO/NRqo54wjk/e/b9dEJ
X-Received: by 2002:a05:6102:3a11:b0:5de:db29:5c07 with SMTP id ada2fe7eead31-5ff324d892dmr2010158137.19.1772222947352;
        Fri, 27 Feb 2026 12:09:07 -0800 (PST)
Received: from nixos ([2804:1b1:b880:4e06:554b:5779:2074:421f])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1ea6f7fesm6479027137.13.2026.02.27.12.09.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 12:09:07 -0800 (PST)
From: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
To: gregkh@linuxfoundation.org,
	ovidiu.panait.oss@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev,
	Lucas Faria Mendes <lucas.fariamo08@gmail.com>
Subject: [PATCH v3 0/2] staging: axis-fifo: convert bindings to YAML
Date: Fri, 27 Feb 2026 17:08:42 -0300
Message-ID: <20260227200857.50880-1-lucas.fariamo08@gmail.com>
X-Mailer: git-send-email 2.53.0
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-269415-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_TO(0.00)[linuxfoundation.org,gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[lucasfariamo08@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3CEC81BD402
X-Rspamd-Action: no action

Changes since v2:
- Fixed commit message formatting and content.
- Sent as a new thread as requested by the maintainer.
- Added a more detailed explanation for boolean conversion.
- Renamed example node to fifo as requested by maintainer.

Changes since v1:
- Converted use-rx/tx-data to booleans.
- Deleted legacy text binding.
- Renamed example node to dma-controller.

Lucas Faria Mendes (2):
  dt-bindings: misc: xlnx,axi-fifo-mm-s: convert to json-schema
  staging: axis-fifo: update driver to handle boolean DT properties

 .../bindings/misc/xlnx,axi-fifo-mm-s.yaml     | 95 ++++++++++++++++++
 drivers/staging/axis-fifo/axis-fifo.c         | 56 +++--------
 drivers/staging/axis-fifo/axis-fifo.txt       | 96 -------------------
 3 files changed, 109 insertions(+), 138 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
 delete mode 100644 drivers/staging/axis-fifo/axis-fifo.txt

-- 
2.53.0


