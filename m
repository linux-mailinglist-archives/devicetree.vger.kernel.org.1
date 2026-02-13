Return-Path: <devicetree+bounces-265261-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EhBB6bQjmnKFAEAu9opvQ
	(envelope-from <devicetree+bounces-265261-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:20:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F2440133766
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:20:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B5F7B300C372
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 07:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E19A2874FF;
	Fri, 13 Feb 2026 07:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="NvLQs6Td"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F02128DF07
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 07:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770967199; cv=none; b=YkFntfBwwXXJ3wzYONEvBaUhVX7O/Ctem6WdDLKREpV2lhb53mxqNpjaXTz+gacIxNB6F9b5WWahaffcopquXEpjtmMhVqmC7Oy/nIr/bV6p56JUbpxedyBEXz54WzH8LfGZH6Wtremgh2Nkui5y7ZfvYiWTirm5+URsm9PJmNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770967199; c=relaxed/simple;
	bh=/cncbrqGFzfvIbZZt7cPAsKtSvxjNZWyvx379EosGJM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SZcHjWQaWlEdCBvP7KT/1Ou21TEKk3XCp/Y6usac+59VEZPSN8zR1nL+xqsLUws+lXg2B8PsdiWqzitTeYzHLby3mjzZ8N7uOJxbn9qK4lanCuKSWpNjeNGrUf8k6kSY212t4sT5uAkfV4Ic3VQwTrtLz5Vk9BCYerLf1c6SCkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=NvLQs6Td; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-824ba8f0acaso388389b3a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 23:19:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1770967197; x=1771571997; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TPFhHlQf25CUUJ4+0ZM96yNWdSJHoJ5jC11en7p5Pzc=;
        b=NvLQs6Tddnf0EA0hHbMEK/bX7h/McKmG5FHL+zdw2EboZ1ovfL8AnAsNjtE/hmnF+W
         Y4MbBqYbdMtii8zrXpKX14Y283suFJ+aKiexc8f2IhoGn2Rm/1FamK6eonnZjIrhzWpJ
         4U9lpjeSdha+zLZ6gfm7QehAFer2173Wc5dObXuB7vOLLSxEng4DHceNDvNb0TLMFh1B
         PuRpRqDytlcXpSPxM3a0oJX3kuPwZ2py7LpfmXc1dRydOcPPPZunnaVmuuF4/VwT2m0Q
         WFRbZPgQx/27NwICksidL8+LxjyEUTP4qeWH/8qGww7HLIQI09hWum9Iw1kSq5zXYgmp
         dusQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770967197; x=1771571997;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TPFhHlQf25CUUJ4+0ZM96yNWdSJHoJ5jC11en7p5Pzc=;
        b=arxRQVeHNw6LmrLerCljXlmXxk59fzLuK7VBKyp95anA/RcMCNzwB6Stsh88yVqrBe
         V4tsjnrS4MoWYfl64mLYl/TdKM94EDqTc4OXJ6Y2DGNSRndCM9cWOGy04eQZNwDY6/NZ
         EdY+YGDfJQe6EX+NFFS7rUXBva65rRucBJjnBahlomIOWjgj6EJY4de8Qspxh+HhqOHV
         in01nSL2N9UeQmGn+jlWCzlzi46kB46Jd+wz5TshdSXfeha77/4KC7/ELqhK2/kHPY5x
         K6bRRGVNMtblVeVxZIDIOheOkfKw+0VT19NTuST9KW3x1zXxZ9taUgs+bZLOS0u5Prko
         n5pQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMLPrPJXzmexD/ROwXz4MVBQgHtdrt4oe3QuTS3pkclXocfP9nlqlSwcUYwmkheq/XuaUpxXlo3ckJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzW6YYunYH+XyFmFDsHmpCMSxAlL5xTH1lVGWOZhSKlwFTUJl3M
	jbhtzRu7GiOQcmXP3/DrDothwIPSLgBJC7UsmIEt+5WclcJXmthcUKczg3+jS4uZB/Y=
X-Gm-Gg: AZuq6aKwhxTmqUZ1jXwvAPcwk522zGZz8v4dqm+SYFRtR5T+eU3WzqIAgZ+iCjRoGfb
	PDoB8sjV+W2anSn03gjqHVTPud7ty0Ik1eUedHZUSjmqtUEYCRdaZbt7HfxCALG00ucaCUFee2J
	N2gQE1B/C3bgSea/JSQ3iW66CtMDQdcE+m0TYhOjHKq8F3GVjHq5JpdaA+3zOg20sjlPmnCNcKm
	t1AemZngckX+RoufFy6o2Kcse20Yk40ugiuFaEXoPz99jRPwi/xSQRyOw38tagW1ZyWjqd/dNLh
	ZWhH+4qzDbp4X91ouAa+kTsnXFn0raivg3vN5cmhkHFyR33xX23Pxtw+LqCrn9t/BXt80al7Dvb
	qYwrdqiYauYuwP+3+xOpRDCLRL25Ff/8ALzSbWfv5+QZaKcjV/VF+21i+6coMfJVfBqVgWblRH+
	MX1SM1pdUpzTgl2CVta+KKhAdBjujtw44n0lMeC+N5SqZ+MCHMGnAGWPh+ulnJ128R1+Ys+IU6d
	8mc/Jqe
X-Received: by 2002:a05:6a00:bc05:b0:81f:3d13:e07b with SMTP id d2e1a72fcca58-824c95b11aamr1004646b3a.43.1770967197524;
        Thu, 12 Feb 2026 23:19:57 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6b95278sm1856936b3a.53.2026.02.12.23.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 23:19:57 -0800 (PST)
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
Subject: [PATCH v2 1/3] dt-bindings: vendor: add taiguan
Date: Fri, 13 Feb 2026 15:19:44 +0800
Message-Id: <20260213071946.1436852-2-yelangyan@huaqin.corp-partner.google.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265261-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[yelangyan@huaqin.corp-partner.google.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:dkim,taiguanck.com:url,huaqin.corp-partner.google.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: F2440133766
X-Rspamd-Action: no action

Add the "taiguan" vendor prefix for Shenzhen Top Group Technology Co., Ltd.

The prefix is derived from the vendor's website domain:
www.taiguanck.com/en/, which uses "taiguan" as the primary
identifier of the company.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index fc7985f3a549..a0fcd7154ff8 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1598,6 +1598,8 @@ patternProperties:
   "^synopsys,.*":
     description: Synopsys, Inc. (deprecated, use snps)
     deprecated: true
+  "^taiguan,.*":
+    description: Shenzhen Top Group Technology Co., Ltd.
   "^taos,.*":
     description: Texas Advanced Optoelectronic Solutions Inc.
   "^tbs,.*":
-- 
2.34.1


