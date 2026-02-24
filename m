Return-Path: <devicetree+bounces-267902-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LzALbiknWmZQwQAu9opvQ
	(envelope-from <devicetree+bounces-267902-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:16:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E5B187772
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:16:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9158317AE87
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4F3139C62D;
	Tue, 24 Feb 2026 13:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MLco3w6y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99E4439C64C
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771938930; cv=none; b=lW2G8Jf4pTgtsnzTe6JVa38fSHJzcZtvup6ZDBFCsU5o3VA4dDWtW2Eq4iAUlU8TqwGt7bQBXBoa1yZLwz+E6i7R9VX5eMEAtml5CeM90HCK2m14qhSQLsvwkdmfvvn5+seoFTBV/xixw6upnkYOxEovpvj04i/Rn3yaNWGdRMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771938930; c=relaxed/simple;
	bh=OtvZyrWT5VTFMSmcrnZ05pfhHH5/ggvbA2goI3o9av0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TV08ae++y/tPg0k++BB4+55lQxUh6HMEObnPs6GITaKFrDSGvI+heJzV7ajrKtsaeCnh3NyzaEhbdbpHMUVTBy9sHmi0qefFC8lANYuFVBMZpG7ruTiWMmsAWTftyVncbmDJ5QKQCxIKMFMi6ev6QB3m6pdZc4XOuvG/6Gz1vxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MLco3w6y; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-82318702afbso5035288b3a.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 05:15:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771938929; x=1772543729; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=87f//Yej2+AUh9A9iH8uD4m2fZ6NHMgB/zE+EasfNio=;
        b=MLco3w6yZli7kj5Lk513YzE/ZZhOcVTV64BnWf5V4Fr57tab4MAmtm0PJZMMUlkyC1
         NHnqY8CfNhNAcRvHEp2Hw/JPkEFrIrxuW0DnuZdRsAzDWXkhAzMiwiBvbcL2EOSBpK6w
         RFqqMgeQnYdxKtJzwrH9SWzHDtVdCrC0/iB/yOwUeO4QWYqOGmC1dR19eFISMkMxzwzE
         PWqtDBmPj2TLPzSEIPo3Sm57rWcti7xmOZpWA4UX26b+cUV6w9YNFU2Zxh55Zmab/yJw
         XLFxV93v2s8tkv4/9UtXIBq6DOCLnGrvLUEuYCkzGrN3Nf6JvQ2BvD+pR4q+Vg+RzDFG
         FCOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771938929; x=1772543729;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=87f//Yej2+AUh9A9iH8uD4m2fZ6NHMgB/zE+EasfNio=;
        b=L6EsP3r6OHpcW+S68vQ8lxbSpcjRjdpgwpouE7sfdjDKW5atRzHS+Pxdn+zu2wYkBK
         YIg1IMHw04QBZWKPUGFrlBXoUlEQGuZDdIEjQ9N5Iu6G7trg301ZVtuCBo9RNDUSmChN
         PQd7d/iM7tdAzABWYhOx5XQekFLz+kjScmnWBWFKK8klAKLhHmw7Ny47EzmI419J3zz3
         +Qthig8CLH+eK761kvCj1O6wsYwVCH5PL1uJJwdUPv1lvq4QckksBE7oWIJ/8MfGHNQ0
         ht+Ouzg9eTmOZSJ5wy2QkbQfvoleGEvWPFQKcXEV3KFYKbh+0rEdae8D9Pz5GQi7zkFG
         ATsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXywXCVR6gmO0u6105SYgXT8O090zOISemaOWnrpU+pjMAe0HDnNd+5GfXgq5jJLWD2zFckjrATUvN7@vger.kernel.org
X-Gm-Message-State: AOJu0YxzpFAi+u/3NO98haUemrqAX1U3oMuUNYC1+Boi8dQ9sZcx9UnA
	TY14+snD6iPXIBHhkjdc5d33BS00AURW6mYjs6Ey61DHFjpQ0VYn7EMy
X-Gm-Gg: AZuq6aLTdoQ+DkleEESlz5kexBOtMmtYE868t/Fi8a7xhBcuZuRAQ3iz+Jw+l3HQ7Q1
	gKz47kn5u47Dp2o+RXM+PU41JhJYmatRvh+kieYfdNN2WjXjgz0xETbJGZEVn95BRsslu3iQ3k9
	L8qpohzQkVmq2V/FXUQU4ajIqpSUrUY2eD2MUmOM0zM7GmqI9jPbCR0jRy9NSzSlh9nALUKj8K7
	wL7eM0PBq+wPyKFG7nnLDyOtqyQH9jpLIkQHUhv1FwoesPMst0+jFOo14hze//j/eWbw3kHRxSB
	zxcmIkpUHhq78BGmEMZYFOvRl+ffUHg1MZVm/tcucxiQr14lGmzt+crFcmdGcK0cjn/nSomd7/c
	/9bkGmfai7nQoL1f4OTXnX40niivqCZV1YxFGOFadtjbL9/h58VaXcE/Wj4+JJln2TBAE1s92pW
	plLVBNa/HDzP8Ww9ZubahgGDtCCeKGSR9Fq+R9H/XxLQ==
X-Received: by 2002:a05:6a20:1595:b0:2fa:26fb:4a7b with SMTP id adf61e73a8af0-39545f88edfmr9797900637.57.1771938925786;
        Tue, 24 Feb 2026 05:15:25 -0800 (PST)
Received: from Black-Pearl.localdomain ([27.7.171.51])
        by smtp.googlemail.com with ESMTPSA id 41be03b00d2f7-c70b7253a70sm10794013a12.24.2026.02.24.05.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 05:15:25 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Subject: [PATCH v2 0/4] dt-bindings: usb: atmel: convert Atmel USB
 controller bindings to YAML
Date: Tue, 24 Feb 2026 13:12:57 +0000
Message-Id: <20260224-atmel-usb-v2-0-6d6a615c9c47@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANqjnWkC/03MQQ6CMBCF4auQWVvTaYlSV97DsKgwhUkomBYbD
 endrbhx+b+8fBtECkwRLtUGgRJHXuYS6lBBN9p5IMF9aVBSnSQqI+zqaRLPeBf67BpjsUaqGyj
 /RyDHr926taVHjusS3jud8Lv+FCXxT0kopOjRajJaSu3wOnjL07FbPLQ55w9oFK+jogAAAA==
X-Change-ID: 20260129-atmel-usb-37f89a141e48
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Herve Codina <herve.codina@bootlin.com>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267902-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 33E5B187772
X-Rspamd-Action: no action

This patch series converts the legacy text-based Device Tree bindings for
Atmel/Microchip USB controllers to DT schema (YAML) format.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
Changes in v2:
- Drop the separate YAML patches for OHCI and EHCI.
- Add the compatibles "atmel,at91rm9200-ohci" and "atmel,at91sam9g45-ehci"
  to the existing generic OHCI and EHCI binding files.
- Link to v1: https://lore.kernel.org/r/20260201-atmel-usb-v1-0-d1a3e93003f1@gmail.com

---
Charan Pedumuru (4):
      dt-bindings: usb: generic-ohci: add AT91RM9200 OHCI binding support
      dt-bindings: usb: generic-ehci: fix schema structure and add at91sam9g45 constraints
      dt-bindings: usb: atmel,at91rm9200-udc: convert to DT schema
      dt-bindings: usb: atmel,at91sam9rl-udc: convert to DT schema

 .../bindings/usb/atmel,at91rm9200-udc.yaml         |  77 +++++++++++++
 .../bindings/usb/atmel,at91sam9rl-udc.yaml         |  81 +++++++++++++
 .../devicetree/bindings/usb/atmel-usb.txt          | 125 ---------------------
 .../devicetree/bindings/usb/generic-ehci.yaml      |  46 +++++---
 .../devicetree/bindings/usb/generic-ohci.yaml      |  27 +++++
 5 files changed, 218 insertions(+), 138 deletions(-)
---
base-commit: 3f24e4edcd1b8981c6b448ea2680726dedd87279
change-id: 20260129-atmel-usb-37f89a141e48

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>


