Return-Path: <devicetree+bounces-271693-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFOIGwLRqWmYFgEAu9opvQ
	(envelope-from <devicetree+bounces-271693-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 19:52:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EE821723F
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 19:52:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39BA03060ACC
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 18:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5F9E2DCC13;
	Thu,  5 Mar 2026 18:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bjrCoMaE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93EAE2D0603
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 18:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772736707; cv=none; b=lmaeENnnfRB1WEV1fmM8YmWlNJD73wUA3AU8zfWhnWYXnM8IxZD0i1H82+CM7CGncTxgX1EhzndO9MGFyFcGNdoNrzYG7811U/3GZSrlqxosVFedj3KyGD/2YGYzUzExqUxDbVzv37OCqQeYjGjBWATHkYk6odF0kryWFNJomMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772736707; c=relaxed/simple;
	bh=Mf73wjbCDOc/R+sRsjS0v6XS+MRUI43Q+JY9FyoFjF8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bW+ewQwt58s7jgIv4cTvMNO98jOPxgrGLMzd9rziDmIDlpWAt873b4Y4rcfUh5ceuTRyDqbf84erSpUouJsKB1R4IqdHlqWFOAYwmITgt9l6PDo4McRc/hydeCAC+hfgcbtL5wJzU5YR85mA69hutiwksSIm9b9dvAeY62EcCYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bjrCoMaE; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-3567e2b4159so4570098a91.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 10:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772736705; x=1773341505; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0eRVptHtpjhyZI71FfT0Vrndbtw4GySKW+NrEZWIDWQ=;
        b=bjrCoMaEh6nCVVNYQT+7LbJMHRfMCliblZ/xx4G6mFGgGnfcmu05+Xkfevq1tNawSs
         1m3z9W5CGeCB4ekAx+Ox7OzvRO6NMmkBSBFPevt+cGif790IVs+riiN1uyT/rUJb9h8J
         KWBDbBdPK1FuIt9AVa0RIzDHrI1yPHNU8fqdFQxGXyGQ4l9EI1hdFatOfkPMzT/eYIlP
         5aNq2DaC/a662/Xjop5Q8vt77gbkVpO0eyf10yNmkHHBA5CEiCPJw0HG+WVw32VJWOXz
         SYKFlV3p1378at6tVxxnjljBoQU150aoJ80rtFw+dACW19vTIz8HKMKt6ui6cQDVis0W
         UGLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772736705; x=1773341505;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0eRVptHtpjhyZI71FfT0Vrndbtw4GySKW+NrEZWIDWQ=;
        b=bgyAqneb63bNa5bk3Vjk5iZMl2tJA2n1sRfs/BLYgEWfVjneiTvlWy4wz6YIDdopkr
         0GEzg8ndWX4KwWmf0Ib2LMN7ZENP9Otyciu6VMAw5IWHQjRjVsrSC6tWH6WTtRc7eL0f
         juITNIOcMJJtr/NSciDPzLdkR9QL1wXwmmZBTGYUHMjouOx0zOqCJFh5T8Bu7At6a7Yn
         Z0lqHoq7NymNYVIOaMkxc9JkLdBOVBNng+LY0g9rDdX4wE8YAUf9Z7aPQRpy+g5zE1JQ
         JxdzNVgZpMI9RRq8SlozAu0hy1hp/2WwNhIY0GDkvH1fNMb9x/5DFUHRFL4brEQsuiOo
         ILfw==
X-Gm-Message-State: AOJu0Yyd7BJBde9jThCoF/06qKK8Xq9pzddT3U5j93oh2S1d63e4m70x
	9dH5eXapo+PrxZMCmWnpxYlIODUSTGBT3MnRjIN4KcmAYZo7Heo/c6CW
X-Gm-Gg: ATEYQzxRJ3BIR0iLYiXDCjB6DH2nvQEDWHipQEKaNd0uhog4R9/7JCf5jSkUAhNyQnd
	ogO2uqGlb2b1E7yIdNxzi0eyOWbmHICkZB8RlQDhRrbBqM2xK5S1sQYfzRm1UJfrTBrgGxddgQr
	VZW2ztn/GQUkjhQEHXJrbxXNfTm+PNcM/IUk6zSUW0JmBZbic+CHxOkeGf/sOWNDssj0VZWoepi
	M4mU+qnf2ngmYEfFg5askB7Yk+CPIqnarH3FxrQIRjprM1wErOI/b4x0+nBtUdjL1Vtee8dG+VX
	iFgppEZhO03Hi+ZjZI6oKGD863nuQ0rlHdr5e5vcK2mGd/h0+5nXIwI9oVJ60AU8xbHk1LP11tq
	8piovOw/vm31smjxeM5ELlTFgtQ+oxRoP54hFE8xkMdnKZOonuElMw14PPgQnbHlTidSZwp2QU/
	m7S9KCMMsD/kKuysgb4BFjO+wtBrT4QonJ0dkbCiNiFhyoXOurgx4dycQ32eJGfFjYXdPpEHvUc
	roWiwA=
X-Received: by 2002:a17:90b:2683:b0:356:7b41:d348 with SMTP id 98e67ed59e1d1-359bb3dd804mr401448a91.20.1772736704777;
        Thu, 05 Mar 2026 10:51:44 -0800 (PST)
Received: from buffalo-ssd.taila54753.ts.net (M014013071096.v4.enabler.ne.jp. [14.13.71.96])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359b2e14821sm2769158a91.17.2026.03.05.10.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 10:51:44 -0800 (PST)
From: Akari Tsuyukusa <akkun11.open@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sean.wang@mediatek.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Akari Tsuyukusa <akkun11.open@gmail.com>
Subject: [PATCH v2 0/2] Add initial support for Lenovo YOGA Tablet 10 (Wi-Fi)
Date: Fri,  6 Mar 2026 03:51:14 +0900
Message-ID: <20260305185116.781184-1-akkun11.open@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C4EE821723F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-271693-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

This series of patches adds basic support to
Lenovo YOGA Tablet 10 (Wi-Fi).

Changes in v2:
- removed lenovo,b6000-f, lenovo,b6000-h, lenovo,b8000-h, lenovo,blade
  compatible strings
- remove "0x" prefix from memory Device Tree node
- remove "compatible" property from mt6589-lenovo-blade.dtsi
- dt-bindings commit message explains this product family in detail

Note:
$ make CHECK_DTBS=y mediatek/mt6589-lenovo-b8000-f.dtb
says that

  DTC [C] arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dtb
/home/akku/tmp/linux/arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dtb: clocks (simple-bus): dummy32k: 'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
/home/akku/tmp/linux/arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dtb: clocks (simple-bus): dummy13m: 'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
/home/akku/tmp/linux/arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dtb: clocks (simple-bus): dummy26m: 'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
/home/akku/tmp/linux/arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dtb: clocks (simple-bus): $nodename:0: 'clocks' does not match '^([a-z][a-z0-9\\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml

These warnings originate from existing mt6589.dtsi definitions and are
not introduced by this patch series.

Akari Tsuyukusa (2):
  dt-bindings: arm: mediatek: Add Lenovo YOGA Tablet 10 (Wi-Fi)
  arm: dts: mediatek: mt6589: add basic support for Lenovo B8000-F

 .../devicetree/bindings/arm/mediatek.yaml     |  1 +
 arch/arm/boot/dts/mediatek/Makefile           |  1 +
 .../dts/mediatek/mt6589-lenovo-b8000-f.dts    | 15 ++++++++
 .../dts/mediatek/mt6589-lenovo-blade.dtsi     | 37 +++++++++++++++++++
 4 files changed, 54 insertions(+)
 create mode 100644 arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dts
 create mode 100644 arch/arm/boot/dts/mediatek/mt6589-lenovo-blade.dtsi

-- 
2.52.0


