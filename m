Return-Path: <devicetree+bounces-140825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB52A1B93C
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 16:30:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2695F17137F
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 15:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC86B155759;
	Fri, 24 Jan 2025 15:20:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFF7136E09;
	Fri, 24 Jan 2025 15:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737732013; cv=none; b=BQzA9gQyAQ+2OdAxEz5hliRgiwmnz1HhyURW1wzPBeg+ACjPhJ2os+4jcHIH/owqJq2f4D7NIIfaTtvfqeF/SU5LBC3Cp81nFHB+Dv/TnWuou3VWc27K4ajjJdjXr/jEs9/+uAl2LZPD5NFQ/DBvfZpYgFEcJWGL5X0ku8Ptj+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737732013; c=relaxed/simple;
	bh=zuey8zLg1RFp9gXifzF/I/EZqHp4SVJUNFDCzWBqhRY=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=mdkFa9r8UP626/2UeM+xDyiYFQaonBsjEypRBOWVb+dsvwbgkWmzbkl/oingvGCYlrLIJ5bS5l4a6UJgaEarYm6BiiocXdcd+kc10nSsPa50wB3h8qPOjXU3LhAkBG0UhfRBs9BgBa9NuJRZcPwGYWgyY9CB+z9+tnlaq8FEkVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.31])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4YfhJz3XkMz6M4Kb;
	Fri, 24 Jan 2025 23:18:11 +0800 (CST)
Received: from frapeml500003.china.huawei.com (unknown [7.182.85.28])
	by mail.maildlp.com (Postfix) with ESMTPS id 3B99C1403D2;
	Fri, 24 Jan 2025 23:20:10 +0800 (CST)
Received: from a2303103017.china.huawei.com (10.195.34.97) by
 frapeml500003.china.huawei.com (7.182.85.28) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 24 Jan 2025 16:20:09 +0100
From: Alireza Sanaee <alireza.sanaee@huawei.com>
To: <robh@kernel.org>, <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <jonathan.cameron@Huawei.com>,
	<linux-arm-kernel@lists.infradead.org>,
	<shameerali.kolothum.thodi@huawei.com>, <zhao1.liu@intel.com>,
	<yangyicong@hisilicon.com>, <rrendec@redhat.com>, <catalin.marinas@arm.com>
Subject: [RFC PATCH v1 0/1] base/of/cacheinfo: support l1-cache entry in dt
Date: Fri, 24 Jan 2025 15:20:07 +0000
Message-ID: <20250124152008.313-1-alireza.sanaee@huawei.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: lhrpeml100001.china.huawei.com (7.191.160.183) To
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

1) https://lore.kernel.org/linux-devicetree/CAL_JsqLGEvGBQ0W_B6+5cME1UEhuKXadBB-6=GoN1tmavw9K_w@mail.gmail.com/
2) https://lore.kernel.org/linux-arm-kernel/20250110161057.445-1-alireza.sanaee@huawei.com/
3) https://mail.gnu.org/archive/html/qemu-arm/2025-01/msg00014.html
4) https://lore.kernel.org/linux-arm-kernel/Z4FJZPRg75YIUR2l@J2N7QTR9R3/

Alireza Sanaee (1):
  base/of/cacheinfo: support l1 entry in dt

 drivers/base/cacheinfo.c | 54 +++++++++++++++++++++++++++-------------
 1 file changed, 37 insertions(+), 17 deletions(-)

-- 
2.34.1


