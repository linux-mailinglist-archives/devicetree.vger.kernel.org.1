Return-Path: <devicetree+bounces-269348-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNf/D0XAoWnPwAQAu9opvQ
	(envelope-from <devicetree+bounces-269348-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:03:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9413F1BA7B8
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:03:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A8A13017258
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5120E44B67C;
	Fri, 27 Feb 2026 15:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kkK5Gjlg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B7A449EC9
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 15:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772207890; cv=none; b=P8qfB6Z+vTddp5wHgpJsXPcaJPY7im1Sole5aue+TOPl3MZuXn/Q+Q55EyanVkra7Kmq+bkuN1Ig18ZBSgONR7vQnQHNYZ/bYsEn/D+kAUU7j7dcTNij4jEZLgrghoflBr0xOwgGbwK3FgZtOuLv6jw0M0mH7hSclKU2rhG7IVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772207890; c=relaxed/simple;
	bh=TbBP9grD2lO5XRRFzFMkfJi/a5DkJVdR2lfW1DXwdLg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=uPvgcYkzgI2roKotGEC2IyIvGfuH7JzcJccXRG75yyGuZHVRhvKtQIZvXeTe2lRgN5y1x5yM2V9VG5umgUmFg9/+6HeXU6MliVVqeyvWbEO/eag7+uBeJnN+lXU24mjH89haOy9LcVr4dm+qZPO/XNs+kyGBMNEMDLkAqjjLt1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kkK5Gjlg; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2bded9bf7a7so332080eec.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772207888; x=1772812688; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1kwbnfNOHC2589geLnERLCn6Au69Eq2BR8V45ix5tXE=;
        b=kkK5GjlgACKzkjP2fM2qUTLhe347NOeaNNGyqCaKj/39XZQ9JE2gl3D1Mhk+SfuQq+
         o3CqT1CxVbOWA0gxCOCLRDu0SZIvztOM/dlufoqwyjySm2KYoieo6vOG6SUbb7J/ODXD
         JrJB+3aZN727g/nJErCe1+A+Sofa7QldExv+ImXzn6iwGENBfAWlUIk82zwQH1NJ35Hy
         b39sWLCIodez44CHznDHEvlt1VAcXoFjET6F6DUKHYCMJt4NE4vMJHaY8K1xzXeUaLMc
         0uOLfSWOxbB81EoE9ruOXmvCtBCxuNHae7Icq6+RiIvLJCPIebG4kDZNrZReYsKgEK7m
         OZAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772207888; x=1772812688;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1kwbnfNOHC2589geLnERLCn6Au69Eq2BR8V45ix5tXE=;
        b=K3kYSvg5OsCPkVnJxhsM3jdrkrMWpRm5u+XVIUBI/CoPNIj5kVcT8fCHWzA/yhGmKe
         XJiu3Zkd0kEvrInU+R8NdqnHTM6AwrWosoVIcY0Ed/Iwu/pZ5hoNl4iFywX8zsAY7m0A
         +APTPELrZuXA5L6XFAgl998HDGqyzvjxmzgJSB5vM1qsOWS+k0OezbmD5wGn1xSPDjYg
         eUBnbBxejJio/jDa3Dg1oLKpKikI0l3ARf3BaDo6Y25UV1HPpVetOyJCUcPqn4Ll9Bqs
         KMZ8kVz0Tb8D81pVRxKQ3WEO3hku5soC4K/KxuoP1UQFe6Fk0f9+NmS3DtNxpex50mBo
         J4Hw==
X-Gm-Message-State: AOJu0YwP+LflbZ4bQm1MGBDDADxg6Jp5gT9meVyC8aOkc6x24JzUrIUy
	/HikuhOIofcFdYn5fqeGU/Ii2ROBbTvmAx3eUjM5KmRm3bZu3qFMyIZhf6RUJkd8To8=
X-Gm-Gg: ATEYQzwAAkiFvU647yQIT/dnOwJY5ODrfAA5rKEIy/4fupsTs3lHMD+DTKkExoO69QF
	6tjlt46jVEh3vdQbgWiVe0J7Ue6nMCFEQkBS8c6z18YSi3nlzbo8YvFYuXg00VnPEOLeijXUZVW
	5Oz2b+aA4SBoVb4slY6+D9JjupgBSeHgkZK3CWlYDwDucfflJDYFdUF9K6h30JcQYQVuM9AYciu
	LWb4/0W0bmq+8eWYS6aQ2pfS7yW6Je5oNu/g6UeBz0obR+z/J6qkqU7acZAtzbGXhPcuT5fyBXK
	sbvBqpZjxUCrMDBqOYinyGYjOe6x1XsdUUMH/YtbHVz1o2icdTKnlg2bZVhhI6iRqXpzojVxTIc
	dMC/6WksfEBNe2bgYJvwbWT+pEMfE84OzTuAvRF6SHsaGk4BRVF4YZS6DCEz1SISg4QoSf4YYhu
	Nr8Staexf7/ZAabhocV6vxLcMOlerAOwI1Pr/2zvUwptDt1yL5qpRTOgVDDbVxRDVpRJHsiglg
X-Received: by 2002:a05:693c:290d:b0:2bd:d04c:a433 with SMTP id 5a478bee46e88-2bde1c94f64mr1123968eec.15.1772207888214;
        Fri, 27 Feb 2026 07:58:08 -0800 (PST)
Received: from arch.localdomain ([149.34.251.245])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bdd1cf0115sm3833508eec.8.2026.02.27.07.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:58:07 -0800 (PST)
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
Subject: [PATCH v2 0/3] board: sunxi: Add TaiqiCat (TQC) A01
Date: Fri, 27 Feb 2026 23:57:57 +0800
Message-ID: <20260227155801.211376-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269348-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,archive.org:url]
X-Rspamd-Queue-Id: 9413F1BA7B8
X-Rspamd-Action: no action

This series adds support for the TaiqiCat (TQC) A01 — 
a set-top box based on the Allwinner H6 SoC. 
Originally released by Ultrapower(UQSoft) as a blockchain terminal, 
the device has been discontinued and is no longer officially
supported.
  
  https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn/product.html

Jun Yan (3):
  dt-bindings: vendor-prefixes: Add Beijing Ultrapower Software Co.,
    Ltd.
  dt-bindings: arm: sunxi: Add TaiqiCat (TQC) A01
  arm64: dts: allwinner: h6: Add TaiqiCat (TQC) A01 support

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../dts/allwinner/sun50i-h6-taiqicat-a01.dts  | 361 ++++++++++++++++++
 4 files changed, 369 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-taiqicat-a01.dts

-- 
2.53.0


