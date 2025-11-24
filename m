Return-Path: <devicetree+bounces-241580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FB6C8000F
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:53:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E128B3A73AC
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1C9E2F9DB0;
	Mon, 24 Nov 2025 10:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="dUhWPqjV"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o15.zoho.com (sender3-op-o15.zoho.com [136.143.184.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C3826A08A;
	Mon, 24 Nov 2025 10:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763981612; cv=pass; b=oe4bsUftaBCPXXTFbHW14QMzePpe9T3RcWLi+hI9oZXbmF/8GdHwglxsBtspJs2jIyVTj48wmEnkzNNdbm9pLAqdDsnEiAb24Bird5Z6v/paY5W8fgQvJ0ED/vas3Kz9SxfnabEJLHUMo6g0LBWRnyrOgktFrdzwKaa3zb9Cb9k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763981612; c=relaxed/simple;
	bh=4AcwcLzhluLP8G8G8ovz7vXmBXYAG5xDFZFIJHcbWhA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=klucfAmS2kfT2qPuEnJ23bAnDRUzdq4jkxRnfnj20X3/TtQpNCh8qVAWirr45hwBqLnR/OrP7ze3ZSjRTa0laGcqDVgZh8ef1r1ecgP4O3Hn54hzs4f40AWbcbAdpa1YbYK8TlJP9PaKN95Qp+FSQLhzcLP/fxuBfWVB8Xf2t34=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=dUhWPqjV; arc=pass smtp.client-ip=136.143.184.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1763981573; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=MyLWk6DGeOqNZua+Ib/Kg1BXV5VxZhFtpGoCJ5ZU56Eiznb08Shp0lXGGMCBKaDc+DuD71uxpWDtjUbwUVIDrPJH5/jNkv+lk9wSiy0UDp9Bf2wJT/SmTYnV+Y6q4gUqTGRYjN6szsA8HbM2rUZ//ssCNTzuY4wj10tr/CndQNM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1763981573; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=5UH1ELIx0rGkAwsYn6mhBH82FdAwuQpZmsddW1CJp1c=; 
	b=hjXqEpxRr/DlpHzQZGTMYPWVfLfZI6oP26BNGuxZ8svTifBWjvoOxEkcFrgnH/5SZ+NWGj0Kd0KXzCKI/Y4ITXKdQVUeI+kLGiFC3aJfzXzPik2i4UHVjhsV787UZyz/2Y+GrsbiUSh0IPgMOscN5PCOAL3eJ98eL49psWVF8GM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1763981573;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=5UH1ELIx0rGkAwsYn6mhBH82FdAwuQpZmsddW1CJp1c=;
	b=dUhWPqjVSpCRi34J1erETOUIBVwH0DW2X4CVCiYmNM8Yw6xu4qZkUqiv7o54cT/t
	RnibpqKByAdhYRkL09x//Kq0rlWJ/5aIRGGRwIjr3uwWe4NcxvMSUu7Sy02DbvVlnR/
	gXVVGOBA1UC3wfcZd2W8Uks8AgGFH6B7QYghdeHlABOX4V8AUz7OE/phTMzZu3Q0m7m
	y+WdJW3bF2okk8Ts6ibwDHUuCqVbczmNwmsYme4M8IkU8Zo1+1XqPh2bsNcBYi4EOve
	wOt8VdgnDmDlrFXS4E7HK6D57uKRFIk/dRCP2SDqYPIduuIqjJzSmCK+8pHUbuM7gFv
	mqZxoUz/1Q==
Received: by mx.zohomail.com with SMTPS id 176398157093628.493570075381626;
	Mon, 24 Nov 2025 02:52:50 -0800 (PST)
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
	Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH v3 1/9] dt-bindings: vendor-prefixes: add verisilicon
Date: Mon, 24 Nov 2025 18:52:18 +0800
Message-ID: <20251124105226.2860845-2-uwu@icenowy.me>
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

VeriSilicon is a Silicon IP vendor, which is the current owner of
Vivante series video-related IPs and Hantro series video codec IPs.

Add a vendor prefix for this company.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
Changes in v3:
- Add Rob's ACK.

No changes in v2.

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d1882009ba9..88a83031f4d6b 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1721,6 +1721,8 @@ patternProperties:
     description: Variscite Ltd.
   "^vdl,.*":
     description: Van der Laan b.v.
+  "^verisilicon,.*":
+    description: VeriSilicon Microelectronics (Shanghai) Co., Ltd.
   "^vertexcom,.*":
     description: Vertexcom Technologies, Inc.
   "^via,.*":
-- 
2.52.0


