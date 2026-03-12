Return-Path: <devicetree+bounces-274682-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCAcFgbhsmmWQgAAu9opvQ
	(envelope-from <devicetree+bounces-274682-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:51:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D65274E50
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:51:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 03D4B301E95C
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:50:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5C593EF648;
	Thu, 12 Mar 2026 15:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="k746mMO0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E56E397E70
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773330614; cv=none; b=Jphz6iIaxsjEB/+iL2JNBbynHy0pK1jWpRHoxZCsjDD6NjnAfelU/KLS7MI3kZ1syKaFWG5PzS1gMwnDQPefHJDpJcqWYAeu7+9OPNBZgd6E12CX89uSKl2UHP3qqxeKo7ZeSSUclYy7NUd+zajft9NVCufVZEY+/GmW+eT9v18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773330614; c=relaxed/simple;
	bh=lmYPucQZDJWxhd4ULKfj2Y/9tl9apl6fEaECLmkHdew=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TJbO081zPxxR/TVcUgAgYHLQ+x3/aZOBDqI08Enr5Im0SGVyNx7BgAT4AnAWs8ikN5tCV0hgDKOjskZO/xwdqGIXyL5RzRyMWlRTs4T5Ht7xQEg7QpqRtCnOZ6iugpKyNQu6qNSv7qXziG8mAyTUjjel8bSxQyoXvZxKfLKYdoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=k746mMO0; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-439a89b6fd0so1164240f8f.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773330608; x=1773935408; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0ImC7JYktkxok0GopAWiBnlLjndy630gvC7bm52DQqA=;
        b=k746mMO0mYH9ViU4VMprdOcDvJ/EOTYD9cHyf3YRRdJbiowBNW5MRK8CJzdO2Dke5/
         PtJkeODPG86E1Iec9R4LL0jpX14QCT84AGI+tc83jfo5SiPMqt4MUeG3OGaKkq9cXUYp
         tPzrGvNxzA17koAOtsM9ZGQONk05ctI+x7GNB4uXFiNCtmY7m/3FeVANIVxUFAo54ZKz
         P347qsJIgOZbGsMWLbkvCnubehT9PuMLnqmGJn6PeZoeko8qDMF8yAqs5Jzvv4U/OHwC
         UrD5SHJ8KXw3NZAv4WmJSVv0mjIMO/6CbtDSfX9ibrO8vyCqmJPpNAwYfxrJvQYFMajU
         9f+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773330608; x=1773935408;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0ImC7JYktkxok0GopAWiBnlLjndy630gvC7bm52DQqA=;
        b=gTajcOxkO5g9bkoo5yXSl5xn1YrPvNMJHlQ6f67aNeMXFrL8yUJ43wT4cCJVNVGTuc
         4lB/SoPtfqEXTqWRDqgwojxerpYSZE5yI47CVoG6D5LPztxnsbyjCPTXELzKwnevLidz
         VyjNhXSC0IFwgZvc39YjNhwkxXDw2gd3tbwNjiIYVWUsDajMuFEw6cjYAx90IXWgfd78
         ykVhcg8zNNEPfHrkkyv+OCYHmJ2fcMMsWbYVU45stuY3oh6wl8opm/JrTFy/jaWUcFF1
         ilAoNfxc+gRho8ORfvJ3w+nHPo4j5RnYXSgapCWSqLgcl7tbuZnJDCKqRZeQYHOcxD6a
         5Bfg==
X-Forwarded-Encrypted: i=1; AJvYcCWtcJTk0ISxRyKtYmiyPlUBK5vsKPpV7xZGR5wUCMdL8BBOJbgTM3vOofHcahFEoOcdzcP9FjYnp3l0@vger.kernel.org
X-Gm-Message-State: AOJu0YzThUzuCOnN56k5FDr2o9GSZhsfG5odsDHMd82kLDaB2K0r4QKb
	xFBEQ9+9DmqcvI+5kxUFhIOcanHxb/w2ZqdMn8ZYh0kg2EWpBp5YZt8QkWGK/gF5tiE=
X-Gm-Gg: ATEYQzyQ6V2XZCDlNOrr5JMj3casPzVji36Ph57kO9KNegSeDJMy5FGRnuiiGD8tU+S
	GbDUFS+Km1odTO9TghlLsfW0wfO5lspEh3BDpmzMbRfLgVXe7XvdXbeBww/tdEFKrr8boECze96
	u6Z1zkN7y8K6aqWzD7tK4bkcz4JRI/YUXjOCP3dG7c8M4rcjjJI5AI9oty+LgF6+alBKlAAj9yI
	bQyzEGsnSpBnbLtRKYil0vuoDGB7jHCDNFDEebHTmGY27/mO2RABVZernuIKhFB8Q3ZEJJZRjU8
	N0MF2Rwu0kzlzhtYEK/pnuPAuQ3T9L45Z7tMgDAgv+782D0SkE5WGvV8NCYDXQZQv6avpoHkFq6
	nQOnj4adGl7iMb3O/jkSHnFzeWVTv/H/loiH7BOod/Q+Vxx/ano/VEo03pP5YbDHcoWKZO5cFqh
	KPuVu0yER7z2YzwJ2UjTqoPgtI9WyMZN8=
X-Received: by 2002:a5d:5a02:0:b0:439:c4f9:31f5 with SMTP id ffacd0b85a97d-43a04dbbd96mr248779f8f.28.1773330608031;
        Thu, 12 Mar 2026 08:50:08 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe1a737csm8306626f8f.10.2026.03.12.08.50.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:50:07 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Thu, 12 Mar 2026 16:48:55 +0100
Subject: [PATCH v2 1/8] dt-bindings: remoteproc: k3-r5f: Split up memory
 regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-topic-am62a-ioddr-dt-v6-19-v2-1-37cb7ceec658@baylibre.com>
References: <20260312-topic-am62a-ioddr-dt-v6-19-v2-0-37cb7ceec658@baylibre.com>
In-Reply-To: <20260312-topic-am62a-ioddr-dt-v6-19-v2-0-37cb7ceec658@baylibre.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Suman Anna <s-anna@ti.com>, 
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 Kendall Willis <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>, 
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2817; i=msp@baylibre.com;
 h=from:subject:message-id; bh=lmYPucQZDJWxhd4ULKfj2Y/9tl9apl6fEaECLmkHdew=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxNDwoj4g7LHZth9f3NhJNH/E6+qJgpq/HppcgM4Qud8
 5RqwiqSO0pZGMS4GGTFFFk6E0PT/svvPJa8aNlmmDmsTCBDGLg4BWAiGRMY/op23Prz2qslMKom
 uemGOl+N8vZbk5h+C/ZNdP5u/I6hII+R4Xk7p9cuN2Orn3mHsiZYVvBVfWycP7lc/tc0E19PjvW
 tXAA=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274682-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email,baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: B8D65274E50
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Split up the region reserved for the firmware image in more specific
sections to expose the full fixed layout. Especially the LPM metadata
section is important for bootloaders as it contains information about
how to exit IO+DDR. This is read by the bootloader but is written by the
firmware.

Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
---
 .../bindings/remoteproc/ti,k3-r5f-rproc.yaml       | 29 ++++++++++++++--------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
index a927551356e69d3961b3c5c6b72d027fabe83d3c..15e0286e4926865d88b693998e5aa64543ae125d 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
@@ -154,17 +154,26 @@ patternProperties:
       memory-region:
         description: |
           phandle to the reserved memory nodes to be associated with the
-          remoteproc device. There should be at least two reserved memory nodes
-          defined. The reserved memory nodes should be carveout nodes, and
-          should be defined with a "no-map" property as per the bindings in
+          remoteproc device. There should be two reserved memory nodes defined
+          for the basic layout or 6 partitions for a detailed layout. The
+          reserved memory nodes should be carveout nodes, and should be defined
+          with a "no-map" property as per the bindings in
           Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
-        minItems: 2
-        maxItems: 8
-        items:
-          - description: region used for dynamic DMA allocations like vrings and
-                         vring buffers
-          - description: region reserved for firmware image sections
-        additionalItems: true
+        oneOf:
+          - description: Basic layout
+            items:
+              - description: region used for dynamic DMA allocations like vrings and
+                             vring buffers
+              - description: region reserved for firmware image sections
+          - description: Detailed layout
+            items:
+              - description: region used for dynamic DMA allocations like vrings and
+                             vring buffers
+              - description: region reserved for IPC resources
+              - description: LPM FS stub binary
+              - description: LPM metadata
+              - description: LPM FS context data and reserved sections
+              - description: DM RM/PM trace and firmware code/data
 
 # Optional properties:
 # --------------------

-- 
2.53.0


