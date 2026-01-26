Return-Path: <devicetree+bounces-259651-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOf8A4DWd2mFlwEAu9opvQ
	(envelope-from <devicetree+bounces-259651-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 22:02:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A218D747
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 22:02:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3CA7130048C8
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD51C2236E8;
	Mon, 26 Jan 2026 20:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AShcIApr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F4328468E
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 20:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769461116; cv=none; b=UElobb2WkOLkLboq4ZEoDULyZA6e9PQXx+7ZPn/Gz1fw0KAMycwIlGfYqqj1nIUhoUn+iqRmfadKpI5byVSpLJKv8RVnmO8Hlk/7vQAktWfIqnKXXqh8Sy0MFxFrnboRZU7wJS2ZBSTu6c3l9G+NgHPkSl+xR0/xnysSVp87O2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769461116; c=relaxed/simple;
	bh=0ZLjOafbstfY7O6g0rLNo3bzWByc735QArVhnlBsR54=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=J5D7uV6Z4MttAO9+Yj0qjm1VNuySDQLCiljdLy/Xs/HkL+RfelzMiefH7af9bRRzqsvXyOgST0wTusRDsTOgJ2k1bfUTIn3EYCCHWDfgYUrwaNGEzlN3XAA+IEPs4hdSmmS58sv6/Aphs9Oew16CvQEIJxxpRgo7OD8edjxE/sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AShcIApr; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-653780e9eb3so6967349a12.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 12:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769461113; x=1770065913; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f/tD6zuUpYbmd3SPWDVT715ovj9xGSOpd1b3b/TKmVU=;
        b=AShcIApr6tbGclmb+yKeIz2mWRHiX8YoXcQOhkD4pW/V3riulWUX1BNd4r+mPQ8HfY
         TcpQJBVZQEDmNehEN5ZcdEGWgiL7WKDYTdC4VILeR3Np/lVGX8auJjZYhB/nD2n02jzr
         6n7gAoPDpP0Hp4pZFhjB5gyMSFItpOJla53WVTvocW5MbM4INdUyVnLBAXEYvFkqfbQo
         p25BxJvwjfC9BicM4LOozzl6oKjbwxog/ZgSuI4O51j1oCxpzb3Iq1CCtq31+rYCR7gY
         bCdSsSHZvPp8r1BU8KniKBmHRh7sU5jylKa2lYtDliXL7+o0vZq8MeMLRVOy8Yp8kOpo
         SXuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769461113; x=1770065913;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f/tD6zuUpYbmd3SPWDVT715ovj9xGSOpd1b3b/TKmVU=;
        b=sI9r1DQYOjZ8GUq/pnkerIRn4KjG0c0bDAtWtuiVoFKNyHRRoYTSVA1M+s31Rr0NIk
         D+sLK2FwRIUN8FnPk/lziY2RWs5XisaUeiY4CxPLFsSji1KhqnfjQwSMx7bdZfScOzKM
         fZaIQutc+3cOVQ/LEv3C85Gp6Gy6wmOAE8x/FNSxy2+WL8LtXYX1Guazjl8akJH/ueAo
         9w9iXNd3jy0G45+6vXFoscllbRVAMgN+EZSWAOr5vhwwQwf31DyVnAXrCDLm6X/dzy9e
         O6jktFtANTmrgTqpTXkIDQiK9P8T87tuGl5SYiCKXdoL+PwtjzCZ9cXiZQG18/M1U2yj
         IQ1A==
X-Gm-Message-State: AOJu0Ywtf9lhq1XD/iBlwTfdzSboFHxqr6YfwoGFrK51m0RmkOXcl4+j
	5WsNRtaJpOaSoSnuwiFoJdvDpj4fX23T4+dNlf8jZUnNm45lM0Ozx5a3xq1noA==
X-Gm-Gg: AZuq6aJYF87s/BF/hnwbwHm2Y1UM+i2XKb3dBYk4C93aMTwnNwPOalx7BGOuWUWJxR3
	fMWc6i9dZxUGSpnF+/KGUOLIGmY2S+jXkOp9P0pKY6yE9JRPsTLNLmUZUOXBzxE0iKreT7ydd9F
	CJd/n5uGywi00QTZJv2PYyVAjm889PPi5s/pXbAEEWj94BlKDujASF7Pp0zDZmrdcu/5JIrdsNw
	OESVg9kuc/6zuXjEGJbLiLG5/ZtG+fRCJgutX+9TB8iyjW3+5Kn3Wdo2PDJEPzgKP7y8y2D+1N1
	g2M7Bs8dsrcw6vNpz3wi01uDeiy6+4adpGwAPQ84dGn3jkVJKXjijH7g3XJhnFjrFxdXWOdF4lz
	vEggbREZDqQvVk8AX7/9hMizPWLZX6WJdHmo+Y3gGQrFW8vVdSnyTSuin760fSEqQ0qWgzrHBbq
	TR
X-Received: by 2002:a05:600c:3f18:b0:477:7c7d:d9b2 with SMTP id 5b1f17b1804b1-4805d06ae8dmr85958385e9.32.1769454947047;
        Mon, 26 Jan 2026 11:15:47 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c02d0dsm30958219f8f.4.2026.01.26.11.15.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 11:15:46 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Mikko Perttunen <mperttunen@nvidia.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/5] ARM: tegra: configure EMC and PMC
Date: Mon, 26 Jan 2026 21:15:31 +0200
Message-ID: <20260126191536.78829-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[bounces-259651-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 66A218D747
X-Rspamd-Action: no action

Add nodes for ACTMON, EMC, PMC power domains and interlink them.

Part of previous patchset: https://lore.kernel.org/lkml/20251125120559.158860-1-clamor95@gmail.com/

Plus added commit with power domains.

Svyatoslav Ryhel (5):
  ARM: tegra: Add ACTMON node to Tegra114 device tree
  ARM: tegra: Add External Memory Controller node on Tegra114
  ARM: tegra: Add EMC OPP and ICC properties to Tegra114 EMC and ACTMON
    device-tree nodes
  ARM: tegra: add DC interconnections for Tegra114
  ARM: tegra: configure Tegra114 power domains

 .../dts/nvidia/tegra114-peripherals-opp.dtsi  | 1439 +++++++++++++++++
 arch/arm/boot/dts/nvidia/tegra114.dtsi        |  181 +++
 2 files changed, 1620 insertions(+)
 create mode 100644 arch/arm/boot/dts/nvidia/tegra114-peripherals-opp.dtsi

-- 
2.51.0


