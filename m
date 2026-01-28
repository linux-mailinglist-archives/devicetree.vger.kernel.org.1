Return-Path: <devicetree+bounces-260570-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCvBLJpNemkp5AEAu9opvQ
	(envelope-from <devicetree+bounces-260570-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:55:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 562E2A74F2
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:55:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BA40330F10F7
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 166E536EA91;
	Wed, 28 Jan 2026 17:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RonYOPlE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E779350A21
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 17:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769622523; cv=none; b=J5Fv8abfg4xrQnYQI3+mC3qyeHJek4E2tDcLVodgHcapltCjERbeQpSTdFhDsenS2y3p95a4JfKy0OhqeBFvt1wnsIQHyfHgLYiUGFmapEaUMsVhw/4sZlT7HKW5EESpGTTBSmwUQA33cVnK+UEb11BNApgjq/azpv9G4+F/kf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769622523; c=relaxed/simple;
	bh=HqI1k4+zqvEhpdkCemIXNHECXz7zLH1ogx6VMZmSYLk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Gteg6Ge9EHjsTZr+DxXIM+V+Tk4NHASU3hOcGXEwX8g15WTiUsc/vznHmNIrsQctsSLmPYrqxb8MYHfj/HdHKdhJaggbpx/xe8JhXjdy0iKXdFSUzlLo7JC1I7mloHK09ozgaI3BpqH695ICSl+fHpBipyKE0S5HiNybd3JKsbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RonYOPlE; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-4094f6f4b7bso28028fac.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:48:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769622520; x=1770227320; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k3xEzEkluUrjAOEaCr+kR2isbV4mKMndumYa1efkEFs=;
        b=RonYOPlE9uYg4spcy8OfVJsWcOXXZSkPX0LXtP1Uuib3Y8cI2XZACuf/NukvSQRpee
         ssGfpBNrwPRRhp9YkddhVSj7ZZu+Yx6rR3Royz8mUD3PzwC5rT/SgSJmxlSM8adEjqE+
         sT8BdRsNqejvPdJdiOjXIZrxsVGVuIHR98Bk6Uhari9Bpvqj1lIDcyc23U+k/oBRMdNt
         cz/UbIMkY3mKIYl2SywccLUPkBxuOis/nh6uwSLVk6cT4jgQdrmY9RlEbjQOVv86voSR
         1Wc4kYwWGKceVca/cbCmoPeEritdVW8qsQnCilF09I3x6dLT0Z9LB5IYGe6LC2Up/MD/
         5E4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769622520; x=1770227320;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k3xEzEkluUrjAOEaCr+kR2isbV4mKMndumYa1efkEFs=;
        b=C+JuNJea7epGatmJ4GBO3/66/7i8lGmVxglTbCsKJgVrlKNHufEN7TzaNjVvwbAK1p
         y5r2Sh4Q3zKUndmaRsJTda+BXNGR+V0e+2u5HsRCsvqI2G6dS8GsptqNLofBw//JzfjN
         XZADpo83lxODv93sE6zJhL0QMnk3o8n5SYIzdLNLE0QrJ0q10Lr/ap4AONXPb3fgjD+I
         bfDCM6AYR23y0jM3CyknLsP3h4fyWM0uVC3avsq588U5YA5+MroJzupcpSsNzc/V3lwL
         l2aX3O9aqGKHANl4xwP1SDUIUUbEN4Vjg8Ui2/lvVipd2i9qXjBVMtX9orbP9NpgY1AM
         xkEQ==
X-Gm-Message-State: AOJu0YwPnF3ioL0kFcZ57Tr8I/DFPdNrUspjoyOP6YVhYRWu36kPMvtv
	F3rUTk9OUOlbJhMKItR1Ex1rvMUzKg5U28WcNmW+bzwgSgH3uBQ+peEP
X-Gm-Gg: AZuq6aJy1oRNtEIpxhZyn2NbUL7nwdzOXcij5R1JX6WVzt7bPL43QW/xNT0uVkWmLqb
	0iDE7M5kQQJA6ogflnCf1M5C5OTJaIw0I0n6+kWQmxWRRggWpSsHCKQMDeZfgW7Q4Zd2Ad0EZGu
	DSzWuJGoO/MrYRCTuh/yhO01hUMo6KJE1mkYMughuDIeq+w59WhIEw/2Hk7Kjz5//M2BADI6U7Y
	7rmrwL5clSs7bk1kRyFXOo7NsrJGXug4zqN0bHs6k80u+9uIBR8NzLIB8yn9uMI7w4UxTA/6Lz+
	AV+eQ26C1UOhiYeEMIf4X7M1R/Ds1iNFUObQ1ivXt2BWhQtbmBQguebb3DcUSn1H3AMxpQ6/j83
	W8fgc6oHlIPMX02EwYpJiGKmo+IJ1idATy5ml5L/Lp2bmUbQqDGaT9poaavjd/vlD+js1YudWil
	eBPTpEYqB8Cj7JWnUwbhs=
X-Received: by 2002:a05:6870:8649:b0:403:f8ca:3fb2 with SMTP id 586e51a60fabf-4093fce1a18mr3870975fac.17.1769622520430;
        Wed, 28 Jan 2026 09:48:40 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-409575b0a89sm2187647fac.20.2026.01.28.09.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 09:48:39 -0800 (PST)
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
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/3] Anbernic RG-DS AW87391 Speaker Amps
Date: Wed, 28 Jan 2026 11:46:05 -0600
Message-ID: <20260128174608.1498-1-macroalpha82@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,awinic.com,suse.com,perex.cz,kernel.org,gmail.com,sntech.de,lists.infradead.org,hotmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-260570-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 562E2A74F2
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

Changes since V1:
 - Correct an uninitalized ret value error identified by kernel test
   robot. [1]
   https://lore.kernel.org/oe-kbuild-all/202601240757.gYdQGsXp-lkp@intel.com/
 - Added devicetree binding for the Anbernic RG-DS. This is based on
   the following commit that has since been accepted. [2]

[1] https://lore.kernel.org/oe-kbuild-all/202601240757.gYdQGsXp-lkp@intel.com/
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit?id=9e3f8ae040009f66367b2ba1081b7e313b39aeff

Chris Morgan (3):
  ASoC: dt-bindings: aw87390: Add Anbernic RG-DS Amplifier
  ASoC: codecs: aw87390: Add Anbernic RG-DS amp driver
  arm64: dts: rockchip: add Awinic aw87391 for Anbernic RG-DS

 .../bindings/sound/awinic,aw87390.yaml        |  34 +++-
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |  44 ++++-
 sound/soc/codecs/aw87390.c                    | 175 +++++++++++++++++-
 sound/soc/codecs/aw87390.h                    |  86 +++++++++
 4 files changed, 322 insertions(+), 17 deletions(-)

-- 
2.43.0


