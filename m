Return-Path: <devicetree+bounces-137092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DCAA07762
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:29:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9686D3A8B82
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A721218E9F;
	Thu,  9 Jan 2025 13:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="XcQtMVev"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-zteg10011401.me.com (pv50p00im-zteg10011401.me.com [17.58.6.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF7F218EA6
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736429324; cv=none; b=PQqJ1JByGshem+MUPSshSBp9eFng1JjHqN6L63V4x5Kp4mth/XM0blIBIuIowBYBUt19qyRTmsja2rbzfPHjM15burpvz2Yw63nT1m1SgGikjXuFnMW3sxP4QmI11mO0S9We7ZTrXIC05n0Jc9F4aYUB7tN82BbI2P2wKLzb0Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736429324; c=relaxed/simple;
	bh=jW2pt1kirzv476fWJ3VnMBI4Flqc/IZzotnFaTMJyAY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HJW4ajK7xcGnwG2aUerSNKUWuZaFomvEfdtBPi6H/d4RvwHvEy4Xn9ldKHoUoHShSEDx5dHYLAu1ZXBx2LHXrxmD9zX0AcaIXsKPk/GcB8+tPo1zIKzg7okUhYc4Is1ubNRUYo1me4meGhVWhwHNLWXtXXTyxvhoMgmlOOALxII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=XcQtMVev; arc=none smtp.client-ip=17.58.6.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736429322;
	bh=Ak+4DAJjixtYTkxuqIXBIgZjCkGC+Pi0wIvtasZPM64=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=XcQtMVevLldkj0JDUBoEiPgn445sGGzAbJSIjBcCG4tj0a2cH/RP6avHlY1i00sRW
	 LnRuvzY1HseYo0fyVHjTYsGExjdj4r77epCts49BFKe7UQf1XClfkKRBWELQJ5YvRk
	 lobJzgyt4W8OIdQTovQ+JDxA1K42EAId+gAALIm+28ghPBoMm3HRw4+rUvm+mhAyRa
	 DFuIxI7Y9NQGX6FNR9Y+1D31D6VKeA0qnxFi5yN85eUQiYIydlCAsECshwA/bEDR1i
	 A76WK5ujTd+MuZ20/+1QEs8x7kRIFSTiF5sojbhYhHD1aNl6vZyZlnZZdmLyIq/VCs
	 QyglNXmiy7hig==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011401.me.com (Postfix) with ESMTPSA id 8C54634BAAE7;
	Thu,  9 Jan 2025 13:28:37 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Thu, 09 Jan 2025 21:26:58 +0800
Subject: [PATCH v4 07/14] of: property: Fix potential fwnode reference's
 argument count got out of range
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-of_core_fix-v4-7-db8a72415b8c@quicinc.com>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
In-Reply-To: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 Maxime Ripard <mripard@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Grant Likely <grant.likely@secretlab.ca>, Marc Zyngier <maz@kernel.org>, 
 Andreas Herrmann <andreas.herrmann@calxeda.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Mike Rapoport <rppt@kernel.org>, 
 Oreoluwa Babatunde <quic_obabatun@quicinc.com>
Cc: Zijun Hu <zijun_hu@icloud.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: Hw1KZoDix76YYdmiNU9ZOb6MCN-krsqi
X-Proofpoint-ORIG-GUID: Hw1KZoDix76YYdmiNU9ZOb6MCN-krsqi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-09_05,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 adultscore=0
 suspectscore=0 mlxlogscore=909 clxscore=1015 malwarescore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501090108
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

Currently, the maximal fwnode reference argument count supported is
8, and the maximal OF node phandle argument count supported is 16, but
of_fwnode_get_reference_args() directly assigns OF node phandle count
@of_args.args_count to fwnode reference count @args->nargs, so may cause
fwnode reference argument count got is out of range, namely, in [9, 16].

Fix by truncating @args->nargs got to 8 and warning if it > 8.

Fixes: b66548e2a9ba ("of: Increase MAX_PHANDLE_ARGS")
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/property.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 6245cbff3527d762c16e7f4b7b7b3d4f2e9ddbe6..5ef9b2ced43ee7c4bfe88ea3cb11f3182da0dab9 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1072,6 +1072,11 @@ of_fwnode_get_reference_args(const struct fwnode_handle *fwnode,
 	}
 
 	args->nargs = of_args.args_count;
+	if (args->nargs > NR_FWNODE_REFERENCE_ARGS) {
+		pr_warn("%s: Truncate arg count %d for property '%s' phandle index %d\n",
+			__func__, of_args.args_count, prop, index);
+		args->nargs = NR_FWNODE_REFERENCE_ARGS;
+	}
 	args->fwnode = of_fwnode_handle(of_args.np);
 
 	for (i = 0; i < NR_FWNODE_REFERENCE_ARGS; i++)

-- 
2.34.1


