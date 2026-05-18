Return-Path: <devicetree+bounces-299193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMG/CpDLCmqf8AQAu9opvQ
	(envelope-from <devicetree+bounces-299193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 10:19:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D222956891F
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 10:19:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 22B82303C672
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 08:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A34A3E16A6;
	Mon, 18 May 2026 08:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UB/gTJ+q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C92F30C154
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 08:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779092022; cv=none; b=kdj1NzJj8iRP5ZSY1ghW9VWg3kR7sCDbmcKpOJHs6iUHjCcUBO3BFnVdBAv2pfNEC9qDtf4pewKFjXdvooWKmRr29IjNmoEIyWOdbQR9UALySqFSDpyMB/hoeOMsksBlRRbyPezxMLX+eI+lErnuT09l+z37QDgPyqUQSZLgdw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779092022; c=relaxed/simple;
	bh=ClBw+PZ0ldyBl2hwKSuBlN4jYbjU8Fs7MP5m0kjjRDI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GmoRLHzR3A8gN4JE6QA0GSJp2rNqB+LqIOBTOe8Gvnk88t5722k1o5AgKZzTZsJEiJs3rm+hUZpPQClaYpAu042xKovv013mc+pBEV/1hnmSBg7lXRXsOumPhlm9gUPQRDUWHrYItZcqbRk0t55TKvTECQNFvcMTNucjxItd940=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UB/gTJ+q; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-c8025500cc7so1484705a12.1
        for <devicetree@vger.kernel.org>; Mon, 18 May 2026 01:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779092020; x=1779696820; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TtmjcFudJHdbwgaOw1dq0xgX0ESp0DVFqApr/5XXiuc=;
        b=UB/gTJ+qtpymcwIrKFxteLaC2npQPfELcM08XPDrgjFokxkI+j67qChYaEx6R2Pu50
         BX9DhfOSmD6kDafoZhigd0/wKK8AnozP2ir68ujPw49T7438qLYFitmiPVfaUz1DDVgX
         8nKWy1OydrIT483TJscvg+mXyqpIc4ozmz6uRmhy8tcDrvJB+3drYhnalhDgMCgJPuQj
         iQrAuM2hVuGavNpsn5C40enF1mGXyyKh5r0dRpjcGREcC8i+jltnJMwfS8nt3gDQA4jb
         GPfB0AINBAhvd4Aj2OL9/Hmq1Lr0PtCZgY8uqkEOrua0vGl9zsRGILkudz9KQxVZ7ezo
         8tJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779092020; x=1779696820;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TtmjcFudJHdbwgaOw1dq0xgX0ESp0DVFqApr/5XXiuc=;
        b=H7j0fVqEB3JB/WY3Pa5MezaB2cBkcYxeZR6qZfaliNxf4+WwwbigbzG9dmMYtjwDEY
         aMppOZtK88DaHjXy/mISYI4xFG+wNf/kxzDxUjz2KWtIOwDu7kiblMre9Qw8eFMm2NOP
         pZBrm7PLMPbq0xqp/eqT4Mmwc7oKVXHOipRLwvD0E8fgYdn8NdbcEmxq2eMJCMVSW0iL
         Y1c9yP2TA/DJ8+A0SxwCoXEZBMjOv4A1YrTC0xNo/IG9gnXcXy4RAM2put5mgKAuAf7U
         IHUHzEi2ji8zkt2Uqq1rfXO4Kq6RUCvdgYGVy/t+MCVr8cLFIZ/NH12fh3KJPxEi+EYB
         7KmQ==
X-Gm-Message-State: AOJu0YwR622jNZgmYFKwRWF8IJtf6JBP6lrMztLrJNWCyPg5ihWDBnRX
	0jCVoh10XLXTvPJV5nP/Rna4YB+PpdpSyKS4JujzMAzs+6AbyymyP08a
X-Gm-Gg: Acq92OHLKVwfTqbux2HmvFHPaUP37RF8r52A1KUfsnijd237AUT30uUf5w05RfREE09
	ogejB/NXo0YxmrhPANnji0/ilCrmBg7kssAmAeDOub7SIsqv78zOR6gZ2jB8AwupAj5Cby+gT9Q
	CrICSfwF0SOAymfm1LiWODpIJxIrA6BbyihnhRQyehHVYaHOm6cw6glTURWDbdvTq0yOVukWBLg
	6i4cJSywZd30aUYYCFUjqKYTy25G4oumg0Ky/DspJBMSKLem4kdkpIe7cRpnN7HDTk8iwbMOXQ5
	Weu8iCKYCkfjbq6yL76DMCJL5vL/MDO4/fRHHC5/Td51HhnVFClvrOklHv5Pc1Zw1lofHdwPLpL
	GCqX0BpCHnZp7jDbozueT/+SL6pG/eGnAy1WobrZ6r+eOBnEPE4iAuwJOKINFIjVFfvucjeu3ME
	5jiM0VmHiWw+JRkB9aXE8RawCXWB76dggsmC6Cv0EuCSa45Xqar17QXS7GOuXeI7hBSWd055lhN
	UWlI14SIZRMM0ROC/2RPsy6
X-Received: by 2002:a05:6a20:7294:b0:398:9d5f:e093 with SMTP id adf61e73a8af0-3b22e75954bmr15671941637.19.1779092019769;
        Mon, 18 May 2026 01:13:39 -0700 (PDT)
Received: from open.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c82bb100706sm12749462a12.17.2026.05.18.01.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 01:13:39 -0700 (PDT)
From: Neil Cheng <neilcheng0417@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au,
	geert+renesas@glider.be,
	magnus.damm@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Neil Cheng <neilcheng0417@gmail.com>
Subject: [PATCH 0/2] Add Meta Rainiera6 BMC support
Date: Mon, 18 May 2026 16:13:23 +0800
Message-Id: <cover.1779088499.git.neilcheng0417@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D222956891F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-299193-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,jms.id.au,codeconstruct.com.au,glider.be,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neilcheng0417@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Add initial device tree support for the Meta Rainiera6 platform.

This series adds:
- Meta Rainiera6 compatible entry
- Rainiera6 BMC DTS

The DTS has been validated with:
- make dtbs
- make dt_binding_check
- make CHECK_DTBS=y

Neil Cheng (2):
  dt-bindings: arm: aspeed: Add Meta Rainiera6 board
  ARM: dts: aspeed: rainiera6: Add Meta Rainiera6 BMC

 .../bindings/arm/aspeed/aspeed.yaml           |    1 +
 arch/arm/boot/dts/aspeed/Makefile             |    1 +
 .../aspeed/aspeed-bmc-facebook-rainiera6.dts  | 1012 +++++++++++++++++
 3 files changed, 1014 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-rainiera6.dts

-- 
2.25.1


