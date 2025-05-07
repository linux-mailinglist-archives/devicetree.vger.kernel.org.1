Return-Path: <devicetree+bounces-174825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C24E7AAECF5
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:23:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF8035070AA
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:23:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF83E28F503;
	Wed,  7 May 2025 20:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cXnCMRfQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC3D28ECF9
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649360; cv=none; b=Wk8L3Qwuv54J7S+70enB/3Ad4FbRXUCXdP1SfNpxbeTi1MObxZ4xhzGvKE/VJbxmNnij5tIyAaa+CHHv+OT/gxWcLlMrr0bZgw9kUN3mr7uzgqImZ+l6SDLZ4K/rphb9sbdq3/zQcPqcSEKVxLLXv9SNsmo5VnzlYkzQTzBi328=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649360; c=relaxed/simple;
	bh=PMsn3/Ay9JxV3iOA8EPMcvBM4yoVvPyA5PJfG6KjXOc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HLYqUGx16S5wK0w0+KNyw0i5TsAFu7+HLvi46Lbw1n8K0LQQmIWy3KSfFgx4JxYLFQInsMxpDWBeI6OCnzxG5tO3hN/wlCH0waURKrmPdT6lApQU2jWCVUy2DTIyLT1fYBOZfIU+sbQiREsbFiEcMVYUfmJ+gDs0KCVOE+LfM5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cXnCMRfQ; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-72bb9725de1so61313a34.2
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649358; x=1747254158; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8mIGvJTufAsSoppe4rs7rmEWLnBgi1PHvYLOO81jKxw=;
        b=cXnCMRfQeSshejskq6pgiKk9CX+65cDK62A2Vq06HAYrDJZfy5JLi7O5GIoHBOoy72
         G67w9VYlPu3nl2nzrKjaoFnwf/hMPnUCcJ0X+5OFv0UwAwDDF5xJkC3+4kkm/KcG9hNo
         9PIwMdtzSj99nYpd3cFT3Rd6RsrFYnUE9C7z1AfsnBrLerguij/ebrZR1KLXlAG/3AGp
         ziPM1rPXUcx/FkDcmUW3AKJip1prrH4rvM6PG+noiLTng5vcyOsDFl8+TfBL//uyCE4A
         vLCXt+WQBrTFSNVtM693zL2f8CRYbrwwwKyZ0a7GJONfOLsYALRt4+ODN+VuxiLWh0Ot
         qbtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649358; x=1747254158;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8mIGvJTufAsSoppe4rs7rmEWLnBgi1PHvYLOO81jKxw=;
        b=wbSACj5DWB2PFi/SEEImra5fR/SOJ0H9y7/49Mzu78TbjS8X9/ZAbx/+biRxoKC/BE
         MzYjm0cVwQMHAUwQ0gHAWgP+YnLBgvQmdgQ3itB6Go2o2+iC4kUFlwdjY6bps0l9SIYx
         RKMfdf9sG94gebxu1OQfqYEVRnusuVEm9zSJ+5w5ab8MoIWATPkMIlKY4EtY4VUJS9/w
         m5t/prb9eq3LYZPTsF67QxSYyt9khaS+jAsviqIxHRpCz9l1k2YgPUxneYQE+3d5LtI/
         CcKr6ZdQ6q0nvaqZ2AIZiyQq7yv3CgIdI2ulSpID15crhT4A+q+s9Th/sjW99la1olTq
         6IpA==
X-Gm-Message-State: AOJu0Yw8VDoTyJTFti6PNAq7HBhaqzW/rYNDDziN30xPe0yS3Qugrfjr
	PL1IuG8jltkMFTDzmDmwoXeTcxt1VEnfvwDN9gs6z27QpQCa2bwp
X-Gm-Gg: ASbGncvjo43cKMGyBHcnY8errB8zde+iCrSv+fxfBpfRHr0gWo42g/X4tnNb3xIieV7
	4w5S9GYOWWyrJSMCpns2PvOaJnAyN/vsvb6CUvg0/eXBD6gQuyi4iea9Sx/S3bsVSVbmUl6+Npo
	0ytYAIRT4E/rzZc0CAcXvWu/v7DOZuBTT1r6gRlfzfTYVZUCPu+TITn+1lIpQ0dtTe7JhF25GWw
	Gav1VDDQHE4Yv5l6Z0a2QUmHJ56idLvpnVhiHw2gAgCmdEM0citTLM/UWH1poWtyw3MuVWW0XIG
	oTwqdi9WeQDqQSvQjzTeZ4R1AsycAun1Jxtb5FU/EbXAFcueprjnWqj+h4jP
X-Google-Smtp-Source: AGHT+IHcSoKFAVM889xXWDRRESTkmKZwmdTzBlBWvS9Mz85bqYtY6rkC9bb+3ND5pNYa+fTL+SOn3Q==
X-Received: by 2002:a05:6830:d83:b0:72b:8a8b:e032 with SMTP id 46e09a7af769-73210a6eae5mr3335106a34.2.1746649358256;
        Wed, 07 May 2025 13:22:38 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:37 -0700 (PDT)
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
Subject: [PATCH V9 14/24] dt-bindings: allwinner: Add TCON_TOP and TCON_LCD clock/reset defines
Date: Wed,  7 May 2025 15:19:33 -0500
Message-ID: <20250507201943.330111-15-macroalpha82@gmail.com>
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

The Allwinner H700 exposes RGB and LVDS pins as well as a HDMI
connector. This requires additional clocks for the TCON_TOP and clock
and resets for the TCON_LCD LCD controllers to be defined as per the
T507 datasheet (which shares the same die).

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 include/dt-bindings/clock/sun8i-tcon-top.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/sun8i-tcon-top.h b/include/dt-bindings/clock/sun8i-tcon-top.h
index 25164d767835..2a12d047d2e1 100644
--- a/include/dt-bindings/clock/sun8i-tcon-top.h
+++ b/include/dt-bindings/clock/sun8i-tcon-top.h
@@ -7,5 +7,7 @@
 #define CLK_TCON_TOP_TV0	0
 #define CLK_TCON_TOP_TV1	1
 #define CLK_TCON_TOP_DSI	2
+#define CLK_TCON_TOP_LCD0	3
+#define CLK_TCON_TOP_LCD1	4
 
 #endif /* _DT_BINDINGS_CLOCK_SUN8I_TCON_TOP_H_ */
-- 
2.43.0


