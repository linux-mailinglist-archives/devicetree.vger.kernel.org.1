Return-Path: <devicetree+bounces-274291-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGuiGla3sWmTEwAAu9opvQ
	(envelope-from <devicetree+bounces-274291-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:41:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0DD268BF5
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:41:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9847304C117
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:39:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B5693B636E;
	Wed, 11 Mar 2026 18:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HOzRELnI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53EB32D0D4
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 18:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773254397; cv=none; b=Yazyv+5nY8OFiAlYxe7M6zGtdEBXdQs1h7iWnoKfDHyi9pFnKLZlxqIHLJ+sER9bPj4BHlftgn5Ess18i6UfXlh1Il6paY5u1RJWwz6fahYhRog1fMRcLGNBUUpW+kvlFpCfgNWzrZfPbzh7s0ay9902uXNq0njQ4rPJJwNV0fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773254397; c=relaxed/simple;
	bh=UpeOhvo/uk8yi+1q96JIv3h8o1rekI1cCyqbUfcNtjA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tD2UWplDT3z3KxlJWmA/zWuIymjzynbyXW58tKue4wmARWWXvocgjwVmkzjdof6+u4abROhd9P18Dr9Kij+/Unkxv9OcGvtE8tjjkEU0wZD/IB8y5ty635Vipli7V1YfovHsl2kV75z2/mqRKzs8Q7ULEY8Gh/mCZsOT10bTzpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HOzRELnI; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48534b59cf3so1407175e9.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773254393; x=1773859193; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3JpZnzVxjuKCYPTmp0ohRT+2k0IA1puKSWLpheS1yF0=;
        b=HOzRELnIBkPU1YZg9iBi9Pe10GzyBceNDwQb9gVBEtYiixbYSS8byHVvTEZUCLfc4l
         ZyacaF5OM9Xqz9tvsCV17mrzgE6lTnY3H4hkwx2xIJImW0oBCmtZPaVqhmLLonQq5nMl
         wUCthEZNHkV8l8kl8oraVPcQthq8IqSqirc3cAVrAIQrJpouYAs6BZ8mXo2XrsT/aSkA
         7qcxGnSx0+Yy0vIFdaK448Xc98PV28Pr3/m4VjDKPR1MRzCCjaGq4IMuZShynewWijEe
         QZi4LNi5KAjgSPXubwSfZjctWfWz2KLvBHLEEUX8Su1jOARVWm+B9kbyq+ceb7g4w9pE
         QfIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773254393; x=1773859193;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3JpZnzVxjuKCYPTmp0ohRT+2k0IA1puKSWLpheS1yF0=;
        b=K2CWh9A8fzRxb859c1AOD9AwgVwYl+659k3mr/blamKdmj7Nbyrs1DxtGDYxun9eQX
         BeAsl35GcIBod5Vww1aLR/LL8vPgOCyIqkGog57N/OE5a2KJx6gj5IgB9Lc2gRlWMDny
         UEnt8+C9FMdZASubHl5jusdLdwBOW+cNoO1DwEBpYJFd50QlncFnDU2DTiy0jU11Iy6s
         Vsgy2Da8LnpnfUhw0qunzqOt79G3SSX8WJ26KHCxqAwUGSveLelaoK+8PVJkZRJL3AQu
         IYcKKOz4qUdaCvFv/DGkA9npBLgYOPbV+CW8l3sWBLq8XbOwMezvL5Hu4FCaD72x3a4W
         7zzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVuSNFYGecOcQAqrtoZpJKKKoEv8StVVdpmIBOdi0Zrb60pOrwX4ujOfNDCTDtvBZVNexm6kw1urN7A@vger.kernel.org
X-Gm-Message-State: AOJu0Yym4/MH7qgeSyaLIAZYU+Yr6H9O+MeLLKAB5//taEQNWMmJYinZ
	QaPqnWA8BNWdFPCee3p/UGKrLfC4N0A7GfvczNdAxtmSyFyR6wANDAMH
X-Gm-Gg: ATEYQzwItWrqK+TdQ5RZWvqdxWXISvwxo5bokTUtKpfmrgxJxIZ+ju77uP7LdYVyN8K
	22ITUqDSCZuG5JKtuDfj4WK44Rmh6UEI2iIGtWn1vIaFK+GIgn6NRSUxO0bU8Dmrq6acH08T6qD
	1k9I5EEbQ8du4JzN/ks+0axiPNgsjf3Fun3x8nS1oaQVJstsvYdvsZsLYH4c90c6rjDY9DDJURW
	/9SGAvwCAJqALRLNamwPVOKJ2rsw0CYfDdxcxHneglI4p82pczRF+E3G/eKdp2r7qCWJt0gTW4k
	SAjF2z/MIBWOwRMNgb5ZzL9rz7EgswtZ8348eaDuZzAK4FF0h/Vr6njCxKKEqq/pPk47SLxVTgQ
	MHv0kOpNvV7Ns94uvmsM002UgK2KH5jxcCeqzSyklIMOkllqspGHwCZWuLYdT+Y6bXflq00xifY
	gRNdPonXbBaQz0316VQM5NWtBTamDBVycelqkhYH2v4KYP+1/QPzOLwOo=
X-Received: by 2002:a05:600c:45c3:b0:485:3473:d4a1 with SMTP id 5b1f17b1804b1-4854b13e63emr63571735e9.34.1773254392844;
        Wed, 11 Mar 2026 11:39:52 -0700 (PDT)
Received: from Ansuel-XPS24 (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-48541aac28bsm161176675e9.1.2026.03.11.11.39.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 11:39:52 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Luo Jie <quic_luoj@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH 0/4] clk: qcom: ipq-cmn-pll: Add IPQ6018/IPQ8074 SoC support
Date: Wed, 11 Mar 2026 19:39:37 +0100
Message-ID: <20260311183942.10134-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-274291-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BA0DD268BF5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Simple series that adds support for the common PLL for
IPQ6018/IPQ8074 SoC support.

This is an initial effort to try to support the Ethernet Switch
present on the QualcommAX platform upstream.

John Crispin (4):
  dt-bindings: clock: qcom: Add CMN PLL support for IPQ6018
  clk: qcom: ipq-cmn-pll: Add IPQ6018 SoC support
  dt-bindings: clock: qcom: Add CMN PLL support for IPQ8074
  clk: qcom: ipq-cmn-pll: Add IPQ8074 SoC support

 .../bindings/clock/qcom,ipq9574-cmn-pll.yaml     |  2 ++
 drivers/clk/qcom/ipq-cmn-pll.c                   | 16 ++++++++++++++++
 include/dt-bindings/clock/qcom,ipq6018-cmn-pll.h | 15 +++++++++++++++
 include/dt-bindings/clock/qcom,ipq8074-cmn-pll.h | 15 +++++++++++++++
 4 files changed, 48 insertions(+)
 create mode 100644 include/dt-bindings/clock/qcom,ipq6018-cmn-pll.h
 create mode 100644 include/dt-bindings/clock/qcom,ipq8074-cmn-pll.h

-- 
2.53.0


