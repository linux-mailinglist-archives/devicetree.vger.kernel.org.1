Return-Path: <devicetree+bounces-275862-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDPINtZWt2lsQAEAu9opvQ
	(envelope-from <devicetree+bounces-275862-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:03:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6689D2933DC
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:03:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3914E303C610
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 01:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE74D213E89;
	Mon, 16 Mar 2026 01:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G2Z5zFle"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A83176FB1
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773622875; cv=none; b=VX7xeSIL3PpGQzmoG3J47waU0tYh2w1gB90IDosfonQA+O4FEMWOFUDeNOa1a8JdTLWK06F5MPFu2DCwJ/nuSlea1FqDz6hpnfcB4y2Gbhaky53/MOBG3xKvIEC1qoVZlmZsoEmXAW36tsBRSrmdyUcV9uQZiFeoIlU6u3hKBzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773622875; c=relaxed/simple;
	bh=3McREo9Kk2UYPLjGgyLNM8Spss7Ow8fhuceAlqV3l6Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LcqIiZAiESW4NrmdxZ9faJhaC0HHYzQO+xlJ3MtZcrzzVBSAXqm5MGJ7o/SQNowDNlrJnxxLbSvnegZFOMjkI93rEdV/pBSMzVGvewbL39xZxYoSkyqJCMONkpmbSPp7v/rA9vC4IYoJ9tstbSAoI97epH0P2i1GRnpj71mukVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G2Z5zFle; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-8299c75f730so2243095b3a.0
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 18:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773622872; x=1774227672; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iB9g5jx+x167tNjxcGl7Z3iDMBhQp91ckzQQIEVj78E=;
        b=G2Z5zFlefQMMHbl+HaFSozcJ970IEMwR/eGgYoGpjPg8DTYA80/b7xeXVQFeb+//+N
         l1er5OtQLxHqLDr7pMKTN9ayuWRZjItIJJ8WA3xX2tcDfuWg5eFxT3+0Zf7lUD5LiO9D
         9WlsrD46kqk6H1cLkUmRlPX/A870Alqtw+FNIPKpSnmYYuBMceKGZXtJR5/7a1LwDdkD
         VvKck/dernJk5ygLQjaLsHEowv+XRcn8kgYXTGDXpsxlie/wBGsrneAzzeAXcYG7cx2Y
         TtD7WNmU5XgBb2Vbge6Em5vHtBHRspFmezbJjTYkS1UVAjpL+D5YL8cg6nrOuYKDinK7
         xkcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773622872; x=1774227672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iB9g5jx+x167tNjxcGl7Z3iDMBhQp91ckzQQIEVj78E=;
        b=FLj11GI8Edv/VL/viXGWRlcwPd1hsC0Hj2fjqt2p6m/KUwDPB8m9N4+Xbk6G7U0aVp
         3Ojq6WNeMs9bQa78jadq8ayuGezTe8r66r5uL4EZSAU2U8eaB1qrP9RquERfihVpunHh
         zSjW+lWSDR8pIy0UTjEQORr9HT/fdkaFWCXY74sNAfozXnrVR7bUTu5Rj1Fu4ssFrv6w
         FwhyFeezJIFs7L3LANFj5lu3IQcJXWSJsAxa7n5jrXym83I2HDx/gE6TyS/ghrG7yp2J
         JQyznl/QPmWtF7ZCdc0aFGvrUFvEFpObkxNMg4Ys+toMj53z2D5OfRF4Yp73reMEuNWx
         xd2g==
X-Forwarded-Encrypted: i=1; AJvYcCX5nfXfyDlrum2vLgHM47gP3iMJDCVVpOAnh8edKGlxxzqxy8ZB7CqIR1FREZfxI74c2pGLjxyhjggc@vger.kernel.org
X-Gm-Message-State: AOJu0YwP9VG8oFVjZxlGb2ZCa3REeE0kNLXFc+VdvvmIHx3sQnq+N/In
	IheeA82yPmPC2s601a06mrnwtSZJnH98/mGsWs3nywQRDHbfJlBKnylh
X-Gm-Gg: ATEYQzznRX+RvTNnvWFcgkHlq/9vm2u6d+U54ckPD1YJinXhE5uTLfRjm8fqv1Ez7wJ
	0t9MMbsjAWksP/lLVIwJvQrLyg3ZQfDya7xs2efWRgMo3JGGxd8Mr/hFSaIBLqKNzo8N1qyp8xj
	zZbhjtf4aVguGAQ2Sw8HkoG0GvbeA7JWFkmAdgdI7q46RcGlrh/6R9BtxSXJuIKMx/G7TRkuQaV
	pBaHmKz4SWoIZPScCYx5DAOZMQ8GT6zQNZ1TlxCusk1IIjKuCP7owhim9HFTclIrq2AKCIwrKnu
	yJy4/y8IYcsyi//vfOEAbPYMIcabDvjGsdOrP7rs7XTB+uoIdzWL8jvDFDQ+ao4q2fFs3bNzCyZ
	ttRyyDbQ4WP/EcFRAMquzImikT810pSQpDy4oK5WOeyw+b7dCTSnpl4cHuppnmlpQomiN3iYo4x
	9FyTS3r8V00LBo1MUzQV4d4iRciKmZY/gd6A==
X-Received: by 2002:a05:6a00:929f:b0:81c:ce40:b29b with SMTP id d2e1a72fcca58-82a193e89a5mr9456189b3a.15.1773622872449;
        Sun, 15 Mar 2026 18:01:12 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a072419efsm12308166b3a.11.2026.03.15.18.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 18:01:12 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Inochi Amaoto <inochiama@gmail.com>,
	Yixun Lan <dlan@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Yao Zi <me@ziyao.cc>,
	Yanteng Si <siyanteng@cqsoftware.com.cn>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Shangjuan Wei <weishangjuan@eswincomputing.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Zhi Li <lizhi2@eswincomputing.com>,
	Boon Khai Ng <boon.khai.ng@altera.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH net-next v10 4/4] MAINTAINERS: add entry for SpacemiT DWMAC glue layer
Date: Mon, 16 Mar 2026 09:00:40 +0800
Message-ID: <20260316010041.164360-5-inochiama@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260316010041.164360-1-inochiama@gmail.com>
References: <20260316010041.164360-1-inochiama@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275862-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,ziyao.cc,cqsoftware.com.cn,nxp.com,bp.renesas.com,eswincomputing.com,altera.com,bootlin.com,cherry.de,st.com,synopsys.com];
	RCPT_COUNT_TWELVE(0.00)[39];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gentoo.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxtv.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,spacemit.com:email]
X-Rspamd-Queue-Id: 6689D2933DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a MAINTAINERS entry for the SpacemiT DWMAC glue layer driver and
its DT binding.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2265e2c9bfbe..dd72d26ac837 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -24834,6 +24834,12 @@ W:	https://linuxtv.org
 Q:	http://patchwork.linuxtv.org/project/linux-media/list/
 F:	drivers/media/dvb-frontends/sp2*
 
+SPACEMIT DWMAC GLUE LAYER
+M:	Inochi Amaoto <inochiama@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml
+F:	drivers/net/ethernet/stmicro/stmmac/dwmac-spacemit.c
+
 SPACEMIT K1 I2C DRIVER
 M:	Troy Mitchell <troy.mitchell@linux.spacemit.com>
 S:	Maintained
-- 
2.53.0


