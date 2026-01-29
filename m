Return-Path: <devicetree+bounces-260695-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAp4ADnGemmY+QEAu9opvQ
	(envelope-from <devicetree+bounces-260695-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 03:30:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 529BCAB239
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 03:30:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B16F3040474
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 02:29:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95A673559EE;
	Thu, 29 Jan 2026 02:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Lly0mtWS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB0A352F9A
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769653761; cv=none; b=JxG6FodLXbJdiydAn6819Yh0P1LuLs9mFLjq9qQXOhjIUZaeP5WX+9fRhzmJsY2qq2OBN2txDG/rahejtI7dMMwt6CsufVI14EJGYO5dlfXubP0diUjYtEZXigRRLGIBQ78tm+abpUtucl3gizXG3g0l7Xn+Dm7UXkCn8ocv67c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769653761; c=relaxed/simple;
	bh=auWIfql4Eqi/PyW7sBrBqSD2PXEbiclPGF37FC9B/Qc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HpBKDk0dlXadJe5/N2c6ALnph23SNG66xQWd1VLnWzDT1M/BHuojX9nmaC2WQ95puFE/5WFLAJP9iFzMyvYDwbhODlMUNJ6w6jlmgfh0jKOI+ugPfr0Tm7Y27fxINu7mGbJdZpGM2AFeEfVqerKyQ/nbrd/VGjXT5Xotac+AmAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Lly0mtWS; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-352f60d6c2fso269564a91.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 18:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769653759; x=1770258559; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2hnqyMVnWmWj8jg1bqTVOUz0c/5S35lK3Rmj22NSpoM=;
        b=Lly0mtWSLkxtHudusYzR6JuoW3SW6YMmj0VdPPM42cebJdg5rKZIdCGXwUNh5kcAbq
         /jmrdsly3DRXOz4wlsMBD+F9fHe3p2vtSBc4gxY9gT5LEkq+OlM9RQxT6WxCXQkPzRsK
         5reo7BZPAPN5M+M25cYg2SjWu8d24CBGMotVccugmdZ9UTHn/uriLWym7SBAvOJgWDrq
         qph3e3rpVTgfs8rQXEmlwecXhn51CgPCtCOyPdCzZGiTnrO0p4LgncpjIOLT1XEN9u1R
         kvI6eO6S5wU+1qBC1eppyI97n+zcBEiE/ERCfQEABGAMw9LeH5FkmjHjaOJUtlhvoWgB
         eUew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769653759; x=1770258559;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2hnqyMVnWmWj8jg1bqTVOUz0c/5S35lK3Rmj22NSpoM=;
        b=G378knQcP1q5Wdt25RkVjs7DqL/XqgTiu0XeHsP6BCFCn+B1vgT6/KSpIkt72Qwcf8
         mJR+jZcDt7cPBKA2yXCE2xKefBb42Ogk0oYBxzDoPvJuvwgrsv3SVFII5gUh0oksp/vv
         0fe5aNuVW0crVPS9upuXc/E9YxJY+DGVd89Bfz0vKoN/t4BNkH+NckIijuOiRVP2zCYi
         Zb7cJ/Dy2zjD/HhP1xX3XQKoJsJKoj1CpEvAyBfWlMmB+tEL8tXJRUKq11FjWC39TZn1
         vjDbni/joZLKp9vQSPBd1ReSRkWP4/iT0ogh6RzoTbzAeA10MFeQFLYPgfdNEni89tsp
         2r5g==
X-Forwarded-Encrypted: i=1; AJvYcCUYNJd0V584FwtFQmzInPX04S7MULI0iXowCpDVhJmFnHvNh5fgLywF4UtLiuD0SZFq5lSm4nwdS9kE@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/6Sksopa4ZASkhvcX89IAkiJ0XiALlaa85gEp9wWvIt0C8+jz
	2ha4VLVEDaZj/h5si7axw6nqauav0z8YahudRGP1FMRvONCcbPD/J5BV
X-Gm-Gg: AZuq6aInb1RzCOx8LNBPNyxiMIPTDnujXb20w79RfUOmKLHgiUO2N/Uz4PzpdRaL22M
	8hzL1aZ2PhJebcIqieEMCshrQ6CBQwgC8WUrM07fMpMgVPk5cExTITHYndbQZV0ZdiE3b41efaF
	9CJkbu/WvzoNe8G+7pnUXQPMbdvcHBPqmVKw44LJBSoc8PZsGWnXGmB9pv+++zrGcenxFrdDUzq
	frwibzaQOLS6RNUNrNj1kngtggiP1rzWq6p5CpaZioHXMrob9tSWySTRBv8CC6cDmWutZpclgmE
	pmAVg25DrCg1RqDeCs8dEpExwv96mWcbtEP+yZAPAN66IWDyJUxcwLdSwEqPs70ucoXlY53wLkC
	oGk7uP+jDqoYa6jKSWxrO8jQ3TI6+Pg4zBTsarR64VTB9KF5oiBLe3Ohpvqk/y8fE5cVNrYycHj
	QXNzEjMkf3YdMPE4ctqKmUoOCg01HcMcgwdXDYgecq2a6URQ575Vx6UPU=
X-Received: by 2002:a17:90b:1a81:b0:352:c146:dc39 with SMTP id 98e67ed59e1d1-353fed7b21dmr5803708a91.30.1769653759547;
        Wed, 28 Jan 2026 18:29:19 -0800 (PST)
Received: from wig-Precision-3660.. (125-227-154-99.hinet-ip.hinet.net. [125.227.154.99])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3540f2f0283sm4380542a91.5.2026.01.28.18.29.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 18:29:19 -0800 (PST)
From: Wig Cheng <onlywig@gmail.com>
To: shawnguo@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	zaq14760@gmail.com,
	Wig Cheng <onlywig@gmail.com>
Subject: [PATCH v4 0/1] arm64: dts: freescale: add pixpaper display overlay for i.MX93 FRDM
Date: Thu, 29 Jan 2026 10:29:09 +0800
Message-ID: <20260129022910.3942028-1-onlywig@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-260695-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[onlywig@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 529BCAB239
X-Rspamd-Action: no action

Changes in v4:
- Drop invalid property

Changes in v3:
- Misunderstood reviewer's feedback in v1, improved commit message description

Changes in v2:
- Fix Makefile alphabetical ordering
- Move vendor property before status in device tree
- Simplify commit message as suggested by reviewer

Wig Cheng (1):
  arm64: dts: freescale: add pixpaper display overlay for i.MX93 FRDM

 arch/arm64/boot/dts/freescale/Makefile        |  4 ++
 .../freescale/imx93-11x11-frdm-pixpaper.dtso  | 50 +++++++++++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso

-- 
2.43.0


