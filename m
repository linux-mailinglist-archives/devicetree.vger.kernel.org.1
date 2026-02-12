Return-Path: <devicetree+bounces-264941-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBcCJSWTjWl54QAAu9opvQ
	(envelope-from <devicetree+bounces-264941-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:45:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5688812B7EF
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:45:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 191D33036088
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:45:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CEBC2DE71B;
	Thu, 12 Feb 2026 08:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DoRu0aph"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638012DB7A6
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770885911; cv=none; b=PbYpSm/Nb+2pYJjKdxiWMuLImAQ/nyngaYfLeGKsREFW8ImjhgJ0CIxZNbNjAL7juLIdNXqIUOlKiBjptxphJEpKWOe0ZZa+XejgEkoRU8ksZJ+/8J7DY4QVtYeY+KYFxlcsuxX3r5BfahQ7KNwh4G7RxOiq91fYxuIzfqGC7VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770885911; c=relaxed/simple;
	bh=S4LjTcY8WIdOz/Fa9CMVBB3lEWE7ucfcbiatZtIUpyw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=S8frYoJRDOMXPzxrlPW97dUmNlUuRK3fRuA0qhzCIqjpupBLd0OPqh72IVnXTCP35wi0cRF/jaf2Sb0LO/17LPCLMZvOdgBZryGXeNUtf2rBCPtutigFOMkFxQ5ShaMLkMHNpnf2l54IgquSVwUc/NPGGRm7crURJ7RtTVqMHiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DoRu0aph; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47ff94b46afso17167705e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 00:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770885908; x=1771490708; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2NGh5IYyCcy/eOuT/iqO1H2zbkd7MZApIvvP1+BGFLo=;
        b=DoRu0aphxfMikLEkIws/gZ35AFAAaWq50/8p/ZB3104FdVmD5QkUvLccyEFLbs0JCV
         dI79B4H/pkuoUWFy72hZ0J06XCkQZPkDLqcI0QrNZM9JQn01FgqfodRKsVJ5XdW651EH
         WUMeViR+kCkUytG7nyxYOze/8yXBYF9Bi/r/wpCPBMUeiVZySfrYRhmS8IhpF9Gg4Cd1
         +K9lnwc2guj77uAYJsQ02ilAa60L3Oo1xtiVA11hTLoz2OBLwqAuJJvVh36eYdYlYc4q
         P9olHw5Hz+pkazv+l7oVHbbbxpRdT1ZqfZaffvlmpWtkLcnwPl3DkdySR+4LeK3xxCjw
         gmHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770885908; x=1771490708;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2NGh5IYyCcy/eOuT/iqO1H2zbkd7MZApIvvP1+BGFLo=;
        b=B+jfP/vpjK63sVmpOdE8C+8NYGD/97T8UeAJRarGirL0sb8ghiTQ9hFHg1AtGzpGYX
         WnQJGMzfnCOKPC2+f6kL4p4MpUgfQ1Z7KqsA4vvixlUEUJbLC6Y1C1ij0CJERsSuhcsE
         SrcKZmPYRj3ZCNoT1c07+joybNXpnGBfZ8SJiL00z/txKR3QWvkBPLvVdvqhuZhOHoh5
         LKYGhF95jXOXJLkwgeT0IVYQlsCEKXPBd+xRBeDgJbDIUsqTl3s98tlvncGQ4UpSKCeW
         OwFS5LDL7gYp9eNXL5YN9W1X/J+uOttMpQ+B5KCWRCL38og68fnbIkQomM8ZRoNKl+Ah
         jiWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVox/C1zmg49NeGXjY5xTIdXsKLtUIi1mkceW4ORsoVuNTXZTcuEBHDvn4kACWsSwhBcdqClQGIMwa1@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy8IieM6a+qbrnSF0p9nKfJgdooSXATKIBa3nW3915pr8vis7T
	4dufdy1tMbaKyhIwfoag91eLgapFNjvajAR4z6bcC9rRT+EK6BJiNeXSftOUabqntLEJ6Fjgw6T
	yx9bET0U=
X-Gm-Gg: AZuq6aJIiBKrAuw8PQ2g+bks7puzM387gLF9T/eswuUM4TE7SdsY4a4JkBo0S4/8Ido
	4c9eK706usDAqWYg+zAZqxIWgW2wmBcsXOhipyMj9diM2Dmpt0jNb7H6rDtdAktSnBMhovapuLD
	f4E3QfMjSNp+v2i+Jb8sbRGYTmG6pUfT7oPkO4dEJvGO42dxRR0m037LRkidy9WCydrSOFHfWWx
	R0tDYPhiCQS36/71P6cBn35l1hQR2IBz5i3VpKJVvPJf7hZvGtEGytqxNV4wscePqeTVYkyxNCO
	lBItoOVY1k46go+CExev3HzWRJC3iCZBhKothK2IcJk6/SRwV//RIGbi8JRRc7OA9dquzc0LlWB
	vfabxVddhq08oP+reRsVSoM3OfqwxTmDcwFJq4Fl8G3bMQABLXsicpp0JS+5fmuJxGS57jg9bjv
	EgdbRKqazS/WeX2gQbiD4V3XLqH1btv8Q1lcFekgX8x7dOKmDRLBW4qnda2bWVhu4XQtr4ec52+
	Z5ENgWv6A==
X-Received: by 2002:a05:600c:4e4f:b0:47d:333d:99c with SMTP id 5b1f17b1804b1-483660425a9mr22340565e9.18.1770885907761;
        Thu, 12 Feb 2026 00:45:07 -0800 (PST)
Received: from silence.. ([46.10.240.40])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835dd0e15bsm82753705e9.13.2026.02.12.00.45.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 00:45:07 -0800 (PST)
From: Stoyan Bogdanov <sbogdanov@baylibre.com>
To: jbrunet@baylibre.com,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	skhan@linuxfoundation.org
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Stoyan Bogdanov <sbogdanov@baylibre.com>
Subject: [PATCH v1 2/3] dt-bindings: hwmon: pmbus/tps1689: Add TPS1689 support
Date: Thu, 12 Feb 2026 10:45:01 +0200
Message-Id: <20260212084502.1795-3-sbogdanov@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260212084502.1795-1-sbogdanov@baylibre.com>
References: <20260212084502.1795-1-sbogdanov@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264941-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sbogdanov@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,baylibre.com:mid,baylibre.com:email]
X-Rspamd-Queue-Id: 5688812B7EF
X-Rspamd-Action: no action

Add device compatible support for TPS1689

Signed-off-by: Stoyan Bogdanov <sbogdanov@baylibre.com>
---
 .../devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml          | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml
index f4115870e450..973ee00c2c49 100644
--- a/Documentation/devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml
+++ b/Documentation/devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml
@@ -16,7 +16,9 @@ description:
 
 properties:
   compatible:
-    const: ti,tps25990
+    enum:
+      - ti,tps1689
+      - ti,tps25990
 
   reg:
     maxItems: 1
-- 
2.34.1


