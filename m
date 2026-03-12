Return-Path: <devicetree+bounces-274379-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHooOdwVsmkCIgAAu9opvQ
	(envelope-from <devicetree+bounces-274379-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 02:24:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C906E26BEC5
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 02:24:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CCC70303B188
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 01:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D7DA36AB53;
	Thu, 12 Mar 2026 01:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I11zMDhP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E083E364036
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 01:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773278619; cv=none; b=AgWmNYiZs8P2j6Np7Vl+IozArrMB/+KGbICZpT78jKmUs/+c2DQEn9AXVQRH++IM/ESGMWTeylDioqdRSDnHqx7+1dJTCsJ1AUbWpqHROqsY+M02U6LVE14j2E9XpNvy43E+EWjXIuy+H+S8nQtTZRxm+GTXLIEfGmpLRCa7vY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773278619; c=relaxed/simple;
	bh=3McREo9Kk2UYPLjGgyLNM8Spss7Ow8fhuceAlqV3l6Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dSanr3w3d94pCTYOOSbzR42pIEdR2IpPmH5Xln7HPmHySAMWV+IfbQ5FDAgr9ySDUVY0Dhb9K1gfchSWIWQ2cGUp8RqZg70FQvOVD7kg9ShVHggfGFxZ2gop5Cx1m21kyx0Tp7aYo4ZYDpnUfIY0x/SVZz0RM7lOs6enMmB3B0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I11zMDhP; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-899f27df3d1so4714926d6.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 18:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773278614; x=1773883414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iB9g5jx+x167tNjxcGl7Z3iDMBhQp91ckzQQIEVj78E=;
        b=I11zMDhPIl7kXdTTvuou3vYKcmATOKWtpAfCABWr3LoMrRdeF744HjgYF8O/zGj6br
         ukFcOGmkVr45RtkEwMyoQ1a+OulRfG8IxZdxwAodW9Caecmr/obUC7XE0QgPollYltJq
         NPJ7qvP5k/L8yOevLEKfkX84V+TOlsF5iQyMQ2sNOtu1RsdCHsjwFbK4s86ui4Rx6uuW
         hyg14Rim9CK0/f5iV/AAFf+vunvS4QDeiLTJXUXaU6vkHXCENDWfnkeGqO+LUDp87iqe
         XT1b6/7/O2U/fvbOc5Xdecq5kJEAiw+0EgcTFKNgG/ZiB6XKbP48b38eqhf44Oprzqim
         3Ruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773278614; x=1773883414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iB9g5jx+x167tNjxcGl7Z3iDMBhQp91ckzQQIEVj78E=;
        b=VwAXnSTsHq1BSfi8n85jM0OIUB1acJhNIhEdHCcQzQVAnGzix/OwDjEd8uTx1XVjgH
         4CNKEw2IsCb8sCQLx3pwQgifpQOuoB82sFfUwR0nV/r+tSpEMdP//8xOAgBFzC5vAXwu
         +aQa1TSaqtGGRolIatrBgWmqagkSxiL1+XAi/gEJcWCWX1Oj8NSc10vNw/5M9uykm4iK
         /bvJ03FcQDM2jav/G/vR9qfE8anT4EVIbeRwMcjuu7zEQzV3wUG0wU8jqW3iEzAx7TSZ
         aCmJ4qM24IjzeocrfTPnIZ958Cn/ZXqm3WLzVFWQe1kSHVOMnf21OIup7/U01EU/HJVQ
         1C9A==
X-Forwarded-Encrypted: i=1; AJvYcCUvWY1cxfAmTOTeEVRGgeKmN1u5BGil+aoHcl9kMJJ1lCo4SwclJtz+QxXvzM64c3rWUHSbAzqi7lKQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/47riY9Z/3zYJzBGIho3RMa19L36gcKOdRzVRYcY1waaMe2+X
	/U9Q/0RgqcehNIcEL+kNSsf+JKkOauBTEM8aqQHfZ5THkBTQjNnRlCku
X-Gm-Gg: ATEYQzyYhfpesitiIQ/CqUsI4w8YCxUkUnNKpRNhsXT4qUM400Tphgh07SeLD77XrIh
	UttFaHNTpDBc4PBBn+EIJq0Lo2WZ1leIGgibfFG6PT45aATGrWGYb4yAg1OvV9dore4bCq6AG3H
	UDRTzz3tXVHBx7KpmWkjRFqjWvE7dByUd29yGoBud2WZCamevTcfkL2NAOtXE1AkLs4tNV+v4Gf
	zZPmJ71KANuWe1yq5AX3TSd1kqMHuJKGEhd8c1G81oFB8Tm3ehtOjIQ8dM3tCYLizOCPhyh47Jb
	Gc3w+bSVRuA5GU1pdfdvHJfjqmEFMfcwXwyYCD/viLpKIrJVUnXr1eW7myflQ1YeBi0qeUYXKft
	eeA+Gbk84HiE4YtDNlaBumfLuA5QnzxofMpPOwtFzMRJpPDrGTOJ8tL9Rfhi0ameMpPZqW4SGQh
	woVFGdcxxTu7aVJ1s6w8Q3zlx0DR1utXs4ug==
X-Received: by 2002:a05:6214:2305:b0:89a:717:1e48 with SMTP id 6a1803df08f44-89a66ae1ce8mr61425926d6.58.1773278613817;
        Wed, 11 Mar 2026 18:23:33 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65beb4b3sm25165286d6.14.2026.03.11.18.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 18:23:33 -0700 (PDT)
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
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Shangjuan Wei <weishangjuan@eswincomputing.com>,
	Boon Khai Ng <boon.khai.ng@altera.com>,
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
Subject: [PATCH net-next v9 4/4] MAINTAINERS: add entry for SpacemiT DWMAC glue layer
Date: Thu, 12 Mar 2026 09:22:26 +0800
Message-ID: <20260312012232.373713-5-inochiama@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260312012232.373713-1-inochiama@gmail.com>
References: <20260312012232.373713-1-inochiama@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274379-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,ziyao.cc,cqsoftware.com.cn,nxp.com,bp.renesas.com,bootlin.com,eswincomputing.com,altera.com,cherry.de,st.com,synopsys.com];
	RCPT_COUNT_TWELVE(0.00)[38];
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
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,spacemit.com:email,linuxtv.org:url]
X-Rspamd-Queue-Id: C906E26BEC5
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


