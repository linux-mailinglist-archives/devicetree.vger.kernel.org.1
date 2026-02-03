Return-Path: <devicetree+bounces-262327-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iO2ML8EggmlIPgMAu9opvQ
	(envelope-from <devicetree+bounces-262327-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:22:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D13CDBDA5
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:22:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B10743079BD0
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 16:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB5AB3D331A;
	Tue,  3 Feb 2026 16:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sz0cHxFf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD5E3D3003
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 16:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770135568; cv=none; b=U7jQ32nOHJ38W+fO5VDmVNCASTfK1iPBEKAKB70iGHg3JRmGoiIE/ncP9cCrJlSW05hh/vPNNVVajqntefkcqDeUvQmEMHFSyvHmODehTqrVNB7WxPmyyTvHF7x1aqhOgraBYoVdqDkmsIZdqaUA6spIdaQi4HRR6GWUlIRq5o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770135568; c=relaxed/simple;
	bh=qQXywwliKiapdNiYt6dNWT6x/lDJ9YflmLKRdBQeGyw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S82VYkfM7C+g8PnIdyvOWyeMqcjEUNyvTAO67bQ1bvXHfgcjUvX0p/dsK86hP0M5/j/9Yfr8l0hNZ3Z9OqZkOpSbZ+zSMaJLFAVws2unyTMuVX2tNJ2dFMGSO6IE2OgwvorYS0PwxRdSzTwDHOASFGbZM00hsLbAfbqKNox0b10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sz0cHxFf; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4806dffc64cso44995955e9.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 08:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770135565; x=1770740365; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L5M1ZbJBKUwOtAuomtIJGP1xLtlDmn08RXJLiC0W3qw=;
        b=sz0cHxFfNl/3CGqWQVtv34vGdT2jimV0+aTwD3AuaVg1FFvAPiqQUiEf/N0I/9e+hp
         bU4z+9HBhmbZix6aYQJjyrzLknhXdACxUYJ0I3uP2bZJhT0sqayVq51jbsnuYJpGndVO
         swKwarzj32vbel7EDr01cytgi/Fc4zCKceG3HJw1Y4nIorwhFaLjc8rAwB/BIpBLLb9f
         +rov7jZCe5YeA+UhXseF6Mc53ZxmCvIO9Ma6VmzHZ0dnNkJcC2vgjG6/d13sNaw0dql1
         U89uKLjtqJQ9hOW4PKYsL4ZIW2zoOG32Rg/i6xUfUD5xD9nj6J/wVk+Uw3PC6Wr8WELe
         TlYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770135565; x=1770740365;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L5M1ZbJBKUwOtAuomtIJGP1xLtlDmn08RXJLiC0W3qw=;
        b=ay3I3LbLvjZMcCWiLg8AmzvHskD55N1guvwveYXkvZzI74VakZ3p/YzdPanQ7I3bjx
         EkZIUlkhrskeF+t7Kf+rtWMnJ5YJ/U3zkpCkFpUrfP5fdZk05EBcLLSgBqJsaoL8x1I1
         15MVzsNdgiFBmp/goIkwgb3WQQIIJXkl1IFFDoLvSQXOgQDDTzfengJfr0pQqmS8+xlb
         QZ6desk7C1QItDFBTlRfZNOeaMAimQzHuionmLGWjBiKgzWjpEvgspxwf8Z6a5uz2QDl
         uY2Wmj7Qv8JIEHvSyM6gZDFQGHFS56XedQ68gM0qxsM7J6Nh3946ncX+pUwvR42ppXHJ
         wj4g==
X-Forwarded-Encrypted: i=1; AJvYcCXxi47FppqIqi6m8MV6t8HYKa+SN9DB6pmVl12qdOtfJGBhVy2M0MoMWbQ3ym38sxbAuSm5CKEzhvgE@vger.kernel.org
X-Gm-Message-State: AOJu0YywM19qHYuQNRjD8qzahdahJSvMyFK8uyJC2LUdBpJw89DN+6S0
	ADac0cWwTuDDMuUKheq5FQxpaG36ARHx6mDCW7IzOPcXRauy495zkt6BGNxIOsgeres=
X-Gm-Gg: AZuq6aIyZ4Yg1iZc8n9rjkpPfzKe55Uz7s8C5pEfMZFdbaF/MoKBiOd2e2YEXWRlO6D
	/QuVuEMi1tjY56HJlVu3KG3ESr0OZTMteG01JEHEId3rQvDeQpQyx4la0F4ABusxjqVIyC06jKD
	+eH4F9L5L+nXN0y5S0TRp83iU+8McNwcB9STi/voOBp0uak/IF4/3+GCgbimfERvcOjSexfBaIu
	LjnX7QeS9XIan4X4YeDeh8CGh35YogM7Qd6y4GY9d1phyT2BtgjYewlwJinbizFt9PTOvvs1ArV
	r6ix304h8tThBuS8Kwn+FRPtVeR1nSqwY/joIzPtKE+n5sEEGPC2AnrQqgmtglUhTZhgoQBY2Sq
	rVDz+gOAatZxxpYXgnC+2UV6KZdTcQVO6MbLLOSwOfz/qm9UP5VL+f2ZtfN1qUKkuZf8RpEWGPI
	Z5DO4fK7IdS/YYVGaSZWM=
X-Received: by 2002:a05:600c:820e:b0:477:df7:b020 with SMTP id 5b1f17b1804b1-4830e96abaemr2199595e9.18.1770135565342;
        Tue, 03 Feb 2026 08:19:25 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:81d1:b874:c1dc:42e5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482dbd21f5dsm144120785e9.8.2026.02.03.08.19.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 08:19:24 -0800 (PST)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ciprianmarian.costea@oss.nxp.com,
	s32@nxp.com,
	p.zabel@pengutronix.de,
	linux@armlinux.org.uk,
	ghennadi.procopciuc@nxp.com,
	Ionut.Vicovan@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	horms@kernel.org
Cc: Frank.li@nxp.com
Subject: [PATCH 4/4 v2] MAINTAINERS: Add MAINTAINER for NXP S32G Serdes driver
Date: Tue,  3 Feb 2026 17:19:17 +0100
Message-ID: <20260203161917.1666696-5-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203161917.1666696-1-vincent.guittot@linaro.org>
References: <20260203161917.1666696-1-vincent.guittot@linaro.org>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262327-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[17];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,nxp.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:email,linaro.org:dkim,linaro.org:mid,digriz.org.uk:email]
X-Rspamd-Queue-Id: 5D13CDBDA5
X-Rspamd-Action: no action

Add a new entry for S32G Serdes driver.

Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 67db88b04537..fab748292821 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3206,6 +3206,16 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
 F:	drivers/net/ethernet/stmicro/stmmac/dwmac-s32.c
 
+ARM/NXP S32G SERDES DRIVER
+M:	Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
+R:	NXP S32 Linux Team <s32@nxp.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
+F:	drivers/net/pcs/pcs-nxp-s32g-xpcs.c
+F:	drivers/phy/freescale/phy-nxp-s32g-serdes.c
+F:	include/linux/pcs/pcs-nxp-s32g-xpcs.h
+
 ARM/Orion SoC/Technologic Systems TS-78xx platform support
 M:	Alexander Clouter <alex@digriz.org.uk>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-- 
2.43.0


