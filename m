Return-Path: <devicetree+bounces-164067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D91A7F062
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 00:37:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DDF3C17B6C5
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 22:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61919224AE0;
	Mon,  7 Apr 2025 22:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="WuMIXXzp"
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta1.migadu.com (out-177.mta1.migadu.com [95.215.58.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7B42222B4
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 22:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744065447; cv=none; b=sBa1vTmUL8JvXr2JWdc5IvmqfhhpVw/ZWp1HfiZYeRePJeyr/X1k+w6vkbv+YV1nv2u9/YuYpNKjz5Czy37P3k6+LEBjOKBur3B+k2SH2OYn/BWc0+F9omHjWv8Nr/7inu9aAqtJuld2mUe89n5rGMCnvyWahzYyk36GqWmKkh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744065447; c=relaxed/simple;
	bh=g3kM2sk7bhM7/LZ5IEtcQj2u79TaXkp2NNHs8yaghh8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ipLZ2fUXEQQC/poXHBAB/2ItbBuh0mzG+nUySDT9bAXuoK19Jli/OInzraqN5JR9v6ZOSgoWK6JgHJ+unoYzZsg7wr6QW5kJzDBnznSU431zfR1YDyRFVK/r9gb7tHiNnncJ3hGIKIJqFvm2X9v+JOSX3YiXxJTpQD1j9RZcL1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=WuMIXXzp; arc=none smtp.client-ip=95.215.58.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1744065440;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=WbBi/k1LpyYTmKsMc4bd6oqOgSUW7H+lQhYQZOWo1UY=;
	b=WuMIXXzp6/g2+o0+VUlNdmJx6a6lLtFCWSyq1co3Y1h6KZQNBMFfDpUrIxkw7RHClHxMqQ
	CcAhk/vOayRmjiLYFcSwqRfVpOZQNUghn1MjCYGXHolsRBLdori2kif7mHEe2+h0ztEoUZ
	ytyRdvAWdaYLSWs7Eonl6I4XmnxEVY4=
From: Sean Anderson <sean.anderson@linux.dev>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	devicetree@vger.kernel.org
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Len Brown <lenb@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	linux-kernel@vger.kernel.org,
	Danilo Krummrich <dakr@kernel.org>,
	linux-acpi@vger.kernel.org,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH 0/2] device property: Add fwnode_property_get_reference_optional_args
Date: Mon,  7 Apr 2025 18:37:12 -0400
Message-Id: <20250407223714.2287202-1-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

This series adds a fwnode-equivalent to of_parse_phandle_with_optional_args.


Sean Anderson (2):
  device property: Add optional nargs_prop for get_reference_args
  device property: Add fwnode_property_get_reference_optional_args

 drivers/base/property.c  | 50 ++++++++++++++++++++++++++++++++++++++--
 drivers/base/swnode.c    | 13 +++++++----
 drivers/of/property.c    | 10 +++-----
 include/linux/fwnode.h   |  2 +-
 include/linux/property.h |  4 ++++
 5 files changed, 65 insertions(+), 14 deletions(-)

-- 
2.35.1.1320.gc452695387.dirty


