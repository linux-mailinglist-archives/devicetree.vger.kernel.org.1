Return-Path: <devicetree+bounces-269349-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPbXDH7AoWnPwAQAu9opvQ
	(envelope-from <devicetree+bounces-269349-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:04:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FB81BA7D5
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:04:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D967F3028C23
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 157AB4418F1;
	Fri, 27 Feb 2026 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AnhFPHM2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9473B439019
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 15:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772207895; cv=none; b=pQwgknrFFCPemLO83OWGHyTU+oNTPxNoXb4jGJN2Mdr8hYZZ8HdflIg5CAqixdcUdaiVqkQoiUfyov12Yppv//8EPStx9NDcDCv3/KHgwrCJuLa1/juyq+OaaP0f0DXV3UcYRbHFKgGp6fpEXDccvrLCN5HlQLW7CHJoR1CW2Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772207895; c=relaxed/simple;
	bh=XdU3nfAUg7NOuFYXw520PUWUSfgQGz35Uu6SwOu+Hus=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tF9Iwlc7VfMomYJeTfa73Ak4wip/diXvK9Eq201WVX+2lvHjEFokP+OLhLTa0vjTLU/PkX9pW0F29CBTMR30vaiT1laUSmIfiBPNftzQaQvop/mUUw3+pFcj+n+6U+RNtMVN3oAAnBI2ARnfBeebjNbreXkrqYjSWwe3xAkNNEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AnhFPHM2; arc=none smtp.client-ip=74.125.82.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-2bdc8db07a3so1929133eec.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:58:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772207891; x=1772812691; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+dFaHfPFCueb/MdBlAyf2+ElEWghzCTWqL/iqfEI9oM=;
        b=AnhFPHM2nwyAR3oP4YGbSSC9vsYZSHnkMJ6FvBgsn6wmCgnzeYR0dkRyo1m1wWA5gn
         1JJuPBHAHbds1rMRk04qRTNyKaxvBWf8hiD9ILAk72oRUP1QeNnA/seXyuMe2Kiq2mmD
         zdRwb2WvT0Ik5UeBRlC7aJ061m2Jo0wpCfbQF/8mhK+UlCIoDnMDnmhYRzjZHfmpkDu4
         Vu/BL8Egb02v8XQ5Wf3rekJR964YI2A16ESB6NUUsrf/+/YQetQQCKB2jE1xLcoF2aYz
         nItg2FZRO4MyH5w+GUaKtKGvRsDbOrMLF/uYZUv9BTCOSeAf52jglhQwNbRAIQxcNjKq
         2uEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772207891; x=1772812691;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+dFaHfPFCueb/MdBlAyf2+ElEWghzCTWqL/iqfEI9oM=;
        b=EbQRCihY43gxhnVu3vNhMjS3c9sBbwrp7jB0OY2j5h0RpQDBDb9Lzs2mT0RKFaygzS
         Vdojw+knMJnwTapuyEppaVMdSALPo8VmU0IpkiVOj6cIYEjG1QAvLu7bTYuerCep8PQI
         QOr535ay/+oZ+LhcyWT2C42MgUpl5hwu/yWw7dNb7NdqlCkm7FMSVBWXjosCwG+e/Kub
         MOLj0NKhVdfLnV36P1ac0e8wMBg9q4xGeJ+tiK6zr5VK9tonhysICtUQ2ZVzVLwFoqWT
         Gw4+czWQxDOHFZUMup+DaAQsaz0krJzSbZJ3JdrucKSfB+lHQJOqlmJeWVULIBdGSUkw
         gaqQ==
X-Gm-Message-State: AOJu0YyyxOV4zY08WAVd7P6GfWh/ZwDxrbuLSgEoiGEJu04uu3A4BgKE
	uIDcb3NjYo7qhRdMkKAimwuPDYsajSdtspkwcTvPnZZwmP9prxGNPvBku+hcqWswLRI=
X-Gm-Gg: ATEYQzz+IkIiqQcQkKrHycnKQ+0EfHXk3L+phTGdpq1ti8m7Zb78e+VWiyzh3p0hhMX
	4Hm0nc9ogozjbn1BOhAHNcw+ccGdXs4AdrwUMRj2HUIzwjEMY8s+vrSeKJ+8eqelmxIWOQO+zsl
	MRx19XCIsCBiIr0R7VpzCLwLAj4OiJXi6DLH/nb86bLIzfBVcDDLx88/gS70bU6xpWFDyBGijFW
	Rb4B0Dc3yX3O63hlbdhBvmbwTwoqO1l3/oLqidbegFLuj7gvfKpYoylJ3fGqCVP4mE6GFR49J5p
	rSk0OIjVFC7VO5QX8hNJn19kwMJEMr9/DdLzhshYgwYUFBkfULK7qGET54Aw6DMac49eOP/cf98
	YzKAHCPSbdVlg8wmZx7UPbx1EiF4ZjPyDdzbjhMvlYV6nn7bX3vYgZCt8ldBrDFhJdRACG/HY7X
	JjE/fp3xBpCOd0toGF3ef9RaHQIJebbrMLrvHNynurYr5jwmoxbgIG0P3hr4IllgboShrcJx0F
X-Received: by 2002:a05:7300:ed18:b0:2b8:2910:dc9b with SMTP id 5a478bee46e88-2bde1bb2712mr1314460eec.3.1772207891266;
        Fri, 27 Feb 2026 07:58:11 -0800 (PST)
Received: from arch.localdomain ([149.34.251.245])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bdd1cf0115sm3833508eec.8.2026.02.27.07.58.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:58:10 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	wens@kernel.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	mripard@kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add Beijing Ultrapower Software Co., Ltd.
Date: Fri, 27 Feb 2026 23:57:58 +0800
Message-ID: <20260227155801.211376-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260227155801.211376-1-jerrysteve1101@gmail.com>
References: <20260227155801.211376-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269349-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,archive.org:url,ultrapower.com.cn:url]
X-Rspamd-Queue-Id: 41FB81BA7D5
X-Rspamd-Action: no action

Beijing Ultrapower Software Co., Ltd. is a company focusing on global
mobile games, ICT services, cloud computing, and artificial intelligence
solutions.

TaiqiCat A01 is a blockchain-based terminal product launched by UQSoft
(Beijing UQSoft Interactive Technology Co., Ltd.), a wholly-owned
subsidiary of Ultrapower. Its dedicated product homepage[1] was once
hosted on Ultrapower’s official website[2].

It should be noted that UQSoft's official website[3] is no longer
operational, and the company appears to have been discontinued.

[1] https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn/product.html
[2] https://www.ultrapower.com.cn
[3] http://www.uqsoft.com

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..bb16ae90a4f6 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1731,6 +1731,8 @@ patternProperties:
     description: Ufi Space Co., Ltd.
   "^ugoos,.*":
     description: Ugoos Industrial Co., Ltd.
+  "^ultrapower,.*":
+    description: Beijing Ultrapower Software Co., Ltd.
   "^uni-t,.*":
     description: Uni-Trend Technology (China) Co., Ltd.
   "^uniwest,.*":
-- 
2.53.0


