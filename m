Return-Path: <devicetree+bounces-259028-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLVyFbGYc2lgxQAAu9opvQ
	(envelope-from <devicetree+bounces-259028-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:50:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B2477F91
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:50:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8356730107C1
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA58727FD5B;
	Fri, 23 Jan 2026 15:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J0eua0II"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668EA1E1A3D
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 15:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769183396; cv=none; b=Bzvye8x/fiDsjrTe+DJ48ETphxcaAxYqQy5qePaXX9zmSqaS7RYKxYd6mMc4mZ4BvnZQxgaxGhbqGx9f2qezcU8Otj4CzHjsU4zIw848OgGigznrdxhM6zDPC/ONbw/wmsCeJpP84tkJl04FJgiMGWch8NZWtiUlcrG3cDUF/mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769183396; c=relaxed/simple;
	bh=DhTv5FEY/5Hck2zOyoP02+Utk6mDi3PDDODu7TRzD8w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WM3Grm21cpX60aochhSk3AmtRQ727XZuqG7OCLNqxHkYsH6qx+C7LndfnRMn4K+GLxl3oWuaSHsiBLh9TIVHuiJQAk2EMhq3yJ419g+72Xtiu64ofmESI7CXNw7LFdCNRdzaUXV8aDhTmcYdMRQ5IqJuneC/O7DjMXUlpMbJvSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J0eua0II; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7d148dd3421so833371a34.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769183394; x=1769788194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ofzvC10GdOoW+LodGk5Ah4MZKisvHYlAnV9C+wNMtXU=;
        b=J0eua0IIbiKtX9rDvq23iE+DWsbu8S7sAB9nSnF8eTQzE8RhPUeVTrtNqJxtIpzjOy
         KKITBmWWflgTFaM7Dwfvmidc9EvtgEL3hSLpryI5oGWUulvFqy2B+OSeFJHuPt8gueyF
         d9K+27msyuJ9MXaIRReX9tCLIL8CFlVgAfSJXV0LgCZxs98oqY6DK8lXQITE2M0yVuVs
         UdG7Yx2+741QgKZFsFyzApElnuIXVpjFAg+PYF23Ma80n+LtXAtcVpA8YUWLVJ0fvZ6r
         +JK2GmcES8IYgBucoArS5tf2JmzHUysAtZpsxiFrM+m2qmdKnCZINuKINtL+x3Oi/kKa
         YWOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769183394; x=1769788194;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ofzvC10GdOoW+LodGk5Ah4MZKisvHYlAnV9C+wNMtXU=;
        b=J0reFuseFLb41E3KJly0end/qk02jSp+HBqQCDSBX3R9dcSTSRrZK1S4KAH0YHTdOK
         cUqNsUu+hTdx8B4CzRQ0njPWDDg885XpQV27M+pLXk/M+xIPhdihDEFLVDQvQ8T4zQAx
         D9lnfuUKEBoHN0BL1dsivZ4RxIrq3eImnrK/t66e7jh93QTQul8+aBs3UcAKYWZChYmj
         n8XC5X1KMY2AmxjwNiuqH+/Bd2hE990Zc9tMrV8aAkkE5IF9tU4cvQrUdC2z9e9ZCBlo
         hEy5tBsJclaLzU2XEWdbsxDT88xDl0J+Okwjxp5o1pUNfvZAnIX4o3KnEPHfIhy2oiVe
         4PBw==
X-Gm-Message-State: AOJu0YyiKUNkd0dbdwHhdN87009VA4uN90B4fLxbnF8M8ppuvtW2d/1z
	T7LjeM2DUGMLn7l3bfzNI50vHKp7z6mwV0WryiK8M7/Ob8PgMxX41BNs
X-Gm-Gg: AZuq6aKtFYkzkb9HrCo4EytMrZYYgtxGK2+Qx2o4fRn37GjBckIEqpKEd4IaRZMXbp2
	ms9Hrlp3ynNEzrnZdIb6fvyqhOnPzdzt0XOHzZdnHxWKOjjhhVF9QGKBxFk4GU11/YSXPZDeJ/C
	F5Hk2VAj7ZuTxzI1r66XMeGhP+paAArgwA0MOy4Ryj+hS2L6WrJLzFC7SQUNqW1Wk5g3OTJMvx4
	s3tZuY2q4V00cNAuD+BcMlyhAWfQBFfCpjGYU6xOG4CS1Vw6eMsYlk0Nwkgywe5AOxJMr8cCzj3
	EiDI0b1u2B1JSbgFe6nVotipdmHfhjLyLVI0Qx3egEveCRt3oun3w1ARdrA7UxcHyh5+fkLRxH4
	NbgezRVY+fRWtOmLBLUuozek/N6QRT8OSgw3KO4iv+FZXzwLS4RDIlVE++wT1kZBxZ5dz3qhOp+
	HJ25tX1THJNw==
X-Received: by 2002:a05:6830:6507:b0:7cf:dcee:3db5 with SMTP id 46e09a7af769-7d15a5c9039mr1619776a34.1.1769183394195;
        Fri, 23 Jan 2026 07:49:54 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::ffa])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d15b3e2789sm2074327a34.27.2026.01.23.07.49.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 07:49:53 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sound@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	wangweidong.a@awinic.com,
	tiwai@suse.com,
	perex@perex.cz,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] Anbernic RG-DS AW87391 Speaker Amps
Date: Fri, 23 Jan 2026 09:47:29 -0600
Message-ID: <20260123154731.130649-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,awinic.com,suse.com,perex.cz,kernel.org,gmail.com,hotmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259028-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E7B2477F91
X-Rspamd-Action: no action

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG-DS Speaker Amplifiers. The Anbernic
RG-DS uses two AW87391 ICs at 0x58 and 0x5B on i2c2. However, the
manufacturer did not provide a firmware file, only a sequence of
register writes to each device to enable and disable them.

Add support for this *specific* configuration in the AW87390 driver.
Since we are relying on a device specific sequence I am using a
device specific compatible string. This driver does not currently
support the aw87391 for any other device as I have none to test
with valid firmware. Attempts to create firmware with the AwinicSCPv4
have not been successful.

Chris Morgan (2):
  ASoC: dt-bindings: aw87390: Add Anbernic RG-DS Amplifier
  ASoC: codecs: aw87390: Add Anbernic RG-DS amplifier driver

 .../bindings/sound/awinic,aw87390.yaml        |  34 +++-
 sound/soc/codecs/aw87390.c                    | 176 +++++++++++++++++-
 sound/soc/codecs/aw87390.h                    |  86 +++++++++
 3 files changed, 283 insertions(+), 13 deletions(-)

-- 
2.43.0


