Return-Path: <devicetree+bounces-263027-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEHiGDKdhGmI3wMAu9opvQ
	(envelope-from <devicetree+bounces-263027-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:37:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF304F35EA
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:37:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50870303FFC8
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 13:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A8C22264AB;
	Thu,  5 Feb 2026 13:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fuv5uRqU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF09721CC51
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 13:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770298525; cv=none; b=aaPl07C3/SssN2byRDdI4jRivQJM6MKD8/ZOOuwB9qaGYpYnwqOfLtOJKIQzvJTsDlTAUSvEjsA88YdyY+Lc23tXrYSJweeHZJ00Q49pE3W798U6Ow4chwU3aoFVKLJd0SGXjwe7IFWuGCgJ9Fe63XP8nkloYpk+uI84T4oVq/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770298525; c=relaxed/simple;
	bh=V3ZGNJ0LedluqimvtgZA6qyCxj5uWwOAnO+i36Sv8MM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TOBy7Qb/ZBimVfRL6QK9aeaXksBj2/94Vfq3SYznUIAAmezFOEfBHB07q6eTW41JTdZVrXFGOZZQPBQfXChvvWLpO9wB/DBVS1PB5X5InWXoA9PH6CKCWPtwmVVpWiR3vxqu+ZVcSy5kpSj/3QOxs/GIt/Q46we9YZ15mt+oGbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fuv5uRqU; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a7d98c1879so5865485ad.3
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 05:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770298524; x=1770903324; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A8vYVSxf/f2z49Q0aR+EfpZkckZVO18lUKU02stUhpQ=;
        b=fuv5uRqUAtsk0b7zYyrJ2eZY+w6eOQs6QEf5P7mLQdBTEfQTb0aA2OxC+ewq/E/0DZ
         aBaM6BZj0bcEuA8Nf7wxs0mrzyZ0sp+m2iVDTtAvCJWwhdxSQAJnZNjEJM/+/CjFXpHP
         VlFd6r8rqwGz/PWaZk8mqjBX8fpOHj8VvCkH/JvecOmEoZMMEopjuLhp1RO2cHah2eJt
         T5coWEpYZ4T5f6nXNVSgkClah5p1azk8tHQapweV8oeywLMHgKYYpGyQGi0A7smE7py3
         898DV2828LvtCLIVEDQ+acte3zrhyxGhV6+V1p+1Snyu6SzbPDoTJsMsmzf4XXDG513q
         rNLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770298524; x=1770903324;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A8vYVSxf/f2z49Q0aR+EfpZkckZVO18lUKU02stUhpQ=;
        b=u/kGqUojXF6fA7XT3vrZkdxtP3jVVDzBLyv9ZAZYVxwtAD6mInAtP4NsXU2z4jA2xV
         2xrlyEBPL42OMCzz0xqk74bjd4Vm4zOTR/cJgzpLdGxpfMWnaqvjWm/9RvsSaPQRcFHL
         PeUDANcc+v+SKWrhzJZ/mQxOaYIYmWcCN8x1jIdQRWfqY/Qs3veOCTF4gREPQMSyXGf+
         G5PFIvsTeW3ikSEBWXDNMopT7zvS3GsRJ9c9rBEGIV+ryT+xQ9EcDGOM95pNi/XPbjRu
         bVwOeTenSXJs9fm84NcWAiPQmcxCF9lGQWzN4JQDzTqnjTkgx0bCKfNlDAbWR1Gc+m6R
         S7Sw==
X-Forwarded-Encrypted: i=1; AJvYcCUjE7RctOAw7Iedk7Of+0rKYcOdIspByjtLIA85nX5Th9H5PjFrVdSUMwISYtj40iup17YGEO5uaFuw@vger.kernel.org
X-Gm-Message-State: AOJu0YxFhrp4X3JbsHI5Gh+lDbrU2WTdWUXcJppcyCYEIpw2xZG/2TwV
	l1iHn9D/B5tLPdFNLGaHgWL3uflez9iEAP2Q6Dv2aAhxxBsXKcMfFFQ1mg7poA==
X-Gm-Gg: AZuq6aIszRrPxWHdVCXCpuc/LK9QFWjHT6d3EqNboruNPFDCvrVrfkyWFjzxXn5np8f
	KByTeEUb/EJU/tL40Q6o1blw6wPQZ1QXwYzIoPhX1bdivk8kMQ2wFm1NIjdzLMhC7/XJUdYMIiY
	bHvx8GkhN5tzfv/0BsKY2fZ5zsbO+NdHfpAeoMagybTDlAYqhNinhDH8ysCMHsAHhgej8cI0ELx
	d5qhVIy0NfG+ECM7QYc2FfuqMdjaS7eW24HIy6kE+U8irjXOd6FsZPf6/PbO5nPuOUJf4vnr7Eh
	UIY9i2+gtR0uxbF9iwX3jUKSfPguQ9jI5lI0SCcN3GHJretvEJ021bx/H8GDiBVbhbUW75/nwYb
	qro7m+X6Qy9awlHFyD0woaWiY9o/bFU1OHvRIwKL/p2m3O0Dl0dw0iEj0AS55oH6HgSk8eELtQ5
	mOnvWlIYi+6mPtI9OOiw==
X-Received: by 2002:a17:902:f710:b0:2a9:4bd9:bb8a with SMTP id d9443c01a7336-2a94bd9bd92mr5539275ad.25.1770298524251;
        Thu, 05 Feb 2026 05:35:24 -0800 (PST)
Received: from [127.0.1.1] ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a933850f41sm57760505ad.7.2026.02.05.05.35.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 05:35:23 -0800 (PST)
From: Colin Huang <u8813345@gmail.com>
Date: Thu, 05 Feb 2026 21:34:36 +0800
Subject: [PATCH 2/3] dt-bindings: trivial-devices: Add Delta Q54SN120A1 and
 Q54SW120A7
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260205-add-q54sn120a1-q54q54sw120a7-v1-2-09061ecacfc7@gmail.com>
References: <20260205-add-q54sn120a1-q54q54sw120a7-v1-0-09061ecacfc7@gmail.com>
In-Reply-To: <20260205-add-q54sn120a1-q54q54sw120a7-v1-0-09061ecacfc7@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Colin.Huang2@amd.com, 
 Carl.Lee@amd.com, Peter.Shen@amd.com, Colin Huang <u8813345@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770298516; l=1051;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=V3ZGNJ0LedluqimvtgZA6qyCxj5uWwOAnO+i36Sv8MM=;
 b=t+XN7WVJhMHTiJpg3h4ud773FQ+U6lnwk83FN5iNuK6ZbEUGL0j2a7xxYrbDKKPVQWILQW3mn
 0uh8qHG82LgAYxyGzmRcV2IpoS4IH5R6b28Xi93A0HNjT3wRyNq2QHH
X-Developer-Key: i=u8813345@gmail.com; a=ed25519;
 pk=Zlg0WqpCw4qbswOqamTBTXIchwR/3SnYZpy7rjaGMdQ=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263027-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EF304F35EA
X-Rspamd-Action: no action

Add two additional Delta 1/4-brick DC/DC power modules,
Q54SN120A1 and Q54SW120A7, to the trivial-devices list.

Signed-off-by: Colin Huang <u8813345@gmail.com>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index d0f7dbf15d6f..f430e49b9ec1 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -95,6 +95,10 @@ properties:
           - delta,dps920ab
             # 1/4 Brick DC/DC Regulated Power Module
           - delta,q54sj108a2
+            # 1300W 1/4 Brick DC/DC Regulated Power Module
+          - delta,q54sn120a1
+            # 2000W 1/4 Brick DC/DC Regulated Power Module
+          - delta,q54sw120a7
             # Devantech SRF02 ultrasonic ranger in I2C mode
           - devantech,srf02
             # Devantech SRF08 ultrasonic ranger

-- 
2.34.1


