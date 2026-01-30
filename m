Return-Path: <devicetree+bounces-261070-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GE6RKxsXfGk/KgIAu9opvQ
	(envelope-from <devicetree+bounces-261070-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 03:27:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5E2B668D
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 03:27:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 83FD0300469C
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 02:27:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DBB132A3D7;
	Fri, 30 Jan 2026 02:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iSDGU8D2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FCF7E0E8
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769740055; cv=none; b=jWtYHgKG07ZjP0FLIyl667GGWnfdncWselGcCaqfFNwwVutSQ5HUInycDBy9/AvlDWhR8lNeksWuW2dBeLF/V4IM/VmA8iCXk/f3YSp0Lq4pFKIf2BOkvu1gvgMKx7uhPEfjrg2TJTVy9F+i0w5n0XVD7paTksIFPYU2vSD9K3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769740055; c=relaxed/simple;
	bh=RbmYS+GbmO5r9aIsVbkZb99LO5fpXfIwGvbgj9g6qUI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F9Qr4V/6/H6xSZjZB6WPiq2ZhMfVpF7BSF1UBlUSlFh/Q2O6/ZzSRNssQb2BAMI2WrIpfUa7L9mFMFI6GyjbekvixZYhHcXbwcVRBlgyhEdqFMF4h2O4J50KVPQ4AMhfKxApHYzlphZ0M851JEHOEhcm9L3zi8j40PWWwkX1khI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iSDGU8D2; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2b720e4dcb4so2073587eec.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 18:27:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769740053; x=1770344853; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yB8/RdUGEfLZjhmXdp52kQTD2QqD1w42DdvzuHTbkg0=;
        b=iSDGU8D2EVPBdBFCJ3z9rD0zVqLNBo3dfujIpWkUNHmilABq4xuauisaNnit3p6amT
         Uwys1DNRjPQDxmL0inbPkMXXF7Aaw2Qneqtr3rYtQXg9BcCHeAnQnFsWfiTkKMlfyHFK
         1YFaMipYN+4GrMDr+0Zf2nMzfyoMY+61HimBml0Uap8SBsC1G//8i6S7kmcOuSvKxTSp
         XMR1NN1YsEcotk+lJzoerRBGKs+nsMD6jVAaBZJfGIBvMjyaWvphSaSmdtnt1HKm6MiO
         y7udsPktt67p39lUu1H4lO59F/XTgpkN1dp5tAEAL7gjDMmSunF7CY7zCUiK2kj6v9CW
         tihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769740053; x=1770344853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yB8/RdUGEfLZjhmXdp52kQTD2QqD1w42DdvzuHTbkg0=;
        b=dGmOn8Sdg1nG0udHFKwxdOZq9tTNw2XLqldE819wHAreQ61kq9bLuELVOGa6+K9J0E
         LFkQ542BTVtpL/yaJBPLOBhe8ZZ57Clo+j746Fm+IFkXKWe6oJLEI+rONlc4aIqp85QD
         9gvgnRDXocUu20LiriaTX+lRY8D3tGGqb9PYngdVs2ezHwYSNppp3zosRF6msyxHa0Bo
         0qO+tBwlhmfWHfiITBc/L10XPKFy9vCJXCDXj7ivOvWEa4hTxmD5iN+uNRhb+sxkGmY2
         +/3o7b6vYIjPuBOXmneL9hgormx6o5FUhz34cytuuZxFsb2VABx6iVNGGX9VKYHHXOw/
         rJ1w==
X-Forwarded-Encrypted: i=1; AJvYcCWJPV+Cms1bIeyFwIFcwWNPHMdHts6Grt2LZD56AThyVWEPGb/WaqnmW8ySnc6DzZw6u5Z0HJJFGqzY@vger.kernel.org
X-Gm-Message-State: AOJu0YxYM/NEGLnm9DnWY+2qbH8G/vfXlEZ7IpAND8BzHOrNhQUu4SHg
	Ics1kvRYE9bjdyJYlXXYWovZm3wd4KJDcaj0bxLaITUOf8OnsjbhWJry
X-Gm-Gg: AZuq6aK0Njz7AA5ZH3StGJAaUGDoRIkTGpzsW9PhZlajZTYbCK6hVX8EQ+o8FMJwA8N
	OZyMCFunJ5fIX2orHGNmWP+j36m8Ea6Fvs7Go4cSzVq97wm1KNQI6KVaviF5VKXvRNjxTWibOvk
	SGnGSJHqA3M8AQZLsSPnXi8B+svHEL+fKDEBBU9CrWqFsoqhTIgt7L2BkTHwzH6epzIQ3uakQze
	ByXoVpQloFPDgXmo/873M8tJscVQABpkTan2eDxekpumAf9Waz3syzK4RNcYiTWN0mblEk0vrlG
	OQSpRroJv4aJ0sIo4meVaTrfs2ZPpTT/RIEg18kk8TiL1JStE/z0mUTXOKq+hIdEXX9sBD8DYT0
	+6DHTYm21KWTWoHQB/lc9puTHpiOFU0aXayUH9+Z5kiqMCy00aP5d6q2SKb+U6n4ItSLa48auDJ
	j4zn/Bx4awRg==
X-Received: by 2002:a05:7301:3e18:b0:2b7:4118:88aa with SMTP id 5a478bee46e88-2b7c890c90emr706190eec.35.1769740053090;
        Thu, 29 Jan 2026 18:27:33 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a16cfc73sm9365628eec.6.2026.01.29.18.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 18:27:32 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@gentoo.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Yanteng Si <siyanteng@cqsoftware.com.cn>,
	Yao Zi <ziyao@disroot.org>,
	Inochi Amaoto <inochiama@gmail.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Shangjuan Wei <weishangjuan@eswincomputing.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Zhi Li <lizhi2@eswincomputing.com>,
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
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH net-next v4 2/3] net: stmmac: platform: Add snps,dwmac-5.40a IP compatible string
Date: Fri, 30 Jan 2026 10:27:03 +0800
Message-ID: <20260130022705.1059214-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260130022705.1059214-1-inochiama@gmail.com>
References: <20260130022705.1059214-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261070-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gentoo.org,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,cqsoftware.com.cn,disroot.org,bp.renesas.com,eswincomputing.com,bootlin.com,altera.com,cherry.de,st.com,synopsys.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: DB5E2B668D
X-Rspamd-Action: no action

Add compatible string for 5.40a version that can avoid to define some
platform data in the glue layer.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index 8979a50b5507..54c7b1537ab9 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -396,6 +396,7 @@ static const char * const stmmac_gmac4_compats[] = {
 	"snps,dwmac-5.10a",
 	"snps,dwmac-5.20",
 	"snps,dwmac-5.30a",
+	"snps,dwmac-5.40a",
 	NULL
 };
 
-- 
2.52.0


