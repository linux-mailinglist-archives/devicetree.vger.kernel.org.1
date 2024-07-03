Return-Path: <devicetree+bounces-82756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7745F9258F5
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 12:39:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 153592919FD
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 10:37:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 864E917107F;
	Wed,  3 Jul 2024 10:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="hQm9DNPv";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="cMB5C7vN"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh2-smtp.messagingengine.com (fhigh2-smtp.messagingengine.com [103.168.172.153])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1A4142E8E
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 10:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.153
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720003052; cv=none; b=pSqdQVi6LYkn2w1cp3gvKyEc6856qRjP+KDc34HPGU4xK/NEEiGoUyBh+G/3oY4WI3Ya92qC4usZhouRndQh+fphDZvkOAztyN1yXARFsZKfAfm5VEP7ZV78n4+2SWcY82eF27R5hW6MEE+6xkiPCD8Y/jxYZt81/ZRwWtp53u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720003052; c=relaxed/simple;
	bh=w1v5/VDSNBn5VbkdK24k4wg/x6imBQ79+4cJQdcC3d4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A3PqRA9xAJPjFMGZcJjtxnsizNX0LhETz/J76lAnCjKPx4IEW/BsL6+tP3UzYqQQCypd8sH1Erh+Z7GKg7z4HzvZLg9qZZn1SFaR+gEYGSP+HQ0kNn01YKM3gjuj51+CSZaM0dzXXZqpLxleZLptTd2LaasURO35ONRpKF4B+34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=hQm9DNPv; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=cMB5C7vN; arc=none smtp.client-ip=103.168.172.153
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id DA1CA1140299;
	Wed,  3 Jul 2024 06:37:29 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Wed, 03 Jul 2024 06:37:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1720003049; x=
	1720089449; bh=OgLrri9kd8QtW4gPLOxe2YyQSmJv4E1jU5C3+rByQXI=; b=h
	Qm9DNPv39eY8+Eu+uiUoMmTJPpim5TrP4dahVVjUNQFvmB6KLe8hNHCqLovDF9TZ
	LZYJNfSdiDftlKMUH5S7c1eUOcSITPr6hRtaqY4wkFEZ7isZtvdlz0u4/Qa07ku0
	kZLuDmhjTvrKuHUCAZBpgOGOzHrNBbTz47nsvQaZrVHsNZ3i1UGjFZvm4y7Bkxij
	YJeYO6XaZynBluwHp2+wPWe1nZ/iSlb2Z2tTSVliCklqr+E+KueXJwMsr+442Sna
	Yk7ncoy++7ix1xQbuWN8d45blZZv8t1OrDTb8hjzVIc2tutGmnW3zZ0e33MKA/Gp
	WBWpzSpI+S0oPa+X8npKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1720003049; x=
	1720089449; bh=OgLrri9kd8QtW4gPLOxe2YyQSmJv4E1jU5C3+rByQXI=; b=c
	MB5C7vNFWD4OjXhFqhWg73mpqWLA/DC7iDMN2tj0ouFaTvj0awoDPdDyy8SXR2JO
	aM6rsgG52l6qCD4FCyd3eb8g2Tj0wY0VBbXHzAYxxwesGCt4xQS/dGCE7FXB/9kb
	OMHI9kFrQG8/fAsAmDHg41tvDgBSJA/ZjcfyCPfH3DXw3G2gA4mHV/ERJa4BJhnB
	AiFiFthZpV6oybHxTUSUIhMUY82ayxlpv4/IHuQJpevtdjI16be69PUMsgLISVVD
	0VIPopVlcnChZMevh9uPgDPMZJqo3XtBV18KFBP0d2UVozbVpGJeIaCw8EGTv7S3
	LmRTb795cPxSiOqumpdPg==
X-ME-Sender: <xms:6SmFZu4IjyLKFT9iEbRr77NSMrSwKS5TyRCm0FlmRQtDspCpT9NNRQ>
    <xme:6SmFZn69SiDz1jsKxYcfc5E2awUBMZOKkKD8fx84B_7IFYokEEOaTWybpwo4PSXqx
    BkaNYvm5iOs8A7PWw>
X-ME-Received: <xmr:6SmFZtc6mtGa7MaB8REKLSeIfyBuWpJwotfbMV1GDsHcG7ex_ghjAovohRapvOzGP61KjxhbBZzz-58zIHw4QybtvBku6IFdag6e7jNhzA3Tug7c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudejgdeftdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefthigrnhcu
    hggrlhhklhhinhcuoehrhigrnhesthgvshhtthhorghsthdrtghomheqnecuggftrfgrth
    htvghrnhepffehieffgedtgfffjeetveegfeekleeileekveeuteffteetudffveegieei
    heetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprh
    ihrghnsehtvghsthhtohgrshhtrdgtohhm
X-ME-Proxy: <xmx:6SmFZrKjn8SASGd4pMlH8-P_e22AhIv1FzLq8cc1wGnisccFNQnVLg>
    <xmx:6SmFZiJjZqWwd0r22kN5ZDJDO07tsckf3iOg01ny-THwlIVx-zn2zQ>
    <xmx:6SmFZsxd58ncioPjKsS5rMd9rPiDCO-BeHjJ_sEKj8__YYlB9qCRdg>
    <xmx:6SmFZmLJdajLwPi4D3tupONmqVxJB13CW-s_tutk1KOVCXPfsS59zA>
    <xmx:6SmFZj4W-Al4YEvSwr2tlD6GtWWIr35_X6yCGn-4enPsnELRToT48xkM>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 3 Jul 2024 06:37:25 -0400 (EDT)
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
Subject: [PATCH v2 2/3] drm: panel: nv3052c: Correct WL-355608-A8 panel compatible
Date: Wed,  3 Jul 2024 22:31:45 +1200
Message-ID: <20240703103710.31169-3-ryan@testtoast.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240703103710.31169-1-ryan@testtoast.com>
References: <20240703103710.31169-1-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As per the previous dt-binding commit, update the WL-355608-A8 panel
compatible to reflect the the integrating device vendor.

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
---
 drivers/gpu/drm/panel/panel-newvision-nv3052c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
index ee0ce271205e3..6d119776f8bee 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
@@ -925,7 +925,7 @@ MODULE_DEVICE_TABLE(spi, nv3052c_ids);
 static const struct of_device_id nv3052c_of_match[] = {
 	{ .compatible = "leadtek,ltk035c5444t", .data = &ltk035c5444t_panel_info },
 	{ .compatible = "fascontek,fs035vg158", .data = &fs035vg158_panel_info },
-	{ .compatible = "wl-355608-a8", .data = &wl_355608_a8_panel_info },
+	{ .compatible = "anbernic,wl-355608-a8", .data = &wl_355608_a8_panel_info },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, nv3052c_of_match);
-- 
2.45.2


