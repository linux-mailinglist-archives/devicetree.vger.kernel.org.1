Return-Path: <devicetree+bounces-276252-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHQmErMcuGlYZAEAu9opvQ
	(envelope-from <devicetree+bounces-276252-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:07:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C7C29BFF8
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:07:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A84F5302E789
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:03:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54D53191D3;
	Mon, 16 Mar 2026 15:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="nbvvj7PX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f73.google.com (mail-dl1-f73.google.com [74.125.82.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC8730214D
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 15:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773673386; cv=none; b=RvwjGY736GH84U9WhcdI+N8pfyJczL9NPHFhrP4TkFnJJRqGc5CRvROBH7BAYjhTLu7fQgJMbBCc+6BxZHwtDwFvgf4VUoyuZKCn3OYDjkS+C3N8mn2ZdTXMh+yDO6x9hIySUQ9f+BOZRox4klAJWRomHJne284IiN2kTT9i6ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773673386; c=relaxed/simple;
	bh=SMl3Wrxpjqp4zhVjwehql/YPr5mXgBPXeb73M3/+5uw=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=dfXDuDhEwFy6oWs8Z1I1ADeTiXTlGE0cpNQUzrd2Q9Vc3XF78rrDq04msygsb1zLp/CJ6Q/PyFZK3nugqa5Q1ehhXLjvMgqjgzMrXlqcvZn1qe0rolxW/E0V+PXQd1tZJN3xeaJBupOlw3wYJiYea3j9d4QN77XgebVOJJBxVUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--badhri.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=nbvvj7PX; arc=none smtp.client-ip=74.125.82.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--badhri.bounces.google.com
Received: by mail-dl1-f73.google.com with SMTP id a92af1059eb24-128d0a51897so90859006c88.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1773673385; x=1774278185; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1mIGKHhFEp4UVK+eulXpjau2QaiKJ+LkKKD5Vd3/77g=;
        b=nbvvj7PXhddDv96qWRhlnGwFStf14HB5sXtVq2h4vTsYow6ve4ldFshARGhhRv+TQj
         x+GCKt6ZPeAOU4T4VNSMpvTCWlMkkQ7EizbHOG7zFevMip2gzH7i0f52Zpp6626BT5Cn
         l5uqnAGrnZ6zOl1Sf4oeaubyph/o/RjXcwVOWFQuFfsvzZvxYG+BFkr6Q9IhhtVNEciK
         tFn/3khq1wsePGjYyVlM1MKKxfKnsljl2pOItZFqQlHaNrwQ0jIieSz335RBFxoAhAMw
         AH7HJ2Xi7PAF9TEnRd9rUI7u2l60/MEz0O8jZy7ZNo70e3lvSYuxZU385AA0n0FuTyQ6
         5Sow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773673385; x=1774278185;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1mIGKHhFEp4UVK+eulXpjau2QaiKJ+LkKKD5Vd3/77g=;
        b=LIFpUbNjgZRHJKj2NUsx+Ob5p2f9LO3IKEcY5+FiSvyQLU5TLelJ5bvIDxoMJdCQ8y
         P1jDpOvYaAPxHE6X7sV3GEygyrAEc7T8FvuNLicFkV0F6RxPvX+JzRt3wmpARWcWAPHP
         MV4XrKR01qdC8c0iv+cD9Id5hyMSDrtn6gzrnvJ4PB74a4VqZuQ4RVtjMq1Qwb7YI53R
         spXVCqIjnLWdAbHRQgBIc/sX+ezi9aT4FEgwAtGyljigEnZBrspqS3soJ7HRBE0J7T31
         YLCFiCG6r03cG63fE6m5ttRWLwLrLItD4RrRHVd4cvq2XY+n6TZzIzEbmQ8EnxL4km1C
         8Spw==
X-Gm-Message-State: AOJu0Ywk39sMutYA0SqE298mjrltxsdPoedMBBSPPurnbKwcK3vHXUUs
	TvmCXDrdknZ5jJPciXG7Sg5yDd/XDf0++4QHYGOTsRFfy/vR2sknng6M/vVL8vMGdFk3t5LN91f
	5DQncbQ==
X-Received: from dlbtu10.prod.google.com ([2002:a05:7022:3c0a:b0:128:cffb:50d7])
 (user=badhri job=prod-delivery.src-stubby-dispatcher) by 2002:a05:7022:6b98:b0:124:8d7d:2d63
 with SMTP id a92af1059eb24-128f3e24bb3mr6179621c88.35.1773673384259; Mon, 16
 Mar 2026 08:03:04 -0700 (PDT)
Date: Mon, 16 Mar 2026 15:02:58 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.53.0.851.ga537e3e6e9-goog
Message-ID: <20260316150301.3892223-1-badhri@google.com>
Subject: [PATCH v2 0/3] Add support for AVS in TCPM
From: Badhri Jagan Sridharan <badhri@google.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Sebastian Reichel <sre@kernel.org>, 
	Badhri Jagan Sridharan <badhri@google.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Amit Sunil Dhamne <amitsd@google.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276252-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E5C7C29BFF8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

To facilitate optimum charging USB_PD_R3_2 introduced a SPR AVS
(Standard Power Range Adjustable Voltage Supply) which is a power supply
mode operating within the Standard Power Range (up to 100W). It allows a
Source to offer an output voltage that can be adjusted by the Sink in
fine increments (100mV) within a defined range.

Unlike the Programmable Power Supply (PPS), SPR AVS does not support a
programmable current limit (Current Limit Mode). Instead, it functions
similarly to a Fixed Supply where the voltage is adjustable; the Sink
is responsible for ensuring it does not draw more current than negotiated.

This patch series enables sink to enable and negotiate SPR AVS with an
SPR AVS capable PD source. This allows gs101 to negotiate SPR AVS with
a SPR AVS compatible USB PD port partner. The DTS changes for gs101
will be sent as a separate patch while marking this topic as a
dependency.

This patch series also depends on the "Introduce Sink Cap Extended AMS"
introduced by Amit Sunil Dhamne as it introduces the SPR AVS voltage
tier constants which this patch series relies on.

Depends-on: https://lore.kernel.org/lkml/20260223-skedb-v2-0-60675765bc7e@google.com/
---
Changes in v2:
- Updated Documentation/ABI/testing/sysfs-class-power to address
  Sebastian Reichel's comments
- Added Acked-by tag for patch 3 and patch 1.
- Rebased on top of usb-next which dropped prerequisite-patch-id tags as
  Depends-on patch is now part of usb-next

Link to v1: https://lore.kernel.org/lkml/20260226055311.2591357-1-badhri@google.com/
---
Badhri Jagan Sridharan (3):
  dt-bindings: connector: Add SPR AVS Sink APDO definitions
  power: supply: Add PD SPR AVS support to USB type enum
  tcpm: Implement sink support for PD SPR AVS negotiation

 Documentation/ABI/testing/sysfs-class-power   |   3 +-
 .../bindings/connector/usb-connector.yaml     |   5 +-
 drivers/power/supply/power_supply_sysfs.c     |   2 +
 drivers/usb/typec/tcpm/tcpm.c                 | 611 +++++++++++++++---
 include/dt-bindings/usb/pd.h                  |  18 +
 include/linux/power_supply.h                  |   3 +
 include/linux/usb/pd.h                        |  32 +-
 include/linux/usb/tcpm.h                      |   2 +-
 8 files changed, 565 insertions(+), 111 deletions(-)


base-commit: de6c925db978004703944585e9dd57d58aba0fac
-- 
2.53.0.851.ga537e3e6e9-goog


