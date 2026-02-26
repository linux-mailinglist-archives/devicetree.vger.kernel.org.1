Return-Path: <devicetree+bounces-268598-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIXkMZvgn2lLegQAu9opvQ
	(envelope-from <devicetree+bounces-268598-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:56:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7558F1A1278
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:56:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F08A6303D2F7
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 05:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BF5F38B7A6;
	Thu, 26 Feb 2026 05:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O7MkKT7K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1763815C4
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772085375; cv=none; b=sHQ/pmsjc3dz2K3Z6YZpCO5b6AdmnFtC3gwrI7diLhFtnnoD3Nk97cLcy9xU3d3QnnpUUJV1njZ6SqawvwobFk3ngyfLnyJh+vyjT12n0AQZ1RJRkF5mm4S0eB/joJahIV5WoiP3T45dslI4KUSVdLtiiC6EiOkCu3QXF75pmcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772085375; c=relaxed/simple;
	bh=8S16pcnbsnOTrCAaH17Qc33cRxLkbrpNq7IVKEK/rIU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Zois0C8p5i0QnHuy40KA+2fxJOA2z22qBG/V38aTrqb4KkweVBFFfNz2dbvovdD3XS1++izhP4Nt1u49a/aIKeqKnb/ku9TircyeJNKC7HtHcL7BuB8ClXhPhjWVv8hf/9W9oWOoqnUdeQioIrWHrI0lofbspURff+MLX/esJoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O7MkKT7K; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-824ac5d28f9so563239b3a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 21:56:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772085372; x=1772690172; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zB5OIdRyUZDuHaRXYIxGa9y4I4rBgImD51alFFCj5V0=;
        b=O7MkKT7K4qoIOQBNVj15uqXXyUQ8LRdhYRTJx7+oWCfzbvogmbRGaUhMFMBIRBhOdu
         aK/x7dqDx9Jvnu2ExWA9+9jutoy5gYef+cMwizvrij7o+w0QkAfkS17w45MTiObGqtcv
         5DQm/mddG2+kefy5VT9IRtmnTJqFM4tC0eYGMcgiWTHA7xl5CsFApdBz0FZSmBKqjEmH
         3gp5s2f9tUOadaJrUxJwrVM8V0LJSZrd4LN3tmyNcrB2gpBTrU4J4w4Rvtc7Q5fFmjka
         +DD3J2BG/Qamm6RV41CnChEkdo7p7FjDhgx2AcHTUs2bjNkGiVuiJxsmbLzVDxJAyV/d
         mPwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772085372; x=1772690172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zB5OIdRyUZDuHaRXYIxGa9y4I4rBgImD51alFFCj5V0=;
        b=YXzXWMxwPv6jSUpacA3J8LDB5TLUITa/cJISUJwScoN2FzXwmddLmmHmYJSyY1qCvl
         B7R7VsRnkIrunnKeMmNPDLsNcJ/rbOucI1gAc+UynBBA9DGQ5r+okxnigN4nM78fKjE8
         9IE1XchFS0xtvCGZU+jUIPvbiV6w+SDRXJk2MyUm8slrakLqUtJPDSoXQGR9VODUxGj4
         i4hw0v4EdufeWuzjHPoSnaZzJxageq9J1ZlZIyVgZgV/qr+wtDKrdt14KfyIJj8DLyew
         1F1L+D4AB55+PuV7xAVygg4IVVC2cXlUdiRvqMNUH7m6q4qzNgP624zrh0HrugA2O5y2
         JDKg==
X-Forwarded-Encrypted: i=1; AJvYcCUsuI9ELNVkwxivJtxROpy8ylT0luN5jBp1BUnv0yvGwakgQz2F3SOQ7n8TVS3AuzOeNtZWfFRcxnNV@vger.kernel.org
X-Gm-Message-State: AOJu0YyHdsursjFzKB7/BfBsiHnmzq1R12kSqQ+hVwFk5Jv0mm4OZnmj
	Q3Zyq+dlt6I0YLp4bEw7ORPS5VG7pUy6sDkwCP5XJVBHrsIUPkAx2TWF
X-Gm-Gg: ATEYQzyIC6wE+ru5u6SwWcR6AtHE04/BUzh65ADrVIo+eFt7E3F71/sjwxnysvyZOWY
	Yf1vqWqwLCct94O6AlFy5E3RHnc6GKGA3AvR+6uNcF0QhzczCfNxU+rdYNQ3F9zvRF7zYQS78hX
	p9jt4F32iERKWCq8fEuJaTwsKe5grrhg0FtBFzrW+URjfmgiWu3VgTDhtAi6oxdwx+66EJocOEH
	53/Ncft+j4oxragmRs4jm9WFNHiVIQ3XVm0WWaSI9xOXIQwIypFEf0Xc3bmu0BmXZEbMbF2wdV8
	0vmM33oFn8qUhc73eOJFL3i3uCtNRYbdWsJErsiQQQS2R7zN6EeSs3vURC++3Ay7rw+SMa+y6lo
	p6Qd+1/x14nzBs0aQOHJCYAfhdSwnhWYNWPmoUfXm9EjobJjRCP37COioRg1z/aKHllt/pbYelS
	gpeVat4/nLMZsFFst0I4h1EzzYx6JBTCe1H2GoMT5weMC05z20SVjQUonO1Tyxrv8yrh333bFRH
	DAQ7GUhXaTV
X-Received: by 2002:a05:6a20:ae2f:b0:393:73e5:7404 with SMTP id adf61e73a8af0-395ad20d49bmr2808764637.52.1772085372523;
        Wed, 25 Feb 2026 21:56:12 -0800 (PST)
Received: from pk-pc.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa82c284sm767851a12.23.2026.02.25.21.56.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 21:56:12 -0800 (PST)
From: "P.K. Lee" <pkleequanta@gmail.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Jason-Hsu@quantatw.com,
	p.k.lee@quantatw.com
Subject: [PATCH v12 0/2] Add Meta (Facebook) Ventura BMC (AST2600)
Date: Thu, 26 Feb 2026 13:55:19 +0800
Message-ID: <20260226055521.1655243-1-pkleequanta@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-268598-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pkleequanta@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7558F1A1278
X-Rspamd-Action: no action

Add Linux device tree entry related to Meta (Facebook) Ventura specific
devices connected to the BMC (AST2600) SoC. The purpose of Ventura is to
detect liquid leakage from all compute trays, switch trays and rack
sensors within the rack, log the events, and take necessary actions
accordingly.

---
v1:
    1. Create ventura dts file.
    2. Add commit msg.
    3. Use format-patch to generate patch.
    4. Add subject prefixes matching the subsystem.
---
v2:
    1. Modify email content.
---
v3:
    1. Add mail list.
---
v4:
    1. Apply git send-email --thread option.
    2. Sort nodes in the dts alphanumerically.
---
v5:
    1. Run scripts/checkpatch.pl and fix reported warnings.
    2. Remove unnecessary 88E6393X CONFIG FRU.
---
v6:
    1. Add a new stage for the DTS change.
    2. Run scripts/checkpatch.pl and fix reported error.
    3. Fix the issue in a separate patch.
---
v7:
    1. Fix broken indentation in the device tree file.
    2. Sort nodes alphabetically, then by address if equal.
    3. Rename fan sensor nodes from 'hwmon' to 'fan-controller'.
---
v8:
    1. This patch series has significant changes compared to
       previous versions, and quite some time has passed since the last
       submission.Therefore, previously received Acked-by/Reviewed-by/Tested-by
       tags are not included in this version.
       If needed, tags can be added again after review of thisnew version.
---
v9:
    1. Reordered the node sequence under i2c5.
    2. Added a description of the platform's intended use to the commit
       messages.
    3. Added 3 GPIO expanders to i2c10 and defined the necessary GPIO
       line names.
---
v10:
    1. Added IRQ support in GPIO expanders under i2c10 to handle edge-triggered
       events.
    2. Reordered the nodes.
---
v11:
    1. Modified the position for i2c3mux0ch6 and i2c3mux0ch7.
---
v12:
    1. Added a GPIO expander at address 0x11 on i2c10, and assign an SGPIO pin
       as the IRQ for it.
    2. Fixed the "failed to match any schema with compatible" issues.
    3. Reorder the nodes in alphabetically.

P.K. Lee (2):
  dt-bindings: arm: aspeed: add Meta Ventura board
  arm: dts: aspeed: ventura: add Meta Ventura BMC

 .../bindings/arm/aspeed/aspeed.yaml           |    1 +
 arch/arm/boot/dts/aspeed/Makefile             |    1 +
 .../aspeed/aspeed-bmc-facebook-ventura.dts    | 1592 +++++++++++++++++
 3 files changed, 1594 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-ventura.dts

base-commit: e11fa6b1ff6c27c808d17e479bd7d5582e772062 
branch: dev-6.6
-- 
2.43.0


