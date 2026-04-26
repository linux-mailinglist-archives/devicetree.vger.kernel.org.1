Return-Path: <devicetree+bounces-290256-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OrwGsNr7WkNjgAAu9opvQ
	(envelope-from <devicetree+bounces-290256-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 26 Apr 2026 03:34:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B94844688D6
	for <lists+devicetree@lfdr.de>; Sun, 26 Apr 2026 03:34:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC3ED3012EAE
	for <lists+devicetree@lfdr.de>; Sun, 26 Apr 2026 01:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C3021A4F3C;
	Sun, 26 Apr 2026 01:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dqDaLOWz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118E11C01
	for <devicetree@vger.kernel.org>; Sun, 26 Apr 2026 01:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777167296; cv=none; b=B+uBcmodBTsmpRGUsdEBoA6p1Z2I71KDa8GztGBlHRFVpmce8hWbhwpOipAuLpdvoopfjtTC8zASPzECqk3l+u0vH/pM867UFOzlcDREwiyR2FkPvfCCi0UyJY5ILYPFXlok3FUUVEcvlLciMKkJ3bbOxVuULN/nFxqg1pV+0CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777167296; c=relaxed/simple;
	bh=IA76OGHFsqwD4RUuyHqjzkcTT5i5P/QAtOqGmM0yeMU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ly5ETLANXeHr/GbcqxRe8MfuQYaYLlaEKsmbCpr4k66wilqvUCpGqPj7Fkhks9DzU5qMA5qI6Gxg4Dyp/KBaWUXR2G7FeeYqbeFlM9NLYtwsJdzFxugjDCPQv3oW0EL1LUcZXf7rtejdgiXHfSKLVlQisLGfiTyEACEJrFzkHQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dqDaLOWz; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-82f8893bff3so4268217b3a.2
        for <devicetree@vger.kernel.org>; Sat, 25 Apr 2026 18:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777167294; x=1777772094; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SQlX97El9hfOHAc6J0vlS+XAoLtlpdMNeOx9avsuntw=;
        b=dqDaLOWzaYVTALjJza6mPY+3imULCa7QjhIlxwUodcpsOEWvdii02wihgV5Ns+x6iV
         Krf6zW0P8AOtBCgIK9OvwqnvPQj5Y/6gSk9e5hDna96JGPaTVGODvro0hSyQ+uBVOFRg
         s9ATyI2QngXQnJ4zSVLDhyteWHHT/faq5DMRZ1kw6V+JgWl9Io8TlfGkrutifuskEYFQ
         vQvzSkK3Y+TDRXZKATT8A5FiBQbfDgjqTkdRtSgrCT0UAz3qalTq86BJr5Nc8SCDnqum
         jziVbex9mMG6j7DFd06DcwUAJjWMGeh0NlVZmobUwWkLZ9nP9ZStGEaFkh7JehttuUlg
         vr4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777167294; x=1777772094;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SQlX97El9hfOHAc6J0vlS+XAoLtlpdMNeOx9avsuntw=;
        b=LCdEwNJy5iQnk+4V9wXa7m+BdjYS7agukFIo5nJaRVTOGIy3wXI0g+kIYYCbbFvXrS
         h0hloNmZT/Df/NnWKv2JgmO2DqkfsJQr6GxxKZI/+l4+NAA0gDe6mE8rGICguudKY5GL
         nUIpqE+J2vFnSl/3OmmC+xi/g+7mfSNtXUzP7CewCC77VG4GUjzSFVyJJ4C1u6xHHPa0
         8QnArNW5kWqMU6Hl7N9sJO7GiRA/vOpzvo8A35VN57UhATRtuvxrQpHzdLihWXA7Ugcz
         sPUh4J19I5oqh08yMY/sfyGu6cjBtVUSq/YYIuPXtp0Ci1tJLfZmiSTaFlA2ff4yCMlI
         /JgQ==
X-Gm-Message-State: AOJu0YwVetQQNsPqospwWjcQQYSTr14o/CaRtMTnX2c/zMZiquKedAZY
	pv2g2AzsfjZD4LFiLEJnfA3TpsJjLUbjrwWwDI69uSkuNhJrXU0W2seI
X-Gm-Gg: AeBDiet00YUwlzAt+5XSq1TQuZ7YF9mJkUcjOpqLAKk2V4iJS33dHR3RJnT0u0Q/+dI
	AFzUlUmbwsu0xmOjp7s/Y2pUxknV/1jq3loZ+VfZdr7KEJoT+rlU2DwIq4TygJS7dUyWlFE8RlM
	Vfp9FWEW7cfMGisb5thv7Wvx/bvm+fPpbNbIofzGbPF6p1q2zZmNrMDNdArr6q4DeCTIQJ8FTIo
	YBcOCtpqFuE7Gt3+IzSclo6e17y/NjZv28gJbNZdGUFUhxaz297l6/+NSEBkUkpJ47l6Qk99R6G
	Y9O3qLra0uLVK8r6rfM4QWGbIo676CXCkwy3BQK3DLrnbI4kU0o5YIXsg3n2gvIVZTEyUfA3Y0+
	DuKRF6zfqOfIYv0DYrYQsMn0Lff6JYAr/ikoWlm1M1ZscI/8GWe4789E5z/Br/4L5iygq4zwc5Q
	LK6w1BgNt4/G/wR9bw8GNh8n3I4hz5acBIDw==
X-Received: by 2002:a05:6a00:3693:b0:82f:4191:da10 with SMTP id d2e1a72fcca58-82f8c84d72bmr34897489b3a.6.1777167294286;
        Sat, 25 Apr 2026 18:34:54 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82f8ec06cbfsm32046385b3a.58.2026.04.25.18.34.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 18:34:53 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Han Gao <rabenda.cn@gmail.com>,
	Nutty Liu <liujingqi@lanxincomputing.com>,
	Guodong Xu <guodong@riscstar.com>,
	Guo Ren <guoren@kernel.org>,
	Chao Wei <chao.wei@sophgo.com>
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v2 0/2] riscv: dts: sophgo: Fix CPU unit address for SG2042/SG2044
Date: Sun, 26 Apr 2026 09:34:47 +0800
Message-ID: <20260426013449.694435-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B94844688D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290256-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,outlook.com,gmail.com,lanxincomputing.com,riscstar.com,sophgo.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gentoo.org,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]

The CPU unit addres for SG2042/SG2044 misused the decimal number for the
unit address, Refer to this discussion in the Link, it should be in the
hex format.

Link: https://lore.kernel.org/devicetree-spec/00ddad5a-02f5-474e-af9c-11ce7716ddfc@iscas.ac.cn/

Change from v1:
- https://lore.kernel.org/all/20260406232655.144043-1-inochiama@gmail.com
1. Apply Guo, Conor and Chen's tags.
2. Remove Link tag for all patches.
3. Fix comment for clarification about node name change for all patches.

Inochi Amaoto (2):
  riscv: dts: sophgo: sg2044: use hex for CPU unit address
  riscv: dts: sophgo: sg2042: use hex for CPU unit address

 arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi | 236 ++++++++++----------
 arch/riscv/boot/dts/sophgo/sg2044-cpus.dtsi | 236 ++++++++++----------
 2 files changed, 236 insertions(+), 236 deletions(-)

--
2.54.0


