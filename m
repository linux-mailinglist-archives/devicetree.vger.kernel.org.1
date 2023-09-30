Return-Path: <devicetree+bounces-4890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D730C7B4281
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 19:09:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C45881C20C3E
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:09:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CEEE18045;
	Sat, 30 Sep 2023 17:09:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC281803D
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 17:09:26 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F58CF9
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:09:24 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4060b623e64so10571705e9.0
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696093763; x=1696698563; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NtAKqaERolIHCTmRDg6aGz6W93ZG9oOqGRlldMnpGHM=;
        b=N7EU8+GfsM7rEuqUNMcJtfA85n0WFmk6rBhzyhu3BDes7AgUUsKGlAwYCeiVXjLd7u
         aOYQ5KEvxaH1sgRICDKdXt3OF1nzLkzJL5kAVLBGkiVX4/3CBGQcpL6VoxxvwrWAd7ro
         COMOz8LelpWYfXqnJxH3tgAGhoNy/0eeWAIJwvKr0ldXIRjpa+eCB+4/51aOFOqmBHvV
         bClxdeNUc+NKzqAxF7oP4gln+VoC+BdDnDJOZnN2qxFtdYb7MPczP2XMvkXzz6nIhcIB
         IDRaKq9i1miSRBzo72Htvfg3eWvet72tsgLOfACLgcOdRT25220mCxWHjCmVZgkjtbKJ
         UIDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696093763; x=1696698563;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NtAKqaERolIHCTmRDg6aGz6W93ZG9oOqGRlldMnpGHM=;
        b=T1+rgb4oZjn8Vzxmp0R+4TCYdAexZFV6hMxmx2tSbb3OQdt8IQLWiYFSsgtc4lmUW2
         j+MM6tgGiRfLt1VWa8+1ayCEvpWi3SYUET4LJ4aoiuFCcj+282pNBm0dqViFBB20EKD6
         PZ9NBh+Q+JKXBrGnmQCc/KaG9Ab7Fkq52JbV3Q0ADUOpQZulyRaptiHo91QydJTW63lv
         xyy6GsyBtUnZOYLs/HZC8g4wyoU2NMN1UIzRaH4qvEz5A+s7CSvqnLIyAo6cSInkPmEu
         Gr+9g4R/xkoNLej3n1NO3nHFZ84KN27GtEUz0UThzT7ZBppxeFroit95E3DfFokb4JQG
         7wtA==
X-Gm-Message-State: AOJu0YwIwveQdjlk5n3oA79MYzaYLjT8aALq89J4G1dRcxe/rIJpejJz
	Inf7qWW0KxgYKvOB4CB2xDbUIQ==
X-Google-Smtp-Source: AGHT+IEFgpuzc+qUsPZ2B8Jaa3bfgA8jZTHu+qCQZoGfJoEG/PjS0SjyGYp1GBEjMJnMIjMjJ9vNzQ==
X-Received: by 2002:a05:600c:600f:b0:405:2d29:1648 with SMTP id az15-20020a05600c600f00b004052d291648mr6313721wmb.19.1696093762948;
        Sat, 30 Sep 2023 10:09:22 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id y21-20020a7bcd95000000b00405c7591b09sm3756368wmj.35.2023.09.30.10.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Sep 2023 10:09:22 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Sat, 30 Sep 2023 18:08:48 +0100
Subject: [PATCH 4/7] Input: synaptics-rmi4 - f55: handle zero electrode
 count
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-caleb-rmi4-quirks-v1-4-cc3c703f022d@linaro.org>
References: <20230929-caleb-rmi4-quirks-v1-0-cc3c703f022d@linaro.org>
In-Reply-To: <20230929-caleb-rmi4-quirks-v1-0-cc3c703f022d@linaro.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Vincent Huang <vincent.huang@tw.synaptics.com>
Cc: methanal <baclofen@tuta.io>, linux-input@vger.kernel.org, 
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=1064;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=+4DaGg6VDRBPUbN6NHpCk9CFy1rQXCDvptUHWZJ41N4=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlSJMFtdSzvv++u/5QY2/JtTNIvh4nO3nMvR8S/2yam8b
 49rCNDqKGVhEORgkBVTZBE/scyyae1le43tCy7AzGFlAhnCwMUpABOZ8JPhf76GUMsWS83d225l
 O+1zDS2xu203LSWK2/ij70fR/+m2/xn+hyh3zI7al3j5cYjBJvH7/1Llr8v3Jd01SZlrYdDDuWz
 PAQA=
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: methanal <baclofen@tuta.io>

Some third party ICs claim to support f55 but report an electrode count
of 0. Catch this and bail out early so that we don't confuse the i2c bus
with 0 sized reads.

Signed-off-by: methanal <baclofen@tuta.io>
[simplify code, adjust wording]
Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 drivers/input/rmi4/rmi_f55.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/input/rmi4/rmi_f55.c b/drivers/input/rmi4/rmi_f55.c
index 488adaca4dd0..ad2ef14ae9f4 100644
--- a/drivers/input/rmi4/rmi_f55.c
+++ b/drivers/input/rmi4/rmi_f55.c
@@ -52,6 +52,11 @@ static int rmi_f55_detect(struct rmi_function *fn)
 
 	f55->num_rx_electrodes = f55->qry[F55_NUM_RX_OFFSET];
 	f55->num_tx_electrodes = f55->qry[F55_NUM_TX_OFFSET];
+	if (!f55->num_rx_electrodes || !f55->num_tx_electrodes) {
+		rmi_dbg(RMI_DEBUG_FN, &fn->dev,
+			"F55 query returned no electrodes, giving up\n");
+		return 0;
+	}
 
 	f55->cfg_num_rx_electrodes = f55->num_rx_electrodes;
 	f55->cfg_num_tx_electrodes = f55->num_rx_electrodes;

-- 
2.42.0


