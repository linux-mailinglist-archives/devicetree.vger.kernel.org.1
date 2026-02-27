Return-Path: <devicetree+bounces-269113-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BkaEHZHoWkirwQAu9opvQ
	(envelope-from <devicetree+bounces-269113-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:27:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DADC31B3E17
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:27:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DB959304F023
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:27:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8C9E368965;
	Fri, 27 Feb 2026 07:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="jbDx5+2c"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDFA236C0CD;
	Fri, 27 Feb 2026 07:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772177257; cv=none; b=mL7gyIZaoFnzoq0MnATkzhrH7cRuyf4NpIY9V3ZrKAtdJzdo2gzRRkpXBBQ6cMopi631P8DQiqQHkZ79xLgWAMvsK7KQtaE/9MlT6MTq5dxDuH73LE6izThakdMTYfMjwPBMcqMy9F7voUFvVWyoLcWtzKwDPPQ5ZkG8wmm7ah8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772177257; c=relaxed/simple;
	bh=/Mwo3tYr67belHovtuwoQZVjTereV4tzNFMPoPaXc+4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=M+UNiisC4MR7VRMkZQgEAhGohBgfX0INye3z+aS3wsZVdOr8K3Tydd7drG04NCUpkeXyX1ld+ZF6qJD+NQLgI+b28gLsj2WpDhtSlHmpNR+EdDNp8kaT8XnUTK5StZp3v61HkNmRRHCuCVcjUjlwKNsb8V8xe/OjjP0aviLqbs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=jbDx5+2c; arc=none smtp.client-ip=192.198.163.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772177256; x=1803713256;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=/Mwo3tYr67belHovtuwoQZVjTereV4tzNFMPoPaXc+4=;
  b=jbDx5+2ct+khx2zPa8/tYQBXkyYJN/BeRzs1Myk9Rsx6mQG7g+FhfnYT
   m5KSGu7SqTEo9biQ9gvXpvzcpao0tnJ7UXRB1+HTozfv2SdSVMxng4uPT
   IBrfMaqc9gfyWQRQQbzBeCR0fQ6zoyK9tosp3r1n6oAxeab+rtv4paKUC
   srYwsHVMLO/v2Gl1cOTFyG53SH2U6fkXTns2SX7HzvNkwaLryVoiO7LTd
   qDjEY5cAwxNaHeZq8ck+bMz0P5GiquMjauJNq6dqKQYsCExWIyKq+iMHY
   pSq7Z0AggMq1KqBEmsVzjOchz6U3tR3gUpkqFVr7s239uSRXP5IuK3h4w
   A==;
X-CSE-ConnectionGUID: TYm8o9xmQcK25rHYhAeg8Q==
X-CSE-MsgGUID: Dz2x17XmSUC4QwfJQsZE5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="83961738"
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; 
   d="scan'208";a="83961738"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2026 23:27:33 -0800
X-CSE-ConnectionGUID: GpTHCeofQ3S3YLaWL1yr7g==
X-CSE-MsgGUID: lWIcucCITBKPSAcLlAveNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; 
   d="scan'208";a="221326598"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa004.jf.intel.com with ESMTP; 26 Feb 2026 23:27:31 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 25B0498; Fri, 27 Feb 2026 08:27:30 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Randy Dunlap <rdunlap@infradead.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v1 0/2] bus: Remove Baikal SoC pieces
Date: Fri, 27 Feb 2026 08:26:24 +0100
Message-ID: <20260227072726.1142944-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269113-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,intel.com:dkim,linux.intel.com:mid]
X-Rspamd-Queue-Id: DADC31B3E17
X-Rspamd-Action: no action

Baikal SoC and platform support won't be finalised, remove stale pieces.

Andy Shevchenko (2):
  bus: Remove not-going-to-be-supported code for Baikal SoC
  dt-bindings: bus: Remove unused bindings

 .../bindings/bus/baikal,bt1-apb.yaml          |  90 ----
 .../bindings/bus/baikal,bt1-axi.yaml          | 107 -----
 drivers/bus/Kconfig                           |  30 --
 drivers/bus/Makefile                          |   2 -
 drivers/bus/bt1-apb.c                         | 396 ------------------
 drivers/bus/bt1-axi.c                         | 292 -------------
 6 files changed, 917 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/bus/baikal,bt1-apb.yaml
 delete mode 100644 Documentation/devicetree/bindings/bus/baikal,bt1-axi.yaml
 delete mode 100644 drivers/bus/bt1-apb.c
 delete mode 100644 drivers/bus/bt1-axi.c

-- 
2.50.1


