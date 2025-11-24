Return-Path: <devicetree+bounces-241589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D85D0C80065
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:57:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 718793A848E
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:55:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B269D2FB093;
	Mon, 24 Nov 2025 10:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="TWWz6X2t"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o15.zoho.com (sender3-op-o15.zoho.com [136.143.184.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028DB2FABE3;
	Mon, 24 Nov 2025 10:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763981704; cv=pass; b=Pufem1Hf+Kq5iwZLVy2tzJFLNwgOSgd60hFUgXyIH5QlxGO8Ep5yxkkVw01Aht6ceErAsjKMDS+g0j693pWBx3W6vCgHi7aBvl60Hr4xRoPAFF/OOEkBvcNBaP8S7WEaqc3TF9RSjmpxVlY1WfEONoQLJHm/SdCt3XWM/sOWCEo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763981704; c=relaxed/simple;
	bh=9QHBFDJx8YJKgBmVDxnkDCTEJGV098u9GXsyye7kaXI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hZPI/kN50xOW3eU6OVYT58s+KXowusTJHBhQWJcTwPdUx+HWJjA13F0dAIZkZVSYFVqiQ/W4MSQtkeswceQcVS+1t07b9jEGHwEX9O3bSroCvQJWmrPlL3Sf7DIGPAdvVe5reLDoOeywke5wtOFxE7j4QBPudNkkUptuWw9fsdQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=TWWz6X2t; arc=pass smtp.client-ip=136.143.184.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1763981664; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OIsVpKfcVrxSU2gzPLJqk4yb5n7XUPOjYH5M5eBioR6M5DdFWiT6gHDr1h8zIEhR4f44J1ATEVdfgnOe1kaKUqGpezXjfWQ/eukr5E0Mocf1ItegCe2YCzf0pnrqsCWLqzck1DQhzZSepzbBtL/KNi1HECTC1/0HaeAGzfZe9rs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1763981664; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Dy+F+hKCykPaqJ6R99BwSYKWm6GVFKaTddcik5k44gQ=; 
	b=khfuFXdODYvBWOi1dGP2MymOU++hJSqmOormJO3wN1Qzwbp435JFWx2yeGRh9CVC7EkeCU5CQbY+QbhysLWKjtpcXljBOecQPAJKBN/sZ2ZSpJpz+0PCoRXtaPmQMYnnSjzXLA1fFF+f1bicE857UIIXXknfqjVDs+Wk2S+FOEo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1763981664;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Dy+F+hKCykPaqJ6R99BwSYKWm6GVFKaTddcik5k44gQ=;
	b=TWWz6X2tNdnd4N9YxF4WFYuHszeONjtMZZTCUUMzJovjYlXCN4Sq8cCRMkWHGK0d
	kilQ7F9dcpbcQW2j1WrSa03sZZy06E++4HbqHQ/LkFzSRqKXw6OYmkfpK3r/K9NcQs3
	YuujuphId2JLDSGByTmnZGEjeM4Z04hDUjYyIEsg/PpqmzU2DnQYpyWwWoU5z83foak
	Y0G6quZTPWCwcepxWCCC8DWA3q6sfy7PNRbApu4f4K7JbDhii9fkueo18XtXLB6r3oY
	SaaZ3ott9UW2Y7RlIKcpgP2Gr4z7usV4lBIz2w9bLR4rH1IhgtQGgyfbM9zAXQ/TX9U
	0o/kOHVEyw==
Received: by mx.zohomail.com with SMTPS id 1763981662595209.19285309448685;
	Mon, 24 Nov 2025 02:54:22 -0800 (PST)
From: Icenowy Zheng <uwu@icenowy.me>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Drew Fustini <fustini@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Han Gao <rabenda.cn@gmail.com>,
	Yao Zi <ziyao@disroot.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Icenowy Zheng <uwu@icenowy.me>,
	Icenowy Zheng <zhengxingda@iscas.ac.cn>
Subject: [PATCH v3 9/9] mailmap: map all Icenowy Zheng's mail addresses
Date: Mon, 24 Nov 2025 18:52:26 +0800
Message-ID: <20251124105226.2860845-10-uwu@icenowy.me>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251124105226.2860845-1-uwu@icenowy.me>
References: <20251124105226.2860845-1-uwu@icenowy.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

Map all mail addresses Icenowy Zheng had used to the personal mailbox
prefixed "uwu".

All these mailboxes, except the one of Sipeed (which was only used
during a summer vacation internship), can accept mails now.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
---
New patch in v3.

 .mailmap | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/.mailmap b/.mailmap
index d2edd256b19d6..f023a0c4e565c 100644
--- a/.mailmap
+++ b/.mailmap
@@ -308,6 +308,10 @@ Henrik Rydberg <rydberg@bitmath.org>
 Herbert Xu <herbert@gondor.apana.org.au>
 Huacai Chen <chenhuacai@kernel.org> <chenhc@lemote.com>
 Huacai Chen <chenhuacai@kernel.org> <chenhuacai@loongson.cn>
+Icenowy Zheng <uwu@icenowy.me> <zhengxingda@iscas.ac.cn>
+Icenowy Zheng <uwu@icenowy.me> <icenowy@aosc.io>
+Icenowy Zheng <uwu@icenowy.me> <icenowy@aosc.xyz>
+Icenowy Zheng <uwu@icenowy.me> <icenowy@sipeed.com>
 Ike Panhc <ikepanhc@gmail.com> <ike.pan@canonical.com>
 J. Bruce Fields <bfields@fieldses.org> <bfields@redhat.com>
 J. Bruce Fields <bfields@fieldses.org> <bfields@citi.umich.edu>
-- 
2.52.0


