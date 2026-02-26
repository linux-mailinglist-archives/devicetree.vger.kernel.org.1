Return-Path: <devicetree+bounces-268892-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJNnKlpdoGm3igQAu9opvQ
	(envelope-from <devicetree+bounces-268892-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:48:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C481A7DF8
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:48:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7C9733040FC9
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 578C63A784C;
	Thu, 26 Feb 2026 14:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UYIYHlgt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5405036E46F
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772117316; cv=none; b=SojafQhYAHpgXBe1/YsKxxKvbJLoshcLWTcJTU4DDeRgPj+n8GdLaAPFvUul351/i1Nyu5vpUsFaJWSSj38boKxrCWuaLWquJ3lpkpOtLsAKWJZpC8UnAdd5sgCRStBdR8RURCUPK1uZUzvQjh/rL6+ZJIQGYD4POYX4nRpSsxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772117316; c=relaxed/simple;
	bh=JmzVSEjedO3VO912r+fj5eVKGwTqy6TpqoCOEuoAOxE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HGcNIQzHIGqemJBRg4g7zGc9Rqqcr7su5Jakb8KeDPAXAZkYxa4zuA5ZjGX+zUXa31bnF37b3K2yNIK9O6pJjNVvky3khC7CeTqfJGFZSsp0YBTctlYqJ/4Plm4Or6j+nZxhHmvY9srBmzXox0xttKlAOEYppZIfVfge3LFOEmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UYIYHlgt; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a962230847so8988445ad.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772117314; x=1772722114; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3gSsgQwZJwP3d9XrK8WyIp3GZ6Hj1uEXl0FYyD3hmvI=;
        b=UYIYHlgt6TgF30Xy3eiO0iwQYcUGYZJfOx34JU0eS6JP6x7sEzalt6Itjgl+/TPhSa
         lgqiQK1XOnKQBQERzEnpOhW6tMkSuPzZfsYdg7MgaFvR44cVzpi1kwmCn6HfE5l0jign
         sOZILHBsLwjiN9aSkaRppAzpopnPxrPEYIhi33i1zB4jAaRI+4n2Y59IhI0QvlftaT3J
         dxV5/4JL0AMUqP9nNh9JLbd8q2In6bXoP2QULmoxYX21wFTp6yclnnjAId99VksU4Qsn
         WzknFhjJBKAcvU4ibS0o/jsrR/NjYZhN4PQ+paUSnkz67Zyogr6Xsg/NPmFg+Z7Yxdok
         yVrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772117314; x=1772722114;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3gSsgQwZJwP3d9XrK8WyIp3GZ6Hj1uEXl0FYyD3hmvI=;
        b=iqn2xI0qp23M42xU+CofFOcOeYJO/4Qj5Cbrkum38aIX16ig+xHp89N9t6G2JA6POS
         siTQsAnTM3IKi7PtOsGCPuVxkiuAaxOYs0q06YBZW37rd19YwiAYUBkCyLRycSH5F77A
         WtBF0Xk6m7zksuq9zbsmEcw0N5LdBHm89ceN08ej/fT5wn4Ph+Ytm9GRL9MlV+otW+xF
         NFkS+ix50iWJLLdYjZ3CJC6kye09ShSTSCrWXg9POzzlLsQkH7rzv26pZNWaKgaA82wV
         kRLQFTGqGw27iIaesW+iMRw7gRPtJOqsXnok/t6pc6SKrLl74XUkZpgfL4CDjP/xcSc4
         D1/A==
X-Forwarded-Encrypted: i=1; AJvYcCVYY+DCy35HPnOgbgQcCkXPjtFNZLjXTvvtVYm/xgTCuqxpraGB9pYUD5MRSx0USOeV5X7mJXNyBUTc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy51Ta1DkyM2uebqmMVIxbJVpSlaYPl4KIEZeguyxMS5l4JiCpn
	Msn7r/DEg4CF2ELixnPCtdvYW/CzapaEJzfyLH7KhzBYWL+wbVJwRWlE
X-Gm-Gg: ATEYQzzKepgQ4MGkFlgXhY9+/G+bxVY4MSbYlcN6ZzyUfb0UK280cE/NnNJtQlD6Vbp
	HTnH9gJfKukwbAipWv3u5ktCawKM6FZbmbGVCcCxDZ9g10q1+8RdN76AIJfWF0oeezE8fnz+/Yf
	cN6vvblOpqsrJB04Q9bdKtn2+ugk6ddzLGmnOOrYBFmOQTrGBRz1+uRsDtImL142ht/DyzkrnNW
	23lQmEZ7+CXB0ePsEwlY7eIkLkjdXuIiP6X71SCV9utN15AsXhn5S7VKq45M2BlENyYTeQKXrUq
	1zHazwpfAEv/+uqEhPRDYx/sdkaJK+cP42tNBITPPuYQfBFwfZTvVW/GU3eTnmP0uSpZlSeWheJ
	Q4TedPF7gY/gdpy+FkYUx2IW8Mm8pXjE+z0uMSpdXhGB93yBOSr5a5g538rjcwHgon5Pft8a35l
	GQBJ1ggd0Nfe6xOX4Zm2qO5GruPBtAXsSH8N01TmuudqT7r88/O19wlJghAimxMtqDtmCBh7yBX
	ae2Eg==
X-Received: by 2002:a17:903:1b6d:b0:2aa:d61d:b6b3 with SMTP id d9443c01a7336-2ae0349484cmr25894555ad.41.1772117313599;
        Thu, 26 Feb 2026 06:48:33 -0800 (PST)
Received: from wig-Precision-3660.. (125-227-154-99.hinet-ip.hinet.net. [125.227.154.99])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69fa65sm27871825ad.58.2026.02.26.06.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:48:33 -0800 (PST)
From: Wig Cheng <onlywig@gmail.com>
To: shawnguo@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	zaq14760@gmail.com,
	Wig Cheng <onlywig@gmail.com>
Subject: [PATCH v5 0/1] arm64: dts: freescale: add pixpaper display overlay for i.MX93 FRDM
Date: Thu, 26 Feb 2026 22:48:18 +0800
Message-ID: <20260226144819.3428730-1-onlywig@gmail.com>
X-Mailer: git-send-email 2.43.0
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-268892-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[onlywig@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 49C481A7DF8
X-Rspamd-Action: no action

Changes in v5:
- Use 1MHz spi-max-frequency to comply with binding schema

Changes in v4:
- Drop invalid property

Changes in v3:
- Misunderstood reviewer's feedback in v1, improved commit message description

Changes in v2:
- Fix Makefile alphabetical ordering
- Move vendor property before status in device tree
- Simplify commit message as suggested by reviewer

Wig Cheng (1):
  arm64: dts: freescale: add pixpaper display overlay for i.MX93 FRDM

 arch/arm64/boot/dts/freescale/Makefile        |  4 ++
 .../freescale/imx93-11x11-frdm-pixpaper.dtso  | 50 +++++++++++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso

-- 
2.43.0


