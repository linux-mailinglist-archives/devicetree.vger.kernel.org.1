Return-Path: <devicetree+bounces-269480-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LEDGzOJomkd3wQAu9opvQ
	(envelope-from <devicetree+bounces-269480-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 07:20:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E28E1C0895
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 07:20:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AF924300AB25
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 06:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ADCB343D8A;
	Sat, 28 Feb 2026 06:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="kHNAuG4B"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD9E1A317D
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772259627; cv=none; b=QAOP2DFtGMZzrxz3pc1nVDXc+DjrANIkzetsyJqabSsejmDh0dEI5vZlqsE8/SP1f0PsHLqOUtJcnL+GEV9EfsuCGdtNWQzgvnle87st9N8cCjnZuFDrp6CKE7O0TjFKV14+imCDGzbBaTSZ9sCNvVNQ7quYglE16vlc/QAMoqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772259627; c=relaxed/simple;
	bh=7vI9eDljzpd4xF7mzvxWo5Y+GYjIVz5Mvsv/9sj0ow8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 References; b=DNprj6u3BNr7Bd03EibGjja2gQaH7NJL4X0lrFACGcKFGV5lUNhM1q2UO2qzeErzjIkPG3D0F/37XFu403OVTBO65/scL2G0/Xi1VU1DKzTSs/a1vPzxwCe7vnRxfosnny8LH6QBm6EMsRWZsrF2p+l+IIkeSNSmSZvpkkAHGsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=kHNAuG4B; arc=none smtp.client-ip=203.254.224.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20260228062022epoutp0197944d56f3c8778f3bfcdfbaa6466394~YVLyH4mBt2636426364epoutp011
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:20:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20260228062022epoutp0197944d56f3c8778f3bfcdfbaa6466394~YVLyH4mBt2636426364epoutp011
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1772259622;
	bh=dM4SHzunTo/THQK+Z1EC0t7qGcosVZxyRA0PjYfrSRI=;
	h=From:To:Cc:Subject:Date:References:From;
	b=kHNAuG4BV4m8K8CoIW+pjRs4o9ENBO3GkB/UJxfYd6lUo3MzlNnNLlJzWwmRgyrSh
	 +XzrwBerXN327Q4pdGGk2LVbh35neCoQs69ve0O+FCO0uZb45QZ8Z2ED+o505beNpP
	 3nhcj4/85hidy+ost7PiFWbEbvOMznjyNacI36Y0=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20260228062021epcas5p454f81d8860c7527d8ff90d792201e408~YVLxL4GAe0907009070epcas5p46;
	Sat, 28 Feb 2026 06:20:21 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.41.42]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4fNFRn0JVnz6B9m4; Sat, 28 Feb
	2026 06:20:21 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20260228062020epcas5p1e498c4fc67f590f4243645288c492f01~YVLwlP8CB2603826038epcas5p14;
	Sat, 28 Feb 2026 06:20:20 +0000 (GMT)
Received: from hzsscr.. (unknown [109.120.22.104]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20260228062019epsmtip26bd7c90b7d25ad614119120827d29c27~YVLv2PreU1943819438epsmtip2f;
	Sat, 28 Feb 2026 06:20:19 +0000 (GMT)
From: "ping.gao" <ping.gao@samsung.com>
To: ulf.hansson@linaro.org, jh80.chung@samsung.com
Cc: shawn.lin@rock-chips.com, krzk@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org, conor+dt@kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kwangwon.min@samsung.com, hy50.seo@samsung.com, Ping Gao
	<ping.gao@samsung.com>
Subject: [PATCH v4 0/3] mmc: dw_mmc: Support optional BIU clock
Date: Sat, 28 Feb 2026 14:24:54 +0800
Message-ID: <20260228062457.3210099-1-ping.gao@samsung.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260228062020epcas5p1e498c4fc67f590f4243645288c492f01
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
X-CMS-RootMailID: 20260228062020epcas5p1e498c4fc67f590f4243645288c492f01
References: <CGME20260228062020epcas5p1e498c4fc67f590f4243645288c492f01@epcas5p1.samsung.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269480-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ping.gao@samsung.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[samsung.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 0E28E1C0895
X-Rspamd-Action: no action

From: Ping Gao <ping.gao@samsung.com>

This series relaxes the BIU clock constraint in the dt-bindings and
updates the dw_mmc driver to treat it as optional. This is necessary
for SoC designs where BIU and CIU share a single clock source.

The entire series is resent as v4 to fix previous threading issues and
address feedback on the YAML schema and commit formatting.

v4:
 - Resend as a new standalone thread to fix the threading mess.
 - dt-bindings: sync clock-names with clocks using oneOf.
 - dt-bindings: remove redundant description text.
 - Update commit messages with hardware-level justification.
 - Fix Signed-off-by name format and missing blank lines.

Ping Gao (3):
  dt-bindings: mmc: synopsys-dw-mshc: relax clocks constraint
  mmc: dw_mmc-k3: before set biu_clk rate, check biu_clk available or
    not
  mmc: dw_mmc: Using devm_clk_get_optional() for biu_clk

 .../devicetree/bindings/mmc/synopsys-dw-mshc.yaml   | 13 +++++++++----
 drivers/mmc/host/dw_mmc-k3.c                        |  5 +++++
 drivers/mmc/host/dw_mmc.c                           |  2 +-
 3 files changed, 15 insertions(+), 5 deletions(-)

-- 
2.50.1


