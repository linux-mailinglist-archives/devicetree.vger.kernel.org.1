Return-Path: <devicetree+bounces-309132-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pviPEhw2KGr4AAMAu9opvQ
	(envelope-from <devicetree+bounces-309132-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:49:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D52DA661FC0
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:49:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=XCHf30Cz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309132-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309132-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0276B301FF9D
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 15:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 020CE48C8A9;
	Tue,  9 Jun 2026 15:13:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF1E48BD3A
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 15:13:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781017998; cv=none; b=UIj+JjxjcuOi5D7I9iEMwxF1Gx5t7S92ZFyAF9dYVWlOwDLYvhlcSk/Jy8R9dsBz42lVH0BTjc6Wc0YiayqjP5413u8EXiWXqlAmo9BjcTwnxtgUQXVhJJRxsEg2Y2e3kCufBto8YCHxv/4ZiCJ2J1bGweFHML97Iec3xMXWl9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781017998; c=relaxed/simple;
	bh=sK4fxc5PVlOZuMIeUsvJWB2WAm5QU6VKChsYszl2b8Q=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qyeVdxYGQxUgy53iNVnBCRtUXsgrJ9DQHmB7gNVpnE4kS/xVVmFRS27D8WVR61n9RtBdtznYFPlSx2CzuNdvPsX7N1hN/07INI8LQs9pHsz5g0zXvMlQ7np3edfgr4yDTNfY7X356sUUygX2yY3drIu/na0l5MyHqjzc3END7pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XCHf30Cz; arc=none smtp.client-ip=209.85.208.51
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-68d232ed3f9so9435397a12.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 08:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781017990; x=1781622790; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jWYk8ZymB6kHUZKwCJ/zVXargC+wN9U6CkBM8YYghXU=;
        b=XCHf30CzFMmddwoUU6Pm5/FBpS1Vcs37XYCWExDanoz0lumoDmHH2alprpw+HCXoAw
         sad8+Tjdd8Sy/3uhQlaxkaBSF+CusgInJps4h8Bt63hQKZ7yGh+o/QD7POMadb3D51N5
         9x6+3BKoyJtyhodKk7x+Ty27VmBtVlSC0VPRNxJUSNyYTRbkojkO6rEg6XkK9DthR77z
         ETpTiBXfrbH9d61Gx9LDk74Q1wYtV4W6T3uMZyzZVepnr5g1oNnas08l9gQaiY/4LvCt
         Fpm4fviK+3L2p0PEN89RqVy6XluyJ8wmzQYf4CLv6q37w9ycfEi1nFFPCd64FXaabtvG
         HWzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781017990; x=1781622790;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jWYk8ZymB6kHUZKwCJ/zVXargC+wN9U6CkBM8YYghXU=;
        b=bNmMxmKr9Q/A1bMHtjmZNPunY/zjf+iEIX2+qQDjTDTQlgFx9XTXHBVNk2E7QoTJTm
         VPstqK+bUWFWiQ52GVVx9vRFe12Jq/TLCw4BQPd6IjstBKq/+mi3Sdj1FqKRmfUBVJ18
         Wc1NyVfrIxDxYWMaxjQDaM8cEve+sLnfsGVKqJ538NSLjkhmw/0QgMOmlTxJ5lGodyB/
         MgTxDSiUoumLbtRn+/0PgV9+qVWJsGJllC6L611YduVpudEAPqqYsPPpyMEjaPHosPkh
         WcnC4XBnbzyABrvu1JKvQIrmzzBWsHZV5mgHZk3r0DaTcgyRFv5rwA9SSuuJnTLv38BB
         m4Ew==
X-Forwarded-Encrypted: i=1; AFNElJ+mR69eGU+jp22OuLxrQGP4obVJph+Z+lXwgRkcIoefdRE+CZRWJoBCr1YIUlmaZL3puJAVTuc41KIW@vger.kernel.org
X-Gm-Message-State: AOJu0Yz38aoPBh3Jpw0o4a4IdJVpenWmTtdVp6un3vJ2QP/5tbfl9ION
	wW83kQONEFoNUBSQlvxZeftGj8SCOlPp54rQ/liCN5u8zwD+XI2iX33F
X-Gm-Gg: Acq92OF5CqLnAWnXuyfuY31LCO6lo9IxDqm/O2aG38xlgcfTo6IJ+dOUJxHk8XmcYX2
	gNWwJGK8pf52uhPJIdRaOiXItH+Tq9qxmyWL3usPkl8cq5lcCAh1vLgx8wlytI3J6ow3UYfoK7l
	ZO45nemXQ5YlvhbSEVUeJWj1+k9Z6DBYHzl2XOXSuD/W4YSv0A9PQzNKKgTxaffngAbgYNwXR8s
	rL6VR3Xu1/htsElqsww3JJo9phbBa+O/887+7fCExF1O6znBuFHTvdiyX3TH8Y6uwJ+mO9L78s0
	2Saz/Zn6pnJh4e3qHxTNJ+gBTiLmRu6oJoM9l7P0NpUI+0forimPoH+7KLjzDpSjD/cgWp1CjV2
	6X0Waas77BfQlU9HkiV+ZuZznASUHVtKxpvOW2tOyw1wd8v8TNRAGVZQAeMFwYFyKqH2JxqGxp5
	eLDJyOO6hL8vx9oG4KtWrkV1WD9XJ4lOmg
X-Received: by 2002:a17:907:989:b0:bed:25a6:1c89 with SMTP id a640c23a62f3a-bf373407e0amr1077762866b.25.1781017990067;
        Tue, 09 Jun 2026 08:13:10 -0700 (PDT)
Received: from Ansuel-XPS24 ([2.195.136.12])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-bf0517721e5sm1073637866b.9.2026.06.09.08.13.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 08:13:09 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simon Horman <horms@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Saravana Kannan <saravanak@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	llvm@lists.linux.dev
Subject: [PATCH net-next v6 03/12] net: phylink: add phylink_release_pcs() to externally release a PCS
Date: Tue,  9 Jun 2026 17:11:59 +0200
Message-ID: <20260609151212.29469-4-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260609151212.29469-1-ansuelsmth@gmail.com>
References: <20260609151212.29469-1-ansuelsmth@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309132-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:ansuelsmth@gmail.com,m:lorenzo@kernel.org,m:hkallweit1@gmail.com,m:linux@armlinux.org.uk,m:saravanak@kernel.org,m:p.zabel@pengutronix.de,m:nathan@kernel.org,m:nick.desaulniers+lkml@gmail.com,m:morbo@google.com,m:justinstitt@google.com,m:netdev@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:llvm@lists.linux.dev,m:andrew@lunn.ch,m:krzk@kernel.org,m:conor@kernel.org,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,gmail.com,armlinux.org.uk,pengutronix.de,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,lkml];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D52DA661FC0

Add phylink_release_pcs() to externally release a PCS from a phylink
instance. This can be used to handle case when a single PCS needs to be
removed and the phylink instance needs to be refreshed.

On calling phylink_release_pcs(), the PCS will be removed from the
phylink internal PCS list and the phylink supported_interfaces value is
reparsed with the remaining PCS interfaces.

Also a phylink resolve is triggered to handle the PCS removal.

The flag force_major_config is set to make phylink resolve reconfigure
the interface (even if it didn't change) is also added.
This is needed to handle the special case when the current PCS used
by phylink is removed and a major_config is needed to propagae the
configuration change. With this option enabled we also force mac_config
even if the PHY link is not up for the in-band case.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/net/phy/phylink.c | 49 +++++++++++++++++++++++++++++++++++++++
 include/linux/phylink.h   |  2 ++
 2 files changed, 51 insertions(+)

diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
index 4d6ffda0cdd6..b45bee927300 100644
--- a/drivers/net/phy/phylink.c
+++ b/drivers/net/phy/phylink.c
@@ -923,6 +923,55 @@ static void phylink_resolve_an_pause(struct phylink_link_state *state)
 	}
 }
 
+/**
+ * phylink_release_pcs - Removes a PCS from the phylink PCS available list
+ * @pcs: a pointer to the phylink_pcs struct to be released
+ *
+ * This function release a PCS from the phylink PCS available list if
+ * actually in use. It also refreshes the supported interfaces of the
+ * phylink instance by copying the supported interfaces from the phylink
+ * conf and merging the supported interfaces of the remaining available PCS
+ * in the list and trigger a resolve.
+ */
+void phylink_release_pcs(struct phylink_pcs *pcs)
+{
+	struct phylink *pl;
+
+	ASSERT_RTNL();
+
+	pl = pcs->phylink;
+	if (!pl)
+		return;
+
+	list_del(&pcs->list);
+	pcs->phylink = NULL;
+
+	/* Check if we are removing the PCS currently
+	 * in use by phylink. If this is the case,
+	 * force phylink resolve to reconfigure the interface
+	 * mode and set the phylink PCS to NULL.
+	 */
+	if (pl->pcs == pcs) {
+		mutex_lock(&pl->state_mutex);
+
+		pl->force_major_config = true;
+		pl->pcs = NULL;
+
+		mutex_unlock(&pl->state_mutex);
+	}
+
+	/* Refresh supported interfaces */
+	phy_interface_copy(pl->supported_interfaces,
+			   pl->config->supported_interfaces);
+	list_for_each_entry(pcs, &pl->pcs_list, list)
+		phy_interface_or(pl->supported_interfaces,
+				 pl->supported_interfaces,
+				 pcs->supported_interfaces);
+
+	phylink_run_resolve(pl);
+}
+EXPORT_SYMBOL_GPL(phylink_release_pcs);
+
 static unsigned int phylink_pcs_inband_caps(struct phylink_pcs *pcs,
 				    phy_interface_t interface)
 {
diff --git a/include/linux/phylink.h b/include/linux/phylink.h
index 3387d308c4ad..b65f91c78d8c 100644
--- a/include/linux/phylink.h
+++ b/include/linux/phylink.h
@@ -751,6 +751,8 @@ void phylink_disconnect_phy(struct phylink *);
 int phylink_set_fixed_link(struct phylink *,
 			   const struct phylink_link_state *);
 
+void phylink_release_pcs(struct phylink_pcs *pcs);
+
 void phylink_mac_change(struct phylink *, bool up);
 void phylink_pcs_change(struct phylink_pcs *, bool up);
 
-- 
2.53.0


