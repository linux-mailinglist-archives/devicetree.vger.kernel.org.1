Return-Path: <devicetree+bounces-8704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D444D7C9BC6
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 23:12:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 988BC281710
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 21:12:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45C4513FEF;
	Sun, 15 Oct 2023 21:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S06nbPkH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95019134CE
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 21:12:06 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2FE4E3
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 14:12:03 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4075c58ac39so39800895e9.3
        for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 14:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697404322; x=1698009122; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NtAKqaERolIHCTmRDg6aGz6W93ZG9oOqGRlldMnpGHM=;
        b=S06nbPkHKWbq8lMMpSQqliQ6fTwNMaZSNfSkkm3EpX2wjdDaK9BJFVoTbIbVN0p5QA
         SUKjV4fA3wr3w3PLMBblVBfD4gnVuACSThkuqjounaBgqygKswaeSDeeSo7sGgstsyJ2
         jBeZbWPCI/kw04n1aegKD5sN1FJS0C/6tq7MSRy4/zVw707Cw7oD9bmribwyFce7gWWv
         NVFuDmyo7+cWi6Ts9qvqHdppZMJC+N00mt5VxMdWzevjwnrFpYpXrWU9tNF7DSj8KMC3
         Ab23JiqANogCLBmQ3N4Afr7kZRypaGjAHy1YMFVAkrlpabP6ncMDH027IUvkujK9T5cA
         lUOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697404322; x=1698009122;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NtAKqaERolIHCTmRDg6aGz6W93ZG9oOqGRlldMnpGHM=;
        b=vwBHvaE7+NLqg5yj55KdsuaiopMQ/W0MWGsbS+3UowcVrLdAVKAlCo2IRHxaNk51EY
         3hX//9jJEOzlUiqIupNMsMQV6YF/ZM6+PgpxwtyR5UcVn5bJIIC02Fr0nWOasGbsvUhx
         E0YR0hY4spsM0hVNujhL1jDXeAgg6QuuUJ8Iqd9ZgK1ooYp5vCP9B1OfdqWQ3Vvzicbf
         cX16l8AUhMYIcbrTN5nlBcg2AFW6M2lp/syNXnW1hnEEH+Zv16LpOj4sBW7rYMB9CiYy
         /uo54QDUhJyf/axHZxGKFXjosdYrqI/Ej1kG0ErPahz9Vk/5M8dXx9FqIHzX/oIg8m1R
         MQvg==
X-Gm-Message-State: AOJu0YxDDXXhlM3qySDPL71Tko8TWFXVK9XLk0ny5eR2nwo8gv/JlqRh
	GfXHRVwd3PzIPyWjDZl8Pgb7vA==
X-Google-Smtp-Source: AGHT+IFgQdfSVH6YmUAINQJ2B5pMcPmsn3hKh1y9h+A3RjF+VDAzauaNUq4tqJu8camKnrex2Y1Opw==
X-Received: by 2002:adf:f103:0:b0:32d:9cd3:6a9d with SMTP id r3-20020adff103000000b0032d9cd36a9dmr6017864wro.25.1697404322388;
        Sun, 15 Oct 2023 14:12:02 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id z17-20020a5d4d11000000b0032d9548240fsm8456734wrt.82.2023.10.15.14.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Oct 2023 14:12:02 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Sun, 15 Oct 2023 22:11:52 +0100
Subject: [PATCH v2 4/7] Input: synaptics-rmi4 - f55: handle zero electrode
 count
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-caleb-rmi4-quirks-v2-4-b227ac498d88@linaro.org>
References: <20230929-caleb-rmi4-quirks-v2-0-b227ac498d88@linaro.org>
In-Reply-To: <20230929-caleb-rmi4-quirks-v2-0-b227ac498d88@linaro.org>
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
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlSd0Llzrc/3fbiXJq5U8K9m8cPm6UWFBhuNWuo337/2k
 lNHZpNLRykLgyAHg6yYIov4iWWWTWsv22tsX3ABZg4rE8gQBi5OAZjIBW2Gv8KiTStc2WtcmpSY
 Wfi2aURt9NuxMyOVQ2/rlMwrH/oCJRgZZgrNZbrEotG15Nx8E9tdnO/ZHLVWcPyVDSyzzxVgM0l
 0AAA=
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
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


