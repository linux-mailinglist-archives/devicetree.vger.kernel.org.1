Return-Path: <devicetree+bounces-99711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5921B96ADD2
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 03:25:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1584C2871D8
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 01:25:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4451528F1;
	Wed,  4 Sep 2024 01:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="RQlVrmTG";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="EcGbOSMO"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh1-smtp.messagingengine.com (fhigh1-smtp.messagingengine.com [103.168.172.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A668863C
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 01:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725413127; cv=none; b=qf8Fyg22C2CSKKn8ese5XezqAmP4ZkzF18hFeddMkFN2COhMQebxdViAnxoSl+JgBJbMB+4nv1FfuQC3clgC1q9t4YVlPSwFSQLeVAg6YQT7bzcfNTYEhVar4lDDTt9yK0sibUhwksITeXdQyXyAEZAIxytnt22qtMdRQAFWhAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725413127; c=relaxed/simple;
	bh=hb6TXOJzjVIoGM4ZQiMpLvfDHepJuTIAgzDzU1XDAao=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IiFvgCgHA7SKcI2L0LOW2nt1MsadS8xg3WqDKF/sXuRen120u76diDV9mNN/Pwyf/MIZgi/fkqLlHsCvFJLm4G7Y/hoQy2gAMvaFujkgQAjtKmXx5nk4WAZcGcC1lYrgfxIN8reGV4NrujF3qRJrw9MgKlRTWXu1xh9XJ7xCDbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=RQlVrmTG; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=EcGbOSMO; arc=none smtp.client-ip=103.168.172.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-05.internal (phl-compute-05.phl.internal [10.202.2.45])
	by mailfhigh.phl.internal (Postfix) with ESMTP id BE6BE11401FD;
	Tue,  3 Sep 2024 21:25:24 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Tue, 03 Sep 2024 21:25:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1725413124; x=
	1725499524; bh=ySdpGRKwjdXK/NH/+xLA0x29xg7PSI+xHGOxd1P4usM=; b=R
	QlVrmTGSIqxh/0L9NePwbAlQfGBVm6a4LttRcEoYbZyw4sJKgStFA03YNApvIB3G
	W/lViE5xl0x7432L+87ctWUGOWGxY/mgBeLH8EQb376EUNN2OqPZQBzz/pwwDKdJ
	UetKkQqleNPo0rsIfnxTd8WFR8hwYbHltbZLpcPhy5yM2x0QX0B8c78gVDn9GWbm
	zdNUbluOagU92Q6DvviWsPdXsO2OKhboiP4KE4OKJYxbOhD2Y6OSlwGMELKuc9el
	2AiLXk7SPGUK2N+QwwNqmrn1EFsgRY2j7Uala9giyEzOU69HCMOLqpu7dt/b2rzl
	HMommUR1q8/A/IWMQxGyg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1725413124; x=
	1725499524; bh=ySdpGRKwjdXK/NH/+xLA0x29xg7PSI+xHGOxd1P4usM=; b=E
	cGbOSMO+DzD20cvEI0y+HpNgtbQJfdZHIqL1Yqdquk/BsuGMeTLB57twqSN6cOnC
	JnzYHGI8gt6CilcsD8x9CNHDNNhcfx5EsErhTJr6It8KTzIh+v7ZZlOdMLqOzkVx
	et75zgVoy8vBx4RysaVY1pgM0MhXmpsqwGhg/Wb/yGbqFNSK62NrVvlX/sgrI6+s
	++9BhGCQ1KjC6eZ1ZEp+LV1B0y9PFuNjDQTxDPnM3r+X2FvjDmeY1bUdJ8bBZkmj
	iE1O3J6KENFEH6Q0q5dUrfd4WZhbM5eT/TYwDWmC2iCsMrTfkUhaHI2Vr7ReV6Au
	0QXClpCd3rnQyAJB2tOdQ==
X-ME-Sender: <xms:BLfXZof1kuQ0dembmZ5pskEoilBqkyHZBclotZsjcLH5rbbvFSLgOA>
    <xme:BLfXZqPwkw1A8CLpnWW_to63ySOADddP23Yhjsk8SXyA4J6vOSS1HpP-Xh0gsTQUJ
    Xxzdpx6CjwSV6OfKw>
X-ME-Received: <xmr:BLfXZpg_1NnYNlXSPQUTHAXmVPhghBvHjjCo-hkTb2NnvOhE-8IaVDYIr59zXE1O4byh7-w4XcfWuzc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehiedggeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhephffvvefufffkofgjfhgggfestdekredtredttden
    ucfhrhhomheptfihrghnucghrghlkhhlihhnuceorhihrghnsehtvghsthhtohgrshhtrd
    gtohhmqeenucggtffrrghtthgvrhhnpeffheeiffegtdfgffejteevgeefkeelieelkeev
    ueetffetteduffevgeeiieehteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpehrhigrnhesthgvshhtthhorghsthdrtghomhdpnhgspghrtghp
    thhtohepudeipdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegurhhiqdguvghvvg
    hlsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgpdhrtghpthhtohepuggvvhhi
    tggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepnhgvihhlrd
    grrhhmshhtrhhonhhgsehlihhnrghrohdrohhrghdprhgtphhtthhopehquhhitggpjhgv
    shhsiihhrghnsehquhhitghinhgtrdgtohhmpdhrtghpthhtohepshgrmhesrhgrvhhnsg
    horhhgrdhorhhgpdhrtghpthhtoheprghirhhlihgvugesghhmrghilhdrtghomhdprhgt
    phhtthhopegurghnihgvlhesfhhffihllhdrtghhpdhrtghpthhtohepmhgrrghrthgvnh
    drlhgrnhhkhhhorhhstheslhhinhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehm
    rhhiphgrrhgusehkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:BLfXZt8PhSX4GUyQ4rh5jLdj_zLLgdTVNEQ5Z4ZR_NWRbu61UGQl-w>
    <xmx:BLfXZkvgwcULl0O0nl9JV_18vbd3AI2liSHVd3nlQ0167kt614efnQ>
    <xmx:BLfXZkF-GrNN2im7WoBUPr_V5iEEKMpEdNxbSmfdsDCWaZbBuWDPQw>
    <xmx:BLfXZjO5P0TZaEFur1b5zF-aZsQ-LslurbpW3MdLQE7yoYNgqFd8IQ>
    <xmx:BLfXZl9MFq8meThRp9wMeFrXjTWNUyCKPLu8o5fgY6cczT3BK98iS2Ee>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 3 Sep 2024 21:25:20 -0400 (EDT)
From: Ryan Walklin <ryan@testtoast.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Ryan Walklin <ryan@testtoast.com>
Subject: [PATCH v3 2/2] drm: panel: nv3052c: Correct WL-355608-A8 panel compatible
Date: Wed,  4 Sep 2024 13:23:22 +1200
Message-ID: <20240904012456.35429-3-ryan@testtoast.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240904012456.35429-1-ryan@testtoast.com>
References: <20240904012456.35429-1-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As per the previous dt-binding commit, update the WL-355608-A8 panel
compatible to reflect the the integrating device vendor and name as the
panel OEM is unknown.

Signed-off-by: Ryan Walklin <ryan@testtoast.com>

--
Changelog v2..v3:
- Use integrating device name with vendor prefix instead of OEM serial.

---
 drivers/gpu/drm/panel/panel-newvision-nv3052c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
index c5d3ead385550..d3baccfe6286b 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
@@ -925,7 +925,7 @@ MODULE_DEVICE_TABLE(spi, nv3052c_ids);
 static const struct of_device_id nv3052c_of_match[] = {
 	{ .compatible = "leadtek,ltk035c5444t", .data = &ltk035c5444t_panel_info },
 	{ .compatible = "fascontek,fs035vg158", .data = &fs035vg158_panel_info },
-	{ .compatible = "wl-355608-a8", .data = &wl_355608_a8_panel_info },
+	{ .compatible = "anbernic,rg35xx-plus-panel", .data = &wl_355608_a8_panel_info },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, nv3052c_of_match);
-- 
2.46.0


