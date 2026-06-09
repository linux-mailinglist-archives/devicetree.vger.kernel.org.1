Return-Path: <devicetree+bounces-309203-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4ra4HVFAKGowBAMAu9opvQ
	(envelope-from <devicetree+bounces-309203-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:33:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2D76626AF
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:33:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=MyYHxY3+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309203-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309203-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD3BB330F1A2
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:19:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89F4843E9D2;
	Tue,  9 Jun 2026 16:17:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B9843C05E
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:17:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781021855; cv=none; b=n2JsKAflcVGfcGuYIAcD9PozWigokFQHIUt6fCK/l19ZyiirKYniRiZyhP+TbQMX9PAhcbHThNf8EtpD/aZDf5ZhdjbcUlBaiaElgb6Fm7oVHOH6fjzw5z1owOOtWY11vkEzZk3oY4OHyk59+52w42JDgB2Z7UHhO+oZoZ0+MGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781021855; c=relaxed/simple;
	bh=e1qWhQtJcMNAri/ExRMPn8OMwkFTMrLndHl7ML8jUXk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qaAVc/X/fjnpH9PVqJKT4mX8nDZKXbMqQxu0w8BBiKB2LY8peGKT1uoxelk+/qbziBcID5JqcI8hUmoL3izmDvBgRAxaKk/xvOUM7kLszElt1Hfu0N9mmCyT5RLMS0vV1uHse6V/9Coin22sWjAMxenlngXy1AtLmtB4vCzJe7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MyYHxY3+; arc=none smtp.client-ip=209.85.161.54
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-69e2c792289so3945193eaf.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 09:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781021853; x=1781626653; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ExJ9aOV9PvUXbz2FXXaIoYeN8C+DD7DPJ40uiTsqRJU=;
        b=MyYHxY3+9HmTrtTsen1zbXv0W1L9bNmkCqBV7w6/q60DNr8BNJHaGx6unJzYe9ESMO
         3KUC8uvi83LPHjWEZKkl8uUkjk/1rRJiBA8s8G3h7KlAAO8vzR8uLqtiW+hXpSR6ivMz
         appQMP6iA8eHUT+mfnsO16EubSPLxnlL/tYpHWscyZ/dOBD/hmHlUzg+xJcpNZt9rRH+
         70GVamA0m+HThYgq+5an3CN1DSqo+l+KZ9hjqWj7H2WhSHRpHl2Jf37GTsq1/SViQcDP
         CJLVfyQVlOm8v5dleCoRhvyLQqFi9dsWOmo6HRwV7CxNqihHtnSgVLLQ1idcWP8DU90d
         ALUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781021853; x=1781626653;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ExJ9aOV9PvUXbz2FXXaIoYeN8C+DD7DPJ40uiTsqRJU=;
        b=m9t1eLT9DVlWGE4NkbWVWi80hk7YrJX687xYFY6wnzZ4ADvk6HZXiDdnMF9W2bzdkW
         /+AQv2VLVPtNj47vLpHdVHS4Nqr2BfkU0ZFlaVHakVlbHlkrskeQdVqeadP3HO31f2Hs
         9jypy88HOT4g4tYARe3NpnchhNKOoAZa3Us3rTLjyTPkdS7kB4dt9yq3MqsykBTvZxEZ
         Snh/rYrYfDG1jqe/L1FJscEvcRoEwPHOOICwka5YIut88Rxbc6OZcxGIL5lO0OLTStYI
         iXNQTmAgMokGalWFbGfM04WcWx5TDCq5Y0HhltkGcgSNZQd8gGuu0NYfDKr7FXxhuAc/
         eBtA==
X-Forwarded-Encrypted: i=1; AFNElJ/SEN2Y2WysOpLyj8Wfr5cSDnF0bx1VYyza0qByjAb3ZfCPqUvjBzIJk0yY5rg10rzC3mQ6P51mHU/e@vger.kernel.org
X-Gm-Message-State: AOJu0YysOG77ViI+ml7586h3m/3u3GWvLqowrb9rrw7anh6Hf8N9pJ29
	lMQvrfOmapIhRfSGASfGV43sd/5rz19ewCqJ8QJwMSBxlvRukSuCVYiD
X-Gm-Gg: Acq92OFiEkQuOrOqEvurF6sWBpJ2rBIh7QWuIM16iltUXpNFOchDV4i+ajlpeaGDIWM
	M6tu84rDdUf93Daekox96HeQS3ypv3rPGfZr81qFmS7NyYWTLwmlickPMxouCgj7mnYwGq2Tq47
	AryLIAAEMoZKbqvzJ28tNz7En5aUZltlqFCFpbmwd4qZMx5LPeLfFpsdFMTcsDL/a7de0W8mx+2
	NayEpgXvQloZafRMZWVUBiue8LcE2eZanubmKM/vzx6wqQey7pBXAk6QGBnmzYzpoxVlG1QsG6B
	pQ63wrpGjhipj514lwpgVZvto1VR/Glhx4+SDJZhNuAMnU3lPUVqzqIKS6FvMEuJJhqPKHm/Jl7
	86SVEqoixXm/kZIj5ubyF4Aj2E/b3Uik3VhiLafyOnVil8jSyWBxCKjJg5d9pmYS/AbO5m7VXHv
	XtGYG93FuSw4U8zSW64Wn/WjlOUTluevVRkRdN7G5XhlVqZIRlXe24t8FGCXjMfhlZscfdvQD66
	Rvl0TE=
X-Received: by 2002:a05:6820:1907:b0:69d:c156:b9e with SMTP id 006d021491bc7-69e68b51ac9mr12375469eaf.20.1781021853216;
        Tue, 09 Jun 2026 09:17:33 -0700 (PDT)
Received: from linuxescape.lan (23-88-128-2.fttp.usinternet.com. [23.88.128.2])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d8448e3csm18797906fac.13.2026.06.09.09.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 09:17:32 -0700 (PDT)
From: Maxwell Doose <m32285159@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-iio@vger.kernel.org (open list:IIO SUBSYSTEM AND DRIVERS),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tomasz Duszynski <tduszyns@gmail.com>
Subject: [PATCH 2/2] MAINTAINERS: Add myself as maintainer for SPS30
Date: Tue,  9 Jun 2026 11:17:01 -0500
Message-ID: <20260609161701.52513-4-m32285159@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260609161701.52513-2-m32285159@gmail.com>
References: <20260609161701.52513-2-m32285159@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309203-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:tduszyns@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC2D76626AF

Tomasz's entry is no longer valid, as he is not active anymore. Add
myself as maintainer of the SPS30 to replace his entry.

Link: https://lore.kernel.org/linux-iio/20260609140712.2e5d1640@jic23-huawei/
Cc: Tomasz Duszynski <tduszyns@gmail.com>
Signed-off-by: Maxwell Doose <m32285159@gmail.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index d1b0a40c02e0..49ca275410c0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -24262,7 +24262,7 @@ F:	Documentation/ABI/testing/sysfs-bus-iio-chemical-sgp40
 F:	drivers/iio/chemical/sgp40.c
 
 SENSIRION SPS30 AIR POLLUTION SENSOR DRIVER
-M:	Tomasz Duszynski <tduszyns@gmail.com>
+M:	Maxwell Doose <m32285159@gmail.com>
 S:	Maintained
 F:	Documentation/devicetree/bindings/iio/chemical/sensirion,sps30.yaml
 F:	drivers/iio/chemical/sps30.c
-- 
2.54.0


