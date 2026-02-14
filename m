Return-Path: <devicetree+bounces-265530-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOnbCWQ4kGkuXgEAu9opvQ
	(envelope-from <devicetree+bounces-265530-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 09:55:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC8113B7C7
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 09:54:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7B985301A7C0
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 08:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6691C318BAD;
	Sat, 14 Feb 2026 08:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="mXD9OZzB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B88E308F0A
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 08:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771059266; cv=none; b=kbrlufRHQ3qHasVHZbMiRVrZEYj4SMDbNDjYgbCZxW09vVsAbkL4DksYdJWeMDeFOeB32C6pEJ8s9kXiCfCQ2IMxjDJ9xwYnPcN8B2aSISigBYZkZnRPNgzIi6gPmMP3ujgZh4hp+ZcrvQlS6HcsA/uTBqlZLPJ/qD+danWziwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771059266; c=relaxed/simple;
	bh=burBkUoWYI8SzgSQZsc4BoB8BoPvg2J0S8inBCSfFaw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Dobly9Xt57gvvoSM3cYI4Ap2PZ70bP+VY8DHRpSiX3BwqHwpu+PsXDAClQ26ec9DefSOw4NUNj1qRcfBoCT7KxWf/worxtYJaVKyb9oolGX7HkBKU7t/c4byQYF/qIPSELXCVz6EVpN29Ar4C6z3nVJAkOo2jyDIQTq1eStBPzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=mXD9OZzB; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-354c19bf64bso745910a91.1
        for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 00:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1771059264; x=1771664064; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WdWNMVJJliqIP/y0cAlMhGbw1WvXxrTEtOmWxXPkTzg=;
        b=mXD9OZzB9zFTAmXTkQbP5fc5fG0hywGmDYRzDfRk2WxLewXm/+L36q81SxFHtkpQFJ
         UCkH2lvZjNxpZvPV6rtMx3U+X9AKLziPASP74wcxB17YB5tLM/CfNjwCiqvV7B+r90VO
         XubBZ/nkqBYFrL3Bx6JyBIV36ECH5+pzq81rgcUP0aN2/rEYtHQqZ28QnTCkgS9hI9Zh
         T0qagaGd0G7PHR1oucDA3ztulzpSVcSBR7Oqzk4vzwfNFVVGX0UYIXbxtm+zsukAv1zQ
         xJM8S2Kyp4FgOAvVpvYgkkKneoy9P5/vfYVRqSn60QYoVsfnHbMvdMVU/t9jRSLV4wvT
         HYbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771059264; x=1771664064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WdWNMVJJliqIP/y0cAlMhGbw1WvXxrTEtOmWxXPkTzg=;
        b=iKaBdiotYTF/sa0RdkbUwseH4yDTv9prh9RQcxIH1Z9k3DlpSqDqdKHN4RyQdZ34/P
         8n9BQDD1HENqrSIGOZ2RfjVMLOofFm2bbp56L+FWGBNK5ET1syswHfpdApB3y1L6qDhg
         LBiEaNIUMM5baJL9oJfbbXsj173UaUSjj9q7hUZGeAR0ssZ8aqT3ALT1I9QupevjD1jO
         nOrzhFGiq/I0K3NI/r1GXaklZebIh+CC06fXII0ZecmTf7l9/MmwpoByUWSeD94zUp/0
         /X4Oab6tIZxGu6xQ0tUGSK0XVT67nYQHQgcK2uPvMgc0MjT9IyV2yuJVMe5+j7NQsZyb
         ZjFg==
X-Forwarded-Encrypted: i=1; AJvYcCUMzgBTIYUi4JUf41bPrmO50X/qlarB0/y565R7plhapzD+EWPyyBJ7vdj3cGdS8U2ncWRt6FGVnx0v@vger.kernel.org
X-Gm-Message-State: AOJu0YyEvM6cZbs+jYftamyZ10zuIqpUEFxhoqosFRbEwmnD7PBWmM9u
	cJJ00Lf20/Rx3pF7lwKzNRzlL09ZjTBwE3QdOTmrvVlqxH7RPZmQordSx7J1UucVgrY=
X-Gm-Gg: AZuq6aL7T3mdT0V9Qks817hozp9jNl4ShwgVk3boXUKWOOOtGFarKiTKHxIXqiJzUaO
	IR+dG1mtpGgJg/4FJL2U6RHTS+PbNCOZfpvdGR8TNdlq45WEtjUTctlYkXKmXcL/rYeO7JTBQZo
	7Mv53hV2cpXfe/icp7yf/NkBZgQgzMQevi5tEbjdNE2t9k2x6DGcJL6kDzEqY0KpsE4CDQzw3Bu
	Y2PkhCgZ2KhSopgm8rjVje83v5fScqMi16NsQq+xv3PwO0420BfRJci8S21K8lruqtO0Hy09Z9p
	+8xZRwx/PUNQnJ4uBuBu3btBATOGooivcFfkGf4YiPPpuvi5dxNEVwqelhFH2M83a3ubsaoDWCH
	Taz1cRPZ7zWUybK0cYme8tC09H62IGJMJjG5E/q20F27Er8Im3hLIhMBRKrA/Y8exypQYx0FhsW
	qWZvpIskYBNx4hB61/VljJwFG7fSaBZB8+t/bMsyRqpna8tpzO9uT44p8VPHLd393NbMtibitgn
	Nf+r7V5
X-Received: by 2002:a17:90b:3a4f:b0:354:7e46:4ab8 with SMTP id 98e67ed59e1d1-357b51cd9a9mr2657212a91.18.1771059264542;
        Sat, 14 Feb 2026 00:54:24 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3567ebc3af1sm10256622a91.15.2026.02.14.00.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Feb 2026 00:54:23 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	mani@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	dev@kael-k.io,
	kever.yang@rock-chips.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dianders@chromium.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v3 2/3] dt-bindings: display: panel: Add compatible for TAIGUAN XTI05101-01A
Date: Sat, 14 Feb 2026 16:54:08 +0800
Message-Id: <20260214085409.3489057-3-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260214085409.3489057-1-yelangyan@huaqin.corp-partner.google.com>
References: <20260214085409.3489057-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.34 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265530-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[yelangyan@huaqin.corp-partner.google.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,huaqin-corp-partner-google-com.20230601.gappssmtp.com:dkim];
	DKIM_TRACE(0.00)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: 8FC8113B7C7
X-Rspamd-Action: no action

Add a new compatible for the panel TAIGUAN XTI05101-01A. This panel uses
JD9365DA-H3 IC, so add the compatible to the jd9365da-h3 binding files.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index 5802fb3c9ffe..0bb4980555e2 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -23,6 +23,7 @@ properties:
           - melfas,lmfbx101117480
           - radxa,display-10hd-ad001
           - radxa,display-8hd-ad002
+          - taiguanck,xti05101-01a
       - const: jadard,jd9365da-h3
 
   reg:
-- 
2.34.1


