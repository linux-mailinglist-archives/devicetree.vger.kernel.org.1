Return-Path: <devicetree+bounces-241061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E56BC78DEC
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:41:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 651674EE6B9
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:38:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFBC834DCEE;
	Fri, 21 Nov 2025 11:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YW9fLdb+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A72CC34D901
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763724977; cv=none; b=qTC/cJMP4QdTyv1ghn8ioI/vgA/DYHWgtS0bjGyo5sU0fLUpqtiZtjgF094JeYnTia+MumBNjsK+5UO0tfZJYwZbWkn7K7CKVoBDf4FjNHqgj83u0BzPPjvwxvcEsHTCTpVG0ISQyn1MHKafZU5FKVpe4wMoxyt2M2dnn4yWIM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763724977; c=relaxed/simple;
	bh=a9iHaZ5PPXBHrtyzxvPI+cAOuvyT4cROkSXb5P8Mt6U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fF3/6/Z8Qc4AQHR7gYBguKgK9dekGFn5X4pEhzy85e5Y075Kz8xCLQenWmWR74nppcLKOXnCI5k5cSOozoTJD3NNyYAsiJkTeFjWj6V0MMzg+BDkQMO0cM3cIzLEU5rhY8lencZ2c03B5NSIsUNR+ackwRblpXw69Mz1YNjkGtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YW9fLdb+; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-477632b0621so13457195e9.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:36:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763724973; x=1764329773; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lx8a6006lMaIvKt+PGJnSU2GzWYSKMGOtHoKCCD0pMI=;
        b=YW9fLdb+EO6TZMgofMV8Ph0YTD+RB7UELOpxI/upS6e8bZEKiapU0hSXO9E9jnFkjt
         i4D6YmdF974iv0UBFxAPuQo/74iwbNTgOodhw3PYut90PFfP0ob236AV4QdZQ5nmYK7P
         QQZyE5cLO3plwvU+hy+5ZErVB3TbYs8xcKttAPlnKkEOfZ3P3umNwkIs6KGCXX0SYrLo
         pG8xzjCmcpliz4XHhk9rvqDm0wd4TM+IqjP5T+Gn3UUWfnHfebLMyW2BequPTz/8MYrc
         PZ/1obhei0iA7WMazNk4S3FmzqVtYZmu9z7vu8XFg+l5lJE1+Ply/+RtIyZqyWicWoHm
         sX1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763724973; x=1764329773;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Lx8a6006lMaIvKt+PGJnSU2GzWYSKMGOtHoKCCD0pMI=;
        b=Vx0FPOq3/TMPB9lS9xqdOoMS29uA9pCuUbnh8NgZU4og3CqGR0H2XmX6iomZEC23lO
         yUEyO7LX12x6DGPrICHOvL2n1CM+rDCBUZA3vrTiCu+tUMiaJyFeED1ize7sf0quMEBZ
         YIai02BlH6+CP2Zl7AySM6N/sciOz721M7oND5j8O8fCxO8V5dGu06b8+O3zHkDy3zD0
         T7WuNE43SdTW6OKBRfxe7aWFOb5fxH+fuTuERA1rU2060Z6yVnqFE/jspIppK7QGaTzo
         aJPkfeedLprOWPcI8/3sLAu/5VsabqklaFrzhPRG3Ls937TYUY7AzwhLj3ke97f0KUeT
         YbCw==
X-Forwarded-Encrypted: i=1; AJvYcCXP8IXE5kCZhuldbB38jdj7f42VpaahKMhSsmKwbrtfloblhROutYeGcUXWShUAIisDEYjt0cqgIrDm@vger.kernel.org
X-Gm-Message-State: AOJu0YxHTwc7VpQzsqH+b7cuAb3tnQlctyPDfPT7FyqdRqzlG7cDUE5S
	KlZTZuNpGg8kRqgS1enCpfKJeIadv5I6/ORQREB7WG9+A/dXhIAZXumH
X-Gm-Gg: ASbGnctmEfLbxNDvhPovWKVykZMr8+WxF8n3gjhNdZSvXo3VS2hcFDqvjDuKHxTWjg2
	UJvV+dQYXikCMyicq3c3ho2e9lUax51Qm/afWqHtCN6D7EJHV4S0l8HEFJic3hm509OtdYf6o3G
	8xBFRodbXP52p2dr5Xcmtk6scCET0n15ZqsHqNewPmUwdh33A932+71HujWIBzUdqbBYIEwCjnF
	PHE6Z4UIttC2cHunqodTE8kmd89Y+vFCrHGNdSABtwVoI7uBMjaL+Td+jcGk2swDX7+I1mytYLU
	ZdeK4Qr/ll6ssq/8tiBK0L+qPdJhNbSSe9augaYWWYeOJHaClIBn5JNS92AR0TrX+g1G71y/ojA
	ZlajzsL62kA3ju5UPc5nIMiEECHVuhk9njCRunIa8RgHr8R3pXQgclyoNYtnXfW8rrI8DIvw+p0
	tivQcmrtzMvTVGyVh+kjGBoStVPjHKxYmp0K0u2hldtQGpvxMriY07yJP1
X-Google-Smtp-Source: AGHT+IFto1VNl0X8Iz8e3+Q8ER8AySeVHn7wevr1XBc4yThGtBjhnSMYfEV+qBCobpXwA5EM85iirQ==
X-Received: by 2002:a05:600c:3592:b0:477:9b35:3e36 with SMTP id 5b1f17b1804b1-477c10c873amr20494465e9.2.1763724972625;
        Fri, 21 Nov 2025 03:36:12 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:9cce:8ab9:bc72:76cd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf3558d5sm38732465e9.1.2025.11.21.03.36.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 03:36:11 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simon Horman <horms@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Russell King <linux@armlinux.org.uk>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH net-next 08/11] net: dsa: rzn1-a5psw: Make DSA tag protocol configurable via OF data
Date: Fri, 21 Nov 2025 11:35:34 +0000
Message-ID: <20251121113553.2955854-9-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Update the RZN1 A5PSW driver to obtain the DSA tag protocol from
device-specific data instead of using a hard-coded value. Add a new
`tag_proto` field to `struct a5psw_of_data` and use it in
`a5psw_get_tag_protocol()` to return the appropriate protocol for
each SoC.

This allows future SoCs such as RZ/T2H and RZ/N2H, which use the
DSA_TAG_PROTO_RZT2H_ETHSW tag format, to share the same driver
infrastructure without code duplication.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/net/dsa/rzn1_a5psw.c | 5 ++++-
 drivers/net/dsa/rzn1_a5psw.h | 2 ++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/dsa/rzn1_a5psw.c b/drivers/net/dsa/rzn1_a5psw.c
index d957b6d40f05..dc42a409eaef 100644
--- a/drivers/net/dsa/rzn1_a5psw.c
+++ b/drivers/net/dsa/rzn1_a5psw.c
@@ -97,7 +97,9 @@ static enum dsa_tag_protocol a5psw_get_tag_protocol(struct dsa_switch *ds,
 						    int port,
 						    enum dsa_tag_protocol mp)
 {
-	return DSA_TAG_PROTO_RZN1_A5PSW;
+	struct a5psw *a5psw = ds->priv;
+
+	return a5psw->of_data->tag_proto;
 }
 
 static void a5psw_port_pattern_set(struct a5psw *a5psw, int port, int pattern,
@@ -1316,6 +1318,7 @@ static void a5psw_shutdown(struct platform_device *pdev)
 static const struct a5psw_of_data rzn1_of_data = {
 	.nports = 5,
 	.cpu_port = 4,
+	.tag_proto = DSA_TAG_PROTO_RZN1_A5PSW,
 };
 
 static const struct of_device_id a5psw_of_mtable[] = {
diff --git a/drivers/net/dsa/rzn1_a5psw.h b/drivers/net/dsa/rzn1_a5psw.h
index d1b2cc5b43e6..0fef32451e4f 100644
--- a/drivers/net/dsa/rzn1_a5psw.h
+++ b/drivers/net/dsa/rzn1_a5psw.h
@@ -234,10 +234,12 @@ union lk_data {
  * struct a5psw_of_data - OF data structure
  * @nports: Number of ports in the switch
  * @cpu_port: CPU port number
+ * @tag_proto: DSA tag protocol used by the switch
  */
 struct a5psw_of_data {
 	unsigned int nports;
 	unsigned int cpu_port;
+	enum dsa_tag_protocol tag_proto;
 };
 
 /**
-- 
2.52.0


