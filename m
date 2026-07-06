Return-Path: <devicetree+bounces-320949-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 71jpCq50S2r3RgEAu9opvQ
	(envelope-from <devicetree+bounces-320949-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 11:26:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F19570E95A
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 11:26:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=VVjTquWQ;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320949-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320949-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D714530B2DE3
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 09:15:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B45D42E8C6;
	Mon,  6 Jul 2026 09:00:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4958D42B313
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 08:59:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783328398; cv=none; b=mt/iVH3RiA6aRpEm7KPtsQ9uvccmORLMaQzA/TkMryEsgEFpX2uxcpu6Nqpa71B7xtTiQ7UJWsooMF5sKQV8tehWBYUxyDPfNBZeJmE0pFw5CMizKr6cBa8Rgt4LwhdorRO4sB/zPe4nFmaUU+YuMXhThA7a1AuwkFlyzWnUo8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783328398; c=relaxed/simple;
	bh=LlSoRgJl8YcUzhxHX0ThopKjI5x9OeXJTi5k/sCpJyc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iHViTCFP5Pc9czY3Z7oTKm51DaTms2SeFaoczEtDslfxr8FBSay4C+eKFADiQobxq1Y7vSHGXZrusxXPLgFNK/q1p11l/O6FB+C4YqXiTxgdDLI7jMZNPvzRIyu3u6N1a6dHhBgff4F4wElcpaIsWpNLqSuMut8DUV6oy1dvrsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VVjTquWQ; arc=none smtp.client-ip=209.85.221.47
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-47640541585so1688678f8f.1
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 01:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783328380; x=1783933180; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JZkkIvDhYW6vSls/5usRzH4Z5Fg5mJ5kYBKua3+rzEY=;
        b=VVjTquWQSMvOnF34+eZeoskwFlBpVHY4k8ZE101wb7rA1u4wg7B/bg7BDZ5RheahRm
         iJ2RkkIzHZkZ5KFE2W7jHFWj8HX298h1sVC3FyY9mSL7YQYkT5qPecy6iUU/AcBE8jOu
         AsfpSKYf2qv7ejZyJZjF0aOaobEE4cp71IsyWC2w69UnLhnesb7+HjbMD3Pb8kk2tq0P
         G06p80VxmoQA3BgUAldvwHTa7wZFeXSXiLHvmoqs69aR/82OklLasrWU6XBdBmmmUHcX
         PHZ69a+dCsna350OZX3u0zqgWnGHyd1wVNE3/CVUW2RGo4/hh3AHrEOkWkByqXbSurkw
         ZUWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783328380; x=1783933180;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JZkkIvDhYW6vSls/5usRzH4Z5Fg5mJ5kYBKua3+rzEY=;
        b=aS4J6cy5x3vWeu3Y7l8LDLKfPONF9ByqJm1pvToQts+PGFiLB+UN108XDOWSIenqfd
         3rr86ojtezpNCkszR5mJqBQvoKkzzDCo/aqoBFbtf5egZgY13rlMYlVDbHPPWHSYkXxK
         dhyU0E0ipEIHmcCCVrffIR9GD+ygSr9PaR597hJzKFYTBJpKC3Q1YOGmhPLLT2hKfwsn
         END2M2cTQXqu5IFDPn9+P4NIXXiwxRE36VanC9cteBE/pzpjDtddGd1AMHEYu0BTcnio
         R/SNdv/wyTMgaqM6aEjQaDXq071pDGWoivXAHcqMSVmaG7vY8Skf4lvxVoSuBhPfEh5f
         EGGA==
X-Forwarded-Encrypted: i=1; AHgh+RpXm0eR7Iuy5/CH2mOXj/wamIyDRGchk93+DAIQxy9Dp1mnQSlvcNwMZTwmBNdEu/eb8eCSCBKRmGbQ@vger.kernel.org
X-Gm-Message-State: AOJu0YySw0t8o/IGUlr6LjwlrcXnqGm2nxfbrJ2s84U6NuQq6RCdF88i
	5/mOTvBZ4TUBq4YLwvGnUtdesawbZgYRv7kpb9qFYnwL2WuSkVYiMmGE
X-Gm-Gg: AfdE7ckZ7ZHmJj8xSKy1SoVlV2eQB4fAfIb3ufJhGOllEMgzzjyXE4dJNTZs5XuWg6t
	zw9+hW9yC3TP3Z//gcqTfRoCG5SvCC5QQrqubb4SYDxWvt7aAeyvjCJXEsuCEdV7EPYDUcKNh7O
	NVSDSRRdFGXVpJ1m3k/au6j+p/GCqN0Zyq0KiMztMp9fHicxnLVw0xWaCv3L/Rh9cdOURvfJeI8
	+KHZ9i7JfIaLHhxccza7abDpYvuqXFml0uf5XJWAWfZWhk1vzqbhbLXqcxkr04a7Lkwzp9ydzyw
	tisPYCNphQX6tcFIYfwZ2gfzqgjVwcOUSlJNuN95yHgBoYgdoVyymexgnPchYe6Hxy8GSPOK2hc
	1nUZaAY+RbERV3ALpEWDgitRmrN+EzC4h6i5yo1VSTxi2UpXttArJbusLdOnfdMS92ioJfJx/pq
	AKKPCSNylRXwpVYcWdNkyneirvf8MRC10UQNkiA46Yd+pPbrOMUGs+pHg=
X-Received: by 2002:a05:6000:4203:b0:46f:9c9d:d7c4 with SMTP id ffacd0b85a97d-47aab29e5e5mr9751640f8f.39.1783328380102;
        Mon, 06 Jul 2026 01:59:40 -0700 (PDT)
Received: from localhost.localdomain ([188.26.50.173])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-47aa039ae44sm22314373f8f.23.2026.07.06.01.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 01:59:39 -0700 (PDT)
From: Eduard Bostina <egbostina@gmail.com>
To: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Eduard Bostina <egbostina@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: daniel.baluta@nxp.com,
	simona.toaca@nxp.com,
	goledhruva@gmail.com,
	m-chawdhry@ti.com
Subject: [PATCH v2 4/5] dt-bindings: soc: ti: omap-iva: Make ti,hwmods optional
Date: Mon,  6 Jul 2026 08:59:16 +0000
Message-ID: <20260706085917.835875-5-egbostina@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260706085917.835875-1-egbostina@gmail.com>
References: <20260706085917.835875-1-egbostina@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[egbostina@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,ti.com];
	TAGGED_FROM(0.00)[bounces-320949-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:egbostina@gmail.com,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:broonie@kernel.org,m:robh@kernel.org,m:daniel.baluta@nxp.com,m:simona.toaca@nxp.com,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[egbostina@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5F19570E95A

Make the 'ti,hwmods' property optional to resolve dtbs_check warnings,
as several in-tree device trees currently omit it.

A review of the ti-sysc driver (drivers/bus/ti-sysc.c) shows that the
property is not strictly required for probing. The driver only reads
it to populate the 'ddata->legacy_mode' flag. If the property is absent,
the probe sequence continues normally without error.

Signed-off-by: Eduard Bostina <egbostina@gmail.com>
---
 Documentation/devicetree/bindings/soc/ti/ti,iva.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/ti/ti,iva.yaml b/Documentation/devicetree/bindings/soc/ti/ti,iva.yaml
index 5724b8367a15..799461a20b04 100644
--- a/Documentation/devicetree/bindings/soc/ti/ti,iva.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/ti,iva.yaml
@@ -24,7 +24,6 @@ properties:
 
 required:
   - compatible
-  - ti,hwmods
 
 additionalProperties: false
 
-- 
2.43.0


