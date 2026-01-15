Return-Path: <devicetree+bounces-255803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB690D29507
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 00:44:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5563530A7C19
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 23:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37DEE2EC571;
	Thu, 15 Jan 2026 23:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="QtwcZK/c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com [74.125.224.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C313314C3
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768520577; cv=none; b=cYFeGnQJK7uFH9IMzRAyFSPMF5UNH3ZfMxkdRcet4grhc8/MZLwdvySnP6F7FtCreAExnG0CyRi8gyO/X5wkUBLLFci8HGqcQNJFzAGuLR76XFEAHk0txqyEhi4vofBQQMzxmzUeAFAaY3EXRZ28OVbwrlDoaBJI3oUPx8/5Or8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768520577; c=relaxed/simple;
	bh=9zrQEYyTHE0rrNAGV+bZFy/DeHKOGDCLqOIbqW74yYQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M/zv6jQ92ti4ptT1wGHF7MLzRTTjTbN51TeD/ZWBtj8Fzz64sDWnd8ISGtrZLrlvxnQhJigEM/Qg05WYKBlcrUrkrg2dn16kjjSbUT/ax43T/wmj47elz0O73wf4qCdaeU0w5txJdjoB5LkA0cE/Y7RYA8C9E289+HNL1DrAKmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=QtwcZK/c; arc=none smtp.client-ip=74.125.224.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-64760131fc1so1199824d50.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1768520570; x=1769125370; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mr+DET/MCWrJ44Xgox+RvCv0LCqYSg+k7ueyqWHNGvw=;
        b=QtwcZK/ctxiYUTkjVj8LgQ09+euJ6fPCTkhRluM+k+RluCngf0fR5GaJHWUXnmHjDl
         j6gg5A+ZEQXx8s2IzGzZOrG8174On30zGQkVIy4JFao8CtqKNFWLp+jV0EP2VZO7j89A
         W2aF8WJ+Tl7QXNCYQi/DNZQ1J1ANLCLT2qnRC1MRjEP9SEAfnoSPW8Dum/84if53FDlP
         hia77MsnzfFKlPHEBefRaMhvaC34yie1v0y1YAX8ZpQf7JOVxc4DDs8svn2rja1yDWQS
         b7CCInyUZ/yth7hg8Qy/Es66y0bD9TXKYhj9/+IxsIchanddpxOxYOI+HpGpyG9QQBNe
         bQAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768520570; x=1769125370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mr+DET/MCWrJ44Xgox+RvCv0LCqYSg+k7ueyqWHNGvw=;
        b=TMKEj2XzDZ5RgjVGR7lVxruZufEjzlQx90aRq+xF6ox1+cRXtt/tNDb6DS+nkUh5VL
         cmJUa4olLxJJBE7yXnMsPF/yEMA0hJ7DsKqvHYq6pY6bxunz4B+po5TN9K2EUME9vSuz
         Rr6OFCvUKSB+jzyrFXBZLGUqVOWY+WsgXXb9jpovkeSJzEHpSreE5zwz0kHjXrpDurjg
         WIDyDhemLyHTYxOTACzExUPfG1cFYF4Uvv8wOaAuW3/leo412aI0F2FTq35A9HdEg2OP
         yMeC9Zeghc5B1mlk8CTgALHgRft+MyK0GVCF04rLV/4MXGAQOy3wSSE8FJm/DX6vcjoS
         awug==
X-Forwarded-Encrypted: i=1; AJvYcCX0PKi/AFycSfcC0bwk2HaHbuVm6iMMijkUvvGED0fwq2I5S/i45QQVyj3h2e+poYN+sYuRSZG3XfF3@vger.kernel.org
X-Gm-Message-State: AOJu0YwrIt+BEwi8HKNNUJKFcagQjrXZeh3N0W9A2KcMn/JdaHvBToVy
	ZL5LlsCVrFSICf11tTaEZHCXO+ynoRPy7jOxqUFZKCIkfoEFLaYGY5C4Xz1XWilvjFw=
X-Gm-Gg: AY/fxX7BzMoiRyb8dEb04yAL1eHKTVNKKbBghcOeVG+DqxHo6ONDjz/sbnPn3d9y/HP
	6Zp+0z/ozMcwlUmadsyr0PcebtZrowja+IFd7OwoGfERD9cyHvqZsgKxpIEKx8dRF6SZDmj7C88
	5lVQ7SjEAZ/Bj5KxglxaP96ySqfIHanC9wcvXu40hh3WeaeJfm1EFiYAZqevaJYHbzhr31glpwZ
	b1wfKc1EexzCulBHmH9PDtzRKTMCppFsCkdGaGfqpq5+mCj98a2me/h2yU6IWWHFtZL/aEHjklt
	sAXZ50ZF3GmpOGSZbME/z6jXJICEXJMNScAd0Fq33FiKE1LVVcdrU6bGQtacF/A71L0EDOAE5uy
	qq73wpKsqUjJHyRwWoHnWlmUGJxyv3fsr25V27Iqw8dG+3zJiNCiilZEnhihr6WBItG/V8aJuA9
	VLITbak/u/LlRi+izIxOkprL2N+wN5cTJl/d+b4e2Xd/5BGwsaf5Ue0cntfsKPWEjT5Mf++MKYj
	3tjBC6LyQ==
X-Received: by 2002:a05:690c:e3cc:b0:78f:b820:f2f3 with SMTP id 00721157ae682-793c523ce6dmr26018967b3.12.1768520569702;
        Thu, 15 Jan 2026 15:42:49 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-793c66c72aesm3027117b3.11.2026.01.15.15.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 15:42:49 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Thu, 15 Jan 2026 17:42:04 -0600
Subject: [PATCH 5/8] soc: tenstorrent: Add rcpu syscon reset register
 definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-atlantis-clocks-v1-5-7356e671f28b@oss.tenstorrent.com>
References: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
In-Reply-To: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
To: Drew Fustini <dfustini@oss.tenstorrent.com>, 
 Joel Stanley <jms@oss.tenstorrent.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
 fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
 npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com
X-Mailer: b4 0.14.3

Document register offsets used for resets in Atlantis

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
---
 include/soc/tenstorrent/atlantis-syscon.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/soc/tenstorrent/atlantis-syscon.h b/include/soc/tenstorrent/atlantis-syscon.h
index b15dabfb42b5..f1dc6ad33c6d 100644
--- a/include/soc/tenstorrent/atlantis-syscon.h
+++ b/include/soc/tenstorrent/atlantis-syscon.h
@@ -19,6 +19,13 @@
 #define PLL_NOCC_EN_REG 0x120
 #define BUS_CG_REG 0x01FC
 
+/* RCPU Reset Register Offsets */
+#define RCPU_BLK_RST_REG 0x1c
+#define LSIO_BLK_RST_REG 0x20
+#define HSIO_BLK_RST_REG 0x0c
+#define PCIE_SUBS_RST_REG 0x00
+#define MM_RSTN_REG 0x14
+
 /* PLL Bit Definitions */
 #define PLL_CFG_EN_BIT BIT(0)
 #define PLL_CFG_BYPASS_BIT BIT(1)

-- 
2.43.0


