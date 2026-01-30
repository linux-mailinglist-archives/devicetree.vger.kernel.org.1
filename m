Return-Path: <devicetree+bounces-261232-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHHjK+i0fGm7OQIAu9opvQ
	(envelope-from <devicetree+bounces-261232-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:40:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D78BB3CA
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:40:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 67D8E300E5D2
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:40:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB257308F1A;
	Fri, 30 Jan 2026 13:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DoFJX6i2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA482D8DC8
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769780441; cv=none; b=uGAXQQVLGAeBR33Mz8HJh6J8ViIwqJZrnWdJMy/CLb06aR2FfucLyNsqR+zrH1MNQIlCH6II+rF/T0/TEosk0/MfkmJ5n7bePWqMWrRHYlkOTXcm3IXCzbfD1RMHA6D45d/K8zNeAVSwEgm0oXR/zXT8Yv57K/xTKPbcrTvFyDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769780441; c=relaxed/simple;
	bh=3/VKG5VfTqAMqvbMjOT0nIzf3Pu5Y9mcWf3O5q6vcuk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qebirEtdMaaGTMEi8zcQGO/CRtCrkSpDEIsMvqxoXjmxzGQto2bTLLeiQtOFhmjAQlYDTIqgxZNj9BheHfW5ySYzzGkr0JrGbvfLNo01rizEt3/S6rGTVshsK3ZU001bR2UFayCUbB7PZLW/20Zrv1iP7VA1JQCXNASX4HXlzV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DoFJX6i2; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-47ee07570deso18194745e9.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 05:40:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769780439; x=1770385239; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OYwugTIJLc3eRCqiWoe8oZZ3VXR4XqUFabNpPOLivpg=;
        b=DoFJX6i23Ij2tOxEakJOONpGKulA6w4V/fXTeWy3tgfhV15raDFNux+r0a8QX98F3a
         fOkl4pD+4Ol4RikSvpeYSk/croAL7nHI+v0i2jT6B0mF4Kt97eYX0PLUEClU2umbOk3X
         vXlsOKKxVPn20oRhGIBzgGGDdAy5TwCJGdOGEN1UdYQjdQMEQGO5Fu62aBCqRQ2gYQMa
         yYCimEeSkA5BL7cld6+cNTiVFv5wIHqIA0+bXvCiORX7zN2hUX8+IzX+zJ+wVVXlhXqN
         hMTggCaJa6v7bQskZg/3hUTstuN092FojkqUOQfJJOcfINFJdxUAoKrSrRp9EOfa7tc7
         3FWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769780439; x=1770385239;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OYwugTIJLc3eRCqiWoe8oZZ3VXR4XqUFabNpPOLivpg=;
        b=E2b5rcGeQOQQc0ORA+QCpuGNl0IYsqsmtq/zsQbRx0TRCjuBDzZVLPixb+f41+Fa6w
         0GmAPovvjS/D/X5tXzk+O84lsh38Je8lu7RHDIfHqGBu2zsZ0hAJvButaXEmfMc0tEje
         cDZcWtQaJbbkD0SMMfEGnOeld1Uix7+oBXx0Fe3jvfys984KuIRllrx7srSfCuuVeuYV
         v8+T6sHHhXitY+NVCxHGXUklrD8IIFmlFWvOFCvYenXza8z5KIpIHOF6mvGeOEu9h5kL
         JQr1iHmnpucCR82ArVVbE5Y5vhsPQWAw+gM5yMW5N8XP+BiD4cjOmeLUdb3Ko5ySdZ/t
         uOVA==
X-Forwarded-Encrypted: i=1; AJvYcCUd2i2fDFiJupPSs9J4IWWihErXdWs7Vwy7HT7N52+hKZ+cX85Z/ScaIrgmTVP4e9eUnpo0fvEngKzi@vger.kernel.org
X-Gm-Message-State: AOJu0YzSloauOP5qJWc1ZZoN+607PqB7QK4Y+x+ssvTvenZnZ4KgzE2r
	JAqw0baFROLH0au020bNJaKcFC1TJXhvPlBfhrV5oChgHHk5+sgdt0xD
X-Gm-Gg: AZuq6aIGQ6nNg0cChHG9eTKF7e5eZKNp3mf9z3NtjOQaT+ZGAC/LMwUpEWLNQi6mZX4
	4uf2K9Jm9SqLyuW6UcjBY+saYT/Qm1LTeLFlnT9fh0UOcCeVVKKu7ocxGq94NQAsYWxkeIokKrO
	lPlzR6FG0/XpM7sDdCuqj+nmjdb+q9SdiLDaZUvRlRKHZbrE85u5dYRGa9FOJ9LY03axWI/62Va
	ZjZqNlpdFYMrJ3LESgOAcodmRYMRSjuYJsxSJSenJaXftak6n6Qz46QM1cJQ6sQhZZkQtbPcymH
	bXkaC1tIbW+sPX/Yb/YjIGn8AnYy64rOiFjmyHCb8mB0KVRiz3Skj4IH5XFZC5kQhgWG2umxEfj
	3O57UXouOl9uw23R5gaHaLFD6pRsOaL3YOT6IAihh03Bzem0RY2EXZbJqXuZUUXeGIY5nSYOHCP
	75
X-Received: by 2002:a05:600c:4f09:b0:477:97c7:9be7 with SMTP id 5b1f17b1804b1-482db45257amr36147095e9.1.1769780438670;
        Fri, 30 Jan 2026 05:40:38 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806cd8fadfsm199106075e9.0.2026.01.30.05.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 05:40:38 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Sebastian Reichel <sre@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] power: supply: cpcap-battery: pass static battery cell data from device tree
Date: Fri, 30 Jan 2026 15:40:19 +0200
Message-ID: <20260130134021.353688-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,atomide.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261232-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 29D78BB3CA
X-Rspamd-Action: no action

Add an option to populate battery cell properties from the device tree if
the driver cannot access the battery's NVMEM.

Svyatoslav Ryhel (2):
  dt-bindings: power: supply: cpcap-battery: document monitored-battery
    property
  power: supply: cpcap-battery: pass static battery cell data from
    device tree

 .../bindings/power/supply/cpcap-battery.yaml  |  1 +
 drivers/power/supply/cpcap-battery.c          | 27 +++++++++++++++++++
 2 files changed, 28 insertions(+)

-- 
2.51.0


