Return-Path: <devicetree+bounces-269393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBroF2ffoWlcwgQAu9opvQ
	(envelope-from <devicetree+bounces-269393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:16:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B998D1BBDD7
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:16:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB4AC306759B
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4429636A032;
	Fri, 27 Feb 2026 18:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ow941Yyt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66DEF36A025
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 18:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772215895; cv=none; b=asXnyMFt6mS0RuZXte1neOu1sk/iABW5ZwYU/bCNmYLENiBEAk7j+vG3ZGOH2QqfMJ7mv+z29WsgYbuUMDJNr4ai2RJZrWpO9xRBm8KT47zJwdWa/h5PjeULEo6sYNxfLruhj3gL6ccrSAYppx95Ft5uOLkkxE5UABgVZHopaVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772215895; c=relaxed/simple;
	bh=fo3B7oB+sSB2hiVzZsjwPQUbVGa7umwme652FxS3D3o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Q0Z/F9OCxOeYsAMGNwFkViTGzlSDRcST2KMr/H6M+3DxMGidW27S9U0bfuwOWnrm7Z0DnATrJobGtV5z14NOTDHDU4PMM63y8A36vz9fC4XAQtNwNMsDt7kcjmzuH0jjncyQUF3gmeRENn4Z8hmRaiHjXoXBK6y1ZjEO79Fzi1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ow941Yyt; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-56a91535e5bso921125e0c.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772215891; x=1772820691; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QFYNoM2NcR8ueNygCdVE4wkvg/ukLjVQh5FqKAEJNlg=;
        b=Ow941Yyt76rYEOEuxaxW6N8v0fT3soNB66LGH5Clufo0fLC2L4UiyPvmVXhfstbqmN
         WeRkUlItNY32eLkkn8sAYtL/VE7cZH5dGtZ6kGTesVv3xULUlqtysJ0I/BqCLMSyNyZh
         Dq4pkjhny4927bdraJeqta1+vmTk4ApXgAj4RlDqgj8dW7Y1CXlsbAQTundiIykodWTs
         Avy2m2b14NeWtzYkjHbbHv9NTNN+BXanVwoA6x1GVNcn2DcKymx2xc5W1kG6D7M1XOy9
         BUD7+C+v9Bghk5YwIaB+4+WEUs3o3HCz2kK+LQHNbnKMLAp6TNvDFtS1/NngjY5fMgnK
         GN+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772215891; x=1772820691;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QFYNoM2NcR8ueNygCdVE4wkvg/ukLjVQh5FqKAEJNlg=;
        b=AuFdmtsrRtV+zUn6cIDmIYxOoD6KtJDDhutbICOwmrBuCS0e7b3KWEgd+QDwUWMIob
         OsR1aSJhcrrh9GVU8MW3vusb5+mE9ikYIqkDx6K5+v8xNw8Lr8/Hhf7Qp+cdDR2kLk/C
         bkNKIUg446NPiHOTO/t9dPbTnzzqSXGlMUDLu4KYiycCcGi7z2MJuo5Jb65g9E79m7hc
         /IOiaRq11blQAyjVPit3kNWlGgpWt+ns/0+Zu5kS1GilpxBuDOeupmZqJIOisPAX6QvJ
         xAU+tTNYBCzL5hMYClHQvkztK+r1pgR9X8N+KG2dwq0p+YT5iydyGxBPoRW9rhQXPOwt
         Lfuw==
X-Gm-Message-State: AOJu0YwxPYoDUSva6nTwWaXNkr4TZwxjsjYtlUCEoSqZLBq1VRwbbPne
	+tECDUKi/Uy2jEk/XE3GFatbCohw5U9iq1eemis64zHGWNxp/t79513+
X-Gm-Gg: ATEYQzzCBsyDdHRABeayFzrbNfeYZFMbztazzwZb6DmQVlmn7UjkEp1U073d2oPJupW
	Y+Wy9UiMntqLj+pWxMmtIS7bv7bnPyMdXrevk4GTkoNrp0/yPhNpaJuN2devxPPVOsZnGs+2cop
	x1G9llTlvKW1MgwJ9UbuERF59ArnqttZj0i1sG5Aog1YmtTYobF6J1V/bryzf0INwtBRRQ3oCKf
	S0jpzCrANl3a06h254ajRgtjxwnRqBLN0ZDgJ6k7nfy4V6t589fHZmb2B4/Zg8fIBSZp5lFSisr
	Vev8izMpSzrVbmjM3W0KWk7zwtBINWNQa1hUrFX7iemBHJknKyrtrY79mA8Le5Sf1kZ9s9RTXIq
	qwQ+NXNur2Gq4H6ZNZXjOLh5Vr1A04BnG2XDhiFdgeuTQTMP4DkcNMNqnEsoIYe7G443oLZmRsk
	JLgtgijYY4fu89EMr4OtdjdjdQMAu75D5rU6c=
X-Received: by 2002:a05:6122:4592:b0:566:fe6c:e1c1 with SMTP id 71dfb90a1353d-56aa09ec858mr2079192e0c.3.1772215891120;
        Fri, 27 Feb 2026 10:11:31 -0800 (PST)
Received: from nixos ([2804:1b1:b880:4e06:554b:5779:2074:421f])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a92049d05sm7452905e0c.12.2026.02.27.10.11.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 10:11:30 -0800 (PST)
From: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
To: gregkh@linuxfoundation.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ovidiu.panait.oss@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev,
	Lucas Faria Mendes <lucas.fariamo08@gmail.com>
Subject: [PATCH v2 0/3] staging: axis-fifo: convert bindings to YAML and fix style
Date: Fri, 27 Feb 2026 15:10:42 -0300
Message-ID: <20260227181051.36207-1-lucas.fariamo08@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260227-unboxed-customary-7ce6eda1858c@spud>
References: <20260227-unboxed-customary-7ce6eda1858c@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-269393-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_TO(0.00)[linuxfoundation.org,kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[lucasfariamo08@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B998D1BBDD7
X-Rspamd-Action: no action

This series converts the Xilinx AXI-Stream FIFO bindings from legacy
text format to a modern YAML json-schema. Additionally, it fixes
coding style issues in the driver and updates it to match the new
binding's boolean properties.

Changes since v1:
- Converted xlnx,use-rx-data and xlnx,use-tx-data to booleans in the
  YAML schema and the driver code.
- Removed the rigid 32-bit data width check in the driver to better
  align with hardware description principles.
- Renamed the example node to "dma-controller" and reordered the 
  'reg' property.
- Deleted the legacy text binding file that was replaced by the YAML 
  schema.
- Fixed a checkpatch.pl alignment warning.

Lucas Faria Mendes (3):
  staging: axis-fifo: fix alignment to match open parenthesis
  dt-bindings: misc: xlnx,axi-fifo-mm-s: convert to json-schema
  staging: axis-fifo: fix alignment and handle boolean properties

 .../bindings/misc/xlnx,axi-fifo-mm-s.yaml     | 91 ++++++++++++++++++
 drivers/staging/axis-fifo/axis-fifo.c         | 58 +++--------
 drivers/staging/axis-fifo/axis-fifo.txt       | 96 -------------------
 3 files changed, 106 insertions(+), 139 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
 delete mode 100644 drivers/staging/axis-fifo/axis-fifo.txt

-- 
2.53.0


