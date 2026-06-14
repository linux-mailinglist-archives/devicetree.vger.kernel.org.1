Return-Path: <devicetree+bounces-311406-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pxjSA6onLmrGqAQAu9opvQ
	(envelope-from <devicetree+bounces-311406-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 06:01:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAF068050F
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 06:01:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=poMOWH1q;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311406-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311406-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4BFF03033AAF
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 04:01:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB0A622D7A9;
	Sun, 14 Jun 2026 04:01:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C57261B70
	for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 04:01:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781409664; cv=none; b=tgLZo0D1k9Mg2yxFDXXYIswzWNsXaGX+O1NIPLzap8xm4VNMBI80xGZh+3U/FAjJEtea48ibZJYbsQZUx3r2n7CuawnXWBamG06IUxWh63VC/oKxMltvwt1HZ7131P+tG9IUHuxFu+wijdReBF8m2HrxZTHS7niS82oy47qREDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781409664; c=relaxed/simple;
	bh=Xorc83DyKC5CVv0vRC6G/GNTsWPDQX1OaR8pahneVNc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kCdMvXmUTDtIjUdWuKDOfm10MEmah/y3EIIn0RgFo4e7UTKN6LAf41l7Oz80mtSCEdkXgLm4dcvOo+XNOiA/fEMb7Pn3+sUqrxiGI+3XWTFMc6Q1kBYjhKKPFs5NFz6cTSYH1eEVLHAEZDj26BEClojFFXExAZnmhSFsr9qbZtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=poMOWH1q; arc=none smtp.client-ip=209.85.216.49
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-36ba706ab46so1363037a91.1
        for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 21:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781409663; x=1782014463; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4LFlYonGJq08punhtqW4trLrplu83bZHlBhA/KZ1Aiw=;
        b=poMOWH1qz3uvX8RXz75gweVdD7a/yweZNHruSt0JU+L1jePop/xqHgzDvQVfJ+SHCb
         7srBlVxsfeToLODkeu0PtXX5+FMma6EKJmPdgLrwMAV75wr1ZwsAW71oMepfeVjLVf4i
         eVHV6np7xhY5R0ZAc5aFkq/F8HUCwNUkUdwf/fk5+YiUN9i9rrn/W7JfdFZk3s/FIwPz
         YPwFSFAY8po8xZmb04zgJ0YysGFaOdHupOdpda2BkaWMBLfoT5FjeVnqzBVQD+1pEwnl
         ef731kpin0SQWc8hPJSt9Ij30cA6l3cwZoczGt6uF4fbbUxOS17HgmlUmOq9kOGezPNR
         ENbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781409663; x=1782014463;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4LFlYonGJq08punhtqW4trLrplu83bZHlBhA/KZ1Aiw=;
        b=iYYcDVLpcCou7NOcOlhbrrXcN3LH9HEugz6o/q1agcyyyqO0E1j70NJ8EMPyEzl3ft
         EvtUujUQcq57rKtM2m03bik7KVq156Bs7GsU6t3pwHHosY6tcCj55WFpM8OHyAgU5bnO
         eqi8SojPsFaTOfZCmChHaRs22Cs5TSYwjbUknB90lz1V8IkHetYLgyJSGGWcyhj/ZhfC
         lOKZGQW04aeHdkSd0DBplQCAwfQkT9UrLDihN7R0zaBb6MXlBsOfDt7BwikYLyBQBXBB
         2rnnd2ktLjurTRC6quHe6eOkxQ3Z0iV65EnBS9/j8ALXxB4JEKF9EWrVCR/H+iSxUIpD
         jNUA==
X-Forwarded-Encrypted: i=1; AFNElJ85/QcY6YlkKiX5KvOFkkYMKDbjtLI6PckFGFMU0Tbm7Zss76GWgOhFfnR6zVKG15kvflzBjpElGPU9@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/5P96YQccnyrLAfGTD8J7xKFZmO+mWhWjOcAWMcptKaWcst2g
	WzoYXkHUc22v3vzrd6Yu5gBhonNRpOCM0Z8zJDFMvjrE/LiLOeGiQRmG
X-Gm-Gg: Acq92OHOS17daNCySGucZOXJMArmjHc6iATy9nN7stkn/8TVqPrfBsB5QZIBE9KUF6U
	XityY4w0nYGLfT+YKJ3VIiJgooPT5itJkZDmz1psIdanKVlZpqkwu07dQFZ4zwZaD7qrbZ2UYeZ
	UPVjJYWTft4Sh9JGRBpY2uqDtaVzh5HnTSMMV95Iemt1zsQstSx9cnwDyJ4kuYaJaKMKYTaoRJ5
	rHBZe4IVojQ7Px8XgljyCd8XJWw5KK8s3xbchAUbzeqSOqcXDs6PrT3YQL9al5JycIfnJw/7j0e
	gxVfUj4n/jM8oObDObTXYOg/gL4gRp72U+bvnoRDZ1U0ELcYvAf5ICtujulLvygOlPvE7AhJiLf
	TDBKrAw/Vb/6Jz++DquJ/1NwkGuMFjKtjaiuIpoRa94DjAW35nm5R25TCwMglVU2/zagM3iATUN
	DhnrGUtmKheR6QoaJLo5iQJWgeaQLykA==
X-Received: by 2002:a05:6300:228a:b0:3b4:895f:6ac8 with SMTP id adf61e73a8af0-3b783b220ebmr9694421637.3.1781409663062;
        Sat, 13 Jun 2026 21:01:03 -0700 (PDT)
Received: from mincom1 ([115.4.79.42])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c8661a67603sm5676983a12.0.2026.06.13.21.00.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jun 2026 21:01:02 -0700 (PDT)
From: Jihong Min <hurryman2212@gmail.com>
To: netdev@vger.kernel.org,
	Lorenzo Bianconi <lorenzo@kernel.org>
Cc: "David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Simon Horman <horms@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Steffen Klassert <steffen.klassert@secunet.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Christian Marangi <ansuelsmth@gmail.com>,
	Felix Fietkau <nbd@nbd.name>,
	linux-kernel@vger.kernel.org,
	Jihong Min <hurryman2212@gmail.com>
Subject: [RFC PATCH net-next 1/7] xfrm: allow packet offload drivers to own transmit
Date: Sun, 14 Jun 2026 13:00:26 +0900
Message-ID: <20260614040032.1567994-2-hurryman2212@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260614040032.1567994-1-hurryman2212@gmail.com>
References: <20260614040032.1567994-1-hurryman2212@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311406-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[hurryman2212@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lunn.ch,gondor.apana.org.au,secunet.com,vger.kernel.org,gmail.com,collabora.com,lists.infradead.org,nbd.name];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:lorenzo@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:herbert@gondor.apana.org.au,m:steffen.klassert@secunet.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:ansuelsmth@gmail.com,m:nbd@nbd.name,m:linux-kernel@vger.kernel.org,m:hurryman2212@gmail.com,m:andrew@lunn.ch,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hurryman2212@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6AAF068050F

Packet offload drivers can currently program state and validate whether an skb can be offloaded, but they cannot take ownership of a packet that needs driver-specific TX preparation before the regular XFRM output path continues.

Add an optional xdo_dev_packet_xmit() callback. Drivers that implement it consume the skb and return the final TX status; all other drivers keep the existing XFRM output path.

Signed-off-by: Jihong Min <hurryman2212@gmail.com>
---
 include/linux/netdevice.h |  8 ++++++++
 net/xfrm/xfrm_output.c    | 11 +++++++++++
 2 files changed, 19 insertions(+)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 7f4f0837c09f..1552eb81ddf0 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1048,6 +1048,14 @@ struct xfrmdev_ops {
 	int	(*xdo_dev_policy_add) (struct xfrm_policy *x, struct netlink_ext_ack *extack);
 	void	(*xdo_dev_policy_delete) (struct xfrm_policy *x);
 	void	(*xdo_dev_policy_free) (struct xfrm_policy *x);
+	/* Optional packet-offload TX path for devices that need
+	 * driver-specific transmit preparation instead of continuing through
+	 * the regular XFRM output path, such as adding offload metadata or
+	 * steering the packet to a private transmit queue. The driver consumes
+	 * skb and returns the final transmit status.
+	 */
+	int	(*xdo_dev_packet_xmit)(struct sk_buff *skb,
+				       struct xfrm_state *x);
 };
 #endif
 
diff --git a/net/xfrm/xfrm_output.c b/net/xfrm/xfrm_output.c
index cc35c2fcbbe0..9f11559b0221 100644
--- a/net/xfrm/xfrm_output.c
+++ b/net/xfrm/xfrm_output.c
@@ -770,6 +770,17 @@ int xfrm_output(struct sock *sk, struct sk_buff *skb)
 	}
 
 	if (x->xso.type == XFRM_DEV_OFFLOAD_PACKET) {
+#ifdef CONFIG_XFRM_OFFLOAD
+		const struct xfrmdev_ops *ops;
+#endif
+
+#ifdef CONFIG_XFRM_OFFLOAD
+		ops = x->xso.dev->xfrmdev_ops;
+		/* Callback validates, consumes skb and returns final TX status. */
+		if (ops && ops->xdo_dev_packet_xmit)
+			return ops->xdo_dev_packet_xmit(skb, x);
+#endif
+
 		if (!xfrm_dev_offload_ok(skb, x)) {
 			XFRM_INC_STATS(net, LINUX_MIB_XFRMOUTERROR);
 			kfree_skb(skb);
-- 
2.53.0


