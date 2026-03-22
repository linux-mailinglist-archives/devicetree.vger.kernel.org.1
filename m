Return-Path: <devicetree+bounces-278674-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPl3Aqiiv2kB7AMAu9opvQ
	(envelope-from <devicetree+bounces-278674-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 09:04:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 814242E8924
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 09:04:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C7DB3301BF5C
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 08:03:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 561B73803E8;
	Sun, 22 Mar 2026 08:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="jwwQcydz"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-173.mail.qq.com (out203-205-221-173.mail.qq.com [203.205.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153C12C9D
	for <devicetree@vger.kernel.org>; Sun, 22 Mar 2026 08:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774166628; cv=none; b=WzHvttEoaPRLGR9xqSdT90B1W8p9C7lh64atUiNivRVWIUYQT5n/Ga7tT/CjPQcQk5lIrt0YDK+QnBN282ESSTXxMCLjQMHmK5SoSQzErIPu5DxMrm24X/B3w+DQjWubGIjFKxgEAKdas0vWxBrV3CdbhSnW9kiaGpo1QRBpnxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774166628; c=relaxed/simple;
	bh=8xfx3WzY1qxGFqr1kTfSBij3Cun70YAgBG/ZNyYjGOs=;
	h=Message-ID:From:To:Cc:Subject:Date:MIME-Version; b=YdvdwVAe5KmZdchpg+OpXugfg4g2H0n1fLvsvVaOMhbq2c7S+sS7xECy7aucf5UvbC9Zu3IqebHOam0lTmFoRw0EvV4U+bE1K9GzdSPqaIYl82p7kz/W9xVn5+IbS38eYXlfuXfiHJzJXUH8ZVfiSBoK8ITq7cF1WUg4BuMu4XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=jwwQcydz; arc=none smtp.client-ip=203.205.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qq.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1774166622; bh=1BvRYR6lmdrA4hynSKQhzU7hYO6Na2SwVAZl+zmB/dc=;
	h=From:To:Cc:Subject:Date;
	b=jwwQcydzfC7Uz20nlcMQvWpy0CSd7WfIwCqkjAc/xb4O3I7wucuKpNdGuR42NeMAm
	 tyZyDYf5MN0mB0bv3cXvufJjWvta6ZotsjsGoJ8Oeht3YrZ2nGLooEa4hvgsVpbBmb
	 58NSN+nP2hlbR/R6dKDTZWc120el3+ZvyQJ/YGJ0=
Received: from MYJGMC.tail4697e5.ts.net ([122.195.139.226])
	by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
	id E78F8E1; Sun, 22 Mar 2026 16:03:39 +0800
X-QQ-mid: xmsmtpt1774166619t1b7pk5ym
Message-ID: <tencent_8242AF7669D3804CAA38B34A176CA95AD308@qq.com>
X-QQ-XMAILINFO: NbgegmlEc3Juz82FgX+YcIWwGWEca5gPyoOXG3NiXlgnP68c7iSrJPj4C7HpLD
	 TRW0Qz6NIdOY4ek2jB6vK2lLY4nJNkb/o/rGRdv/qffDpUWXGw6XRD9QrROhyCyB1AQ63K826ODy
	 wVkMfpAe8tFO2r/1sry2Xdj7oucQQMu98NN2UDREQGwDj8UAylSqzMI4J+u6o6cERd5mBesns9IM
	 yxy1QG5rdIGhSfGvBB9hfiSF8VmMEKmNYwPKghDw7psbP1nzGO1KQ/18xoSVp977hcd85GimO5Ro
	 wBM/rLbS67ECWh8w2JCZ37tCNcR6LmkIqWuB90h1uElILgGzrUFlC7/Fu2SsW7pNYDlPVIk/Rn0Z
	 om0sCuDl7h+1B6kOSocYjS0erZROcZOExWnahENc3nArIy4yQ6lFKrLekp1WAA0gLdApJl927Rje
	 Ydlme4gc7doPvyk8qQUk9J8Nyl92crEzM2FvcDOqVPgqXrRJoP7bj5Rp8DBNP8yWPRtGpcT6fTHv
	 af2Tmkg5ypPaJzunFkGY3eYXNonjPJkSBOtSzo7UlnE25mFtyVE05qH8g3Par+WenuHHF9RoZEeA
	 x1AHXDoPEv/zKB9cgtMy8SXUP+4CuStRmRw/lCd4gS5o/ffWZHz1CRxt8cWqtiE3idF3f/CFEWF7
	 A/y+djHK20mILu2SQXChqqewWPKy5+VB+myAJ0XEMyKEWuVfb3iTdapMuLFOdXEu/1rBXoG4zGWX
	 dCQIDNY+8Dv4D87iLDQQElv23sLuFNwJ+1LCuY08pBLP0EcorRNy/ZMZWnijtHdFfoQeda93E2Ok
	 nMNHu4kaslD8puJP8r6N9nJ/Qbu39Vj4Ere14Yammfr1Y83nwCzhQ4ttmcJfHHEieBPFbW8Vb58N
	 dhvmy45LqXTKUMAWBXVlHcHFxfEioFNbzi8M1uhLwkasK6jlVDOOKZnm1mO6OBqMhG+fMdCzSQZL
	 o1vmDYnS8zh8pGCipuM0VgtgcIYILrKf9vMYEVrwfoQAK9IOnlysM8NlDhNiWo6xymfW9DOwg2h2
	 dxyzletGiwYrUX0QCtfAtm9URSLb8=
X-QQ-XMRINFO: NS+P29fieYNwqS3WCnRCOn9D1NpZuCnCRA==
From: wjjsn <wjjsn@qq.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	chenhuacai@kernel.org,
	zhuyinbo@loongson.cn,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	loongarch@lists.linux.dev,
	kernel@xen0n.name,
	devicetree@vger.kernel.org,
	wjjsn <wjjsn@qq.com>
Subject: [PATCH 0/2] loongson2 clk: introduce ls2k1000 specific compatible
Date: Sun, 22 Mar 2026 16:03:25 +0800
X-OQ-MSGID: <20260322080327.1606799-1-wjjsn@qq.com>
X-Mailer: git-send-email 2.43.0
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
	DMARC_POLICY_ALLOW(-0.50)[qq.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278674-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[qq.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qq.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wjjsn@qq.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,xen0n.name,qq.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 814242E8924
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The "loongson,ls2k-clk" compatible is currently used for the
Loongson-2K1000 clock controller, despite being generic.

This series introduces a SoC-specific compatible
"loongson,ls2k1000-clk" to make the binding more precise and
consistent with other Loongson-2 variants.

The existing "loongson,ls2k-clk" is retained as a deprecated
fallback for backward compatibility.

Patch 1 updates the devicetree binding documentation.
Patch 2 adds driver support and updates the DTS.

wjjsn (2):
  dt-bindings: clock: loongson,ls2k: add ls2k1000 compatible
  clk: loongson2: add support for ls2k1000 compatible

 .../devicetree/bindings/clock/loongson,ls2k-clk.yaml        | 6 +++++-
 arch/loongarch/boot/dts/loongson-2k1000.dtsi                | 2 +-
 drivers/clk/clk-loongson2.c                                 | 1 +
 3 files changed, 7 insertions(+), 2 deletions(-)

-- 
2.43.0


