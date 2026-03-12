Return-Path: <devicetree+bounces-274407-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAyxCVk+smk6KQAAu9opvQ
	(envelope-from <devicetree+bounces-274407-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:17:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEF726D030
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:17:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 654FB304A215
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:16:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2B823976AB;
	Thu, 12 Mar 2026 04:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GHu5Zr+1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DF039769C
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773288982; cv=none; b=XLHk+4rbVYdItp06udhQWRG54i4g27lUJPzAMZCVmul8U3io5OpfgbSWFKC1o0p3rycZTtclMgvVsqb+Y9Ya949xSd7X8HvuS51V7WHJW/pKNe+arDPJ9+h4ZhlioF28lYV/P5Hj5lyT1e6Y8Vh/k1BEF2pwKfTvu8N5wNxOyKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773288982; c=relaxed/simple;
	bh=51ki8Jz6kreuFXzwCafh/1IS/D4CLIjxbKU84GMKd2k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SWxksaPUOJxa3RZTQWmVtmfMN+x/6csj0fKc/TSNPgbQxDSqcgJXmdVy72gwji7m6YXc2o10hho1q1DnxZn22HBSEObntz9DcGJemDYkh2y6u9Vuvsh0nIawCOM/1Xf34CXyXweoEd5NFgzfSmiNGzwyhwqEWwCc5Fr4/7JU5+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GHu5Zr+1; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-358d80f60ccso334738a91.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 21:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773288980; x=1773893780; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aZ55cAz0uNCrHrnWbm2bWX9AINXdiqVYlgBemqEfZdI=;
        b=GHu5Zr+1o3TC4xozbTnzzbr/S39PrEBZwr83NSjiKuLWsgXWM7iNnhOi+nbJ6YmC8Q
         tYmBRmjgBINN+fCCP3T83EyH2eKnD0QKOZvdWzTfQUjzpbKujcbXmL8qoFVxTteUmwuD
         7y7p/U9sU9yerUDs8s9V0GjwMBVnwkqcP06Jt//SrObnbFGfH8bBb+rquRtCFPMbD3H2
         k8N8u5buXMMHs/NycZv1uoWB3zC7ESTsgxnayBdit7weziiN3KKnXAi5rQFhEPH4OuOb
         QlSFXY6nQMHsSNPOTsEUXE28BlmI4FI2wWVoMO3v/NdSgZ7CANNgPhROoxi8nX4HEHHY
         Acnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773288980; x=1773893780;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aZ55cAz0uNCrHrnWbm2bWX9AINXdiqVYlgBemqEfZdI=;
        b=tpyx2U67avgtqRxEekBnCDT6VyUrvU+SlKQOM0S7h+r6QOZw5wWkokjzwMl+L5qL38
         Pb5eE4TegjeX5P9bs6Z7Opzz2vzA5dHkLIA4uvx2WVLytjPWK7vPs4U1rCBNKINTfFiH
         o83RWfdmpMYrJSCxkLnIfctxBB0rQUeHBSVcZuI9Fam2Q069h0Co+TUPuYUeI73DyM6M
         yuoHl9yU8rx9DqT7oa98EUNAygb+jkebapmqYv1rPtFoy9pAMDUrk5S7R8KejGXJNm2/
         AFCz6Gv9ZpT6ZDKcHpSoWdeWggiz5waBhgUvCsYLIa0WbHp7fcH1ajNW0s228foKiDJA
         mfiA==
X-Gm-Message-State: AOJu0Yyvkt7eRg//JUeYcbgUo712XqgbNzrBO05cBV8+uZYfS+cnEaip
	VobpLGsohVian0jSyjh+J7I2EohbHFD+igfqfn4mQfav4BQ4bb+Yrtqv
X-Gm-Gg: ATEYQzwh92jFCWl0yeiOUje6dYLo3UwrT7S5R9DmEV8xvKUHfo+rj5NKg5+HzAO8I98
	zl+tbls0ZmV4agUPJIWM3732ZLlSW5e7SGl/KwunacBLfjd1KFZwFJOCo/5AdbdbJYHFi43jckD
	nADKMvmZItY6tY7jqtAH07z1+Xvatqs2XPArAnj6uKJxZIf9Y+2xNzuyRfAmVfaNg4sOGtq8I+t
	THl/2njfZQly75r4UV06IMZ7helWKMv9Ynq5ClJjETNFN62FyXVAQn46xf50kv9x4JENRFpKPF3
	CmElcdGX3SJ0hwiHH7nhnx1tG7T6i/FL7fC3BL53QWl7QbbuCTtx4vUfDUaWsQQrIvRyqm/87R8
	fBTmCf3LnUsVsvD5YDxfaHt3it78qmJLK+Fznf/fFhWDPUNESQtNLCDEapyJQeNfwhgESQPbIyq
	503VBFdqGXJdTdoE9awD1ekhXlmsAJt3FeCvR+u3YElbZBCnF0QysP6Xbucw3fBmTG8ri4dWd2j
	I+n5Hk=
X-Received: by 2002:a17:90a:d60e:b0:359:f4de:8084 with SMTP id 98e67ed59e1d1-35a01323af3mr4560816a91.23.1773288980433;
        Wed, 11 Mar 2026 21:16:20 -0700 (PDT)
Received: from buffalo-ssd.taila54753.ts.net (M014013071096.v4.enabler.ne.jp. [14.13.71.96])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02fca40bsm5018229a91.10.2026.03.11.21.16.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 21:16:20 -0700 (PDT)
From: Akari Tsuyukusa <akkun11.open@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sean.wang@kernel.org,
	linusw@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	hui.liu@mediatek.com,
	nfraprado@collabora.com,
	linus.walleij@linaro.org,
	mars.cheng@mediatek.com,
	andy.teng@mediatek.com,
	hanks.chen@mediatek.com,
	sam.shih@mediatek.com,
	rafal@milecki.pl,
	ben.ho@mediatek.com,
	erin.lo@mediatek.com,
	zhiyong.tao@mediatek.com,
	Jason-ch.Chen@mediatek.com,
	amergnat@baylibre.com,
	seiya.wang@mediatek.com,
	tinghan.shen@mediatek.com,
	Akari Tsuyukusa <akkun11.open@gmail.com>
Subject: [PATCH 4/6] pinctrl: mediatek: mt6779: Fix include guard comment in the header
Date: Thu, 12 Mar 2026 13:15:31 +0900
Message-ID: <20260312041533.187553-5-akkun11.open@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260312041533.187553-1-akkun11.open@gmail.com>
References: <20260312041533.187553-1-akkun11.open@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-274407-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,mediatek.com,collabora.com,linaro.org,milecki.pl,baylibre.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DBEF726D030
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Correct the mismatched macro name in the #endif comment.

Fixes: 920e469e15c8 ("pinctrl: mediatek: add pinctrl support for MT6779 SoC")
Signed-off-by: Akari Tsuyukusa <akkun11.open@gmail.com>
---
 drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h b/drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h
index 0a48d6686ebb..d9404c9f6479 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h
@@ -2082,4 +2082,4 @@ static const struct mtk_pin_desc mtk_pins_mt6779[] = {
 	),
 };
 
-#endif /* __PINCTRL-MTK-MT6779_H */
+#endif /* __PINCTRL_MTK_MT6779_H */
-- 
2.53.0


