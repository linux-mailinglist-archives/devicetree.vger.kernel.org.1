Return-Path: <devicetree+bounces-263025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBt4CAWdhGmI3wMAu9opvQ
	(envelope-from <devicetree+bounces-263025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:37:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B546EF35C5
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:37:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E081300EF93
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 13:35:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C322225397;
	Thu,  5 Feb 2026 13:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fGt7iyE4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD3B21CC51
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 13:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770298520; cv=none; b=Fd2Dvo63jwhdvictDQHk9EcIM7hWZ6xBQ0M73DYgCmdFkWfYE8G9BgJFABMzfQs82DM4rOwdtgVHm2vFkuDZ51+HUycKiLYOSCdXXfEeYxXnzy2536XILnLqYSQz+7V8yG2w6jKGO9NWcnToY6uiEBigtpVgRlsEnmgS05y4vvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770298520; c=relaxed/simple;
	bh=7nwci2u+IH2SMmQlelunRUWvLZuWXAaGB2sO487v3e8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=u81rUeL6v26cgxqbu6oTU2m+X0ua7O3Ee45TWKdqB+HzoShOyHc36F2aDBk12EnUn0ACXTofXxfWZPt0TdHRfRfHgNxmrS/36xdvZQBJPa25/AqKh+rzTT0bhLM7eHYkZUkVILP3aKum6RcQrX+oHq/XktWBsJ3HQ1SI0HVX6mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fGt7iyE4; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-82418b0178cso609115b3a.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 05:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770298519; x=1770903319; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZGuF+Gd9iYH6P0b+NtAvir3zebICrprEYigd8LlPHKM=;
        b=fGt7iyE4rOzNRaleyDkyaHw/Lml6tEyXiLvqlPLgSOgaGlba++oFSgN9tHXN+XpFiq
         TnMPwE/EIqvL3cOnYwo4pZ8BC7EuUf78Rwce9OTSVyYeFDUoDzyi2cdc35ZA+DvpgOCr
         3cOuNMeqJcgspSvBNj7VHEyvu3ywmdOyLSswCEkg2nybuJXI89Jw6Jc3bQDYKlZ4AamL
         qcYa3wBBGp26edHNqpZ4ApagM//fGv5KX7hN5738iREjQLLrnFvIIVHFcSexyog6k2V8
         IJHc7z6FNzf+GmF1YK5M130XoIj/z7m63HVzqOgxJ3plwsppg7dMaLRSeR5BSMWGwA4E
         KT0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770298519; x=1770903319;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZGuF+Gd9iYH6P0b+NtAvir3zebICrprEYigd8LlPHKM=;
        b=m7LaM/V2IDFNfHh3qjZh1cX1O673nlHtyONdRDgTw4ZaigDy8Y+2zQgjwBIdXaDauM
         +at9JYnujf36JcIjLdaa10/kbsX39lP1tjDUW4r/8/Pvcs0IBWDuz0l2+zQVwS+83doB
         ywfPcNb6k3+xytYeUiFiz6X60tSoygqB5ev/No/p8OyS1whjTlIvWFaejsNVj4dtWgMm
         7rFsCujLfx0+bYgMdpuZPkdE0OFqQcn7JBW0yLqQgA5JJK7geUYXAxjezhFHcq3Z1cZT
         Y3jicipCC2nZoN5AMfxpxH6bpl/7AwcbYKYbWdYuomhhAkiow8XBFOS1wGyrsTE2JGjq
         sRJg==
X-Forwarded-Encrypted: i=1; AJvYcCUT1CvY+Z5UxnbrPo05VkcwXUMqD2KIeatmYJMVgprE4OR1dVgQu5IObC9e6ei+Tb+I15Rneg3a/mJS@vger.kernel.org
X-Gm-Message-State: AOJu0YzRdEoJap31yS0L9kv2M8TdG9gATF95SQqMb2UsgUQ2KKLrtRAj
	bdCO0xOrpH3XF1nM7jt7mls7L/9dEvm+LWGGuhF+GSkWHITX9k9AterH
X-Gm-Gg: AZuq6aJXEwN4GMgPT0l20/oM3gTJFfsxtcpRtZJcDr7ZIrfH4AFeL8MXkHyVsBi8rZ4
	85H9A/GoeypX+vQGj5SdAccBXCdWsRL/gO9acjIZLcjZJUVS2DqHljIo+5RahjzNYnsCJ7OntA0
	FKKsdwCm9viNz/gEF8xX+MTK7kNTaQyzrlnlcMvTyMSEDTwp/yzK0qM1kVQMLi9rSbpFStIhtsO
	4fiASs0x8DhEZvAkQCmb8KUCYxMaEOtp0lSMBaJOX4/1i+PCOB8SX/e32i0vv86phnapV/mZFVU
	MwIBVXkMsXHgiNxP8d6lHiIwKq68Wnry6nfz1ibEgJZcHVE7ENOthjvYOyAz6LMG+FCw2yV+8sF
	eIz4iV5eeFJiQ/DhViOtoSM/oI/0AlboGfqhhYZEqqR89Jj2P+FwqXNnoJ04EGK3pgRfE+vX3oX
	kC/IL88Nk=
X-Received: by 2002:a05:6a21:6194:b0:38d:e6f8:fd97 with SMTP id adf61e73a8af0-393725ddc5amr5941011637.76.1770298519160;
        Thu, 05 Feb 2026 05:35:19 -0800 (PST)
Received: from [127.0.1.1] ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a933850f41sm57760505ad.7.2026.02.05.05.35.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 05:35:18 -0800 (PST)
From: Colin Huang <u8813345@gmail.com>
Subject: [PATCH 0/3] Add support for Delta Q54SN120A1 and Q54SW120A7
Date: Thu, 05 Feb 2026 21:34:34 +0800
Message-Id: <20260205-add-q54sn120a1-q54q54sw120a7-v1-0-09061ecacfc7@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGqchGkC/x3MTQqEMAxA4atI1hbS4A96FXERp+mYTdUWVBDvP
 u3s3rd5DySJKgnG6oEopybdQoatK/isHL5i1GUDIXVI2Bp2zhxtk4IlZFuy6CrqjedmoKUTxt5
 DXuxRvN7//TS/7w/mFfpBbgAAAA==
X-Change-ID: 20260205-add-q54sn120a1-q54q54sw120a7-fa492b6ea07f
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Colin.Huang2@amd.com, 
 Carl.Lee@amd.com, Peter.Shen@amd.com, Colin Huang <u8813345@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770298516; l=1082;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=7nwci2u+IH2SMmQlelunRUWvLZuWXAaGB2sO487v3e8=;
 b=cGbfvPvhCiFhXRfQYxNUQyPQsB6zNtB6NPDRy8x2bQ+kjeZ3X2rCzr7McXlxhOltee2F4No6X
 oVwLiD//TrUB8COwWAwyVskAcgmHy5lyWrZPuaynyFxvNaDy8w9vbOR
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
	TAGGED_FROM(0.00)[bounces-263025-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: B546EF35C5
X-Rspamd-Action: no action

This patch series adds support for the Delta Q54SN120A1 and Q54SW120A7
1/4-brick DC/DC power modules with PMBus capability.

Patch 1 adds driver support under hwmon pmbus.
Patch 2 updates the devicetree trivial-devices list.
Patch 3 updates the hwmon documentation index.

These changes have been tested with both modules on hardware platforms
supporting PMBus over I2C.

Signed-off-by: Colin Huang <u8813345@gmail.com>
---
Colin Huang (3):
      hwmon: (pmbus) Add Delta Q54SN120A1 Q54SW120A7 driver
      dt-bindings: trivial-devices: Add Delta Q54SN120A1 and Q54SW120A7
      docs: hwmon: Add Q54SN120A1 and Q54SW120A7 to index

 .../devicetree/bindings/trivial-devices.yaml       |  4 ++
 Documentation/hwmon/index.rst                      |  2 +
 drivers/hwmon/pmbus/q54sj108a2.c                   | 47 ++++++++++++++++++++--
 3 files changed, 49 insertions(+), 4 deletions(-)
---
base-commit: 18f7fcd5e69a04df57b563360b88be72471d6b62
change-id: 20260205-add-q54sn120a1-q54q54sw120a7-fa492b6ea07f

Best regards,
-- 
Colin Huang <u8813345@gmail.com>


