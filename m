Return-Path: <devicetree+bounces-271237-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADijBkuHqGn2vQAAu9opvQ
	(envelope-from <devicetree+bounces-271237-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:26:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2122070D6
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:26:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8C9B3301FD45
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 19:24:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E97AB3DA5BB;
	Wed,  4 Mar 2026 19:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QnFrsBzQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3683CD8BD
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 19:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772652280; cv=none; b=id8Jbsr834L5062DFoBTkdvjuiiUX3CUXSuBnRj0oDGLRwEfwpR8kY9uE+uKeXZqln+e9f+soTsMX9auOa+TP1JzMTau6e/HxDVh+QfMfdwpPs4ofSnCoPDr0cLhQOX+2j28wGZrFW5EUftyoHh2AnKZJaS+lE6v+V0eJ9nOVdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772652280; c=relaxed/simple;
	bh=yaQtOkvwEJm+2B1SUIvGePgasBKUy7wimGqQs4QaqR4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BBUFqQjreH1i0qb4uHIRzXZccHfYNWFoHutUPSNirCnImRvY9rZBl8HxRveiEetJyyvPSy3XVan3lxqJPLbbZHoYkk4SWk2egR5/5I72vEGjrOfmkFiGa3KmCN3HMFgucLaxm9kpJWwT2vSLTQQ7iqk08sRoARzUgsLrsAMF3as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QnFrsBzQ; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-82747396358so3770253b3a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772652279; x=1773257079; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zOuIkmgeu30O4yBUUR0bUaK0PmNnE0z/sa5+7m6TQAc=;
        b=QnFrsBzQwMqdx1h0pLB+9K8mCzzpuAUPu8JhqGa0IcLn1ajYjXPLtKZqqhbRwL/EFk
         7yE+iEh1UHtGWVr9AjWeK3gazwprWdEIGur+i0H10U8tYdnQSsm+XGrXq/9qOgUfGqlb
         qBHlHqU5G2YHBrwcLva0dkm5zyxfn+KyyA/TaEGRp3ehBjsqY16RNHgiNAK/C3ntNYZ0
         WO69DwpiKAGBEMZsR6CUlaqq8bR3yBwQPOzYJK+WV2foDKzEioXIpAsvB4VmPPaG/wog
         rH2ZYyjEhu9ZSHMDConeUL6ENPCvSe6lmuZ9A9hAKEzJdoSKT+bzAhJNWfTvc2RKDVgt
         bYhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772652279; x=1773257079;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zOuIkmgeu30O4yBUUR0bUaK0PmNnE0z/sa5+7m6TQAc=;
        b=XEd2/6cBH503YbnFIjHIlgQGL79OmFxMXhL069og2aK5ubBQlvnUhNtA89cVOwTdo9
         uIpBU0aWKZ5njpmgQo5CZ+2debwq9zs1LgR/Ioea2rml3YaMbnXeoSe6JrmyAVP0mLoD
         iYkdcRd0IQYZWrVqmj8Cjjfix+DhwEqKuYk9XPZlC9IPvu05Fu7zFh32YfO0BQn+WwRF
         D7DJNfMnPlvf48//O6b/O76gWSGBo78XCQ9kNWIL7iLxF/fubAkBBiUfN4kL+c4QOZ9c
         rkVNcVzPeulumcf8tNSe/6gbvT4jM9Qgz3+xWP2fci0WCcjg/iGB6snxDoPxe1Y+WMsA
         eEhQ==
X-Gm-Message-State: AOJu0YzeaNvrbRGlpBNfWZVnzzILoeNPIhZafzMNYMRfGtqfWz96QZrN
	BwmO2EXY80tJIEzf32VFD29UiFfnt4E3pWUeGqDe+rRLFkGEJVyZtu3f
X-Gm-Gg: ATEYQzwCHa4H4nOXEtaYfZ/AuMSJ16BbCltabx3ZwHWygNIxxt0UQW4LqoJ4FwkCCfT
	1pg8pMSE6+KUmJUljb1Vf4NZL2rTPGaUvoOxWSujyob+YYLwb4cC+paGGeC+m5232S3GXnzKCOo
	Aaht/Cg3wMIMP8VzgyO870Em1ZSMY2qJFI9MFJMv1OA2NTNb5w1XIPjfgq3ka46Zj+dKCRSJ0zo
	qCiFQec0Ios2tRkUhi2/DUAc3fMZv3XJbrl6S0MGaDa0OHPoyQtOxUvKNXs++euRwmcSHanr5AZ
	OtVBSJUdC85K4iM8Ugvs07Ix/AVyfnjAVauEGgNobuGEN6LjxwE7EXoIz9I7AW7GEbSrSXztSDG
	j5WPIalRYDnc/pl2YqCsogUFL5viL/Zd4oE5mSU8J/QwgvQoOgtt82IgcI+krR7XtO+msrpnDeF
	t3iqj6//1W3wdUxOxentBhFSItEj0R8zW72TIVH9DwJzh9n0DTacJiWe9NICiZox2h9DcodAPNl
	eEODhA=
X-Received: by 2002:a05:6a00:22c6:b0:81e:8e66:38d8 with SMTP id d2e1a72fcca58-829728f0c2cmr2388151b3a.10.1772652279202;
        Wed, 04 Mar 2026 11:24:39 -0800 (PST)
Received: from buffalo-ssd.taila54753.ts.net (M014013071096.v4.enabler.ne.jp. [14.13.71.96])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739d8805esm20233563b3a.16.2026.03.04.11.24.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 11:24:38 -0800 (PST)
From: Akari Tsuyukusa <akkun11.open@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sean.wang@mediatek.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Akari Tsuyukusa <akkun11.open@gmail.com>
Subject: [PATCH 0/2] Add initial support for Lenovo YOGA Tablet 8/10
Date: Thu,  5 Mar 2026 04:24:15 +0900
Message-ID: <20260304192417.818211-1-akkun11.open@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 3E2122070D6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-271237-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

This series of patches adds basic support to Lenovo YOGA Tablet 8/10.

Akari Tsuyukusa (2):
  dt-bindings: arm: mediatek: Add Lenovo YOGA Tablet 8/10
  arm: dts: mediatek: mt6589: add basic support for Lenovo B8000-F

 .../devicetree/bindings/arm/mediatek.yaml     |  5 +++
 arch/arm/boot/dts/mediatek/Makefile           |  1 +
 .../dts/mediatek/mt6589-lenovo-b8000-f.dts    | 15 +++++++
 .../dts/mediatek/mt6589-lenovo-blade.dtsi     | 39 +++++++++++++++++++
 4 files changed, 60 insertions(+)
 create mode 100644 arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dts
 create mode 100644 arch/arm/boot/dts/mediatek/mt6589-lenovo-blade.dtsi

-- 
2.52.0


