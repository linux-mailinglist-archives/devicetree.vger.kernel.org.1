Return-Path: <devicetree+bounces-125350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 218939DBAFB
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 17:02:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DFFC2162E07
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 16:01:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B2451A9B47;
	Thu, 28 Nov 2024 16:01:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5363232
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 16:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732809712; cv=none; b=UWmHpJaSfoPxIly52FpvH9ehrusH6Y+EpR0t5bgBNkg+1Orhyt4jvmBtYzcbDCePAkRtwGfEy8ath3H8p/PGe5eaENM48B6JO/+QuXnRPemJmc9sUWkldsbFZ7IjCNYhRz2ljWs8NfeXYeq98knJLlef727OkMTTkwd2huTsD8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732809712; c=relaxed/simple;
	bh=Yo704WM3ohcR/uyrymr8216bfklWjJQ7VFQfMaikw+I=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=PmZtEEq2phFri+jSxkJUO1YNBm5L/QA/Tio3ZHx9FJRliOzPusIEsxDglUJSbfybR5h9vsTDoh+UnDsw/2fsP8NBUwxJxjvZZYmxzbgSopL2y2OsGr1ZLVofidUmfIXz0HnB8PrsYs8NW8NeQi6NKn/mULYCpAeEKzeXvx2W/8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.216])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Xzgyt59gBz6GDlY
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 00:01:10 +0800 (CST)
Received: from frapeml100002.china.huawei.com (unknown [7.182.85.26])
	by mail.maildlp.com (Postfix) with ESMTPS id 80D6A140C98
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 00:01:45 +0800 (CST)
Received: from frapeml500003.china.huawei.com (7.182.85.28) by
 frapeml100002.china.huawei.com (7.182.85.26) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 28 Nov 2024 17:01:45 +0100
Received: from frapeml500003.china.huawei.com ([7.182.85.28]) by
 frapeml500003.china.huawei.com ([7.182.85.28]) with mapi id 15.01.2507.039;
 Thu, 28 Nov 2024 17:01:45 +0100
From: Alireza Sanaee <alireza.sanaee@huawei.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Separate L1 cache object in CPU@x
Thread-Topic: Separate L1 cache object in CPU@x
Thread-Index: AdtBrffZJOSuRnkJRKOI8ecEX+3OfQ==
Date: Thu, 28 Nov 2024 16:01:44 +0000
Message-ID: <a068210820b44d28a6e97eb07f43f3c5@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi=20

I was working on some scenarios where I have multi-threading on for my ARM =
CPUs and would like to share L1 caches between two hyperthreaded cores. Thi=
s is particularly possible to be expressed via ACPI PPTT tables, and it is =
important to be able to express the same thing on both devicetree and ACPI =
PPTT because some use device tree and some use PPTT table for topology and =
sharing purposes on ARM. Currently L1 caches are expressed via some propert=
ies within CPU object and it seems not possible to use a separate cache obj=
ect for L1 looking at the latest spec. I wonder what the thought are on thi=
s?

Thanks,
Alireza

