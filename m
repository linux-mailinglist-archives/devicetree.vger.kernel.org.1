Return-Path: <devicetree+bounces-125178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA699DB22A
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 05:26:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3DB82827E6
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 04:26:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8413F13C9A4;
	Thu, 28 Nov 2024 04:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CKJNNjGo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAD0136349
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 04:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732768001; cv=none; b=s6akU9+YQm1r2UROyP/wUe3F9VmH2lYfRPi8c6TVPYAJsvZJBLvCSPaTbmmTXDi/8ouW6svAS/DmJyJxatnMJmO/J0DRZR0KEtdNFLZ7sdk0gbLAJp/kLxECdA2OskXfAFeoJtO/0lFT9nq7oWppQlDxY8HqiRLeNEJSzHZbq+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732768001; c=relaxed/simple;
	bh=SQ5HTme1SLECGbVCaGoPHfecPrbsN1EOEWv6CHUAVP0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WDsr2pJiStS/JIQ+iF2GCWwnQm4zWR1pK1t95LAYsDBdDHOM76AHcKv7Fjo2AUQQV4xsvmFZa7eaLly59xxpozOyG/hMmbPmAvSIBhbxtTf34lbA80XOfUsHs6ZQpw2wOfWvrHZKSaP2Y/srLwBFoo7u6RVULMh4Guoy79ozqPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CKJNNjGo; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-724d23df764so459651b3a.1
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 20:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732767998; x=1733372798; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yyk7Iou25uRg3TCJZa+tSFUnZozoGmQKQzSvVwcJ1m4=;
        b=CKJNNjGoB9nwkV51z6xz+dTyhdEk8nnBvfC4B0VL+W608Iqw9i0VUSAj9R1JYjCwBm
         BWyhJK189hq3Sg+DDo46Q/IkkxmhhUOLHGK/W+IfUNCjUDKqGSiFuo4riaROENZRoKo4
         EGmNhP1t1xLCk/OAp5JHt8kILqThOL5Ee1noQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732767998; x=1733372798;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yyk7Iou25uRg3TCJZa+tSFUnZozoGmQKQzSvVwcJ1m4=;
        b=wTHLOT8a58ubxGfnFRr/Gi1G6ge13LqAw+9HW/YAxOAINechqQlXPJaj6QF6I42zjx
         6ci1ywxXV6gns2wJSH782K5/TOhqmMtWJGyJXq9ZMB+CvrPk335S1Ioe5Hmc1aCxuMXz
         lDwCkzRugFgFUywmhCc6GfkyjupQ8T2M1vMk2lPKLes4mSnmDW66preQP7wl3QXy8BDw
         oaNfEQdVes3CdQzP7cnenk2bFkAzrK+M2UODiEpNuINcGatL77ac28FHBe+rQ6CgqIyh
         BeApKf92IPpUqZ5lAoBMA0f5HAieIpDJH0j8FRlrgHXuTFsPfW+KH5WgKTGctrBJ7ufh
         F4oQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6lD8a43kOhHw+RbGunjc7CyG/fkuw+izLFclb5IEqu+HP8jg9oFczJHIvR/AkQpwO99F/JtNQqFJi@vger.kernel.org
X-Gm-Message-State: AOJu0YzJuAVxw+MslJYhmmIT6iDI22WUWWVhXToWUKNrLlAO3WH0T8jW
	m2F7VNYBUuagBZCjLEM/yt/417OI831di+XDfQbibQ/if/T//zOc8ogux3Pljg==
X-Gm-Gg: ASbGnctZrmS8r1f73xUBzVMrgj8yHC08wabOgriXDWwWPhqj5pHTczNX/q+idkvhplr
	7uUHx1g8qjKpw7mQQlgb14kuLj96xWoptQnh2D+TY2S+a00mt3LcmZnlO9SYMGGnLMdDxVCLx7D
	OX7cVbURRA0OJGboc58ag9nizaqna08wqYaNsfGfHYwOveg6dRI9YmGCf2j203fAACzD1z0LeHg
	QiA4acUHajtqZqh6IENFWOfjpszDiV5CP4y1tG844rGFi9VdhjnfajQPrEgUiXhmhiQ
X-Google-Smtp-Source: AGHT+IHeZNuSWgVtWvTDokMDlIw4ArRKKjwJZ33jbZfsR02Ur3asny/Ji3uLw2rlY2Y0R8BhHPJDpA==
X-Received: by 2002:a05:6a00:3d0e:b0:725:14fd:f62c with SMTP id d2e1a72fcca58-72530078935mr6645836b3a.15.1732767997932;
        Wed, 27 Nov 2024 20:26:37 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2db5:507b:eafb:b616])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72541849509sm439133b3a.197.2024.11.27.20.26.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 20:26:37 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Wolfram Sang <wsa@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-i2c@vger.kernel.org,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] of: base: Document prefix argument for of_get_next_child_with_prefix()
Date: Thu, 28 Nov 2024 12:26:30 +0800
Message-ID: <20241128042632.231308-1-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When of_get_next_child_with_prefix() was added, the prefix argument was
left undocumented. This caused a new warning to be generated during the
kerneldoc build process:

 drivers/of/base.c:661: warning: Function parameter or struct member 'prefix'
 	not described in 'of_get_next_child_with_prefix'

Properly document the argument to fix this.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202411280010.KGSDBOUE-lkp@intel.com/
Fixes: 1fcc67e3a354 ("of: base: Add for_each_child_of_node_with_prefix()")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
As requested. I assume Rob would give an ack for this to go through the
I2C tree since the offending commit is there as well.

I also put this patch on git.kernel.org hoping that it gets some bot
coverage soon:

    http://git.kernel.org/wens/h/of_get_next_child_with_prefix-kdoc-fix

I guess I should have put the original patches on a separate branch on
git.kernel.org for bots to run earlier. I'm sorry for not catching this
sooner.

 drivers/of/base.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 4cba021c89d3..7dc394255a0a 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -648,6 +648,7 @@ EXPORT_SYMBOL(of_get_next_child);
  * of_get_next_child_with_prefix - Find the next child node with prefix
  * @node:	parent node
  * @prev:	previous child of the parent node, or NULL to get first
+ * @prefix:	prefix that the node name should have
  *
  * This function is like of_get_next_child(), except that it automatically
  * skips any nodes whose name doesn't have the given prefix.
-- 
2.47.0.338.g60cca15819-goog


