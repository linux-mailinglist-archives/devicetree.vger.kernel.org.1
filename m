Return-Path: <devicetree+bounces-260758-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMtKHTQPe2nqAwIAu9opvQ
	(envelope-from <devicetree+bounces-260758-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:41:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A214DACD94
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:41:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AFEE93062736
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF238374170;
	Thu, 29 Jan 2026 07:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S3eBlUKF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FB926463A
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 07:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769671977; cv=none; b=uTwWr95uJxm7Un8ky4vxrQDBIVrtzu1IE66037PvMq0GQ2STtqfeNwt0japS9mAThlAllEwKuTHpjf0eaVHlMlcsFejxD56obu3JpGK4gRV28v+1SQWGl3aLqqPFCp3ctqIvFgpDRFFsmDdXEdmsrbkRxIEvMw4+oSwb8VhFluU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769671977; c=relaxed/simple;
	bh=pi1fLBggw2w5nq+ku9XGxrPVz6Xc+gXO0i/5XkcUNq8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZHxVy79HSbRz93FPfCA1mujqzOmTZsPxalssKWdwz66BgEc+qatMpPWSlsAoSfPGTZFJgcGEOz7N4Zj52l0dUqP4ICwYEfofoD7n4G12C/jH0ORIpNC++1VPccdjSVCPi0QIh7mdPU1gRbYOLzlarsoRovVwGLzkEN7LnUTYX0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S3eBlUKF; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-7d1872504cbso537284a34.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 23:32:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769671975; x=1770276775; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gnop4z34aVye00gIQguUoewYT5lM9SytbUgSGtePF4w=;
        b=S3eBlUKF8N+2Cjp1NvrM3PPqPwIBHS82qz/ySKpmTsvin2/vJqghL0VTHJOxhPoz5a
         dZy1X5Ym/7V3VOAFAywHiYoEShsKTwTgyeXxfNAG3vlOforqKRPl39y4+6CREWEFmCfN
         jr5947HKfxclvwqG7M3LPBB45479anqD/CwpX5Q7WhKjDqR3/gmcrI0ZdG2fxM/kkZhn
         zEDt++KaIz7EQ+EqrGAiIRp1HaV9gKPY4zTzEal3GH8JXEIQg0PPQgu+PzmUtm6RpUlv
         xDI20MBa1NCZH6l7ujv9IO2wyVr1wfmjb2jqCCqsC78eijCg/33VfuskAW1mqTST0Ij1
         jA1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769671975; x=1770276775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Gnop4z34aVye00gIQguUoewYT5lM9SytbUgSGtePF4w=;
        b=BWwlq7dqALt3QQjCA9lHb1pEfZV7R9iyeMcLO/pKnIx4F0cbjaGr9NScc07IxQmTfV
         AevXv/jEK/Cy1XfC31Bw4lNYR/yMnX3PvawE+NuO5l9A8w7IrRl4EcLrexslVxlo1nIj
         sZxWu6qiQI071BR41zS3Y/vN4IMtSZXuaBNiBCPRX+4JOuTc/XvtEiSOWU5HhUZ8qpIa
         wckEoJxRQ6g5Qdo/8A6+sSM/QI/lhYK8s9gA3Ne6vnzN9ogKpyIJ9q+JIQzJS1lHCL51
         MRXi0WScvxClayfWZrf6CLwaIIq1Afm5XWjE22j8S54IL97oKlhxoadSbnxV+bFYSkEi
         AYsw==
X-Gm-Message-State: AOJu0YwAlTFNJR0TsiF5y881e24upxl+/P+Czz19YMypLI5u2rKgGiwg
	pvuWZBag1veUWq8hkAbEarN4ANdLnVYL7XNijt5Fzs+syHnobUpGNYHd1jk9btbl
X-Gm-Gg: AZuq6aKY12DqtL/z/bav2GV811vpN6+wHJXVUPgcRNE9qMZ9qs8J/0hHugjsZjXWlQ9
	OE/4j5xaglA8LcN0sbBEP0+d/LPpprh2gFSMix51a/ke/q8Nw0Ic2yvtS26wl+HUqdg0crZCE/N
	rYdiUda/Ps1dN7HavHY/YjgAr3LC3b77rah586aALQC0OT6cQeVtDmgUqmK3fThmnvS78o69qLX
	MVA1cDwav2O2cFrvpinJ38k7dV9kKkBd1Ov+i30oLIf7cdAqsZHh1ufhMpZfXUEE7Pt3m2HMqQ7
	NzAZanFgp47K9RTW1K9A4ek2N5PdFSVcZACUm+zTXzDHJfCtNIn18z0SMm1AfaL689s98o+Beo/
	xOdku2KHm2sNpD8RR+H1aTzaIVynIeoRhuQ+pMV5aEgh+A7qUpzn60jGCze9Zvmf7PnWB9oSAoY
	lcnZgvrYdzjAMdbCt7QEhhesaSjrasc24Qb8Uip0Cuwsj5NstyBVJ4ngY/uyB/iPjVPl2qTcWeJ
	d5DN8fIvg==
X-Received: by 2002:a05:620a:1997:b0:8c6:a5ae:e9cc with SMTP id af79cd13be357-8c728acf291mr254438385a.14.1769665665773;
        Wed, 28 Jan 2026 21:47:45 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-894d36dd1cfsm30903216d6.25.2026.01.28.21.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 21:47:45 -0800 (PST)
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
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v5 2/8] dt-bindings: vendor-prefixes: Add Doestek
Date: Thu, 29 Jan 2026 00:47:03 -0500
Message-ID: <20260129054709.3878-3-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260129054709.3878-1-bavishimithil@gmail.com>
References: <20260129054709.3878-1-bavishimithil@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260758-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,doestek.co.kr:url]
X-Rspamd-Queue-Id: A214DACD94
X-Rspamd-Action: no action

Add vendor prefix for Doestek Co., Ltd.
Link: http://www.doestek.co.kr/

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2ae..70a195fc6 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -437,6 +437,8 @@ patternProperties:
     description: D-Link Corporation
   "^dmo,.*":
     description: Data Modul AG
+  "^doestek,.*":
+    description: Doestek Co., Ltd.
   "^domintech,.*":
     description: Domintech Co., Ltd.
   "^dongwoon,.*":
-- 
2.43.0


