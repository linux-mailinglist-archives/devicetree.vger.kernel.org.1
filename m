Return-Path: <devicetree+bounces-142375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83351A2527A
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 07:34:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 31FE63A3F68
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 06:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F8D178F5E;
	Mon,  3 Feb 2025 06:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="QcBht3c+"
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta1.migadu.com (out-177.mta1.migadu.com [95.215.58.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDBBD23A6
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 06:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738564488; cv=none; b=n2zYiu61+aDSFmphAjbKY+5/QpnX7ZGQiGQm8eSq1Ifum5iT6BX7lNqR7xHqjJ1ebMBALgkwu59sAFAOaa4cYbbJIhnGSnov1VQAA4YeTh5zY3YDdJBl8SvD9jWTZ/fsQISZV3zx0PUTcIVsdHu16OaJ1cOoSBXqvjTfg6LlOCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738564488; c=relaxed/simple;
	bh=xGMuxjiG3J1KY0tpr4BD/2R/zK2QTssBPpcx8ig7gas=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BPfYBbYn+Jw2iE/OsYwioq+R0qBt4Z66pZGppGXuJsfXS6dVQPu6W/9Kgnk/AmFDKblgPFPmitw9awiVgttBFTE4Ol0euOuC2Rgw1/tpgutH7Zl6dE3iAA5B8vfqJrE3bilTeFNV1anRonqG1jGtc1inC/9BOXMieF4tLSzHYwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=QcBht3c+; arc=none smtp.client-ip=95.215.58.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1738564482;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Rxn7KNy58nycOR58GR1ZstIpveHU6RnMKXkVaNeuEy0=;
	b=QcBht3c+OufRO3iFS6wrhVpjylMePpMaqwaomd/7X7hA8XBPKaNDGk9iC3dWPZ9NzKoy/g
	UYw9TC40q+nyqQqgLo1Ij+y2kpsccgqveHqHIfjc6h9MfZ6pzShLgYgU3nL6s3pjXuyPg7
	fPN1jxxJGazM4Uy5ja9rIjqCURIGWIsirdPTRhDkIxyBmydOZa+ZLN1+Xj385iUc2Kc2JY
	bl78FjPa3bZ1s46bnHrJwkg3mhQYAwKuYi718li0Auz8IpFG43O7yYnKfKnwUd301qMYGS
	o6z4hltl0OkyfGtVNBxcbbHGJ6hGAwP1O1th1T08VnCk0BWclX7Sb5e/h2Cxbw==
From: Alexey Minnekhanov <alexeymin@postmarketos.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Alexey Minnekhanov <alexeymin@postmarketos.org>
Subject: [PATCH v3 0/3] Add missing SDCC resets for SDM630/660
Date: Mon,  3 Feb 2025 09:34:23 +0300
Message-ID: <20250203063427.358327-1-alexeymin@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

These resets are part of GCC space and were missed during initial
porting of the platform.

Changelog:

v3:
 * dropped fixes tags, picked r-b

v2:
 * split into 3 patches

Alexey Minnekhanov (3):
  dt-bindings: clock: gcc-sdm660: Add missing SDCC resets
  clk: qcom: gcc-sdm660: Add missing SDCC block resets
  arm64: dts: qcom: sdm630: Add missing resets to mmc blocks

 arch/arm64/boot/dts/qcom/sdm630.dtsi        | 3 +++
 drivers/clk/qcom/gcc-sdm660.c               | 2 ++
 include/dt-bindings/clock/qcom,gcc-sdm660.h | 2 ++
 3 files changed, 7 insertions(+)

-- 
2.45.3


