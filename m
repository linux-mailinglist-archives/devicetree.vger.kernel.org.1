Return-Path: <devicetree+bounces-273452-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJdTKeH0r2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273452-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:39:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4465C2497E2
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:39:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4014A30349A0
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:39:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEB3337187B;
	Tue, 10 Mar 2026 10:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="Tu7hpJh7"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FBF37104A;
	Tue, 10 Mar 2026 10:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773139163; cv=none; b=UJ56/i/HYVzzuvNVHuQpKUcbGg5wYB2WYHWhd1XiIfrNvWxvxHIDaMvgKCoa30bjg4ta0LVdAmtdLlBUcRgXlKLisTXEFkSjnuYsKLXKumS51H4TuWqbF5d1gz0//eszVCBvx0MtKFYnmQ06UW4hL2mkJwPECY2ELBJJtN46mGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773139163; c=relaxed/simple;
	bh=Z/vAzq5np2GPmqi0sV3g4AHmjAkYGwSpqkW7Ajg73rM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PPvjAOOwnYb/N+9YaT+CmPMNgxUIuiIZf3mtzKzTxPJ3ghSUSPbP3dqiYMo+I0ZieABNh8TQF2l405yIyt5Z8UF3mzqfWU3507WaHhaSGfRqQjlLxEdEBqElx5yxXfzut47cvZelnLohY9CgARrcxvv2paoTSp9fYcCiMSsQ7eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=Tu7hpJh7; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 62AAcscuF2414589, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1773139135; bh=Z/vAzq5np2GPmqi0sV3g4AHmjAkYGwSpqkW7Ajg73rM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:Content-Type;
	b=Tu7hpJh7Xaj2uT4e5kJy7+uM0znwx7ZpyGDQZTUcSYTXiFoGC4WIQCT3P4X3QIfCs
	 4p4VoCzq25NOLeD16xjW+p5JnCpTfmi2rRvk3H3noYTicnOXlXXBLEczCKEu5ipTY7
	 DVCRiFmoy9iXCiFEHRyrCkalwqr9K3q/Ge1e8UbJ85ZYhN8g+Q0AaLiAs8yNf9r3Ij
	 FiYeffZS2bpQicPN6nOiulKMBNHIU+VWoikDsXb52kMbBPm2/RVfBhcTZwgUS8SIcT
	 E+3k8i2QDI2nvfkpbZL/YSmsOvkDgH3+yd1mJDj9ULeJg/BHHYXBISoQvT7PNmTvxi
	 3YMvAabOa3Mug==
Received: from mail.realtek.com (rtkexhmbs02.realtek.com.tw[172.21.6.41])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 62AAcscuF2414589
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 10 Mar 2026 18:38:55 +0800
Received: from RTKEXHMBS05.realtek.com.tw (10.21.1.55) by
 RTKEXHMBS02.realtek.com.tw (172.21.6.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Tue, 10 Mar 2026 18:38:54 +0800
Received: from RTKEXHMBS05.realtek.com.tw (10.21.1.55) by
 RTKEXHMBS05.realtek.com.tw (10.21.1.55) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Tue, 10 Mar 2026 18:38:54 +0800
Received: from cn1dhc-k02 (172.21.252.101) by RTKEXHMBS05.realtek.com.tw
 (10.21.1.55) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Tue, 10 Mar 2026 18:38:54 +0800
From: Yu-Chun Lin <eleanor.lin@realtek.com>
To: <eleanor.lin@realtek.com>
CC: <conor+dt@kernel.org>, <cy.huang@realtek.com>, <cylee12@realtek.com>,
        <devicetree@vger.kernel.org>, <james.tai@realtek.com>,
        <jyanchou@realtek.com>, <krzk+dt@kernel.org>,
        <linux-clk@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <mturquette@baylibre.com>, <p.zabel@pengutronix.de>, <robh@kernel.org>,
        <sboyd@kernel.org>, <stanley_chang@realtek.com>
Subject: Re: [PATCH v3 0/9] clk: realtek: Add RTD1625 Clock Support
Date: Tue, 10 Mar 2026 18:38:54 +0800
Message-ID: <20260310103854.3025286-1-eleanor.lin@realtek.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260122110857.12995-1-eleanor.lin@realtek.com>
References: <20260122110857.12995-1-eleanor.lin@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Rspamd-Queue-Id: 4465C2497E2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[realtek.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[realtek.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[eleanor.lin@realtek.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273452-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[realtek.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Gentle ping!

Any feedback on this patch? If changes are needed, I'll add an extra clock
device node in v4.

Thanks!

Yu-Chun

