Return-Path: <devicetree+bounces-141714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8EDA2220E
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 17:49:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB2171883809
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 16:49:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E3211DF744;
	Wed, 29 Jan 2025 16:49:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3151DE892;
	Wed, 29 Jan 2025 16:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738169346; cv=none; b=jP794m44pML+CQn0iJj/PIKyN3pKgH/ySkSMGo2zUtmgRDz68hpCEJTatc5Reb/VQKLs0X3KmoksS3FXKDxWUeVhk6LeYV0SUJVQFvQH6XUc2p3wZu5wmor39Jc+74/2EV0pnMwyhESpUDiNsPNCgeDG9XkzDObPSJHmovFNTCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738169346; c=relaxed/simple;
	bh=PQAZZX4qERW7q/sp1IUmRbStoPzV5IVvbODsxUN7LNI=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=jZXIyuaHU29PYQUDxGpMcTPt5oy6vWlV3fJdf4yQNCp5To/cIjTJOOLnlYXnc8z7/arIFMnYT2Vd4NNXt9gNNrqQoMefoHvOS8NdtFcofEFiu5B33uO2sDzafshhhfHVH1AGKKGkZQapZGBQvtzcSn0M3OZoEhLO8Ze/x0IOeWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.216])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Yjp2q14chz6L4t7;
	Thu, 30 Jan 2025 00:46:43 +0800 (CST)
Received: from frapeml500003.china.huawei.com (unknown [7.182.85.28])
	by mail.maildlp.com (Postfix) with ESMTPS id 5BF721404FC;
	Thu, 30 Jan 2025 00:48:59 +0800 (CST)
Received: from a2303103017.china.huawei.com (10.47.69.217) by
 frapeml500003.china.huawei.com (7.182.85.28) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 Jan 2025 17:48:58 +0100
From: Alireza Sanaee <alireza.sanaee@huawei.com>
To: <robh@kernel.org>, <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <jonathan.cameron@Huawei.com>,
	<linux-arm-kernel@lists.infradead.org>,
	<shameerali.kolothum.thodi@huawei.com>, <zhao1.liu@intel.com>,
	<yangyicong@hisilicon.com>, <rrendec@redhat.com>, <catalin.marinas@arm.com>
Subject: [RFC PATCH v2 0/1] base/of/cacheinfo: support l1-cache entry in dt
Date: Wed, 29 Jan 2025 16:48:54 +0000
Message-ID: <20250129164855.676-1-alireza.sanaee@huawei.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: lhrpeml500012.china.huawei.com (7.191.174.4) To
 frapeml500003.china.huawei.com (7.182.85.28)

This RFC adds support for l1-cache entry in device tree. The changes are
based on the assumptions that nodes will have l1-cache to describe first
cache layer. This patch enable to describe shared caches for SMTs which
is not currently possible about which there were discussions already
[1,2,3].

The question that I am seeking feedback for is to see if this might be a
good way to go about solving this issue? Or instead using phandle and
index in CPU nodes is a better way to go according to prior discussion,
I have another patch this investigates this approach [2]. Apparently,
every single CPU will need to addressed in the cpu-map structure as per
Mark mentioned earlier [4].

Sample device tree:

             cpu@0 {
                        next-level-cache = <0x800b>;
                        phandle = <0x800a>;
                        reg = <0x00>;
                        enable-method = "psci";
                        compatible = "arm,cortex-a57";
                        device_type = "cpu";

                        l1-cache {
                                next-level-cache = <0x8008>;
                                cache-level = <0x01>;
                                d-cache-sets = <0x100>;
                                d-cache-block-size = <0x40>;
                                d-cache-size = <0x10000>;
                                i-cache-sets = <0x100>;
                                i-cache-block-size = <0x40>;
                                i-cache-size = <0x10000>;
                                phandle = <0x800b>;
                        };
                };

                cpu@1 {
                        next-level-cache = <0x8009>;
                        phandle = <0x8007>;
                        reg = <0x01>;
                        enable-method = "psci";
                        compatible = "arm,cortex-a57";
                        device_type = "cpu";

                        l1-cache {
                                next-level-cache = <0x8008>;
                                cache-level = <0x01>;
                                d-cache-sets = <0x100>;
                                d-cache-block-size = <0x40>;
                                d-cache-size = <0x10000>;
                                i-cache-sets = <0x100>;
                                i-cache-block-size = <0x40>;
                                i-cache-size = <0x10000>;
                                phandle = <0x8009>;
                        };

                        l2-cache {
                                next-level-cache = <0x8002>;
                                cache-level = <0x02>;
                                cache-unified;
                                cache-sets = <0x800>;
                                cache-block-size = <0x40>;
                                cache-size = <0x100000>;
                                phandle = <0x8008>;
                        };
                };

TODO: If this is something people are happy with then I will update
spec/bindings as well, which will be sent to spec mailing list too.

1) https://lore.kernel.org/linux-devicetree/CAL_JsqLGEvGBQ0W_B6+5cME1UEhuKXadBB-6=GoN1tmavw9K_w@mail.gmail.com/
2) https://lore.kernel.org/linux-arm-kernel/20250110161057.445-1-alireza.sanaee@huawei.com/
3) https://mail.gnu.org/archive/html/qemu-arm/2025-01/msg00014.html
4) https://lore.kernel.org/linux-arm-kernel/Z4FJZPRg75YIUR2l@J2N7QTR9R3/

Alireza Sanaee (1):
  base/of/cacheinfo: support l1 entry in dt

 drivers/base/cacheinfo.c | 50 ++++++++++++++++++++++++++--------------
 1 file changed, 33 insertions(+), 17 deletions(-)

-- 
2.34.1


