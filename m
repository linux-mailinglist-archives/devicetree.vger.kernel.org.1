Return-Path: <devicetree+bounces-266809-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KImDEeD9l2lN/AIAu9opvQ
	(envelope-from <devicetree+bounces-266809-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 07:23:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDEE164EF7
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 07:23:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 335C2302A6F7
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 06:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6B8F32FA30;
	Fri, 20 Feb 2026 06:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i5TbpPQ4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 823C42F8BEE
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771568591; cv=none; b=t81GZtyXufDhTLq/P9drdY66gM9u0GajNEGpyZW4KiM2WtKTANIcTq7phiwmm3FXUSfWICxK5c0yc6QhBXVHcQikCKDmChj5XlJ/dOpzhv4Lo91ku7ug45LHySUw1Y6ZnEzKdIcYY2owRfqqsRbyKFRM8T6rpJpVxDMwQUcwC8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771568591; c=relaxed/simple;
	bh=jGxXk46pFgaVzkygsdpMgVwvNmqmhVGMHUcNacup3+I=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DnuwHaRCG0K0YvpZknuRdbxwO/5AHv4GYaC2eFWwtMRkd+vRI4KxiKvzr6pso82EhzBQ3rnj42U/LcN9o1mEoFlP3es/R4rIEX76TOJXSFdhEEv5MMExblroqUNfVjFIyCIdID3FLh8MZhe73mmY+CuGYDdRw5b+VZ7eLqua4Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i5TbpPQ4; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-8cb5138df1aso177249785a.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 22:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771568588; x=1772173388; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CKdWjeKFseRtZP/qjhvaNFaOrIyblPhEnu6V6lWcBIU=;
        b=i5TbpPQ4vG8WnlN3EDnOM/H8pTbYl/5OgT1M/wc5Tvd3ltixJFuKX0uw3BNSJoFOL0
         P9hv0hhs7LG3rb+eHBDFq+Uqf23LsjAW70Zrx0mcJH1AtswN3gzf+fmlvvhb/bqdMZJu
         VD67mRbId4+aN8CPt2v6cHLA0XZouFn95UL5IrPZEMZ6s4/9WujaISXWbq/zv/uo5/u2
         A+zst7VhZmfIApRCi9VkB3aGeQzx3iJ/d+3YZzPNTzmjOJm084nNiV2CP/Mba4KiPmVL
         7FVLAqQoQagfzFqcPGALVHmUl2S7qC8aRDuN6UXo8l/H1Q63zvC5ZOpeOmpkUuTbM/Ab
         XDWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771568588; x=1772173388;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CKdWjeKFseRtZP/qjhvaNFaOrIyblPhEnu6V6lWcBIU=;
        b=Pc7OlFGb1gbq621CXvz1KBWm7yaw6ILxb7HMXmrqJ6hIY1xr6encYnQpjN8DEDQEtG
         nhCNezmCys2ddtxM3bD6HjpQfxuXQDhWkKIrhJLZyX2vTnRY0zH0FkQHzbTYLu+6nr8x
         205V5HZmAz7UUbgpifGqbkNZnKXMU+aIoXr3CC2mrQn4hgYNs8ByF0Hvtk7YQGr1xP+V
         YufPWqj2Ynv/W4dAO2Rz7UegEk4hDwr3tbcaWnbX7VWHhRPk9Tn+k4KjqJtlRyiEY3zU
         rxRmxA7PBxNhQlI820UaPMQ6HmgBEVWR24aOLDkN/PGzwo0d94/8bmhQjme/76fxA2BU
         mtKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFfw+qEOfuC7hnSJNqVuAGNtXP+3+5AO0vj3M4EXojl2FTvQJj9jwIgUUxUv6ez7vxOUzxUtYymoGe@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6KWJPHg+d4Ot91RXjPqE96Qvu498OnA/DaU/qBMpcOtphNN53
	FaKPyyq/7OsA+Hze5wcwL5Z/i/5wSUrPMw7oO6mIxMbm67UVOu12NWVi
X-Gm-Gg: AZuq6aIxHofAvmJfDu8QtAxm+H3tffn3kOQUQOXKviw22jNKEPo0ZA/Az8LRgbK02DE
	KpodxCVczRHwPOpFJLwLCvLgj5Fg90Zp0ew8KRJjLk/fWwxXeIcc+IJctxVp71YPbAmLqFkklYs
	qG2ZgqX2YteVOir1P595XKCv/h0BRIjNl9O5bHnCpdJCK7MXaVLp6cT+EkAEAl7Ls4TPgtgxd14
	bNm9f7/R7pJKcQiXdnf4OJjuDNNMylouicP3cw73k7ltyLUoV3MwWRIyobADr+eMoIgJ8Yr84QI
	SyIx2rI4ZGEk+uObbjS+2I5Ph6JljXOeoxLNvJnAo7NXX0Dozjw+JnSWMAMhGZDDbT+eqEcdFn0
	5f8YBGek3/v74Qs302ooKnJz97ePR9v1pCFj9EBm17REOUge11ZnrsnjtnhBFo1aCWPNt79xuAQ
	zIVdFbB7ZYtu/MMcwZkkNQocqrfwY=
X-Received: by 2002:a05:622a:255:b0:4ff:270f:9a48 with SMTP id d75a77b69052e-506b3f7dc66mr290587891cf.4.1771568588191;
        Thu, 19 Feb 2026 22:23:08 -0800 (PST)
Received: from [172.17.0.2] ([134.128.219.200])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cd8a5ccsm234206306d6.25.2026.02.19.22.23.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 22:23:07 -0800 (PST)
From: Yuanshen Cao <alex.caoys@gmail.com>
Subject: [PATCH v3 0/2] Add support for Etek ET7304 Controller
Date: Fri, 20 Feb 2026 06:22:39 +0000
Message-Id: <20260220-et7304-v3-0-ede2d9634957@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK/9l2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIyMD3dQSc2MDE90UA/NUE4u0VCMjS1MloOKCotS0zAqwQdGxtbUAGmr
 Sr1gAAAA=
X-Change-ID: 20260220-et7304-d07e48fe2295
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Yuanshen Cao <alex.caoys@gmail.com>
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
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266809-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexcaoys@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	HAS_WP_URI(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8FDEE164EF7
X-Rspamd-Action: no action

The Etek Micro ET7304 is a USB Type-C Port Controller with USB-PD used on
the Radxa Cubie A7Z.
According to the ET7304 datasheet [1] and the vendor BSP source code
provided by Radxa [2], this controller is functionally identical as
Richtek RT1715, with the only difference being the VID.

Add support for the ET7304 by registering its chip info in the driver.
Tested on Radxa Cubie A7Z.

[1] https://www.etekmicro.com/wp-content/uploads/datasheets/ET7304_datasheet.pdf
[2] https://github.com/radxa/allwinner-bsp/commit/156b6578cc173855b41ea311a229403ccbadb17c

Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>
---
Changes in v3:
- Reorder the table alphabetically
- Use etekmicro as the vender prefix
- Link to v2: https://lore.kernel.org/r/20260219-et7304-v2-0-b2e268494ae8@gmail.com/

Changes in v2:
- Put dt-bindings Documentation changes in a separate patch
- Add Etek to the vendor prefixes
- Link to v1: https://lore.kernel.org/r/20260217190010.67-1-alex.caoys@gmail.com/

---
Yuanshen Cao (2):
      dt-bindings: usb: document the Etek ET7304 USB Type-C Port Controller
      usb: typec: tcpm: Add vid and chip info for Etek ET7304

 .../devicetree/bindings/usb/richtek,rt1711h.yaml         |  3 ++-
 Documentation/devicetree/bindings/vendor-prefixes.yaml   |  2 ++
 drivers/usb/typec/tcpm/tcpci_rt1711h.c                   | 16 +++++++++++++++-
 3 files changed, 19 insertions(+), 2 deletions(-)
---
base-commit: 8bf22c33e7a172fbc72464f4cc484d23a6b412ba
change-id: 20260220-et7304-d07e48fe2295

Best regards,
-- 
Yuanshen Cao <alex.caoys@gmail.com>


