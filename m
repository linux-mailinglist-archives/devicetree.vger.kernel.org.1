Return-Path: <devicetree+bounces-266250-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMl9FcG2lGlMHQIAu9opvQ
	(envelope-from <devicetree+bounces-266250-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:43:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B1614F47B
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:43:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 705A330107CA
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3462C374170;
	Tue, 17 Feb 2026 18:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U8tYxZE0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1949372B3C
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771353790; cv=none; b=XdnWRjilYss8Ug5FYToMpgWPY/TFR3sARV9S6ohxx4rpTsV903gMs1qAJpS/ng0rR4QxTxl0p7twL8Tg8wMH1aIWSen+0hFBs9uOMC+zVEV0XTSe8JkHHcXErSanSZL4w8p0dOyFEhazprGsV9bR/TsBejWwZrZTU1YoP79zZDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771353790; c=relaxed/simple;
	bh=a9/Bv9gPGrnch3FbaQtYnf60T9suaENPANAWBPUwioA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MVuogNbA4s3gIW35eJXCzzo9xr1u/54mu+rjF5EJNihnjsXPbeb9p8j9cSYak/LA7p8kZytTuvYkyljYkoSPefwxTPg2nRvk7c1CEX04uuVtlOlcNMFF8rPwnLBvBAOljIc36qsgBgGomvrESr87+WEDd6UqBPOtrrKth+h7Va0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U8tYxZE0; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4836d4c26d3so32833595e9.2
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771353787; x=1771958587; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bS7q9PPDCy2sDXPZ247pIc5Aq5NHhY6a0if5OF26uog=;
        b=U8tYxZE0DOEavjnF0kJ2pKZyAbthfTo/g01sjMUllkJJmiA1+4c+SI0a+8lUKW5l7u
         MWROpsGEZMEAzA8WRPO/S6IXLCNUADulERE4sX/1Lc5q3uOJMR0sGtGUKCDAsbsCeu4g
         ONll3j3Fe6L/NBtDfgHn7xVJVTe15mps2cnzhPK13XkBGsu6b8l/wxAO/pDVS8++zXQq
         bS40mBDYNVc6jEDw0pF4OV9NiNadBSg+qnAyPLUmac+5unA2BZ0OabotQxejEThnaB8M
         8Oq/8e3riRAoXQEgoO6ElZ+R9EBL2Zz3Lrov7JcrGciDZ4b0G3iVOmeKfaXcD8MSUXp8
         4p/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771353787; x=1771958587;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bS7q9PPDCy2sDXPZ247pIc5Aq5NHhY6a0if5OF26uog=;
        b=XDZ7kz2iOpem/gqd2CjkUNqWnunj1rDrvafbskVEwQzWfmhwbxV5SyDiz7/Cc7gBtR
         BrkTHsxQ+fW4urwAd5QLUHeI+cyZdK2gIhff/RElkYq4REDcV9kRLmBYjaJEN6x/0XwK
         9Jzndz6U10ZOoBroVMIGnGUwZoHZkxHaQq1dIbLdj68GdzozK24xlDiqntxzA8OwN0Yw
         mjs4wnn4Fol5UQpSLGskcGrhtkSajO3OsseQ9Sj6iSwGY13xWC4fYW08QlDft0jwD1gP
         tsXUJanRtCxZ6lkGQa4tieJdh7rfhnjmDrGy6yAQAXxuAFCelzGeCLDTpIaVlTFldH3o
         Ed8g==
X-Forwarded-Encrypted: i=1; AJvYcCX3P+ioWL0FViknyU2GJHRLzacwi1LRYCleDO8ogWny/hcKEE7/jD5KP9AxVDDsvaPLU/+GAvdcciwU@vger.kernel.org
X-Gm-Message-State: AOJu0YyihXwqE3a3SDiVedmV4Bib1lRvqjUGCrXpJOxCXJbsP2I7TIqz
	qbLbTuvYuCLnBWFk+DzAxdZif/xuQ6tjJId/vmctAhbira9BPquraspy
X-Gm-Gg: AZuq6aLmK0qu9qyyuIhJrU5zsKOjv0ZdUVJ3NabybDzlkzVSqDidA3kj3DI1W6mWrGh
	HjIHJtxMk3k6pdEZ7GpQg5r+W8JhVsY1puHBcH2Qcla+sa8O78l0sLWl3dmuyhUVGwqr3rKlZIe
	6iMWPMCM7Z+4cgnOk9YQIDG9H94bepcKDrVmGunDxptUnSJlIBDqrfDwVYQNQYg2M4YMO3kLkHs
	HSGYQG4KEZDQSa8k0d4rFzvtEgyZkRQ82X/iPQ3mSjJb1HvNXK58pgtyYmL8IJWCNLljmCdZ/x7
	40XBEqLbQPsUCjoBENvsGpdVqepJeKCsk/ocsyrz29mzWFRQuqx2/HGNrOzXQirCXswtTaNq3O7
	4qR/UiXClrW45UgirgnKmMsqK+ZebqMwY3pTLGzBSSRPm2vMwfRR7lhUszlYzUtQZsTJt12udDh
	KGRAp1PPWgGgswqDOcFfqkHbol0RWXsKrL86r8+OUXtl2Fe8rQ47NAtfplZdrKoqA6DOOFZti99
	bBeHl6mmq8a6YLGU6nX12pTBEfcLZ4mjeASlB/e
X-Received: by 2002:a05:600c:1986:b0:483:71f9:37f3 with SMTP id 5b1f17b1804b1-483739ff8cdmr266953675e9.1.1771353786638;
        Tue, 17 Feb 2026 10:43:06 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839731d7c3sm1096185e9.18.2026.02.17.10.43.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 10:43:06 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v1 00/11] arm64: dts: freescale: imx8mm-var-som: Align SOM and Symphony DTSs
Date: Tue, 17 Feb 2026 19:42:34 +0100
Message-ID: <cover.1771353301.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266250-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C2B1614F47B
X-Rspamd-Action: no action

This series aligns the i.MX8MM VAR-SOM and VAR-SOM Symphony device
trees with the latest hardware revisions.

The update consolidates the device tree descriptions to better reflect
the actual hardware partitioning between the SOM and the carrier board.
Nodes describing peripherals physically present on the SOM are kept in
the SOM dtsi, while carrier-specific components are described in the
corresponding carrier dts.

The changes were tested on the latest VAR-SOM and Symphony hardware
revision.

Stefano Radaelli (11):
  arm64: dts: imx8mm-var-som: Move UART4 description to Symphony carrier
  arm64: dts: freescale: imx8mm-var-som: Align fsl,pins tables
  arm64: dts: freescale: imx8mm-var-som: Update FEC support with
    MaxLinear PHY
  arm64: dts: imx8mm-var-som: Add support for WM8904 audio codec
  arm64: dts: freescale: imx8mm-var-som: Add MCP251xFD CAN controller
  arm64: dts: freescale: imx8mm-var-som: Update WiFi/BT configuration
  arm64: dts: imx8mm-var-som-symphony: Move USB configuration from SOM
  arm64: dts: imx8mm-var-som-symphony: Enable uSD on USDHC2
  arm64: dts: imx8mm-var-som-symphony: Add TPM2 support
  arm64: dts: freescale: imx8mm-var-som-symphony: Enable I2C4
  arm64: dts: imx8mm-var-som-symphony: Enable PCIe

 .../dts/freescale/imx8mm-var-som-symphony.dts | 206 ++++++++-
 .../boot/dts/freescale/imx8mm-var-som.dtsi    | 420 ++++++++++++------
 2 files changed, 474 insertions(+), 152 deletions(-)


base-commit: 37a93dd5c49b5fda807fd204edf2547c3493319c
-- 
2.47.3


