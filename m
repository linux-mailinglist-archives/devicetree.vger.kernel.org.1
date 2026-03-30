Return-Path: <devicetree+bounces-282390-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJUIOrtRymnQ7gUAu9opvQ
	(envelope-from <devicetree+bounces-282390-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 12:34:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC86359668
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 12:34:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4683C309BEE2
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 10:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54A143BA22E;
	Mon, 30 Mar 2026 10:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Os8c1onG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C3C389115
	for <devicetree@vger.kernel.org>; Mon, 30 Mar 2026 10:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774866250; cv=none; b=Ea1eu9XwoKSrpJmDDP/h+Sl3fFX4D8dx5m1L3+W/SVFyJV0m8VU/d45/HSesf7D75LehPjGgRNiFhKjn4JEUQSbn1K8NWyh4C6hWFuRs8B3dCCeL6rvPqqHp3N9zw5CoW3mlWgjtlWGUKFKL5jQyZ0Vivybe5yo9o9FKSZ+twiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774866250; c=relaxed/simple;
	bh=cVWQgXiCXgER1wMbi7fP2up+AnV9eUKTl8mFsyxCVV0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=cPQr50pCoILIWBdxKzzC315AHUDDpOgslm8qNEYajbV927FXm37PPztRxXKDqGFj+tuAGPSjRjBOakVOxbqAZQW//TKCSdtiOsVoLyc80C0PIEkAEBuBdHPed0T/6h8rUchUrDPj+bJuaCejsfULTGN94UZOr5FzFQFtROpJwcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Os8c1onG; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-35d971fbcddso839204a91.1
        for <devicetree@vger.kernel.org>; Mon, 30 Mar 2026 03:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774866248; x=1775471048; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4Cy0HRPpwmmn5TvIoVoNc4yfoaNPd77LIEkBXRHxuVI=;
        b=Os8c1onGD+r9+GwdaFishjtrqpdLSbobkpL1NjWhrmrpbaEdGgK3q/vHfoi8VJoQok
         2xnxB0YWB3SfxjAFbEsfMrUm+4yzK/IpNe4gHu5KQShrx3XCIWInNX5wc9bWSJZdCU/9
         CT6h7lumPP8jyf+SanBkE569yH5p9C8yBCtt5gkMwJXUxfVBWqXfAJfCiYEydCPPh9lH
         MSJjmnucXYib1Keb4xBjCXkISsm42H0aj9UZsWW8UGG7nIyOfUp+aDt5o85O679sS6S6
         7dvGc1XOZXSI2Ytgz4hr+U1sGsOryLZ2OCDHaePRDmR5BZJrqYGV4aLLL+m8ueMniR3R
         OtSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774866248; x=1775471048;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Cy0HRPpwmmn5TvIoVoNc4yfoaNPd77LIEkBXRHxuVI=;
        b=jpQlpt4eZLn9b8aAD9K8knvduPSWYC6QscThzDbrnt2mmcO1vTeRIs5uGvCL4d79IX
         ksIdkIcUFWATy8bBM22B+340++99oqt5MiSosTkG0KruKf6kLWSTkFy4F/YaYLrWd13Y
         ZiBunHpd6bb+zGCWie18L8BdVFgzW1aiGuaMh78Ai+Z/PtN/z2O+sRpEExW9TdizETAP
         FMWd5Z3uhdQBnxH5D7IzljkZXVpzaVzvVb3XQbQBoghf4OXDf+QpusEaB2RtMFSLlyVz
         C5E9wiQUU0osBSibKQDQt5fMuISHojH7lkJNoMwVTEPuBazoOsJ9LeDfIJe1W4jXbl8W
         dVcw==
X-Forwarded-Encrypted: i=1; AJvYcCXqUeUVkcFkbkfRWZQ+kTr9jw0V7Iv4gmtNsHajnLktz4JqzKCX8/2WFIJGDWQzvtEeJ0xXdEd5z6CA@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/s9evyNlUxbuHRqzFrz+bhL3TXK/fW3Tx93EyLgAMIdibpzPi
	M/8+BlcFKMz7J39yqALL46LknOfvkScLzZbnSJK05QZYLQ3wIPMEHpLgyLJsrg==
X-Gm-Gg: ATEYQzy5v++qyJbuV/+dQCccn5h+apR16yyXY8LeKrRW9QyjLBZFU2WJ4mfNSVjMj4Z
	mVc2mzSc2Q7Jae4wUOAEwr4bgHTEwu9pWYc6ZPSR046ZOXKvW8JtYnPKZ2Z6ouxLxb6dtYEq90C
	sNDa/5vnchAuV54rrtp4HipN81/4vgaQ7Vgqb1d+6JvfIaRAqCnCdjUo16j6Sk8nl24IeFARZaV
	Q655X9zk6oWF4F8rBvW7nX5i5+rLLX0IFJe55bYb82xQ8Cd7r86sJJvbZ7VQzgkw3bJOMCHSCaN
	OaDEzPj0X6iWMZlZ81aS3x4POkKI28b3exLbiPPdRLyQ055oXTJaXV06V8E9RiKNAN0xEpgIA1Q
	x00xQDWUErzre3ykmu4tL2TgJ4H4EGkKlu0xB6qpSYoRBul/A66R/TmJ28V2e43C1Nm1MfRp8uD
	PUJ4qD/4GGx6Md9F3VhPoF4b8PgCwhFQdw0Hm7WQkcOwsBVfuUOvbTpNtM
X-Received: by 2002:a17:90b:4b07:b0:359:8957:7285 with SMTP id 98e67ed59e1d1-35c30b82d50mr8989093a91.3.1774866248472;
        Mon, 30 Mar 2026 03:24:08 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:93c7:f319:97ce:1434:43e8:eab7])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35da9ef1b70sm2487452a91.16.2026.03.30.03.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 03:24:07 -0700 (PDT)
From: ASHISH YADAV <ashishyadav78@gmail.com>
X-Google-Original-From: ASHISH YADAV <Ashish.Yadav@infineon.com>
To: Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ashish Yadav <ashish.yadav@infineon.com>
Subject: [PATCH 0/2] Add support for Infineon Digital eFuse XDP720
Date: Mon, 30 Mar 2026 15:53:43 +0530
Message-Id: <20260330102345.37065-1-Ashish.Yadav@infineon.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-282390-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infineon.com:email,infineon.com:mid,infineon.com:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ACC86359668
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ashish Yadav <ashish.yadav@infineon.com>

Hi,

These patches add support for Infineon Digital eFuse XDP720.
XDP720 provides accurate system telemetry (V, I, P, T) and
reports analog current at the IMON pin for post-processing.

The Current and Power measurement depends on the RIMON and GIMON values.
Please look into data sheet sections 5.4.2 and 5.4.4 for more details:
https://www.infineon.com/assets/row/public/documents/24/49/infineon-xdp720-001-datasheet-en.pdf

With Best Regards,
 Ashish Yadav


Ashish Yadav (2):
  dt-bindings: hwmon/pmbus: Add Infineon XDP720
  hwmon:(pmbus/xdp720) Add support for efuse xdp720

 .../bindings/hwmon/pmbus/infineon,xdp720.yaml |  52 ++++++++
 drivers/hwmon/pmbus/Kconfig                   |   9 ++
 drivers/hwmon/pmbus/Makefile                  |   1 +
 drivers/hwmon/pmbus/xdp720.c                  | 122 ++++++++++++++++++
 4 files changed, 184 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/pmbus/infineon,xdp720.yaml
 create mode 100644 drivers/hwmon/pmbus/xdp720.c

-- 
2.39.5


