Return-Path: <devicetree+bounces-272073-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6J8hCwnPqml4XQEAu9opvQ
	(envelope-from <devicetree+bounces-272073-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:56:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 849572212A1
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:56:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 211CD3128FD6
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E840038F23F;
	Fri,  6 Mar 2026 12:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YekdJbNr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2BF38E10F
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772801309; cv=none; b=o1L9sZuusrgscnYkAn3msZZ9rClcSIdnnvR6Pq0ScAPbPtXGGExB/AqScmz8B/ayJ1kEWpvYoEKhN4b838Ao2LZ8XO0BX5IFVLBaZoRCVNw6GsFECkUWG8/FGxo6V3ssSKi3BHkfzzyF0Plh3t8TVcRal8eRjHn3Ku/rEhBgVRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772801309; c=relaxed/simple;
	bh=PMAp+mXkOtjagZ275449ii2X5/MPe/Rzb1UxukElh9M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=A8+JZBD5OAetLE8HkKD5zl+Oj79k4ZDkYERb7h2t4A/CLni8qc9tTswOrM49PW5RNqlrqQLbiHvX9oxID9th0aCC6I5anqPFH77kf6ds/LnK2JVMWos39GkRMCqf1OdhbOhxqYXb1BJXK+U3vU0PzmXYRkVG3OeS7Bo+RiVQI2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YekdJbNr; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4806ce0f97bso81066535e9.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:48:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772801306; x=1773406106; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WZcIBap9H45saVr2wDCS117JcXK6cZ88QtiSeq9q414=;
        b=YekdJbNrAqR2N0sYC2xLC3bmUv4Qe5iN9ihvIBn+/RS647/9aYHcE0GJyHjoCJKmEg
         WzAnmWF5lin/4q0UhcbZDZKUjzNml6luHIrLcXtryuLECJtDyrIcRyax/mnzVzmmMjnW
         WWSIcqyvbWfTKvXqe+neR2qYs3vaNPhjn4Rc7GSPYgHOboEvhCN8COh0w1MZmOPhNuTU
         zGTo5EJGIiyCEEy9oV2Xev7Uki4tJLkMUU17lVMydIdOrGbYDKJtyZu37Wf3MJRcQcUz
         88s99v4AuXEKZMrS+LTYMA7tcAwk4va4oYSYHNwbM67jq/3cYQGM3f3aeG0QVQP1PXSf
         CMeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772801306; x=1773406106;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WZcIBap9H45saVr2wDCS117JcXK6cZ88QtiSeq9q414=;
        b=PiUF29ajTt4IL1fRo/1ou0gzHFQVeUqoPgeE1MQfvPBYVFNmaqe0RlDZ/9L7DQIBRF
         nE4rH8INWAkekscQ+0Z460SC82rIDGCVQx4uEpV7s1dvVo84loAO8aZ8zmHqF3d4owMF
         GHQho40NJeTF6cktW1zgdeTXHwcLJL0AAkg0NfDia3pi/2IMJ2esAeYNdL15sD5R4lF1
         tWoIXdTT1RFRMNu+3XfqzTOUIoasvhLqGkriaJ1cdO5qFodo8UsSn/6ITwUHg4eij7cJ
         /G/9byJe9s19RUrXV8rcarln7v708pCHlQewQg6M9ANsA6ohP20jtgnNDPIuU88MtJ0R
         yxnQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5GgPsYGUnXG7ABb1OS6uVW7GhmUl8YFBaMuUPMNN+5Kabee159Ph7rPi0MWBjYKhL3BhYkGgm27ut@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp4jkABudlZ2gUzf2zHuCOf4HPU3zdGH9s+UJnxan94OXZJtyC
	UdB2YAuD96JVZAXfgE3TPqT942opjZxs3FNP9qZkiIlZFqLH7ArEOIWO
X-Gm-Gg: ATEYQzx9bwyJNNOn5eiHu69x9zuNAG6vvj2DzD/K5HUm/4g6vtibr3JGK15PEKWsvts
	i9l7Zy3C1qPM/squDY+G95ZRNLqP/zXNYAq6NGFTXUq28MBvwrEHaeYc5JnRIrQv2xtJz3G3/j4
	5e3K3ZLB7qAXwd6IjaxHq+soocbgY3zHhZtdswpzsugNxaqp79ruJdHNGK7CIY5ZROET1r999XR
	zMPlfRjUw5Q74fh09JSs5C71zYkX99t2PtKE1EkqAvplVE62bQQPBpHW9ZG878CCA5JePwaDylc
	veMYpAHoz3qtEpGogVQPHubqzhnDaw69RD6STkX0EMRgaYvej0nB2SnCAikFd/2cRW0ltbonZRO
	M+X/RXlii7h7mia66Rz/Y30/54mL1EsZ6kIbsL5U7AhXO4jXoVexytHz8+rEc1A1bipk9Xgoadd
	rNolqIHfeJsqfq03S+YLQ=
X-Received: by 2002:a05:600c:45d1:b0:480:6ab1:ed0d with SMTP id 5b1f17b1804b1-4852691d5f0mr32230205e9.9.1772801306031;
        Fri, 06 Mar 2026 04:48:26 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4852470b412sm32733815e9.8.2026.03.06.04.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:48:25 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: display: panel: Document the rotation property
Date: Fri,  6 Mar 2026 12:44:21 +0000
Message-ID: <20260306124808.166776-1-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 849572212A1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[gmail.com,edgeble.ai,linaro.org,ffwll.ch,linux.intel.com,kernel.org,suse.de,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272073-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

The Jadard jd9365da-h3 driver already allows DRM to get the panel orientation
via the device tree rotation property (described in panel-common.yaml),
but it's currently not documented.
Describe it in the driver documentation to fix a dtbs_check error in
Xiaomi Mi Smart Clock x04g, where the panel is landscape-oriented.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
v2: Review feedback: improved commit message to explain how the rotation
    property is used by the driver and why it's needed in the driver
    documentation.

 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml  | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index b8783eba3ddc..25024f4a63e1 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -33,9 +33,8 @@ properties:
     description: supply regulator for VCCIO, usually 1.8V
 
   reset-gpios: true
-
   backlight: true
-
+  rotation: true
   port: true
 
 required:
-- 
2.43.0


