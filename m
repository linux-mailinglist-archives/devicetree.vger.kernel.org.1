Return-Path: <devicetree+bounces-264747-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGVpCLtijGkFmgAAu9opvQ
	(envelope-from <devicetree+bounces-264747-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:06:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A877123BD6
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:06:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 72921301F497
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB8DC33859C;
	Wed, 11 Feb 2026 11:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XhhsCT65"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f48.google.com (mail-yx1-f48.google.com [74.125.224.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BBB9311C30
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770807970; cv=none; b=BaRtBeU3eseMu1aB4H3kfYh/f7EmCTVoDYxwpxRdfNYO4atU0bpmpsIYA1l68veC4Lx34Y/lYHVmkJm92zD1Wm9okgZY2mR1CXwWdYn2WUyHy7h1SbpicQltaXD2GuHAZMY6TQ1R8/BWBGmARNVQ9GLig1zDUiVc85yLRCBdFu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770807970; c=relaxed/simple;
	bh=qHdxMgObSnW3dI3pMyapnpKeDh8Ch3Q2DGHFn4PNbXk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=YwG1GvXSbuwXXo0cAODdoeF59LaLOZnRqFOyRgAqrMHwyLdapOm8j4Oz8pSm40AfF9drwN7kOe48liybJN9YRCG5dC24wAH6w+fserfLYJvVW+ow2LYp8PyUQVYWy9mbTy6RoWU7G9Ct7Skgi+FQC1Q87uYRFMB9aOMOp3BqhHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XhhsCT65; arc=none smtp.client-ip=74.125.224.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f48.google.com with SMTP id 956f58d0204a3-64ad79dfb6eso1931859d50.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 03:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770807967; x=1771412767; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8q8Sj38G7lSy2PHdK39pfdrWAcnwDx01kj871muJL5o=;
        b=XhhsCT65TF18F9oNzHkVi5HCLMe4geyuzJpfu+n4yWaHiQ9ypshn55Pb6XEcDbH+7U
         e1Sd2bLkXnVQzepI7Psamn2Zqdpbi61DPFqkos26yJ8L/MJNq2mvVYdzJc+1WazvbYMl
         84x9bOyn6KmQwmmYGVruXJJuCaCcEMfX28NhyVlD6WKIWa5oKQA89smhs6JLqIyA0ghr
         3ktk+XdL3WOPUnwnD3FfcZ4EriGtjRyzvDz0WkGeoEZleZi1cKtQZupkj1OjH3vk2FwW
         uR3CWPSWtHGSjR7KFPCDP49enrnTzhWk/5zZ69AkL7HZRza/y2ohJ28cIbylS9+IVUFP
         sDNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770807967; x=1771412767;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8q8Sj38G7lSy2PHdK39pfdrWAcnwDx01kj871muJL5o=;
        b=m0kWu7zgozu9bpFPc1ZPxfWyaff1W9KDj1teSQetgoMBjl7f/TRzHkB0DRbz9rtps9
         PHE/j9S8iry96cREJ0RIdy65X6cTcvko4e14DFoyEDQPlY6UZ4GBHW0Ntm7D6EBYhEz2
         YFuTyLHLnwJ018Kzmh4nZxDRAHosDoBEUjNRZ2ftPBPYIKXybipWFiRcyP0bs1uk7vJN
         aXdUUTucYXzUCUkTRikxzc3WAIO3Fnu3/+6kvnFIqYlIbDhyQEEjqa5G7PhysAuNy5LA
         l2R3FaP1c5TyUDWeDkKk3hf1Rkn5T/RrdiYH0sGkAifQz3nJuUvwBxcqhQxkU/VMQZQP
         sRRg==
X-Forwarded-Encrypted: i=1; AJvYcCX+7mofAi4H1214d+VFCFAeRqj6hIuzwe9ccbjBbqc+V9PeVN74nTZwq13QHqpxCfCxcory0MN1UjlY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2bqKQSsqFA9GEI3IhGnT88eL5sekocGVlinY0Kuh5kEf+jrs9
	TMtJicTZLKf5Rc6gsgJP+0CX9trGiRMjQm4hkQ9Tb7axz2zIfLBkSXL6
X-Gm-Gg: AZuq6aLVunY2bOh1XbMURE6YIU/OKCQFIAdE2AHVmM6KI4EHQrJIHWzwALx3PJD4Ros
	kbr3YfYthxgwBlbCWpnZ98Ny+1s7BOzk03PhemKZyVunOMUMolqmQ8g93FZ9KlN3bMJmBh7vyu8
	DCMZx4d5auCS8BrymDquJd7wzNq9kBWC5SpIHERbUXXg1mgbFEeyfP0jhWphvD7CnB5l4XlEMnS
	SzUxC7LzKX79HhWZF38X9nqeNlKS2CMxapoczbPQeykzwE6msQV9cTH1mDz50l/EVtPkDGEozrM
	wDpDwXXwQrxXsNb3MnTaeJOjdDF0jMHppt0ySTGEDpK2AcpQiW5uMe0ozFIhjWIij/BcID8M2iy
	Mt91Q6J2X0lUreatVjwoQkcr4BxW6uzpnMpkNzp1QuFCbfEEp8MJyO82sYrrsQHG+ppVsfPDYEu
	2P5pfZW2qOIus68S5UhqTpTPsnosYtlrscI/w=
X-Received: by 2002:a05:690e:1401:b0:64a:e234:e722 with SMTP id 956f58d0204a3-64ae234eebfmr8768217d50.39.1770807967480;
        Wed, 11 Feb 2026 03:06:07 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4ffb:e36d:8763:a188:5dcb])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64afc87ff20sm1533719d50.10.2026.02.11.03.06.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 03:06:06 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
Date: Wed, 11 Feb 2026 08:05:47 -0300
Message-Id: <20260211110550.580474-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264747-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabladev.com:email,qualcomm.com:email]
X-Rspamd-Queue-Id: 9A877123BD6
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

Add the PMU GRF and IOC compatible strings for the RV1103B SoC.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes since v3:
- None.

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 0b8e3294c83e..2cc43742b8e3 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -63,6 +63,7 @@ properties:
               - rockchip,rk3588-vo0-grf
               - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
+              - rockchip,rv1103b-ioc
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
@@ -98,6 +99,7 @@ properties:
               - rockchip,rk3576-pmu0-grf
               - rockchip,rk3576-usb2phy-grf
               - rockchip,rk3588-usb2phy-grf
+              - rockchip,rv1103b-pmu-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
@@ -231,6 +233,7 @@ allOf:
               - rockchip,rk3036-grf
               - rockchip,rk3308-grf
               - rockchip,rk3368-pmugrf
+              - rockchip,rv1103b-pmu-grf
 
     then:
       properties:
-- 
2.34.1


