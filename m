Return-Path: <devicetree+bounces-302169-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AFtpJ+DkEWrirgYAu9opvQ
	(envelope-from <devicetree+bounces-302169-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 19:33:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 402115C00B6
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 19:33:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF1883018ACF
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 17:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC0E231E855;
	Sat, 23 May 2026 17:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jyt/ZugT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D654F2D1F44
	for <devicetree@vger.kernel.org>; Sat, 23 May 2026 17:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779557585; cv=none; b=p0wtObd0HJKh5uJ7rAdNG9iBgiJ28roKW1DsM7BKFqrJ37dkWJEPQ2E/0nP2e0BstB2XxqMtV9VpAO6PVjlLNhpVURwELgsixDY6E07ip84TUaBrRhwDEeXjdC74K/D15EpE2Tlz1knC7I+BmNtWxnwqpda10EQlKTQv7vCmmHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779557585; c=relaxed/simple;
	bh=pIPczO+JdxqZe45yY1lXO5wH/7QRu5a76UN/e6ceYaA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=SCXIDTfN3/RDJFjMR1xcdYFT5BlQbNt4aLm1jXZhIeFbT5jZmBfm5qOJhX5Gyfr2Juh/Rgfs1lMOjQe1Uk6TRI1TIZ+ySQp0XS4prJBr36AztDMprzzhH/r+0xAYJTmfPxHMNHWpx8kEPYe78pX9kCIH9YVZOiq+nRd9ANjH5Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jyt/ZugT; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-83ea84df1d0so2801775b3a.2
        for <devicetree@vger.kernel.org>; Sat, 23 May 2026 10:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779557583; x=1780162383; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HjZOf7bVbm6B+eRTHEBmeDXi1tZwk3zjXWzPdrWiVjQ=;
        b=Jyt/ZugTBQp8ad+M4jRgl4Zr6Ygsn9DhzvNUPgLW1+Go6Xy/KgECMCVUOTFTlJi5sa
         XYjyJN9UXNgoylybAzesZIZZEHnWVe06yUU1o3Rmk8Aaw36ROzdkIV7TvQG9/o5nw5JF
         aqeixJDr84qYXpfxl+/tZsdhQ/bVYltW2WRRCf9px6ckQDppHWYiww0+U7TUyl4yX+NO
         nA9xt7AaowUT7ijYE1j/AIkpMQmkVDoxp2mhUK9N6DM9w3NxB36i1yQzLGDsmdWRDPCp
         ST23Kc7oXXl6aEyBeSV9uaZcCugdcVhLz8fgisywAggFghN3ifXVi8+9NFcpSnOGcHWI
         PAbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779557583; x=1780162383;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HjZOf7bVbm6B+eRTHEBmeDXi1tZwk3zjXWzPdrWiVjQ=;
        b=OECAJ0B3FBRLKdm5KsINSpuSNAr/ArohvFzuG52ZT8wPnmsN6bW6N1j9D+vei9dYSM
         qazSkr4d94TxkoYXi3gFj2KQaAa+vRRVqoOrihh3+7bqGEHRGpIEcW2OfYBthrmwvk2t
         dmac21kUt/3Ua6qcUFyMoNW+g4WbuO/FuhZgk0r90jU0LgACoYD/kbo9iM1yELoWNlME
         JTKjD24VgTgdnawElcuk+BPY0TtEnBUhQpfYivSv99LsEdQ5U4+1Fh3bcR9IRgHTwPdI
         rUJp2mtlX+vkd2VUN6QAp7st3iN4WrlP6nXw/jI5adHj1tpB2vcYruSvlmEsOCfLRIGT
         xfyw==
X-Forwarded-Encrypted: i=1; AFNElJ/TVmlhYQIkkcMHy2oPmj3BKOtZMomUF4K3mnnlQnY/tglZl3asjdQoUzZKjCujqzEQqHk8V1NULvdK@vger.kernel.org
X-Gm-Message-State: AOJu0YwpbWB6FQm1NEdzvwbi7BztsrAv9pajC8PsHYp+d5QLMz0rCDOi
	2Sl+zzei1Xw/bKgQfqOWqMt22tADUdF3bomVVjaV05FLoiCniEUozy+BhBm3HM+U
X-Gm-Gg: Acq92OGj9oNMFZbRucXFGFF+4SJY7qvN4e0FaPATyhzj47lOuuwanEdYwFpWrrtS29q
	x01IOF0ueLDaosg1TdNIlgp4KiUcZhNe7jWdTF9JHLX4nWzi2usYC+zTID74Th8ieyVNNr4Nxli
	SgVK5hM97xuGPdEdRF+J7kRZQqAZqkZLATltgK2W11HilmqzKATplqco1TPTzq7CYIXHf8m4AAS
	l3zgTa81qTQb4rfBiMBRZzDL83df7SH5Nwe4+ScwjP3O1mWKfwbxKxwdCddcIlxrjZ6D2HUxEP0
	jrFbL9EvAqKpwbHeGO5Wu0uZaVDrKO2iey7Dpx+z8Szu2rATabDIbqZVgU8ZNcBBsguG+/JXMef
	i42PrMwzOZbyy419oqo5YfTJEHaLkg7iH5a9n3lyN9skvBQj2VCwzc3ZI5eLyhyTckITSzQqp5w
	n0BDn4Z51p7OoVuFwFtcfIZ/LOhptEGrAWQhKCUXG7dEvCPKc5V/WuYulN1U1EBjvmyQ==
X-Received: by 2002:a05:6a00:a383:b0:82f:21ee:270e with SMTP id d2e1a72fcca58-8415f6d0bb4mr8246436b3a.42.1779557582864;
        Sat, 23 May 2026 10:33:02 -0700 (PDT)
Received: from Ubuntu.. ([49.37.171.12])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84164fc646bsm5162945b3a.46.2026.05.23.10.32.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 May 2026 10:33:02 -0700 (PDT)
From: Manish Baing <manishbaing2789@gmail.com>
To: lee@kernel.org,
	ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	linusw@kernel.org
Cc: linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	manishbaing2789@gmail.com
Subject: [PATCH v4 0/2] dt-bindings: mfd/pwm: Split st,stmpe cleanup into separate patches
Date: Sat, 23 May 2026 17:32:49 +0000
Message-ID: <20260523173251.72540-1-manishbaing2789@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-302169-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manishbaing2789@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 402115C00B6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello,

This series splits the previous single patch into two distinct changes
to avoid cross-subsystem merge coordination, as requested by Uwe.

The first patch addresses a validation gap in the MFD YAML schema,
and the second patch drops the redundant legacy PWM text binding.

Changes in v4:
- Split single patch into a 2-patch series based on feedback from Uwe
  Kleine-König to prevent cross-subsystem merge conflicts.

Changes in v3:
- Added 'required' properties to the pwm subnode in st,stmpe.yaml
  to close a validation gap identified by the Sashiko.
- Updated commit message and description to reflect MFD subsystem changes

Changes in v2:
- Drop the TXT file instead of converting to YAML, as the
  functionality is already covered by st,stmpe.yaml.
- Update the commit subject and description to reflect the drop.

Manish Baing (2):
  dt-bindings: mfd: st,stmpe: Add missing properties for PWM subnode
  dt-bindings: pwm: stmpe: drop legacy binding

 .../devicetree/bindings/mfd/st,stmpe.yaml      |  4 ++++
 .../devicetree/bindings/pwm/st,stmpe-pwm.txt   | 18 ------------------
 2 files changed, 4 insertions(+), 18 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/pwm/st,stmpe-pwm.txt

-- 
2.43.0


