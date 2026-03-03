Return-Path: <devicetree+bounces-270452-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGIaEpLTpmnHWgAAu9opvQ
	(envelope-from <devicetree+bounces-270452-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 13:26:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB371EF636
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 13:26:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04DCA31425EF
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 12:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82CB633EB1A;
	Tue,  3 Mar 2026 12:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kUGy/I1b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754AB33EAE6
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 12:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772539210; cv=none; b=RnxoRymckKvWrIpwG7FhlS4zUHfTp1BrWxXYd8Jgg5fbU5gcy4OtuCvMHso/5MThgXefgsgXL96xUmDFH65mG5hZlglowLlpjAaJcfs83wfp89VDm43NAtB+aywqgWcRt3y8kXnh8ztMsw8gPabDb3j65vuIy8zkhVCi7y2+txs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772539210; c=relaxed/simple;
	bh=O8cf68GkW+hqwpQbTNaNjNMcjUioII8ZtMH/+mgYr9A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GjRDYEtE0Wd1MXy4Od7e9gCInO3FfUroiqsYh0Q48Z1Qd/5lA3RmzsNL1+aJ3EMNu2+Xo6O2tiMEoTf+CgAmr93Sog5Sho7bSr23yGJFgFFo7fGBCwgijuMuXUoPc6PIN2BEaipLzIt21Qp2AEEA0ZehwXVAQ15mnugCNF6MqDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kUGy/I1b; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a9296b3926so41571735ad.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 04:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772539209; x=1773144009; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zgVtJv8S4lBCPvD7Q0WmyaU6QUmtpOkvb/EmP3pStwo=;
        b=kUGy/I1bGceN/53qTp+ceWwu4iGjdT8UN2OfLr1b6FjSvLvRY7NRAaMWhPbZid5ozr
         fTyH9q/iCZnGRLDdT8pi9QCIW5pzkL/CsvGR0OWktzUYv+AqtHjTTmjtwJz8NX2Ps2jU
         Wnh0ZnQo3mivPH2DwKZHUP2yaAvm/lLBEHO5OlWE6iRwMkaYqV4epUGf2Rgoz/9xeKKG
         ME5I9hPacgRaV9/sJz6EJF2rBJYbPn4lyU52kOu46HV/m1LRA8knjSpwhZlUZZq4QQ2L
         eoMCuYWOv7o/9O5F8jCbwE2I0b9SZ2Xu2m/Lgcz5XoNXc7/9onVYec35VjU3eeynTXep
         gfnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772539209; x=1773144009;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zgVtJv8S4lBCPvD7Q0WmyaU6QUmtpOkvb/EmP3pStwo=;
        b=Tq79O6xqZYwu9fEfN9Bk1gxA809xxxxmfzDtYrcMZj5JHEAZyXGBYVQagbqbWyhyjc
         VXLlonudBaKwEnT6TujE/3j+iz8Y/iQNJ+vt+aQHOdX/swiIsnG9A502jJE50YzXT9Nk
         oyXf7tnj7UXRsepbacAbPI2EMHZuoqQj+8Pky2xWn2+NJb4DeB0+8cLOfJsXezJcKPsY
         LcVISsO4l6t8BZFCh8KY4QikanJ9TCAee0+zQ/zBJG91f6ieEcdN9Hfcz6BQU+LTAX9H
         4ZBSZxrQlTdkFzaDUhJ5dP4wAiVnQYAN2S1e+vA+XsHCzQUwM50Zm6TvaTi55sWj4888
         I4NA==
X-Forwarded-Encrypted: i=1; AJvYcCWMA6yznBNxaS5EBvDMGbykoHh3rq3HbJjADm7xV0d2zKHiIxyP5hJUQEciXoioD/g3Bm1NZ6ni6yds@vger.kernel.org
X-Gm-Message-State: AOJu0YyJsZwgSUcRxHX5GUhY4p7XvAyL7xq0NbcjV78lyk7MeLOknbtj
	UbkBmm0WNVgBYJce6+Bk/wXr9IBTA7fssPZCqX0TWiTcpt0OlkLycxbJ
X-Gm-Gg: ATEYQzy2aCIdgDY/QZu47Xr7MMG8BH93blNV7Jja+hbwVQuHppd9D08dzCSbIz2DCIL
	aP4klHTDnhouBLqW7WqW2PuV1AbE/NnC6ZDJBfPhOIx6S5cxBSdaO2NU7diGPnc60bg9pSOAfjp
	Gd7tupLTituv/praFGo81vqJ8wZmUvm4hd90Xv+D1dak97VeeUr7+I/5tU+VvYrBwC7L7Eq0ikZ
	I7i68OuTDtkWhkOqilIexn4lmqozOb3Saz/2+5atHIb7XIRraA/1a0FlFTYtTDs0qpu9nT7CVU7
	WSqIWZwKjn8JCcKFAl04koYrfiih30lHAu6bew1l/mA1+ll9ZW9g0B92hfYOB2L1RLY06mfJzwX
	7WOBkBlIfLIs4livA6zkaY73Anom6L3A4nVHhlZy5YlDRp8BTtwtZmRfguBA2O6YVf6yBdwI/1p
	5FkE2MCjk4qutResYx3W2nNSzoEJuX
X-Received: by 2002:a17:902:da8d:b0:2ae:5848:baf0 with SMTP id d9443c01a7336-2ae5848bcc4mr51339955ad.2.1772539208613;
        Tue, 03 Mar 2026 04:00:08 -0800 (PST)
Received: from nuvole ([144.202.86.13])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae541358d4sm52570345ad.75.2026.03.03.03.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 04:00:08 -0800 (PST)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <lumag@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH 0/2] drm/panel: Add Himax HX83121A panel driver
Date: Tue,  3 Mar 2026 19:57:28 +0800
Message-ID: <20260303115730.9580-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: DCB371EF636
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-270452-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add a driver for panels using the Himax HX83121A Display Driver IC,
including support for the BOE/CSOT PPC357DB1-4, found in HUAWEI
Matebook E Go series (Gaokun2/3).

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
base-commit: d517cb8cea012f43b069617fc8179b45404f8018
---
Pengyu Luo (2):
  dt-bindings: display: panel: Add Himax HX83121A
  drm/panel: Add Himax HX83121A panel driver

 .../display/panel/himax,hx83121a.yaml         |  87 ++
 drivers/gpu/drm/panel/Kconfig                 |  11 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-himax-hx83121a.c  | 752 ++++++++++++++++++
 4 files changed, 851 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-himax-hx83121a.c

-- 
2.53.0


