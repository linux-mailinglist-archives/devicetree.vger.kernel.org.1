Return-Path: <devicetree+bounces-319596-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3bSUL9e9RmoCcgsAu9opvQ
	(envelope-from <devicetree+bounces-319596-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:36:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A436FC90E
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:36:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="Gph/0F2W";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319596-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319596-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CDF4D3093E14
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 19:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D27043914E5;
	Thu,  2 Jul 2026 19:35:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pz2-f0.google.com (mail-pz2-f0.google.com [74.125.228.0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 958E038C2D1
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 19:35:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783020957; cv=none; b=kW+EYzcRM0tlcImyhofiJDpuIQoMayyh9RxgVXTyG0gOlMFFoLWg4QJXCvf5/la6rohQIGyoNpO0lGD/eH8dojSXA6Ayk8RQ/Hoip+ZG54Cgw9pa70kgnlngZBuHtCJugjGuJOVQS8UIt8svzfPV9Nq1BSqP32UK/4qFgz8cb9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783020957; c=relaxed/simple;
	bh=Zw/knChAUHj9Wkzt+sMcPlmSO6eUSb1rPhDuLApwHKA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X8/At/ThtL/lQlNhnW6M6jwBAvP+snh5afQF8AyQcQt/jIz8lELFdNvOv4SoMCv9u0Sm5FDcIFc1gqLs+gLDWyZh8AEQAk6CllpxDeCM5EkF93eSOl9F+aas1CpdCbQ+Zhz/yXbHV4pJ0kjj297PwOT1LxslyROMmqWyi5Y1a3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Gph/0F2W; arc=none smtp.client-ip=74.125.228.0
Received: by mail-pz2-f0.google.com with SMTP id 41be03b00d2f7-c888c2cff98so920193a12.0
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 12:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783020956; x=1783625756; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QEoinIILiTKHyRPgP5StMa4pYa/MZMpin1k/LVPTO6Q=;
        b=Gph/0F2WSX9dC2u/Lrm3Tt2w90WbSoJX+p6IOQjo1Xakx6dBapvRAUmMVfTQ302rcW
         +4L4Ckh4fo1dbwBi7mUIOWGT+MwbrJ9QwWSjXDwdo8WzMjSfC6DTunhxE3rrzwiyoE9P
         LLU1cgz870ogFQqbZhgOEcWAZamTix/ABb0AGsd5AGcF2yHi2GqdfJ41MqPIwHf2GGqA
         JoxtfHJRLhRVKMRd6CpcNGe0SonqMT2JSTmDDL1c9JkRJrhhbhrsmYWKCp0BZLYA/Ppt
         vnJVotp6sgfj7LfvDB3PCElGNMImPWp/vd8q3kzj90JHpXiWgIlA+djRwQceVs0AP8bd
         JAHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783020956; x=1783625756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=QEoinIILiTKHyRPgP5StMa4pYa/MZMpin1k/LVPTO6Q=;
        b=Zn3FinQOEB1ke6nOIMCwC/hcG8r0vFn7FQEvCzoIyKoTb+VhnjbBlJ2Ki8LCOBPnsL
         0LwGTVo36XOfYqUsFYmfB9bR5RVcLPOXoi1HzBq9Wm+VDIoiJT2PrjwFhdXAxRLHRT8d
         Sk5n0sFRut27VetYusxcGiVFk7yPAAM0R+CwDtfhyygG2opkAsyKVN0meS88vYrDlYgl
         BYk511ql0qK6FhLjj+HZsO9eBBRNAqAvwm4L09F6kmsAosnvw/BHp3oaSaxfIMA45Ssq
         cYUC9Oqc/XkxjzcHx/7pgpRNQSpeoHus+FTJgh7LwH3+R3Sg9h0tnwK5aw+pwq+g5lfk
         hGVw==
X-Gm-Message-State: AOJu0Yx+BS4xd8Wlw+mzps47gmKxXIMkPsLYL6IiT1qyv7MiXto1DrDo
	OAv0LbpoH3g6Lsq6IquhPmHbroGGkf1QZlbaxlFkWWJzAp8y6GUVLEHj
X-Gm-Gg: AfdE7cmuYqGwt6/UVp+bI7dQAvAxX5S3R+i2Vz2j7Xg6JxzjVF+FJfD5NBxZQGE0kxZ
	6tCEQGkgMP/s+1uGSPhQO0hswOJ7AnOgYIoNiWWS8VDmc9YhYXPO4v9vGvUyVYHxb9dI27gAheO
	ertzRLvWWqPeDU0O0RFjywSHylxwB9nDU7I9/N9Qj8ALzJpVWWBxLn/2UzEPkKuJOEQkYK/HgEW
	mcEm5mt+99uPaxg7uh3/ub7nA3NVxJgybXILOUVXl2xk3Fw5R+ytLYj/2cNCWgYsIAy2Pobcmyq
	lUG1Do62qZaTcUfuq/yzpyeCUXqoNZmpTCERXb4l8CiWFPHUqtzU9IAOZBrF+lWzsH4LJFuSb0N
	Sxh0zpmklLERHtXjfMH1gzvNX7f1PZkFj+dNVNunkj74X83mp1UQwDcw65e/8pxxdRyeijwPKiF
	i1F6ttoRIQJEY=
X-Received: by 2002:a05:6a00:414f:b0:847:927d:47a8 with SMTP id d2e1a72fcca58-847c50163e9mr6426374b3a.18.1783020955950;
        Thu, 02 Jul 2026 12:35:55 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847cb6dc188sm1844249b3a.4.2026.07.02.12.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 12:35:55 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add Graperain G3568 series
Date: Fri,  3 Jul 2026 03:35:37 +0800
Message-ID: <20260702193538.2195973-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260702193538.2195973-1-coiaprant@gmail.com>
References: <20260702193538.2195973-1-coiaprant@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319596-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[coiaprant@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com,oss.qualcomm.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:dsimic@manjaro.org,m:jonas@kwiboo.se,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:coiaprant@gmail.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[coiaprant@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,chukouplus.com:url,graperain.cn:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 43A436FC90E

Document the Graperain G3568 v2, which is a development board based on
the Rockchip RK3568 SoC.

Graperain G3568 series also have an SBC series with the suffix "box".

Graperain G3568 v2 belongs to development board series, not SBC series.

Link: https://www.graperain.cn/RK3568/RK3568-Development/ (China)
Link: https://www.graperain.com/ARM-Embedded-RK3568-Development-Board/ (Global)
Link: https://image.chukouplus.com/upload/C_153/product_file/20211022/6daddec9e400458816dd4c57ba807fc3.pdf

Signed-off-by: Coia Prant <coiaprant@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d0..9eb2f66ba3856 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -684,6 +684,12 @@ properties:
           - const: google,veyron
           - const: rockchip,rk3288
 
+      - description: Graperain G3568 series board
+        items:
+          - enum:
+              - graperain,g3568-v2
+          - const: rockchip,rk3568
+
       - description: H96 Max V58 TV Box
         items:
           - const: haochuangyi,h96-max-v58
-- 
2.47.3


