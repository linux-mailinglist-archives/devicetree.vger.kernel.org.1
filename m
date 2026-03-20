Return-Path: <devicetree+bounces-278089-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBIMDUz2vGkt5AIAu9opvQ
	(envelope-from <devicetree+bounces-278089-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:25:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C82C72D6924
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:24:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4ED443011F31
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB46A35AC35;
	Fri, 20 Mar 2026 07:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kZlBVHCy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7CD435A3AA
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773991398; cv=none; b=sBuzyS3Ca6e9kzbUjluxgGsn/1FJOZaG1XJY2Z4dAaF7OfSM/AXETw41Sk6Qd+CthC/SfSJwqSGH/PA9Rax0O5Df9/JbFPhtOx4rVH/05PffTu27JHwLvHP8iPNr4wukYm1BzIbGMB1eheEkx7rwiH9YoDCW+sOpjA44kD9gAwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773991398; c=relaxed/simple;
	bh=+f6tc6/gIj9hRMW4dK94LxBODDioxczEgcKZQk4aybg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eKNbNKH0y9Rl2BIOZkZo1/Bzz5ve+eHLOq1Gd4t7AUPzcIB4nvFKx91jlXl+IkFh95XHPUHVyUK3+NcZE18Kv2QjruhU+ApkbEx6v6X1UDtrFm3IyccVeqFNist5EKjDBxC78vBy0Tk4giToCGglKkc+41q6oTS9aX4H7Hl+uug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kZlBVHCy; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-35b9fb3f57eso790611a91.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 00:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773991397; x=1774596197; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DNOjcTvj4j7Sb7uRKbeUh7QO1/N1P457msM++fZ/8k0=;
        b=kZlBVHCyuaAga+Mw3VP3HaFr2kuWBD6xYmM+KmhDgdA7/BsiyFXDvqTSmPYRG9iMUG
         hLChVjgSnOXaaMYh15HLH7f2YuIn11T6jQzeeN/uwLctaJ/SB/dhGLuJB6XB57MJhZm7
         WP2Xd2a1rOK/aeLhAJTbau3Jytg5b1rY0SkdQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773991397; x=1774596197;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DNOjcTvj4j7Sb7uRKbeUh7QO1/N1P457msM++fZ/8k0=;
        b=NJPR9h8bRdEOHjpvmUXCFB5/UzyibqvmUCXxgKFhlxJf6tMubDcBjqgPwCe3SiZelo
         +H23z7Y/9kAttF4oMIY6vH7OIyMgEW/Hnva8aM08huy0B8raYbbV2PuspN3VrrunT+fp
         QcTliSuU+EvB+0gvaTukjUYr3EsjoSXBSfIzf1IpD1GJZ4NfxrK/P6DCSt6FrgIzACqx
         Cjqz6HHrppnJqqVySjuFNFhooo2/zQLBKoQBLj78gk8rC5ALRO1HarZMVY6CNJ2VPufp
         LSYAhgLA3SJe46Mfin2D1CZdaI6RKJfz8+lKVnjnMtWgNeKQpdOWmRVWW+3UrncJZ7/q
         dyQA==
X-Forwarded-Encrypted: i=1; AJvYcCUF/x0o3d/b8X1UrGaCnJqcPF5Mg2ai9BpyvNjne46DrxZbq82xs1ADd1J0aD0tjw6NS+QwcpK4Kezy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/wdTRUfWM154vMp4ETCoT0y8t86aGozDUz0OUDscf29HW0IWw
	Gu1pNOlTTxJjQ8RLr0bpOVuVxX86cXT9EGhT+66jEbuRsrLdvJ7sCWr+nWPZ/3++vA==
X-Gm-Gg: ATEYQzzrIz9MfkhM8NzcO++1vXdBvJAArj6MId1o3j+dgxMUHrniG+lvB/RWpJ89cBj
	MAwaxlRjxqBaYEuVzUVZ1q9BqRk/nOtt6zLSG0JMU8NQy9YzWEiz7JC5oIIQawYjueeYiuAWd6x
	3vh/QX98yBbAI1MC4fu0bIidRUIywLnQ6uQ0byPzbTU20Z5uHS8xEbkGyA35u8EsiF4DOHZPM5c
	OibwI+S0PcbCorLoQVN1FMOvrKsjADhh2AS2gS5AzBFwi8BzJZMz6i1hPAEWRnMmGqt7OszL5dr
	3h5+pi51K/ES0mJL60rPFKgIvPcpTJgl5HDKnFu/9yEwaTqwVmBwdO4oTsOyGEx7HbeJIR76FLy
	08jOgJz/vNsLcqPcZU1wluP7e31S50GdZOXw1p4bTdrKmiusJqOaUVu8kRe5ZzhqZBsLEmsTgke
	DBQn/dQI+RGDkWQlVsxAy6d+uN5Et+RIMa7eUtGbj87lBeS9XPun1BnsP4T2EACijlofjOdYCP9
	ix2DWo+
X-Received: by 2002:a17:902:f709:b0:2b0:4eeb:f80a with SMTP id d9443c01a7336-2b082769c57mr17180045ad.29.1773991397165;
        Fri, 20 Mar 2026 00:23:17 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b083516b96sm16728365ad.7.2026.03.20.00.23.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 00:23:16 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] regulator: mt6315: Add regulator supplies
Date: Fri, 20 Mar 2026 15:23:01 +0800
Message-ID: <20260320072302.2402489-3-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260320072302.2402489-1-wenst@chromium.org>
References: <20260320072302.2402489-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	TAGGED_FROM(0.00)[bounces-278089-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.964];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C82C72D6924
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The MT6315 family of PMICs has 4 buck regulators. Each regulator has a
separate supply.

Add these supplies to the driver.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/regulator/mt6315-regulator.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/regulator/mt6315-regulator.c b/drivers/regulator/mt6315-regulator.c
index d3f93aae0fc5..231e64fb0596 100644
--- a/drivers/regulator/mt6315-regulator.c
+++ b/drivers/regulator/mt6315-regulator.c
@@ -31,10 +31,11 @@ struct mt6315_chip {
 	struct regmap *regmap;
 };
 
-#define MT_BUCK(_name, _bid, _vsel)				\
+#define MT_BUCK(_name, _bid, _supply, _vsel)			\
 [_bid] = {							\
 	.desc = {						\
 		.name = _name,					\
+		.supply_name = _supply,				\
 		.of_match = of_match_ptr(_name),		\
 		.regulators_node = "regulators",		\
 		.ops = &mt6315_volt_range_ops,			\
@@ -190,10 +191,10 @@ static const struct regulator_ops mt6315_volt_range_ops = {
 };
 
 static const struct mt6315_regulator_info mt6315_regulators[MT6315_VBUCK_MAX] = {
-	MT_BUCK("vbuck1", MT6315_VBUCK1, MT6315_BUCK_TOP_ELR0),
-	MT_BUCK("vbuck2", MT6315_VBUCK2, MT6315_BUCK_TOP_ELR2),
-	MT_BUCK("vbuck3", MT6315_VBUCK3, MT6315_BUCK_TOP_ELR4),
-	MT_BUCK("vbuck4", MT6315_VBUCK4, MT6315_BUCK_TOP_ELR6),
+	MT_BUCK("vbuck1", MT6315_VBUCK1, "pvdd1", MT6315_BUCK_TOP_ELR0),
+	MT_BUCK("vbuck2", MT6315_VBUCK2, "pvdd2", MT6315_BUCK_TOP_ELR2),
+	MT_BUCK("vbuck3", MT6315_VBUCK3, "pvdd3", MT6315_BUCK_TOP_ELR4),
+	MT_BUCK("vbuck4", MT6315_VBUCK4, "pvdd4", MT6315_BUCK_TOP_ELR6),
 };
 
 static const struct regmap_config mt6315_regmap_config = {
-- 
2.53.0.959.g497ff81fa9-goog


