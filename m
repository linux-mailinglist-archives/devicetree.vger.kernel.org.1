Return-Path: <devicetree+bounces-174813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 087B8AAECCE
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:22:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22212189CC58
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84AB928EA51;
	Wed,  7 May 2025 20:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="edWv23yb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1A128EA52
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649351; cv=none; b=db3R3q/bGQcjgz2GwMKz7U5wPMsmFGftRr3YeQUojIr3iFDGsDt46piDKDG1aOyVFU+urhuSifhitLY9QrzkkULW3KT2bQKBgzcrdEVGlnF3+sOhlKBx5jG+xpKJJGQna0pTAjeMaQUlRQ8c43OLtDbFc5gOoKxSvD5GtKitEdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649351; c=relaxed/simple;
	bh=4hIfE/LE0Bo5hgDg8MWhBMifz2o9TEh1kLGyL38EbdI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VpsdkRflZNDqWthd80gdO1rLT9KHOF4r0RRvQye5ohuVNKpiLL+5RBCT/qcSOi4pBT/ATyHfvzcPIhw0ojoQNth+OmLlvMLY435yuyXaz1e+eOT+1lWsVFjEGVydZ0YpEpF3POigrI/w+Czvhn+zF7JCLZaNmm6IgPYNxs0rH68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=edWv23yb; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-72c47631b4cso135752a34.1
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649349; x=1747254149; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uejrNc06iTAs+YLZjBRvSkO6o5dbouRkykrkJDTloTk=;
        b=edWv23ybdJwAWCVU+z13dgYwH/TirMYmKrQD0HqKjIktsK3Bjpu37LeWVfDYP84Dbc
         vMa/J+AGefkGTPPKocCl5rfXcbKk2Jsk+tO15n6DPOQ44bK12dhlt0zvtJ4uEk+6E8/p
         Iq6oXpKIaii8r5IuvJxa48zNIFWt6Oih4cADe4G+A1Bt6P2FYysRa4D8YMi9IqF5kH+5
         v9iS0DYlrfnlpSur/C7P3jI6Kc2wvbfMGReT+8IQTVyCJAdYDxJKuiCHS68HSS+Pv8G7
         cwZN7i5B8XeKQeS+pZYozu+l0RMFtfmdbfmZuVBfg5g8yABy6Wngp/ID3cFN06HA8+vT
         CNCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649349; x=1747254149;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uejrNc06iTAs+YLZjBRvSkO6o5dbouRkykrkJDTloTk=;
        b=VeE/mEI77yP4H+g5W5Qbemto/FeZMfCOWKgbLhf2KPjtiBRLckvtCrSMJgw/UpNPvY
         GoyYRA3786yh2veTjhTMhWGJR8UUzybISurCR2OVrgB5RsXWTbWpz8YZ8Awilq7K8sXx
         bTxyDy0DeRSqmvIYrtWJiC7rM9WEW80tANCEJOWWzkT6X9Kg3wtJYal7q7fEgg7jHO71
         FJ+W6lCUH6FFUUJkRtXGTCS3mNjmzMaNaekmQZYS9mHzs1vZI0fuiqK1m6X9RNfLdn+w
         j69XFnSeq2YHElogJW3nm6T68AN+DR8kuNoaZlw3GoN7KITi5Bv2CTRuV3d7ZaVwnisj
         5K4w==
X-Gm-Message-State: AOJu0YxcoUUfr5ClURDqVOFXjKn5PBUR2JuSzsE4m1SuY1+KGkckO1ne
	i54EbKEDs0d8W7nxxbZLpOTlNN6RiE0K7UpI8UfE05KSDo1oGwdkg6U4TQ==
X-Gm-Gg: ASbGnctuetliKErbJ94fez0u+M6dP6qnAoiqscMppFQVbsxQbDVcgn9hgmKJ66MbQct
	1guaFT20/yXvnapdCJaqsNncxDXpDUZohTH88IxDUPaXJ+SUy7TP68IJelvYXbc0z6RUH4wzbBJ
	zKX2SCG0En2ubAsYE3DXU/2AxtNbXZtWN5Mb0V90fAkzP8nZc8BDBityAU3nJgRjhXMn9M2wurr
	C78aG+pNBZLwdWa73PqLNIaCcRDz5gLnqqhKPQdKD8i+nUiRzfU95yu4JweUbd6UqGkYqbSPgtD
	bLWgsbMqoIzJz+vM65J7cwlz8fvY4oYdgdE72p1lqBgnPWMhKExPDvTxxzsHVtGFvkUFwoY=
X-Google-Smtp-Source: AGHT+IFJzZAXCyZXw0QWeomPprmm2P68wLAv+/7r9VxtEI/Sd4+CGxIKlA//Tnd+huAraTUCYejlBQ==
X-Received: by 2002:a05:6830:3749:b0:731:cac7:3634 with SMTP id 46e09a7af769-7321c341618mr506386a34.3.1746649348955;
        Wed, 07 May 2025 13:22:28 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:28 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: [PATCH V9 02/24] clk: sunxi-ng: h616: Add LVDS reset for LCD TCON
Date: Wed,  7 May 2025 15:19:21 -0500
Message-ID: <20250507201943.330111-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add the required LVDS reset for the LCD TCON. Note that while this
reset is exposed for the T507, H616, and H700 only the H700 has
an LCD controller.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
---
 drivers/clk/sunxi-ng/ccu-sun50i-h616.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h616.c b/drivers/clk/sunxi-ng/ccu-sun50i-h616.c
index daa462c7d477..955c614830fa 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-h616.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-h616.c
@@ -1094,6 +1094,7 @@ static const struct ccu_reset_map sun50i_h616_ccu_resets[] = {
 	[RST_BUS_TCON_LCD1]	= { 0xb7c, BIT(17) },
 	[RST_BUS_TCON_TV0]	= { 0xb9c, BIT(16) },
 	[RST_BUS_TCON_TV1]	= { 0xb9c, BIT(17) },
+	[RST_BUS_LVDS]		= { 0xbac, BIT(16) },
 	[RST_BUS_TVE_TOP]	= { 0xbbc, BIT(16) },
 	[RST_BUS_TVE0]		= { 0xbbc, BIT(17) },
 	[RST_BUS_HDCP]		= { 0xc4c, BIT(16) },
-- 
2.43.0


