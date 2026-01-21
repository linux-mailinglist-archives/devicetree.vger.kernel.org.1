Return-Path: <devicetree+bounces-257804-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SE5IMIOScGkaYgAAu9opvQ
	(envelope-from <devicetree+bounces-257804-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:46:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B00F53CF6
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:46:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7962F80130F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:42:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1972E46AEF2;
	Wed, 21 Jan 2026 08:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GBWlx7h7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D7C53A89C4
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 08:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768984943; cv=none; b=P+ov8Sp8GHbHHCpkdqgfcRammbPwq8LKNr/ERdq6MWGKXN543gj6oXAyVrfRE9VHVd3PtiSMavDs1QX5K5Zb4GIQD3UlbEJw5vFcHgreq5SKdS21EjatJho7kpbtw4b2EwdNgrJxcQwjlzL4AT2yJc6FTK+jie4SLre9lMRcP4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768984943; c=relaxed/simple;
	bh=ivdSRO/Sa+8y6SbfRo9OGAFBLBdiIOgB64qyEx+BEkA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hK30YqJ2IOeAb0GBUvo/lkiiHv2kBMVMBDQhfztlrGASquyMzXkUSV94TXpW5eVFFztbmKlAf1zzGu+VVyG85OwaM1pkx1u9NDoHaPtzrtkCX57U8KdscfoMxWhuxCy3kpShngeeAKPMYATmAYIaFkLqKP6DWBpFvN8L4UXX2Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GBWlx7h7; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-5014b671367so76210021cf.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 00:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768984940; x=1769589740; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Fbq78sea0hmX5//P4GjhYjkpSX+LqZ+KYNl1xezZDJM=;
        b=GBWlx7h7t0eNvvKiWx8irE8/ZPc1FJ77gWGD7xUHk0sOn4vJ946udHuof5W03Mk7Z3
         wVtVOdekk3jxblCMXS1/wy82xVx5cu+FJaGVt9tj08L97fEInuyCgFq/sepUrlzNNVbB
         bf2/nBwnRHKKvt+fPQ8qwTTrWZIt9KAz1IcUpbQv7sobyrVw64PXRNJSbkwm7n13unqw
         CHEvktdgdpqfuPzRo6zZ+awsItefCoCH3oa4jeB8BoBT4cm8F5hzD4H1PXTliZZ2TdDC
         S6hyWusfVc50twT2KQQjYZOKy6IhZg5sf1fjMkHGryyG3WV89GufmtSwuMW/pexak5Dm
         t7Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768984940; x=1769589740;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fbq78sea0hmX5//P4GjhYjkpSX+LqZ+KYNl1xezZDJM=;
        b=C9zqIT/8kQlQWWNpl1V8BgjLNE4RBxaZIJYoJKUMFb1NJf/lIuiNMB01uC/GpsKKwi
         vsqJeKlXItJI8nMhc2JxKbGZD/NeAjQyaQ/R5+AwYzpZCtLIPmTaI1MPFNvSIq/XNM4+
         W3dsnwL+QFfzaQ3iH1kLnzdtHlUjAyXqcgRODQL2bwlAzU//UB+eTDT2Qx2fTFfWJC3D
         ZnrG08vn775HdhuC8kLFPOC5yDGGqV0BGKhTTUFpfDViCRU6BkH2DLRRmQ21R5D/j/I7
         JGqOGwKuVlS77KfuPwLtXAPrA2ZiH+S5TkBmc4qW+T1TDA5eAOW/9VN7l7SMI6AcV2+S
         ilfA==
X-Forwarded-Encrypted: i=1; AJvYcCVL5DSls/IZo0fYJIZhSkkgVruZ3ZLF7wFjf44NNdUXMoG7Ws6PQo5RacLm/ksEJ9f9Vmm4Uwl9Ymsq@vger.kernel.org
X-Gm-Message-State: AOJu0YzbOjFoYxLKgw4D4nZh0fQi7qXMIfZUvfhGi7PNCt/XkgZxgspL
	t39I96y9XDij2JF1qnwylw90d79EgF3irnUeuyVbx3xoJfNt+SMAKgqVCTZPnZUi
X-Gm-Gg: AZuq6aKlWyfD9YrDs1HBVQHpn1LoskL8xerLxc5QQESGQcYTvdCl8aQ+0uqBAgunW1F
	re17ce98ysoBd9dHf3EnOD0WmvFdus/1M1YwGM6eB1oFfz0UEXCu31gyRMgtfNtAJRCN9sT+SFT
	SVL8Aesor2Z3lGkagYnxw1lnHkr+J+hZMS1NoXE8qfQgd29nPFIBox8bOGV0RIiZDeWjhoRKI+9
	28odImkNVWV0Ydgt2R9GQuC5iSUhsP/9iwBqEamQmY9skNdRVB1y+R+ZS7qNPoV9X0IdJ9oFJuQ
	W91SHGzvBqh15QZr8P+3uqciPYhmLVOKRKtM8YDPVf93BCs/ZAbfmOduPz/IQKXshGSkL70sXWK
	qTLQPCqc9OB7gmU3aN1QonguGurR7SThMCn2k6friMDzapvcPoupT0k5V6w6BlPC+cWPaqkCnNe
	6cNU/oxabKnQ==
X-Received: by 2002:a05:7022:6b86:b0:11b:923d:773f with SMTP id a92af1059eb24-1244b3081a4mr12334928c88.5.1768979609488;
        Tue, 20 Jan 2026 23:13:29 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244ad7201fsm24056346c88.7.2026.01.20.23.13.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 23:13:29 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@gentoo.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Yao Zi <ziyao@disroot.org>,
	Yanteng Si <siyanteng@cqsoftware.com.cn>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Choong Yong Liang <yong.liang.choong@linux.intel.com>,
	Shangjuan Wei <weishangjuan@eswincomputing.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Boon Khai Ng <boon.khai.ng@altera.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH net-next v2 0/3] riscv: spacemit: Add ethernet support for K3
Date: Wed, 21 Jan 2026 15:13:08 +0800
Message-ID: <20260121071315.940130-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257804-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[39];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gmail.com];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gentoo.org,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,disroot.org,cqsoftware.com.cn,nxp.com,bp.renesas.com,linux.intel.com,eswincomputing.com,altera.com,bootlin.com,cherry.de,st.com,synopsys.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 3B00F53CF6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add initial support for ethernet controller of the Spacemit K3 SoC.
This ethernet controller is almost a standard Synopsys DesignWare
MAC (version 5.40a). This controller require a syscon device to
configure some basic features, like interface type and internal delay.

Change from v1:
- https://lore.kernel.org/netdev/20260120043609.910302-1-inochiama@gmail.com
patch 1:
1. remove phy clock
patch 3:
1. improve comment and include something special about Spacmit K3 dwmac
2. reorder the included file
3. fix wrong delay macro used in spacemit_dwmac_set_delay.
4. add check for maximum supported delay.
5. use DIV_ROUND_CLOSEST to calculate best delay configuration.
6. use assign for the ctrl register initial value.
7. fix input when calling of_property_read_u32().

Inochi Amaoto (3):
  dt-bindings: net: Add support for Spacemit K3 dwmac
  net: stmmac: platform: Add snps,dwmac-5.40a IP compatible string
  net: stmmac: Add glue layer for Spacemit K3 SoC

 .../devicetree/bindings/net/snps,dwmac.yaml   |   3 +
 .../bindings/net/spacemit,k3-dwmac.yaml       | 103 ++++++++
 drivers/net/ethernet/stmicro/stmmac/Kconfig   |  12 +
 drivers/net/ethernet/stmicro/stmmac/Makefile  |   1 +
 .../ethernet/stmicro/stmmac/dwmac-spacemit.c  | 221 ++++++++++++++++++
 .../ethernet/stmicro/stmmac/stmmac_platform.c |   1 +
 6 files changed, 341 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml
 create mode 100644 drivers/net/ethernet/stmicro/stmmac/dwmac-spacemit.c

--
2.52.0


