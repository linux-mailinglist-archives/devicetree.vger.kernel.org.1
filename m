Return-Path: <devicetree+bounces-267443-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPrJLw1cnGmzEgQAu9opvQ
	(envelope-from <devicetree+bounces-267443-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:54:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 414371776DE
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30BDA3137120
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E077925333F;
	Mon, 23 Feb 2026 13:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PL3D8SkK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5462C256C9E
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771854599; cv=none; b=kQlw/tUAObVLanMFS8RKGHUH1sQTD9oumXF5RaI7VVybg44LeRyILiWr7JiSa+5RSTbRHx1rJTInFZhXwEFfJmn85kZlGx5Ftaq66kckj3iTTkzWzvo+jPkm0cKRmJ5ukLn0GPiyA0/VhPmGkbKt5XYRXCD4TqF3qd+z0xYfZU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771854599; c=relaxed/simple;
	bh=trpX+5UlMTYq/zyHhxfWvjqST/R/uh9a912a+PSUHVc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GgdZ9xYuHAfSY7MSRBpRsNNhMJgtqfdmzPwPvXZk0H64qugEf6rmqNRMgw8TM/r+XtG9ohmiKoxFVgfXGRCGI3PHs+LtVKImGP/3qQU+aUC68GsnYuDEXwoe4MS+l81L47Iw1iaK9EyIMqqZdx+YtnWFDH1c11oKvVdzzLBZxUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PL3D8SkK; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-8cb3dfb3461so445360385a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:49:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771854595; x=1772459395; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNC2r/k4VYyNvAPrupzATpkdJnOwaq0ecIMgKhToJ2I=;
        b=PL3D8SkKMbydZq2yMpcZzWQNIKRL8atl0U9oQST7VMzSYKfg2vhfeS1rRdA3mv0B5L
         SZgGS+AdUVsReT9z1Z/JC3wXwt5Zvn/wnGxmrU71U3bw7+3yTNeNKlDMWZTSVTgM/l7N
         YmQJ8Ffbosvmd0wCX2BzuUqsnSQ3ki0HFBe8y5ope5iRm3RTaGAFG+4tpOXNsBKeDjS5
         ZB1Vx+chYl+99GNe5hM6rRCGcNYPEpyXPn0Sw0cIzjEnQkzO44EjF+Yvp10q8kPoKx1/
         lWBHYxpXvXD4uyei8/olGL5mYiZrq3lHwmiUSoCRfY2stUd+p43WT5x3l+i/7BObE3eb
         XkIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771854595; x=1772459395;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oNC2r/k4VYyNvAPrupzATpkdJnOwaq0ecIMgKhToJ2I=;
        b=hrH5IdYX4jgFrx/iWHk4haK258VidrxuKxhR7NghomcbNEyED5c0bS3798uYVqLr6n
         z2LqESKV30Wp84swzLRGHe1RL77SICHvHIsrp9U6qWGSm1r0mdkvbDkgwnbIEeLhTCGQ
         DRXCrSa7YPNVkHyBd1e0545Wsd4KygTZWOVMC9w1+BM1eCT3TRfd4gXfk07L4uDbCHLY
         0U2I+QFBtyJxnX79iJS/wT3L5XSk6orTbIrP2DErC04sl8/4Vwwy6xI08/wOUbfhL5Fi
         Y7FjxuagIAsSOba0JG78n2BG7R21LOKYAVG+0mMpd6aZoEECa6dUDRr4jwtVF1L/JE42
         dDNQ==
X-Gm-Message-State: AOJu0YxUuQQ1FglUJzr27LV8KIVTbcwgoHJpXiv7i3+C59YUonTUNGW1
	c61D9oqbJAQ+97/sEu1I7KTNqaWXfd2SvdT6cvZF5jjPf+TF89HsVUa7
X-Gm-Gg: AZuq6aJKmUFzK1Tcq5/HatXHM0OExf6/UaAypwTt/xdp7GpgFGuTv8uNMbgz0qARjlJ
	yrUtfstRw+pRMbfhI5ZjFdRr238XLdolo5KxAW/5XNH+YSIz/03SnHoBKsVPNvXNmZLMktPiiN9
	SCK73Q3yDayfjfz4WaQaOMB8SXL4jo+3f67fKImbJ0BckdWlx3U5g4v3o+3n9aM/VufImx+i1hm
	StHMptWqT6ro4x6FvqX98lgfZrflEgstXCVCrWWixHtOdydM/V5a63rHZq3H4rPVB54MukgFGBS
	k5BVEH4QDD+9wotL6Uf6Uj4mIE8nCSxyf0d4+v5LjV0udA16wxMFAhihHvlmOwzX9msbHxS7T6i
	ZCos/F3T/YsHuc2v5qADwKHHPCk1h2MNSKb5Hq83u/4Hq28FgZBvuUEVET+iCAx5rsAem5sG78n
	zX8Wqx9DeCInVYPUfvKrOTCXhlPFMpuBSrUT/LKSfTsUU4KMP9a9riHpx6LbtCNe4DprSgfP5n8
	4ZaDOoKjWAIOaoFxyDVrg==
X-Received: by 2002:a05:620a:44ca:b0:8b2:dabe:de32 with SMTP id af79cd13be357-8cb8ca63e8emr1114618485a.42.1771854595143;
        Mon, 23 Feb 2026 05:49:55 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8997e62f453sm67954716d6.36.2026.02.23.05.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 05:49:54 -0800 (PST)
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
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v8 6/8] dt-bindings: omap: Add Samsung Galaxy Tab 2 7.0 and 10.1
Date: Mon, 23 Feb 2026 08:49:38 -0500
Message-ID: <20260223134941.427-7-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260223134941.427-1-bavishimithil@gmail.com>
References: <20260223134941.427-1-bavishimithil@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267443-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 414371776DE
X-Rspamd-Action: no action

Add samsung-espresso7 codename for the 7 inch variant
Add samsung-espresso10 codename for the 10 inch variant

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/ti/omap.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/omap.yaml b/Documentation/devicetree/bindings/arm/ti/omap.yaml
index 14f1b9d8f..f694dcbf2 100644
--- a/Documentation/devicetree/bindings/arm/ti/omap.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/omap.yaml
@@ -144,6 +144,8 @@ properties:
               - motorola,droid-bionic   # Motorola Droid Bionic XT875
               - motorola,xyboard-mz609
               - motorola,xyboard-mz617
+              - samsung,espresso7
+              - samsung,espresso10
               - ti,omap4-panda
               - ti,omap4-sdp
           - const: ti,omap4430
-- 
2.43.0


