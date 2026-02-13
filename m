Return-Path: <devicetree+bounces-265262-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mH6CIBnRjmnJFAEAu9opvQ
	(envelope-from <devicetree+bounces-265262-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:22:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F2C1337BB
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:22:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5E3E30F7949
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 07:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D1D2291C33;
	Fri, 13 Feb 2026 07:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="D/VTVMFO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA3A283FEF
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 07:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770967203; cv=none; b=HdHDwQtiT3s+OneSbVAZN4hkUYSF4Ur9hTj8wHG64sVLYYVJK3WLMflp2oSZ0y1NpPB5onWIskzk/PbOuW+PuKOpqinh612kH5wiUQfIHBTRVIcZeG3m+F7KvdazmiMSQP4CfgosJIajFWVI+FrTKFqPy8FiwWKAjtNRCvLVAs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770967203; c=relaxed/simple;
	bh=EYaiGNzAT7qZ0LtqwrvVheZdkuxixiYwdtWgfat4qeM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hKIhxaayCkhHYSv0y/6CBilvzNgcMF8Mpey6JgOHCh9TGcuvsyahVI7wxH/BHys2Et0tFa3E/x55oEMjAoG15pjcP4r6Vd6CAb6SelD0HxC6O6eZuHtzzNwSPfJ2MEYmsv/lX7P/tQkbgYTq23oktEMFi83pMkF+1XhDmAOIy2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=D/VTVMFO; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-82311f4070cso371186b3a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 23:20:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1770967201; x=1771572001; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tG48E0q5sqsrKWbziqVKSM7WFcZQMVDv3PMe5rDG3bI=;
        b=D/VTVMFO6KWuGxzUcPmKDTsCWPJCPLo8iUrB4fG24/0AjoNmKJWN1LoHMxNBtXS2B1
         iSS878In9+9yfkrnmNLNiQYUEYVxSL64t4aVsUW2mJPB1REea29kQPV9LTQglmlDDhvO
         FEFG/WauPFPTHjpvgNDVNiQ/+JCyLnpfgS/aCTbiWUuhB+QKUs5YlDeIj6bFsK/Wk64z
         kOKYwxaN9cyzPC5S4J+7XTTOExUAWRpU9ivCKwf320s/wOQJrXEtBuK5nQyGHUjK/hEe
         StNlK8gZFkuygibzXoMyGk2pp2erqRUSOhhUMnB9xYBsruDmmw0UQizat6f75fZZhJFa
         Lp1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770967201; x=1771572001;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tG48E0q5sqsrKWbziqVKSM7WFcZQMVDv3PMe5rDG3bI=;
        b=BLRYhfVnIrlsfdOcy3gYOVCYZ95B8G+U2oN52RgZ3PbhpycEBGrP253hfLzPtSXGRC
         RoGfPVJ+0lsHrMK7+GSkuvKbgSa1NxJbqw9ogvkJ/0ArxfqR3B1JTin7gKmN6EvWNd3v
         TiNEZltn3Abw11KFypI1t/56Q3AwvJWVnJvewharVVyISHK5kDUp1eQfhEn5sn59SeCO
         1UZWSrR+92sVHUkQ3UkkU3scK+fPusHTbQOmpFR+yXYNt0qLjLcsFRjjotjEeqCdRMwV
         PQy0hkcJSfPAvOnTna5gmu9EtaSlBW+wJvdA6TNkQ8g6Vdjk0/KBS+d+xVzWlGNSwtlL
         87bw==
X-Forwarded-Encrypted: i=1; AJvYcCUeL1QfR/XCocZeAzbXGf+2rJBAudwhMU9L+BNZX/IMeuQwyL4WWJPBcEW/eRfdSxh/3CTsnJpWAdL9@vger.kernel.org
X-Gm-Message-State: AOJu0YxcgF4x9UNpsNEGogFlPw//AikSnOnU3rbvN5oe4zzIHo0Sn7Yf
	K8Vk/Io/vMH7s4V4q+2wLfWmztSDUDUxZa6TsYM/SUdKQEq6hKOzWoqYzNK/DL3UQcs=
X-Gm-Gg: AZuq6aJZXw9B5Mj+LV09e2iFvXO95l5zgAlAbj2ltj3OwCp1AL7B2yx0LlyuF4jRAeH
	qiw/5B52Kk4DNUg1WrvY/EXZmo6tvMR/dm50ANCKv059ZLQ1YrK0Bc6c2/Cy7XJIT1t91hJ/swE
	GYviMH1tFUhs3j5aekFLgQpPc9oD+aOCpMBpA1sWTdEvtgQoF4kOYTM7KldaMWVHR3Zrk+LgA1d
	yFJdDRGDi1Ee5Q9th9RGKjTmbHrJ6FHSRQtOborWgvOEaSQ7EO1gjdAr2CfSY6xGTkLkVY7RwfN
	3R7YeKbxpKErHtNaMQlIjOjY7YRIs10iNKgzuiQRzycDWlHN/a3Tlk7nGj7iXjfbdV/kjzKz4Sx
	UKnVjcXqUaR1CytiP7di6OMC4Xo/jiXCxH1wt53UrDwRQH8SmW33/7z8u6jkBZwD/Q1XZLv2fYA
	/O/ajDHHTdmaYm1jGvj/rHFu7IrPFpCsuYTqhsRi+Zv79zhm1rqKVwvzCa/XnqnFQLt/GTMA==
X-Received: by 2002:a05:6a00:1991:b0:7e8:3fcb:9b0b with SMTP id d2e1a72fcca58-824c9d1967emr998256b3a.33.1770967201500;
        Thu, 12 Feb 2026 23:20:01 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6b95278sm1856936b3a.53.2026.02.12.23.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 23:20:01 -0800 (PST)
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
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 2/3] dt-bindings: display: panel: Add compatible for TAIGUAN XTI05101-01A
Date: Fri, 13 Feb 2026 15:19:45 +0800
Message-Id: <20260213071946.1436852-3-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260213071946.1436852-1-yelangyan@huaqin.corp-partner.google.com>
References: <20260213071946.1436852-1-yelangyan@huaqin.corp-partner.google.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265262-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[yelangyan@huaqin.corp-partner.google.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,huaqin.corp-partner.google.com:mid,microchip.com:email,huaqin-corp-partner-google-com.20230601.gappssmtp.com:dkim];
	DKIM_TRACE(0.00)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: E5F2C1337BB
X-Rspamd-Action: no action

Add a new compatible for the panel TAIGUAN XTI05101-01A. This panel uses
JD9365DA-H3 IC, so add the compatible to the jd9365da-h3 binding files.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index 5802fb3c9ffe..cac8ff562492 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -23,6 +23,7 @@ properties:
           - melfas,lmfbx101117480
           - radxa,display-10hd-ad001
           - radxa,display-8hd-ad002
+          - taiguan,xti05101-01a
       - const: jadard,jd9365da-h3
 
   reg:
-- 
2.34.1


