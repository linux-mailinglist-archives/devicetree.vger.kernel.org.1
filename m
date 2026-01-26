Return-Path: <devicetree+bounces-259496-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGgeCu1qd2nCfQEAu9opvQ
	(envelope-from <devicetree+bounces-259496-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:23:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F72688C7C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:23:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2ADA5305A433
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:22:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 086D3338593;
	Mon, 26 Jan 2026 13:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZJumv6v0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4A73385B3
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769433733; cv=none; b=WCZ2kl01pgqnBXIQgQER+qITVCvTagnPKg7OGTu9o0SLWucNm1ktAFIC8vCAD6wroKaFrF1L6+6Sf27ArpRpuAW6WaFGxZ9jwkDQBXxUFYR5w4asGkojLu5sy7JXWHNj/ImA9CJAN5VPQbHCFIpW3DjhmKRJevdSm7g3noPp/0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769433733; c=relaxed/simple;
	bh=t3vbGuZOz8Y3xaCGdPdF+heeK9+ps92UkQe57RdbqNk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oU0ZigKHTCNqR1UimXEL7ufmpSmbHie4CpzVZ18mLv9Kbl5dpPYlzfPr8rvgawYgCYa0K+y9OLoWBMA8DsLrdy0O6SZQwSJGl6F2A9s+i0gf8hW2pGBUS+Re3bhPCmiXLPzKEFhETlgSJ3V+YljE9yheqx0Ybq4y00CmeN0cLCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZJumv6v0; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-c2af7d09533so2853938a12.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 05:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769433730; x=1770038530; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HXhQ27ymTAnKQWjmR3yBMys+DOnk7gmy+F3C+Z18smE=;
        b=ZJumv6v0z8ni+hCSDHyCwpciOX4RO1emSxBY8Abr+Pl3mOaGTvSDAQyjKBriOXwiWP
         N0dbqKIFcw0VaA3jyxZGQ/OZ6RESAaO8w6BzraT4xZv/Or9ZPocw9a6NKt2kLOVth73C
         TjTTCcPRKchx6LbFJceysABsXTsQhKXcvQXGgJFYIFvRVFt1UAYJnQds31mEmAANEHVn
         lzHeejBbsL/XbXpdfAo0Gb3SspGUWYeRt0Md1L5Q8HXNjY2MfA7eE7aVJbBA+OHV8/3v
         MeBwnM2XI98Vuou8cWqm+FKyVTnHQQRuHTkU7vKMyUio7lBXjQ/KXV579tFoXDC5bSyg
         scIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769433730; x=1770038530;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HXhQ27ymTAnKQWjmR3yBMys+DOnk7gmy+F3C+Z18smE=;
        b=umDeQ/Lt4/F66OBthQA7mlHxI+K9PYJ85BjvL5F+MvUdNPsaIy5khccmyxWqlObMDb
         rxAQX3U7yp3wmX0HqUubmS+9ljf/thuyy5XK7FMmbuHviNT3zPLl7jH2YTXN127Z6TBJ
         fxJTrfoBBfmvu3yJlAhEFn44fxHJsO3IL1RTICO7XGTjcC310MjiNQ4LrKvV2Zlcf1ok
         FTnbJZEZsp50h8GYfOaKX4z7Pw31ycHjRq/ChHODxi4X0xT77elh+F7MyqBVRnAIO+7H
         nducCUAObEIt2JuIpFRSndgiqtwCWOZ/uBs8Br7PikgjPiZtuKQXoSJNqebu/xdE/WYg
         MeAA==
X-Forwarded-Encrypted: i=1; AJvYcCUp/9SycqtPTBJwYNp3WvV60DejpDGMg8dBVUraL4lFSgEbDAUnM6jWYqqrYfH83hHNancXSB2BXe8u@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi2GL6Z+OHuG1pQtr7jGgbIcjeAa6GnS3FYkrDUYlsGybDOvWE
	B7qWf34IrZ7pGT1LQV+MyHkhcuvHnhAJzfXoInFENOI8emuslYpWcFnL
X-Gm-Gg: AZuq6aJIPVI/VP/F7+K9dRJqBsdnp3F8D+KeZEf/1zXoHMEQcVgjM/U/TQxPjdqutZB
	Skap1kt7Q+BDYVadh74d5qq+LbTz0AKkZgGmNzDV8IejduwDe+Y+Y04MjxESjzVhjcMXEezFlbq
	YhRe6VJ4FNrDlVh29yO2kpVtfay3pWNXnP9vnPkKth0l/TfvMy+Ac/XuI9dfhmBtEY75nnyuxoc
	Q1BHO21FwXiZ+XeayiiRTC4zKsBtakqtIOG2ofDGfzb3t/gB2PdRWAFlezDT/a05G0SxDI4N8ze
	UrYfjBlCfz3zmKCrebwHkm0eA0AwR3BN0ztiMNG58AFIGBkj6FP1UcsuNYqCiXORCTGLayIY1Gx
	ilEcumcE1mU9Gj/E6cs8viP98/soyHrxcumA9OLK44SLBhRtkHiJ4hlh4cwatqAd7y4EkGDgkrc
	DHibsRkDRYVnqcZ3afWgJR397pk3vIb32p7MLDZmxqtmS8
X-Received: by 2002:a17:902:dacc:b0:2a0:9e9d:e8cf with SMTP id d9443c01a7336-2a845332006mr40823815ad.57.1769433730471;
        Mon, 26 Jan 2026 05:22:10 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a802daa65fsm90602575ad.12.2026.01.26.05.22.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 05:22:09 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Subject: [PATCH 0/2] dt-bindings: usb: Convert TI OMAP MUSB OTG controller
 and DWC3 USB Glue to DT schema
Date: Mon, 26 Jan 2026 13:22:03 +0000
Message-Id: <20260126-ti-usb-v1-0-2855c129eb6d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHtqd2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQwNL3ZJM3dLiJF3LlDQz42Tz1FRDUyMloOKCotS0zAqwQdGxtbUAf0N
 59FgAAAA=
X-Change-ID: 20260109-ti-usb-9df63c7ee152
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@ti.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259496-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7F72688C7C
X-Rspamd-Action: no action

This series converts the old text-based DeviceTree bindings for TI OMAP
MUSB OTG controller and TI DWC3 USB glue to modern JSON-schema (YAML) format.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
Charan Pedumuru (2):
      dt-bindings: usb: ti,omap4-musb: convert to DT schema
      dt-bindings: usb: ti,dwc3: convert to DT schema

 Documentation/devicetree/bindings/usb/omap-usb.txt |  80 -------------
 Documentation/devicetree/bindings/usb/ti,dwc3.yaml | 112 +++++++++++++++++
 .../devicetree/bindings/usb/ti,omap4-musb.yaml     | 133 +++++++++++++++++++++
 3 files changed, 245 insertions(+), 80 deletions(-)
---
base-commit: f417b7ffcbef7d76b0d8860518f50dae0e7e5eda
change-id: 20260109-ti-usb-9df63c7ee152

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>


