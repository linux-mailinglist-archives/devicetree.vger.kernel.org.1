Return-Path: <devicetree+bounces-308299-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2fYIOSHDJmqukAIAu9opvQ
	(envelope-from <devicetree+bounces-308299-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 15:26:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFBA6569F5
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 15:26:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=vDgVF+1w;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308299-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308299-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4916A301B928
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 13:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6FEB372B57;
	Mon,  8 Jun 2026 13:20:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367CE33DED9
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 13:20:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780924850; cv=none; b=PTV9/X3Noh2dY6S1eEdJn1RZN+zm2hoB/S22wGtJUblBJ5miY2aodW2UfuKKHd79MWucdecbs03woVQKRXGSB9q4nonZOFwV5NLkB2S9Kq/pSc28hAuHL0oO4T34Uqp4sNEBDvhwf7sI2rbUL1xRsP4Tsl1ALGZ+srKb613qV1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780924850; c=relaxed/simple;
	bh=0pklRngUa0gTLDCHoAQfCF+WUDmyMrSv8AeebMGYhEE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lYaMY7n51kwq9NaoKoiD4LdzWJnzh2eHLvFdRn/wzk1pekd5mNXGzzyOXDEDlVyNV7dkB3glYOJ/4PlpCBApcv/8E1cBWhGhsr6SRTinSV9qCUPeb9Ms5Dee7XnMDuihS77G+uHBW0n2yLoZpLLILtNaAbHbwt/R8+kEANWXdZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vDgVF+1w; arc=none smtp.client-ip=209.85.221.44
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-45ef56d9b67so3324792f8f.2
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 06:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780924847; x=1781529647; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sGBoIgiiVhI5Ez5UlK2TcQscCuB1vu9ndVDcfWubiGk=;
        b=vDgVF+1wnzVSeFEaFMNGtzmLtEu8y5EjnOBjxLcnQkICkSJHIxYsjVIWIjQhBYglFi
         C5+XpEf5gG0cFNUxyHCMzSjoiwIuG5uTqOq7x8Pdr2F40QR0tBCTC75z/ERCijg3P4vF
         gOySCl3X8o0xgIJeWw8AxFdWkG6KSaHKJKIcY6B/FDBuzG4zCYiruMOvSTh2LsLCvpjE
         VLRqG1hAEobUF5Rt7rBtPZgXIj1WjFC+5ld8LJOj2tfbAUNP8L1ZlXJSV285cfFmcBVn
         QQtdDmM42TLgkXDu33j8+ryFMUYT/F1AEwktTuX55RdqbOoW9DSj4i7myaB1qmH5ZuO8
         tfSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780924847; x=1781529647;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sGBoIgiiVhI5Ez5UlK2TcQscCuB1vu9ndVDcfWubiGk=;
        b=PJtzIXKLiklaO9GO/ZyMacHeRpm7aAwHQGVAEZNsO9yNJfhqBRXwj/aH5rQkjUORKc
         aMXCbYG+EaOjrKw9kzE7bOqIvr9L3z3OMQo2hK3uP8xqkTeen7Pyv/kV/yKqIis6w6uN
         K1AjyGQOPGEP3DZaEZkWwWLSC5ZKPd57+7SYVClQSMSXMiYD2yoZTiajTaKUe4oqNIw6
         RfofDsP9aECmK8AM+vPQKNh08A6aLcL7lfyrn8ffH4PTCQTQz+MyvlnEkDzLvEVckYST
         rc+qfoPjYTilgHXEbs+pOMv28Y06pokzrxMr7MHqJs+L0thTziUGGXjWD6JBCOrVfCot
         nalA==
X-Forwarded-Encrypted: i=1; AFNElJ/mIC4+nVzSEvfCu6Q6MraXPE88YJJyKnYMp02iadrBpMSTN9zUwetghNPYreFF0PjS4Uxdta6VWPLs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9uY9IBFaRNvsrrKQUbtfU4cExwagD8jOT1+6ZEbEJPvvTkU8/
	UE889ZSiWesiJAqQCjSLnzs3yiGuniqpvEFj81Bpz2RbMl5bYDAIpb4oDDZTT6X60p6nyH9aXOL
	cVDZWyZY=
X-Gm-Gg: Acq92OFrtQMR8Uya37WMG2Yl9Cr9u51EuOKpY2wbbFDDeq6DXRRIu5JFx1ghb4yEAhU
	XwRw52jcwY0ktXajsWnhBdDBSY4dXrQrV6V6keCgUbZeb5Z4yvPRSyo3kblomcxkrPy5YVeVyXe
	lvj85jne4XyzGmJIgrjN9R/iE44GWk1MGqd6uGUVxf65uMpXDLI/FsqILaKUdi+Sfpp4VgmrSb6
	7nAm6v/T36+1glucjv4lrvHrhrnEKD17m9ocyQLfIVVhk6hTiFOjsKXyRL6OosdYlnyHqC4WoIE
	c5DKcJAwRFc/Rl+OMtjHXi/PKrXdEsJ/0YlN9luYh/sbeRr/2kej7oxITHZeCH+XFcql4cojUEP
	Az+D9viGyBeTVFUvYGAlUjxSSBPR8kNkxV80X1RGZdLOHHt/SYmLtJOTRIb1N1szTsLVh56uxDQ
	1MTTje3o0LXhS04Fd+xRPQaIGNL6yRZsQXzHZJoxTCKmyUd2A=
X-Received: by 2002:adf:f788:0:b0:460:e00:121b with SMTP id ffacd0b85a97d-460302e8136mr18077818f8f.15.1780924847457;
        Mon, 08 Jun 2026 06:20:47 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff23:4410:963d:8b06:4a7b:c38f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f34413csm51684983f8f.21.2026.06.08.06.20.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 06:20:47 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 0/4] mtd: rawnand: qcom: Add MDM9607
Date: Mon, 08 Jun 2026 15:20:21 +0200
Message-Id: <20260608-qcom-nandc-mdm9607-v1-0-4639a0492274@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJbBJmoC/yXMwQ6CMAyA4VchPduk7FDBVzEeWFekJhu6ATEhv
 LtTj9/h/3comk0LXJodsm5WbE4V7akBmYZ0V7RQDY4cE1OHL5kjpiEFwRhiz3TG0bU9q3r2QlD
 DZ9bR3r/p9fZ3Wf1DZfme4Dg+rRQQuHYAAAA=
X-Change-ID: 20260608-qcom-nandc-mdm9607-f2196eeb6bc0
To: Manivannan Sadhasivam <mani@kernel.org>, 
 Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308299-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mani@kernel.org,m:miquel.raynal@bootlin.com,m:richard@nod.at,m:vigneshr@ti.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-mtd@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[stephan.gerhold@linaro.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephan.gerhold@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,linaro.org:dkim,linaro.org:email,linaro.org:mid,linaro.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5CFBA6569F5

MDM9607 has QPIC v1.5 that supports the OP_PAGE_READ_ONFI_READ command, but
is missing the rest of the hardware changes in QPIC v2. There is also only
a single clock that can be controlled using the RPM firmware. Document and
add the new qcom,mdm9607-nand compatible for this setup.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Stephan Gerhold (4):
      dt-bindings: mtd: qcom,nandc: Add MDM9607 QPIC NAND controller
      mtd: rawnand: qcom: Make "aon" clock optional
      mtd: rawnand: qcom: Make has_onfi_read_op separate from qpic_version2
      mtd: rawnand: qcom: Add MDM9607 compatible

 .../devicetree/bindings/mtd/qcom,nandc.yaml        | 24 +++++++++++++++++
 drivers/mtd/nand/raw/qcom_nandc.c                  | 30 ++++++++++++++++------
 include/linux/mtd/nand-qpic-common.h               |  2 ++
 3 files changed, 48 insertions(+), 8 deletions(-)
---
base-commit: 19ed11aee966d91beebdef9d32ce926474872f79
change-id: 20260608-qcom-nandc-mdm9607-f2196eeb6bc0

Best regards,
--  
Stephan Gerhold <stephan.gerhold@linaro.org>


