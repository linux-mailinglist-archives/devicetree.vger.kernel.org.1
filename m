Return-Path: <devicetree+bounces-268594-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDTWMt7fn2lLegQAu9opvQ
	(envelope-from <devicetree+bounces-268594-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:53:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4751A11F0
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:53:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86DAC3050A0F
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 05:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21CD138B7A6;
	Thu, 26 Feb 2026 05:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="T/ZXRGEQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f73.google.com (mail-dl1-f73.google.com [74.125.82.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B6E38A736
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772085200; cv=none; b=uW4b2m8q5MrzMNcAw1Jl2AmOlse5ze7kqccFhQGpkIZmrfhAewrPXaoQ0MFSBR095TkyJVQqEkOzL4KTMA+EibDhPQ3yC5TZ0oyP3ubAblBs318sg+M52736ShUs/knbvho3vAn/E+A9B3JX+Sm4+0jUZiJDaur0TKMIDJbVsI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772085200; c=relaxed/simple;
	bh=LfhQDPGS3jOh7xhVxS4sehprRV4qazzcCsUCb66y5Hw=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=gOVMGzMlB7PtNdH9Ch9E+54dVo2ceMapepJkJXTJfTJkbc+/RzFHOVMXmQFyveyInT0eiX86Crztt/bC00byfWNtpkYfw1N9ls4pbO0L49f/pyZaL9SAlKv9ctKb4LdP5AJiQQxwOWAxqQspADJZsz0dMAvcs6x0toWHLUUinFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--badhri.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=T/ZXRGEQ; arc=none smtp.client-ip=74.125.82.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--badhri.bounces.google.com
Received: by mail-dl1-f73.google.com with SMTP id a92af1059eb24-1276e71652fso837456c88.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 21:53:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772085198; x=1772689998; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=cFC9qEvebwSLDfjL8YA0PaUI3cLmvAY/JQ63j4juSKA=;
        b=T/ZXRGEQCXFViHtJ/BlxD3SE5ElWDg44jPLsIVzvsmgzj0S6LG5JwFT6R3wjQhfmGd
         9gL8cvfKXakRiQCoc1KE7h0/0ooP/nfGAeSgFJGnWVwseBjSlAFCK7e80wmga8/ouTEy
         ziacAg7vSWFWOOFWOg9+itkYXzD8k9Tzw7AnIL14HoRdLVQFlS81tCaz0F0a98J0O/vz
         xfxf5N20a8zcgldplHKM0PYgV80BOKF/TG4dFnNUxi2NQOGXQlzvffmmHXVQW9bMFiVc
         +AVmKwHPyEtHuHFgogSjBjAL21U/h4dFgPf0IMJyfifPD25V8N6zqG+E/qNwZRArmFWW
         xZfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772085198; x=1772689998;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cFC9qEvebwSLDfjL8YA0PaUI3cLmvAY/JQ63j4juSKA=;
        b=MmW750cv5yS7lA/ffiRe7HfVJEn4yP72mTqLkp4lOUiCFHmOD9nw7fh96Z0WyQyOYT
         Pi1QkYkR6KrzqTlt7OL7gDY2oUEEiP1kmScLPZvb8WZUQam8CM5jBzG1bPeQbtDIDniO
         HCSuVk9E+IWTIMFyjHqilERSXqYlPc/plSVxZbEf0wb4h5EiVgFh6krm9XXD8d+JSsP6
         N/H/xPSHMJk6Kdkh+8co9KHLgJvUyp+2xWVs3LY/tQTMLA7btNI51csRef08haTsLa0f
         djZca1fUg5DRMOPKm2kwHoG+m1hUstNEC4yXMlIlXLYZ0k86rdiXEYaNEPZGJovh/X6f
         l1Fw==
X-Gm-Message-State: AOJu0YxrToAYZyL++mT7XiFvRXBmBDRvqd9u+1kg4dhYQvar++wib9RH
	JRdh1XIIhjMVAzbjUH5NkwLxrlNA3rtMg//Ybz6LXXFBlBpfJZOD1hMDRzLr4Dx0DlDemSMDr0w
	rrBKu6Q==
X-Received: from dlbcm15.prod.google.com ([2002:a05:7022:688f:b0:127:335b:9077])
 (user=badhri job=prod-delivery.src-stubby-dispatcher) by 2002:a05:7022:2216:b0:124:b11f:67ec
 with SMTP id a92af1059eb24-127869c256cmr1193427c88.39.1772085198007; Wed, 25
 Feb 2026 21:53:18 -0800 (PST)
Date: Thu, 26 Feb 2026 05:53:09 +0000
In-Reply-To: <20260226055311.2591357-1-badhri@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20260226055311.2591357-1-badhri@google.com>
X-Mailer: git-send-email 2.53.0.414.gf7e9f6c205-goog
Message-ID: <20260226055311.2591357-2-badhri@google.com>
Subject: [PATCH v1 1/3] dt-bindings: connector: Add SPR AVS Sink APDO definitions
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268594-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[badhri@google.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6D4751A11F0
X-Rspamd-Action: no action

USB Power Delivery 3.2 introduces a new power supply type SPR AVS.
Add macro definitions for the USB Power Delivery (PD)
Standard Power Range (SPR) Adjustable Voltage Supply (AVS) as a
Sink Augmented Power Data Object (APDO) in the device tree bindings.

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
---
 .../bindings/connector/usb-connector.yaml      |  5 +++--
 include/dt-bindings/usb/pd.h                   | 18 ++++++++++++++++++
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index 901986de3e2b..a00b239960a3 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -364,8 +364,9 @@ $defs:
           "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.3
           Sink Capabilities Message, the order of each entry(PDO) should follow the
           PD spec chapter 6.4.1. Required for power sink and power dual role. User
-          can specify the sink PDO array via PDO_FIXED/BATT/VAR/PPS_APDO() defined
-          in dt-bindings/usb/pd.h.
+          can specify the sink PDO array via
+          PDO_FIXED/BATT/VAR/PPS_APDO/SPR_AVS_SNK_APDO() defined in
+          dt-bindings/usb/pd.h.
         minItems: 1
         maxItems: 7
         $ref: /schemas/types.yaml#/definitions/uint32-array
diff --git a/include/dt-bindings/usb/pd.h b/include/dt-bindings/usb/pd.h
index 6cff2339bda3..1e64a1f563f9 100644
--- a/include/dt-bindings/usb/pd.h
+++ b/include/dt-bindings/usb/pd.h
@@ -60,6 +60,7 @@
 	 PDO_VAR_MAX_VOLT(max_mv) | PDO_VAR_MAX_CURR(max_ma))
 
 #define APDO_TYPE_PPS		0
+#define APDO_TYPE_SPR_AVS	2
 
 #define PDO_APDO_TYPE_SHIFT	28	/* Only valid value currently is 0x0 - PPS */
 #define PDO_APDO_TYPE_MASK	0x3
@@ -85,6 +86,23 @@
 	 PDO_PPS_APDO_MIN_VOLT(min_mv) | PDO_PPS_APDO_MAX_VOLT(max_mv) |	\
 	 PDO_PPS_APDO_MAX_CURR(max_ma))
 
+#define PDO_SPR_AVS_APDO_9V_TO_15V_MAX_CURR_SHIFT	10	/* 10mA units */
+#define PDO_SPR_AVS_APDO_15V_TO_20V_MAX_CURR_SHIFT	0	/* 10mA units */
+#define PDO_SPR_AVS_APDO_MAX_CURR_MASK			0x3ff
+
+#define PDO_SPR_AVS_APDO_9V_TO_15V_MAX_CURR(max_cur_9v_to_15v_ma)		\
+	((((max_cur_9v_to_15v_ma) / 10) & PDO_SPR_AVS_APDO_MAX_CURR_MASK) <<	\
+	PDO_SPR_AVS_APDO_9V_TO_15V_MAX_CURR_SHIFT)
+
+#define PDO_SPR_AVS_APDO_15V_TO_20V_MAX_CURR(max_cur_15v_to_20v_ma)		\
+	((((max_cur_15v_to_20v_ma) / 10) & PDO_SPR_AVS_APDO_MAX_CURR_MASK) <<	\
+	PDO_SPR_AVS_APDO_15V_TO_20V_MAX_CURR_SHIFT)
+
+#define PDO_SPR_AVS_SNK_APDO(max_cur_9v_to_15v_ma, max_cur_15v_to_20v_ma)	\
+	(PDO_TYPE(PDO_TYPE_APDO) | PDO_APDO_TYPE(APDO_TYPE_SPR_AVS) |		\
+	PDO_SPR_AVS_APDO_9V_TO_15V_MAX_CURR(max_cur_9v_to_15v_ma) |		\
+	PDO_SPR_AVS_APDO_15V_TO_20V_MAX_CURR(max_cur_15v_to_20v_ma))
+
  /*
   * Based on "Table 6-14 Fixed Supply PDO - Sink" of "USB Power Delivery Specification Revision 3.0,
   * Version 1.2"
-- 
2.53.0.414.gf7e9f6c205-goog


