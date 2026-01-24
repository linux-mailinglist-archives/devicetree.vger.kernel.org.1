Return-Path: <devicetree+bounces-259185-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJmBOiT9dGk7/wAAu9opvQ
	(envelope-from <devicetree+bounces-259185-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 18:11:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9397E3D1
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 18:11:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D25BD3018741
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 17:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3499237A4F;
	Sat, 24 Jan 2026 17:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gOXZ6c+V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4110223B628
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 17:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769274615; cv=none; b=qW6Y28+YAlmGpa0asdozVVuSndqs41U3OPNPpjElMzaYpafAPEGN+yBe9ulUV2euJ4k613LKC1E2I8FMtQXW7Tpg/KNO1/Hmat5MTdexRM+AcvV3jQ1MZAoK3fxi4gM6OyV6/+9MCIOBdoGpnPBPFRNqj7thVbM1G+c331I2WIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769274615; c=relaxed/simple;
	bh=SMnT/0Trui6sxVUAxHuuQnI1eYrWJHdMPmTopIKWfio=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h9P+YPoPAFGK84nw8eB0Wtr8IMyeBxMWdw2WKTc+iXR7SgyW8wMPKA5U1SVzSwmk2e+zfc1Y1l7S5fvGz7NdOx5u//IMPdBKqrBe35XCHS7PK7r6YNmbZgDS+lZgdvCzai8EKLsc7IKvR7LTXoOXQr+GJccSIL2GZDSdUzWQ0sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gOXZ6c+V; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b884a84e655so406539266b.0
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 09:10:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769274611; x=1769879411; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yiTqFeAqAqNp207pw9vT4+RM4bBNWXoSddsLZdhjO4U=;
        b=gOXZ6c+Vldqqp30C9TUfAWxOIxkUx9Vt5GS1/4WiIqFsAcwQoDWPtJDEJrw1dyJl9S
         fTZOq2OhB2L6DTdstWkum0g5vH+3UAmTGsK9tj4kyRnUJweKV+SoS/RckuvudWvwRf7U
         KC4AYn3vR8U8vZwoAhCeLrNNMupnjRGqUs2rS96jTsFA7hs9cY+bn+qR/0jCe69pJ+iu
         Z07PyuS4aBYnWAvwJea2tfzopSQhdCM8gv9Nf6wxXcs9C6y15xeiz/5Jq1xIYXKEPKaX
         /Cnw+4OPnn5v9mKZUcm/gILE6u84kz5gbLZaQMCdKLqhr41MIHNsamlbCP8zwW73im4+
         4adA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769274611; x=1769879411;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yiTqFeAqAqNp207pw9vT4+RM4bBNWXoSddsLZdhjO4U=;
        b=JaoDBAM96snBZzSvjncpGyR1hEPQ0rjVmXaDqds7tqwsb8UxT0LqCr+AKnIMB1qKF+
         wy9bWqkiJwnOIzkMoIAIYCsmYfqRyGrX7YCU1sgwV7nTvg1k7cJjZWcOvmikFaIXpttZ
         hocpAQNpgEVbt1LWFJ7SkyQilyjtxfPfUU3gj/d5WSr6GOxicfLmNsYmMgnXiXBfNlYr
         BVQiuPiPQY0DGcXepMV4FeAloCo4etU+YFb8+//g9hSGMk61e4fFRj2rpwTedS0p1U7n
         zh+5TIVOXpNFoE9k+yP4+KFgsguwcP1c4+zIUrbFfNg54k4bZvTI9C6wWDAVBzYQTW8h
         zC2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVjmY6QEYZkkOTI7Z3HuRzDNx83mYXu9UkihZ3zxSv93a7RXp0dbJyjqvliuzK9CpWgeMSCnKI7nb2F@vger.kernel.org
X-Gm-Message-State: AOJu0YxtuKUjTKSl73fJH9Q3AWiBiva8rrhWPstbPGubz6svmJ+nScjl
	P/EOsy6gJ7fSZDLNoIsEQcsRr7v36ZDg8MN7UnFzvLuzCaxOIJXuYMdJ
X-Gm-Gg: AZuq6aLTHXpaNswBYWkR98ncygsm/sgDcxHEaH0CoQkeczV2PWKmVjsZ5Oks65/OwFZ
	8UMSPGhs6GofUwa9e40Dddl+c2aw3yC1hzPY+U2bfAfivF2bb2mLtU6Vm/eTD+j7J2Vc3XggtaK
	Cco8ICy7115R7YUIqV0P6LxDvMPRxCIpULGjuMUwsTqJ08d0aNXV74jHrWWhlO+uxF44tGXWUm6
	Io2GNnz6wuIa+nPmccVK+ptC7PPPYO0JZ74H1ltG/dIwi6BkBS5eT5B59K03tNYQBw8wvQaRj+Q
	AcCLw7Ru0qjMoyJ0Tza0nIQ5HHA2NTtkM0rWazEd2S6EE9cZJHCe3vIcohfntC0NoxkLjUPHzbB
	YdG9pCpf2/JwMOblBkzDkhTJjHYGRglGU8M79XZgLSOUpkYzlim8GoIK72PGO+mk6S4zC+rByS/
	s0YSH9PH19WWe2Wq6slinBiQ3qC0uirTCryPfkcE1FnS7nACYK5EdPDlBB7tQ7izUw6vIgmhg1U
	KZe4ifyNpOf+hlYQkZwZrCwqSboDY0y+5NQYBAhwsen7Q==
X-Received: by 2002:a17:907:78b:b0:b8a:f946:f7cd with SMTP id a640c23a62f3a-b8af946f83dmr67418266b.21.1769274610852;
        Sat, 24 Jan 2026 09:10:10 -0800 (PST)
Received: from tablet.my.domain (2a01-114f-470e-6200-4c6a-9244-66ab-7c8e.ea.ipv6.supernova.orange.pl. [2a01:114f:470e:6200:4c6a:9244:66ab:7c8e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b3dac6esm302680866b.7.2026.01.24.09.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jan 2026 09:10:10 -0800 (PST)
From: Artur Weber <aweber.kernel@gmail.com>
Date: Sat, 24 Jan 2026 18:10:04 +0100
Subject: [PATCH RESEND v7 4/7] clk: bcm: kona: Make kona_peri_clk_ops const
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260124-kona-bus-clock-v7-4-9dffe1bdc08d@gmail.com>
References: <20260124-kona-bus-clock-v7-0-9dffe1bdc08d@gmail.com>
In-Reply-To: <20260124-kona-bus-clock-v7-0-9dffe1bdc08d@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Alex Elder <elder@kernel.org>, 
 Stanislav Jakubek <stano.jakubek@gmail.com>, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, linux-arm-kernel@lists.infradead.org, 
 phone-devel@vger.kernel.org, Artur Weber <aweber.kernel@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1282;
 i=aweber.kernel@gmail.com; h=from:subject:message-id;
 bh=SMnT/0Trui6sxVUAxHuuQnI1eYrWJHdMPmTopIKWfio=;
 b=owEBbQKS/ZANAwAKAbO7+KEToFFoAcsmYgBpdPzr7W+Bmel3AdGuD8c1rB/86WRkosGRNF0g1
 wis0tzGZnqJAjMEAAEKAB0WIQTmYwAOrB3szWrSiQ2zu/ihE6BRaAUCaXT86wAKCRCzu/ihE6BR
 aMmDEACXdqhwpd6pbNP/tc4vXhkp0gSfJDWzbSi7DUfOhIqUD4sClltc2rBE5oiOJx/5F7dEJdj
 jGplyVchZi3T2ovS8l9bQGAjJZlb086lrc0OvRw580NKZrx3Ua58GXCN/i6LwaoYouZSH3oj+2l
 Xn039uwHTFOuOs9JfhshiVGlhSF78pCnQJt91RsTq/MhLhfyJ5G+jDFL64+RCYtz9012WIbGXYV
 rm4XKsqAw1vwHpZ2MAvWN9bUigcs7A74/Zsa2p9oCcveLhWgKWM3a0YgBdO5RigoRD1zgkFkhzw
 cvHQVo0hDI/eFH5VSIxmuEySJHv35ctcRkwHwwPwKqC/1hexPBsZekPG2hJ9WgGp0Q6P91GOIHn
 XF+MKyl9UkJgjg2l3DCxGUY1O0TBmX80wrSn6fPnX5kwu1Seso6wyxy+MFT/rf/Jv/4bDfDRnqc
 cSIiszRni0F/UnYw5RM9zasRkEwBm2FNvEDM2RSxLfHK3sS++ehn6+WXXb42pm1AlVhCNHuAmKj
 P9oXodRmRUobbx7tZ8VULwkI9rQnQSJEJxXAJ9A8GnBId5dU09UIXf5Bs/K+k17rKvvkj4o+d4x
 MuxhyqSLHGBpI3AXg9pMmMOdDQL32jBImO2q3qMmQA9Z/tzAiOwgZ5arX2kZWUi/P5lUORse0ug
 qlZO0h9ODCX3F8g==
X-Developer-Key: i=aweber.kernel@gmail.com; a=openpgp;
 fpr=E663000EAC1DECCD6AD2890DB3BBF8A113A05168
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259185-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,lists.sr.ht,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aweberkernel@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[broadcom.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8E9397E3D1
X-Rspamd-Action: no action

Fix a warning raised by checkpatch about non-const clk_ops by making the
relevant struct const.

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
Changes in v6:
- Add this commit
---
 drivers/clk/bcm/clk-kona.c | 2 +-
 drivers/clk/bcm/clk-kona.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-kona.c b/drivers/clk/bcm/clk-kona.c
index 0171e6b2bfca..2641eaa4ca52 100644
--- a/drivers/clk/bcm/clk-kona.c
+++ b/drivers/clk/bcm/clk-kona.c
@@ -1154,7 +1154,7 @@ static int kona_peri_clk_set_rate(struct clk_hw *hw, unsigned long rate,
 	return ret;
 }
 
-struct clk_ops kona_peri_clk_ops = {
+const struct clk_ops kona_peri_clk_ops = {
 	.enable = kona_peri_clk_enable,
 	.disable = kona_peri_clk_disable,
 	.is_enabled = kona_peri_clk_is_enabled,
diff --git a/drivers/clk/bcm/clk-kona.h b/drivers/clk/bcm/clk-kona.h
index d7cae437333c..7064ce316981 100644
--- a/drivers/clk/bcm/clk-kona.h
+++ b/drivers/clk/bcm/clk-kona.h
@@ -487,7 +487,7 @@ struct ccu_data {
 
 /* Exported globals */
 
-extern struct clk_ops kona_peri_clk_ops;
+extern const struct clk_ops kona_peri_clk_ops;
 
 /* Externally visible functions */
 

-- 
2.52.0


