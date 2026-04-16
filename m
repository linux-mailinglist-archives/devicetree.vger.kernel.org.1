Return-Path: <devicetree+bounces-287804-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLVcNAqs4GkCkwAAu9opvQ
	(envelope-from <devicetree+bounces-287804-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 11:29:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 827E940C5F2
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 11:29:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86DDA3011C47
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 09:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50D633921CA;
	Thu, 16 Apr 2026 09:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b="RpxBDO3o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3192A246BBA
	for <devicetree@vger.kernel.org>; Thu, 16 Apr 2026 09:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776331466; cv=none; b=PLdFvbY6kt8TcU6T/5iK7yKLTH+2XifWqpcoO4wGTD6RDka8spshz+kEWxCl4wJLNEvS2z9ZgMF8RGKe9PTVsVYbvWSDoiev16rXNRtbso27Ag5hhiMycP4uSLWXXbn62QsmP88i0GGRbxt2AbPzdDOzgAYET3FtKYuNujxJ+RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776331466; c=relaxed/simple;
	bh=0J4qMa92MYYBqwogN7ziM0OP9Jy09ngA4TXLHtrSpxk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IvwOV2ZvRPKdLJmwStTwVLKyGccjfE/GzNMg754M8JUXxMamY1TqDdQtfQJ1Qf2Z+zouS5x7mHVYFp+2N9ye+tcqzOKogQXjt+JUrdTrUA9LGCXuAsVln55CTa/nReJ9GJk1RIx6XyBP+Ogz6K3h0C0rYlKNFpYtjGbM8lRbbzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com; spf=pass smtp.mailfrom=arista.com; dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b=RpxBDO3o; arc=none smtp.client-ip=74.125.82.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arista.com
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2d96243c8a1so240138eec.3
        for <devicetree@vger.kernel.org>; Thu, 16 Apr 2026 02:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arista.com; s=google; t=1776331463; x=1776936263; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5QM8fvhhwwb++vGNVhGynyKdCfHY+CRlCHIOka3hDOA=;
        b=RpxBDO3oJdqbYOJ86yINLw/lcYVX0RvID9J8xxoRJEco7gK57V6Z+1IFJ3NaVc93xq
         pgSjHaV0QbNnSAruMp19GB+UL79RQIynzCmlevTLfJFltqG9jPJuyxqGeEiKz9XLAlc/
         1QeCHXVLcMmZl/MUufnttgDtHfgGyv4O768P9kCIYPLV0DxPjRQnLv8Kzzif4jvplDHN
         N3bN6659Y7dMl97sjUbVduts5MN0JfYi9yMkHCfeTq896jkASEW3p0YdDjGhG6n6JCcL
         5yIXnO3T1CwKV+vT78vc6QXbDAcAUvWegkno1fJYuf3dpb4/9HsdnSrlST1tQrwzqAWf
         V9Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776331463; x=1776936263;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5QM8fvhhwwb++vGNVhGynyKdCfHY+CRlCHIOka3hDOA=;
        b=j7HnGH5MJYnjePis5P3TKHcH/VKvU+xpTFq3jB0Jur2Zo3l634pjMrmduSDudMSzA5
         GYaiGVUHIowfsH5Q61+bSX++rlrO5MMI+nxDjVMOHSlzRoCdMVohmDYuMU0pbYAy8pC6
         fwLLjpluPSDCp7k/uwewE1tvLJhI7y1FK+vlvCMVARapi56oAhfgjcVGrnMqQ0GXTOvB
         nkyptCtcHkEX8ZhVxorZC9NIVE9R9Ywb8fBXiNLq+YqjMdK3c+uCe4jnvA8RZg9JSjSh
         hCunDqclU9Z1mQShe+xGbB/K/jw9lUfflIRSt0PmbYZbEJIH08ImBfGw1ao+FbBpeA72
         /8hQ==
X-Forwarded-Encrypted: i=1; AFNElJ+6X8kmdHeZNH1PkyqwgK2MFRanVi1JDYZCeIuDA4/QH/K3d2+2nN2LusA9Eej2JfQVwlb6rzWvwODl@vger.kernel.org
X-Gm-Message-State: AOJu0YwjW3HobWHc5JGd8PRi2QT6dZFGz2l0G97cX5kbWgxMoLEBKNc4
	QatJjC01zFPK0TF3Gi8tCx0P+WNSla0LHT/oZpFx9T8/d1kRmm0mckMbHCp/K2nBWQ==
X-Gm-Gg: AeBDiesxlRSbZevHpiUNwCZ4wLtU1qGGn/eywmVEogRV+B9DPdk7FRQPh2z02uwJ++B
	5jp4ThLcrFo6C/CWxRKYRy/cTxz7bH9o6iPhRAkq/T47+GhCutZQr9eAj/vKSpDFJbq2vHRTVSm
	QYf+TquuuUbz+20ccFndEkuOgMsXFf/iU9rZKH5iP8r3CFCFP2hVyB9LROlLrsN5T0noDiWyrxi
	6knagLcu29+soIsbGa6N7EDiwGmEFMeMOylrepp1nWJgZru1mk/CAJubhG1eXe9u+Y3FYH4Ix/+
	sYAXo6UqKpgEb0AHRX12adMH+g3WkSK3hCcGPLd2cfocaKszQK8XYHN5vpg+gJNDPm0AtTeGWWR
	6cOyrWPkuBE0FlXPtEFTRrmR6QWrgwAMMO9PDISx7Md265AQG3rP/fX52iMlHBXCr3c0makCZK8
	1uNMjoKX2rMrXvCeiGlurDzgY7wOcLlIyVhY0o10mSottn/1+s4vLXND+3LMq5+rh58kE41Q==
X-Received: by 2002:a05:7301:2b84:b0:2cb:8d2f:e235 with SMTP id 5a478bee46e88-2e172f32c44mr322711eec.1.1776331463070;
        Thu, 16 Apr 2026 02:24:23 -0700 (PDT)
Received: from adriana-schoodic-rtc.sjc.aristanetworks.com ([74.123.28.13])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2de8f965c5fsm6423815eec.26.2026.04.16.02.24.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2026 02:24:22 -0700 (PDT)
From: Adriana Stancu <adriana@arista.com>
To: alexandre.belloni@bootlin.com
Cc: linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Adriana Stancu <adriana@arista.com>
Subject: [PATCH v1 0/2] rtc: bq32000: Add settle delay for aggressive polling
Date: Thu, 16 Apr 2026 02:24:12 -0700
Message-ID: <20260416092414.3210383-1-adriana@arista.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[arista.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[arista.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[adriana@arista.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287804-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[arista.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arista.com:dkim,arista.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 827E940C5F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series addresses a limitation in the TI BQ32000 RTC where aggressive
I2C polling (done by userspace tools like hwclock on systems where the
interrupt line is not connected to the CPU) can prevent the refresh of
RTC registers.

This results in stale data reads or select() timeouts in userspace.
The series introduces a configurable "settle delay" via device tree
to ensure the hardware has sufficient idle time between read attempts.

Patch 1: Adds the 'ti,read-settle-us' property to the YAML bindings.
Patch 2: Implements the delay in the driver using usleep_range.

Adriana Stancu (2):
  dt-bindings: rtc: ti,bq32k: Add delay on rtc reads
  rtc: bq32000: add configurable delay between RTC reads

 .../devicetree/bindings/rtc/ti,bq32000.yaml   |  5 +++
 drivers/rtc/rtc-bq32k.c                       | 34 +++++++++++++++----
 2 files changed, 33 insertions(+), 6 deletions(-)

-- 
2.51.0


