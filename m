Return-Path: <devicetree+bounces-267224-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YO7rM+bqm2km9gMAu9opvQ
	(envelope-from <devicetree+bounces-267224-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:51:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 85052171EF3
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:51:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BE5EF3016B9F
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 05:51:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8F88345CC0;
	Mon, 23 Feb 2026 05:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aP7iuv4V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6944A3451AA
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771825886; cv=none; b=C9HGX/EIh4BDoLzU3FAXYYwkQ9srtfHwCLzNImf+i9lZWQJhnFqveXSdyOC/ahU+zP7P+RjbAP/a4cuXSCpFiJQ3hzb5IFqWHH2ZNFLznH17w8nTkZZFD65T1PRhAMtY6wbd0kcZgl1iKO42xPUbFW55SLkt0zcTnTKoz8l4X64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771825886; c=relaxed/simple;
	bh=QtehmTlxVE2ImMqTMUlN+wssHL5rLi9pMI7VHV6x+J0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EfiUajdii/YSDibCHvNejYkh7iUzP6K9ks0dNPQYJCoEaE5OUkry/mz13QAaG07sYEIHD/v7GKJjckwaEYv6kEJMJgOzHnMRzg3RyS4HymIXT37N0EgyCFYbLdw/WvzJsortIqFtEAY7TP4pdDA4Fqbn9N65XfBSNPlpltmJUW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aP7iuv4V; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-896f4627dffso54729466d6.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771825884; x=1772430684; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Hq1Jil93LKWD5SqiddgyBykMfT43TbOI7JPjGrETyE=;
        b=aP7iuv4VoYZ4GB4Gl2SYGyj04DZIW44DbSKynX2bNuOPsZFs7KucUCFbCMvYLwbulk
         v/JU/hELniL+vKX/rKVdSevFlwHEUEMxZY+V5MwV3LOr//XKBtp27Lt1/z/6w5n7a+KL
         omcYsDiVqDubmKja7YY8KOEuNCvU1rycH4jYndXYYrS1fRm3Qf+N2Gk6XpZZzLpBt9lt
         5T8ZxDqGRGvXxCZTxeL6RdJYZxUnH/fnWNIzp+mc4NY0fbDc7QaaTo/IGc9ylR6X8wcS
         UrP6O1gXy5RzT9MYTXwbNxKs/nPHFz3ROXAuVSD1GyPoTPhPMa0CQlfEJ7llRVzQASdf
         4UPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771825884; x=1772430684;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0Hq1Jil93LKWD5SqiddgyBykMfT43TbOI7JPjGrETyE=;
        b=CVjQ3bTVoSzst+TeHnPqNjYZNPWsnZsNfXzUjL75pCDBz8QopjxK8a/hLPU+UyiP6M
         w7CpbG5+zekZhcLEsK7fZEyviNJMUywWRsPQraZR6Ce1EcZvTAX8WqA1eVrEa8dhBDmJ
         rBBVJafmRe+zTL6q6yT+PemcmHl7gKhQillNgB8JhDBQ0/L8jTn7e2ONTEs38osbM0sr
         llYozZu6CafenvzCcm6V9Ru/A7TLM1+hlck9yv5oZsNS2+asugpGKJX43JAoJn1A+6rp
         ADrrzPdN/e+udFP9Umg0axCKNp9SfkLxiRylyabhpOuKKoeBJz/vZ1NO+6a3SZZDTAoq
         yxyg==
X-Gm-Message-State: AOJu0YwKh7P6+1Z1f3ul/iXtkq7r9O6H13vHpgF0Hq6zzQmqbTTNlihK
	ev7NThAnbuVYu1Rl14mBJ1l3apEWtOUcAQMBOKRHYAAt1MXtxR1Lf62m
X-Gm-Gg: AZuq6aIfpzayZRTUy1cH0t8yfivsxO7XdblTj5xCHaO9WGWoJmdyyeQGSpax2Og13bE
	HUrNPjJqWkwSj3CjXrW+dAK3O5kA8HYwqh2y6G3RfSmrukgXOkVfWJOydkg+rUfL2q94pZTSTVs
	qPFgghb8D83atzhl2xctKZpHb4SdFXerkB4/AeUJ+DzUBDD9OnHqk4kObmD7IOlxAopR0+m81kE
	bkhCDk4ENNS/ZNI5BuAVFCSOmWcpUb9OTClS9y/kV/lnh43U4QOqWnoCG7NPQ19w+5NWHa9z/MO
	HGtd5WDto/PS9bmZslst/tFHvBQqh7U/dK9aPDFB7z9M+fNrLMtu2z/+dVr+oEBymS9UQxad/KY
	XasCnQoqOp+Y94DfrdRhvStEyqO2h7mL1gAE2KfpOKeHa79gyX/wsWLGkJwmKSpZuispD3LMva3
	lorNVFSV7vcg2yiXtn2P0yMp7wBdeIrh4NyPnPkX0lZWPrE/jILyS0KR3oZ4NJp6pJzQk0Rn2RT
	vCyvOIBRw0=
X-Received: by 2002:a05:6214:1c0b:b0:897:277:d03e with SMTP id 6a1803df08f44-89979d74b41mr116677656d6.58.1771825884353;
        Sun, 22 Feb 2026 21:51:24 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8997e62f453sm59459096d6.36.2026.02.22.21.51.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 21:51:24 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	airlied@gmail.com,
	andreas@kemnade.info,
	conor+dt@kernel.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	khilman@baylibre.com,
	krzk+dt@kernel.org,
	laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	jesszhan0024@gmail.com,
	rfoss@kernel.org,
	robh@kernel.org,
	rogerq@kernel.org,
	simona@ffwll.ch,
	thierry.reding@gmail.com,
	tony@atomide.com,
	tzimmermann@suse.de,
	andrzej.hajda@intel.com,
	bavishimithil@gmail.com
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 3/8] dt-bindings: display: bridge: lvds-codec: add doestek,dtc34lm85am
Date: Mon, 23 Feb 2026 00:51:08 -0500
Message-ID: <20260223055113.1288-4-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260223055113.1288-1-bavishimithil@gmail.com>
References: <20260223055113.1288-1-bavishimithil@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267224-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: 85052171EF3
X-Rspamd-Action: no action

Add compatible strings for the Doestek DTC34LM85AM Flat Panel Display
Transmitter

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index 4f7d3e9cf..3ad01645c 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -33,6 +33,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - doestek,dtc34lm85am # For the Doestek DTC34LM85AM Flat Panel Display (FPD) Transmitter
               - ti,ds90c185   # For the TI DS90C185 FPD-Link Serializer
               - ti,ds90c187   # For the TI DS90C187 FPD-Link Serializer
               - ti,sn75lvds83 # For the TI SN75LVDS83 FlatLink transmitter
-- 
2.43.0


