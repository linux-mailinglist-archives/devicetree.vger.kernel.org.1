Return-Path: <devicetree+bounces-267861-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIyhGwuSnWlKQgQAu9opvQ
	(envelope-from <devicetree+bounces-267861-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:56:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A5F186AA4
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:56:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D40B314B841
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5B4B3803FA;
	Tue, 24 Feb 2026 11:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="JK0gONhZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8593B3803EF;
	Tue, 24 Feb 2026 11:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771933937; cv=none; b=CVclzNusBc+1R3xFiXEWu9ie0FwwKLcVg2qjFZQXP8Q8EWBq3YNIdw0pbN3oaR0gcZxsYUm3BViuJ5K8sZgS0CaUuSFYWEGF/57dTa4CY3AB0EpEwwlKJ5nc9oori14xPxnq+sV258ZNpHboQKenpWg82mg4liowquB2VQQVAHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771933937; c=relaxed/simple;
	bh=p6HDPApeaMd0r+CB70CBzsUcENbmFRGBccXt9mPpO7s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jWJBHCU3CbwRd2jsPUstIv5DIJsZLST/0+zWngURgRiAibagqz9aaWaQnXmZSI+XWSyO8Mo9jmX7bo1xlGckgSZRjZXg7GdFaQEos0JwyGa95Nt9LQra4U8D37/aUzN7d7WjWFbK/ykfRJO2L0NMX7fTbG6gI/wX6vLvVIvzwrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=JK0gONhZ; arc=none smtp.client-ip=198.175.65.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771933937; x=1803469937;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=p6HDPApeaMd0r+CB70CBzsUcENbmFRGBccXt9mPpO7s=;
  b=JK0gONhZ8eYbebbhZQONMwoLVkYVPA0x0/5DPQTdLxoOEpvmZ7okPd0t
   15J8WPDPsr+oJO7f6CeuPaNtQzAkTDh1msO6MAOkeEboaxLVqNao4u02h
   1CTu/VPl8qFDYkx+Qf6XLgBnzNjX/NEUP0648Iqu0JBL1Nmxp023uEo9d
   iEfTgqvIjtDJA6LxZ/03Dog3OkRoRuvttddp/W86BVS2AJiTNOEepdIa+
   XuubqbS22i91GVgHTmvk0Qv2YhSwULnLMGxQsy4fRFXMqZiaCxOoUmE2+
   jEglvzO2lbXC4RJcIHMMvHJz4YR6zHu6ctg9HpVq4NVTVIR5ivDTWaIq4
   A==;
X-CSE-ConnectionGUID: tsqPfcGiTsugo/fghIqeXw==
X-CSE-MsgGUID: FLo7netrQlWRDkWapfodZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="84402730"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; 
   d="scan'208";a="84402730"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 03:52:16 -0800
X-CSE-ConnectionGUID: 73kTu8cQRyul/NipoBZ1nA==
X-CSE-MsgGUID: iDGucgcdRu+y4as2gww8/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; 
   d="scan'208";a="220398152"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa004.jf.intel.com with ESMTP; 24 Feb 2026 03:52:14 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id C390198; Tue, 24 Feb 2026 12:52:12 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jarkko Nikula <jarkko.nikula@linux.intel.com>,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v1 1/1] dt-bindings: i2c: dw: Remove unused bindings
Date: Tue, 24 Feb 2026 12:52:10 +0100
Message-ID: <20260224115210.3499191-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267861-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,linux.intel.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E3A5F186AA4
X-Rspamd-Action: no action

As stated in the d70f60ad964d ("i2c: designware: Remove
not-going-to-be-supported code for Baikal SoC") the Baikal
platforms are not supported and the respective driver code
was removed. Remove the currently unused bindings.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 Documentation/devicetree/bindings/i2c/snps,designware-i2c.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/snps,designware-i2c.yaml b/Documentation/devicetree/bindings/i2c/snps,designware-i2c.yaml
index 914200188809..41a6cfe8a4ae 100644
--- a/Documentation/devicetree/bindings/i2c/snps,designware-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/snps,designware-i2c.yaml
@@ -32,8 +32,6 @@ properties:
           - const: renesas,r9a06g032-i2c  # RZ/N1D
           - const: renesas,rzn1-i2c       # RZ/N1
           - const: snps,designware-i2c
-      - description: Baikal-T1 SoC System I2C controller
-        const: baikal,bt1-sys-i2c
       - description: Mobileye EyeQ DesignWare I2C controller
         items:
           - enum:
-- 
2.50.1


