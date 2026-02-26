Return-Path: <devicetree+bounces-268596-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBkoBdffn2lLegQAu9opvQ
	(envelope-from <devicetree+bounces-268596-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:53:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FAC1A11D8
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:53:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0C3E33026936
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 05:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EDD438B7C9;
	Thu, 26 Feb 2026 05:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="nJ5EzEGh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f74.google.com (mail-dl1-f74.google.com [74.125.82.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE9238B7A1
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772085202; cv=none; b=eRUPPFIrWUzGylIhZKTWnG/k13DYggI2kk6UUn6OTcRUjQR9cO+O+qVM5cBKnyJs99ADNLada9mFLMV4BHKAeMAzxE3BoNWRJOrf/Qf0Kk0tEHBflNvTXDBdayXnVxe/So5Wt7Q3jwT/KGctEs2jbTCPEUxYIrLf4Gr8HigTAgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772085202; c=relaxed/simple;
	bh=5PZ8CggFuOHWg9Rc+M/mGjcAtyt2FOwDfgn4r8JYe38=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=a5tyZKLmtOGLrnLF5l/LjlYzvq1dJ1FkVt98VL45cMOS4MKlxDZQQFy05zKZz0uUYCfv8dJbPqYSAxw59G5zVdagZmXUMFD5CEU22FYiJeb4t/SZTygtRjmee5/2i6S8ApQCtRsupvpb2mib8jSe0eaIj3IFxWgthlskz43MMqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--badhri.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=nJ5EzEGh; arc=none smtp.client-ip=74.125.82.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--badhri.bounces.google.com
Received: by mail-dl1-f74.google.com with SMTP id a92af1059eb24-126e8ee6227so742195c88.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 21:53:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772085200; x=1772690000; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=LkHfgITQ7X2diSbprSgbvJHo2GTsX0M8Rs/FPJ/8x+8=;
        b=nJ5EzEGhJv6NmwB4nf2mwyPuJnrPiy9O22MdUKN8QI4muUNlT996WHs8KJMUlxtE8N
         cFiKEUk7NBspLKBA68rdwRDIo274+R4Y35st47VUzHp/w/g74+2eKCSVg9EilehRf+Gv
         DBwNtd2hPuFFC73XhB1iIcNzEDj/lETGUdsz76shNWHU6JNoniZ0kbx0yvChQfG+xQZ5
         +Qw5oYDr3m5neNpLtGKbVG/VECbaXPWAcR5YUdoZ353SoIV4NNnLntRvFi57UoDNxoZ1
         vhVzXlUenosXwYTLrM57wCNZY9sJrKDbsSVHKqeXR0lM5mzrivLBhO4JYYb1sKYpPP9j
         /78A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772085200; x=1772690000;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LkHfgITQ7X2diSbprSgbvJHo2GTsX0M8Rs/FPJ/8x+8=;
        b=LrRthI4KluI3v7QC1fa+aJq5l0jvaL5rkWnC9fDrISqrZjcQfRMuo6svVNpKfCel7h
         NdirGV3n8S6RAuiVnlNNcdxJ8/jiGoUNi9rEDjArHHnO6q9Q/jXA8h/k3wSIiG4T6bPx
         BuI0YWtbKGW1FLJgJu4q6UScNABiSR5WOLrsPBuUKdUBbVHotyr9W8gk8oyU9dcbCNKN
         7UsVmVfZI7brrMVQ/PedNmSykVWZlYmDfMm5594VU/PzfpJlukeVKOcsSmJVIZLis3oU
         OooJjEMjt8hdbSCzdf4p82JcToO6rS75AMoHzaa3koSNXwJmREqpYSoOb8rqr1KZwRRT
         HC7A==
X-Gm-Message-State: AOJu0Yw7U/OgpkNPAPXe4JRuCSqtbjVYiPlfS/fmuxmT8H9ZiKN8XDLi
	MLcb37kprhsG31EwQSnGddOki/2JvV0NuXnyv1WbE0/jLtgzimm3NmyG/GoQROziTKopdL6W/71
	pvZWNng==
X-Received: from dlbuy16.prod.google.com ([2002:a05:7022:1e10:b0:127:32c4:b97b])
 (user=badhri job=prod-delivery.src-stubby-dispatcher) by 2002:a05:7022:4384:b0:11a:fec5:d005
 with SMTP id a92af1059eb24-12789c76961mr613663c88.10.1772085199939; Wed, 25
 Feb 2026 21:53:19 -0800 (PST)
Date: Thu, 26 Feb 2026 05:53:10 +0000
In-Reply-To: <20260226055311.2591357-1-badhri@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20260226055311.2591357-1-badhri@google.com>
X-Mailer: git-send-email 2.53.0.414.gf7e9f6c205-goog
Message-ID: <20260226055311.2591357-3-badhri@google.com>
Subject: [PATCH v1 2/3] power: supply: Add PD SPR AVS support to USB type enum
From: Badhri Jagan Sridharan <badhri@google.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Sebastian Reichel <sre@kernel.org>, 
	Badhri Jagan Sridharan <badhri@google.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Amit Sunil Dhamne <amitsd@google.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268596-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[badhri@google.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D7FAC1A11D8
X-Rspamd-Action: no action

Add two new members to the power_supply_usb_type to represent the
USB Power Delivery (PD) Standard Power Range (SPR) Adjustable Voltage
Supply (AVS) charging types:

POWER_SUPPLY_USB_TYPE_PD_SPR_AVS: For devices supporting only the
PD SPR AVS type.

POWER_SUPPLY_USB_TYPE_PD_PPS_SPR_AVS: For devices that support both
PD Programmable Power Supply (PPS) and PD SPR AVS.

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
---
 drivers/power/supply/power_supply_sysfs.c | 2 ++
 include/linux/power_supply.h              | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/drivers/power/supply/power_supply_sysfs.c b/drivers/power/supply/power_supply_sysfs.c
index dd3a48d72d2b..f30a7b9ccd5e 100644
--- a/drivers/power/supply/power_supply_sysfs.c
+++ b/drivers/power/supply/power_supply_sysfs.c
@@ -70,6 +70,8 @@ static const char * const POWER_SUPPLY_USB_TYPE_TEXT[] = {
 	[POWER_SUPPLY_USB_TYPE_PD]		= "PD",
 	[POWER_SUPPLY_USB_TYPE_PD_DRP]		= "PD_DRP",
 	[POWER_SUPPLY_USB_TYPE_PD_PPS]		= "PD_PPS",
+	[POWER_SUPPLY_USB_TYPE_PD_SPR_AVS]	= "PD_SPR_AVS",
+	[POWER_SUPPLY_USB_TYPE_PD_PPS_SPR_AVS]	= "PD_PPS_SPR_AVS",
 	[POWER_SUPPLY_USB_TYPE_APPLE_BRICK_ID]	= "BrickID",
 };
 
diff --git a/include/linux/power_supply.h b/include/linux/power_supply.h
index 360ffdf272da..7a5e4c3242a0 100644
--- a/include/linux/power_supply.h
+++ b/include/linux/power_supply.h
@@ -210,6 +210,9 @@ enum power_supply_usb_type {
 	POWER_SUPPLY_USB_TYPE_PD,		/* Power Delivery Port */
 	POWER_SUPPLY_USB_TYPE_PD_DRP,		/* PD Dual Role Port */
 	POWER_SUPPLY_USB_TYPE_PD_PPS,		/* PD Programmable Power Supply */
+	/* PD Standard Power Range Adjustable Voltage Supply */
+	POWER_SUPPLY_USB_TYPE_PD_SPR_AVS,
+	POWER_SUPPLY_USB_TYPE_PD_PPS_SPR_AVS,	/* Supports both PD PPS + SPR AVS */
 	POWER_SUPPLY_USB_TYPE_APPLE_BRICK_ID,	/* Apple Charging Method */
 };
 
-- 
2.53.0.414.gf7e9f6c205-goog


