Return-Path: <devicetree+bounces-257756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIu9INN8cGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:14:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A6652AAB
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:14:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 71DD64E0F7E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:13:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 899DD44D696;
	Wed, 21 Jan 2026 07:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GMQjbMTC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C0744D03F
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 07:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768979627; cv=none; b=YPJFGRFF+NgnY+CRUB4Tr1ZoNGA2ZGTEXNJTmEUTdd4Lcbcr0eWKoI7z6qSMDI+GK36lESflEQJXSJ9s+vmCDUhrMNDs09KJUNpG73j1Xz5KjpoOjReTsyq2fplgKaFjgaxNJ722Dgo3TPLeoUadW4CUCAUbOXdDMAfGGoDWguI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768979627; c=relaxed/simple;
	bh=RbmYS+GbmO5r9aIsVbkZb99LO5fpXfIwGvbgj9g6qUI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nCueVSyQtDoVjPAs5vvyCt1dIcpgT2BWhwJdi2G+4Aq9jfhh33edFFCCgSFM6hssiw/DCvoCQHB4C/yuRIrlqmYCnso9HUJ7ilsIjupquJTtDrZSDncEVa8h5ADnZ9VAw4ByNzMrHzbtIZpekkkMN54rYkr+2gU769KQ4Po/W98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GMQjbMTC; arc=none smtp.client-ip=74.125.82.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-12448c4d404so5215619c88.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:13:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768979617; x=1769584417; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yB8/RdUGEfLZjhmXdp52kQTD2QqD1w42DdvzuHTbkg0=;
        b=GMQjbMTC6Yu6Xbj0QKmxiR3upjKTEOjq6HD4d/L27l2AK2TgOEaKhxlc0XUjNR7CwP
         1+AZacUtJnYkbQsanBZwfvlrb2KZmGyF2vh5cd1puOKUik+Y1Ie7cjzE0oLMBUAKz6lG
         /aQmMESUBDjvpkDduzDtJmX4xsaOb7JVgNfovgqcO8iLG1aD9gyX14aRYfSqR9QqXTg7
         i2H1grIY6pAJRKXrSPGfoIQlrgtsOG0xN7OO6EaZblj/rlxSbm0MFVKVXBVftY9T7Jkr
         8wDUTXTlaJM8HqlWKK9GR2NEpv2mdSz+P/rvc0iJo8cVIakAdMPCP0maMl4Kj2cWWwmE
         zeMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768979617; x=1769584417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yB8/RdUGEfLZjhmXdp52kQTD2QqD1w42DdvzuHTbkg0=;
        b=uFUEgW6qRXTpVaDw5Cgk/wTz61ftA9YJhh7umlBeJCFsKSLZx6rrsDUiHmQ3ySSvK5
         gSRkIdvJqQ3/0rcjQugdo1H7eEumegN1W8xi5tw2ihrKr5N64nRRys8d5KS6EwE8xLYm
         UatznVLlZhUqjTpIfdAIarPDlCCEUcaamWFOVvcDHzTkKOUm9O+Xz1hNWtlNMp7ZsEQA
         dTezLK9UM0tI3cSGjIth9lViVZeN5W1zDejqZXGc1L7naPz0lhHb8B1ZfXTQ3La0rIJ7
         djRT77zvscC5t0yJ+CcVU/xuNcBoCG6LIktE1m8EA6qwGIm6o7Dg0EukexqEo2fNj6qc
         fnsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRmxJSBBCOk2vM9t2ncTnrOQkHzIgR9mZoZ9BLo+zsAi7WtG1pLcNPPjFi4HBJ2i6iRjCE56mBkLZy@vger.kernel.org
X-Gm-Message-State: AOJu0YxydF1W453fiyS9jwd2gvGVtavR0vYMWDhMIPwKLXQs5fRwtQF1
	G173e/+zwLfRc7AZQiXn10+PgG6kD33XHJ/QakAi/WKerN+Lv2Pc521g
X-Gm-Gg: AZuq6aLETt5ndvlqZ1tV0GgSI9g3YrBUHx36ePVL8ySZJuIlYyUJOITqyuxeW/vUTqw
	xjrJHih3b3iNcFEEEOLUD61dRUK7YxOlIzkof1X8OqBM4CCUASEl8TIfgZn6seiZZI7Sv+lpiDx
	UbYhKPAmAhCaSZ+PQnRCdcP/EES2jstc1gc3mI/DkFXi7Tg2CKBR0mmthszjqa+aw2sFcrnQd6u
	y2LdTggYkD+d/xwUs58ZoscpS+pbpVAvMmjSPP2rEVqHPNZZkhGfGC5lwGQ4RTL+FuhhQkHaIye
	J+lHTOCSreceKvyG9xsDrDCiG01l7cP45SCSMJJ8MZ3nyuJqKcSRVk0zx8cXb+yLyzJti2KWvT9
	z6ZZLoGh+PrhA+6vFV+ITY/Hfpal1Z7nTwGYiOlsf0/m2uKwI6745x8d5hJ7vLEmyznAU1Pxy6M
	yMZyEvhQGnhg==
X-Received: by 2002:a05:7022:914:b0:11b:a514:b64f with SMTP id a92af1059eb24-1246a966afdmr2812178c88.13.1768979616484;
        Tue, 20 Jan 2026 23:13:36 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b367cbc9sm22387219eec.32.2026.01.20.23.13.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 23:13:36 -0800 (PST)
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
	Yao Zi <ziyao@disroot.org>,
	Yanteng Si <siyanteng@cqsoftware.com.cn>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Choong Yong Liang <yong.liang.choong@linux.intel.com>,
	Shangjuan Wei <weishangjuan@eswincomputing.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
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
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH net-next v2 2/3] net: stmmac: platform: Add snps,dwmac-5.40a IP compatible string
Date: Wed, 21 Jan 2026 15:13:10 +0800
Message-ID: <20260121071315.940130-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260121071315.940130-1-inochiama@gmail.com>
References: <20260121071315.940130-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257756-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[39];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gmail.com];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gentoo.org,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,disroot.org,cqsoftware.com.cn,nxp.com,bp.renesas.com,linux.intel.com,eswincomputing.com,altera.com,bootlin.com,cherry.de,st.com,synopsys.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 26A6652AAB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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


