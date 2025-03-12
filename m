Return-Path: <devicetree+bounces-156724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D93A5D41D
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 02:41:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5DA77189A390
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 01:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A61078F30;
	Wed, 12 Mar 2025 01:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b="gdx+CMy5"
X-Original-To: devicetree@vger.kernel.org
Received: from MEUPR01CU001.outbound.protection.outlook.com (mail-australiasoutheastazolkn19010010.outbound.protection.outlook.com [52.103.73.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84EC8A31
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 01:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.103.73.10
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741743687; cv=fail; b=Pd0i7I1ck3N3GqEZPPE4Ak4m3HbZCgPow6O7GuC2XjFxbLVX43pGncrutI/YgZIYg2TS91+cmv+XYATz/MI7GvXSYDLLsPe+9I5u3EMASPSjcIxbicw3qWfJnrG55nIrhBQYOwttQmTdFT/9c3rR4xKnusrrOf3EqMNcnV7t+UA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741743687; c=relaxed/simple;
	bh=Gmgm4gpVdvX8iE9hyCZ0ZmsJYVkd0OHhJCtt8qvjIMU=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=fLhOgu1Br/pdoe7adL4Shjba5beiahyUDXGJkkYRYEbkSIWwLzh9eAitaUP4aoLogPWSTNHn2VXoxvB78cyTpwyhalr2E7Bh1JIzULzl5z0QiTSskfTn3WasAoiA+trftFeVHsDF8qNVnpivvciEt4hdT60jyjFx+c2LaevOqzc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com; spf=pass smtp.mailfrom=hotmail.com; dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b=gdx+CMy5; arc=fail smtp.client-ip=52.103.73.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hotmail.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kosW5rGg2GJWUcu750rbx7/gvVZ4UboZwJJdvJ5YvYmQNIWKJfb5/0W25QnbHfq21lNMNmVU/qBmPeIc1KYM0fc8O2Dh1uvTCpC+817Gg3zDTtATvNsTPnQ2JrLF3x/dwVEJs+Gp56A4cdsPQkQXuvq0aVOsSAsBAgYZQk7cUC6D8d8GQaUQgxghrF9iaVC93DuQGFTgKXYYDt8lWBbEAOEf7GYBYbXkfi9vag78zhj7gP9M0EF9ex5j98ekbjrf3N8K74/n0dMeFlIdx4YPozujtRR3zuEEUBdTaWRp8Rkl9svFAJRGDMtwzSoRcOQmWXUHSWbHMT5TZFHxxzFv8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4/2SmZsx5wLdQieSovMACfds9AByzltBTgisUMf8Nqg=;
 b=d5HQTTOKgnAI3NvlNEsQjkL3PQZH8HHaQYfvQ70FyPnEIUSgzqjj47KDjFvMEd14gki1N0e3i60E6dwxJws6km8suTBT3IeJyr/yM2M5WeO+M/DHc9OtcGv5vu0CbAWB7DdR7ZBvuJQv1I89F8V0FiVfYnmvJVaZ2klBuw4WM1cZYCiE8+0941+WVv6FoTfCDj1sSaWJzLUMSGNkQsq3AMgxQ1xGLejFIt94aBw99q7VxQ9QndRoWklPyzBTKPjfDx/aq+wqua6F5fmnrUEe+u+5bWzL0nVERjQsRxJVL4ojNr38cVgrrUG4nOZFqPCaZpbTW3JrozqdyjngFwkL1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4/2SmZsx5wLdQieSovMACfds9AByzltBTgisUMf8Nqg=;
 b=gdx+CMy5xnGkMAf3WogHk8B+qaZNhDwNqNoNLRVTS6ShtEvZP6sr1VLlVqaV20vxgfnZSSFVqDIDVArvaRA8SPPmz7s1XyIf61KEf1a1bG4R9SfC/DmiWaJYyAOT1hUSh3yF4FZjSLXEVWCjjxogvhoKqmGgBVcnc9rKiI5gk4k1DoH32PNbWz9JJ0KKTkVTri9PDbKi1+w+ALpLmXlTW99w0uAWvgZWnqMSCAIGQGq7rbvpyxA+MCdXwxgkGVEeRDTbtbxJVOeCW1EgCh1yeNq3VHfGr03Opi4kVBVSMZzizGfdHp/B3ZqY3ufxnzwzz98ICXyOhzkoivSWYZKPfA==
Received: from MEYP282MB3164.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:159::11)
 by SY6P282MB3957.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:1d8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 01:41:21 +0000
Received: from MEYP282MB3164.AUSP282.PROD.OUTLOOK.COM
 ([fe80::f65e:52a:9bfb:525f]) by MEYP282MB3164.AUSP282.PROD.OUTLOOK.COM
 ([fe80::f65e:52a:9bfb:525f%4]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 01:41:21 +0000
From: Ryder Wang <rydercoding@hotmail.com>
To: Rob Herring <robh@kernel.org>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: Bug: lock problem for the function of_find_node_by_name
Thread-Topic: Bug: lock problem for the function of_find_node_by_name
Thread-Index: AQHbkAsRnFoCuMyk30+7HuTIMoQxfbNt7sMAgADP0pQ=
Date: Wed, 12 Mar 2025 01:41:21 +0000
Message-ID:
 <MEYP282MB3164B4D3CC54CC6E9D46E55EBFD02@MEYP282MB3164.AUSP282.PROD.OUTLOOK.COM>
References:
 <MEYP282MB3164D0271E9BDA49BBB7E7D1BFD42@MEYP282MB3164.AUSP282.PROD.OUTLOOK.COM>
 <20250311131348.GA2859052-robh@kernel.org>
In-Reply-To: <20250311131348.GA2859052-robh@kernel.org>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MEYP282MB3164:EE_|SY6P282MB3957:EE_
x-ms-office365-filtering-correlation-id: eaaeae26-a0ee-4174-9fde-08dd6106fddc
x-microsoft-antispam:
 BCL:0;ARA:14566002|19110799003|461199028|8062599003|8060799006|15030799003|7092599003|15080799006|3412199025|440099028|102099032;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?M1B+ROjAPM9vwt3Uy5BWBeG4YHEUUFv2ANu8suDpKh5BZ7MrgCTycPW3E6?=
 =?iso-8859-1?Q?S180JZK7/35PaDfC8ZI/57YioZw2VMo5oPQyKtI9Hk09OUE+kDaU+jAz6a?=
 =?iso-8859-1?Q?ZChqRF2Tej1mqf1ZOhq3znLLgp+GD6+sC0bhvLsEINC1NJ7nFjhrmuv0G6?=
 =?iso-8859-1?Q?cEbBWxDBgnXV83aqc3je8qFdCWRrDeqkBZ/3uJsM2rZOhsfUVpGbeqag5a?=
 =?iso-8859-1?Q?2Rt8h8gyBuWmuuXXQrgMcN/1CtAphxunaTvbm0Tz7Y2bg26zL1q73+xtIa?=
 =?iso-8859-1?Q?gnhhn3B5ajZ1SPqHEb7430c6sPs61QmprkeVoVuU3jU72lsgCmv1+pTVwF?=
 =?iso-8859-1?Q?sJQhzL9Fje+I4s/AaFpEph4vWFaKr4tIyvBFmOtYgSD2pP9w72PA8yaAZu?=
 =?iso-8859-1?Q?0IBcmgrKbyh6nSdM3YCCuUjIwFjJiuVXB2PqAhxgWhQM/3dlQtjGhpazwx?=
 =?iso-8859-1?Q?vURQkaxqaXm5sd7bnpStWSeQy3mWwmedNea7BkWiUpyR7c+BkRLsvVLusf?=
 =?iso-8859-1?Q?DABmsVStFXVfMTy5qBSSjKkPDR/tpnRZNGmM9k2YxRkYDnqcnxTfGdqldA?=
 =?iso-8859-1?Q?gy2ZrxhPjaLOCc753cIdcYu119kT2+MJuvocxZFJQRPlVZq65fOh6YmFcD?=
 =?iso-8859-1?Q?1Zfi2xA3g/Y0GXfa90gqLMrBZKPlQy4KAvOeODKRwfFycIPviW26kPSh5O?=
 =?iso-8859-1?Q?5KDoAsFdcpFPB+ycJ22p5TvhdJqsDD4tNcWs4JhzJ2PH/roD8nRn+jynM/?=
 =?iso-8859-1?Q?/FwFJ4NqmHjcG2SzyNhMRqMbLHQ5CdiJyrQ3kfWlQMKg2TQgpqOAHcyDbW?=
 =?iso-8859-1?Q?gc8JCSxIXhhPdqaVDZcrFpQK/DQ3Yp5ortML6KEp8UYdBAH8GDGbE5cVVF?=
 =?iso-8859-1?Q?26BtFb1QcKpEE5eU1eiKGoryCEb/+K21YRB8o4Apae8WgX0ErqLkrvupmN?=
 =?iso-8859-1?Q?me9rbClQZBgW+kWnv94hPFny+hKVxxZI0EGP5HOVH5DFGK/3bHp/l+k8Pa?=
 =?iso-8859-1?Q?koxjm6Ly9wgLSPd/LmupBKW44+MhbHUDkX8UL7oja9HBPExxEJ3FObZlUS?=
 =?iso-8859-1?Q?rMFC6Pr0+O5HwU6W9JPchKKxAl/vd+P79Wa+fnDNT2yyf6N8qpVHh0TbaV?=
 =?iso-8859-1?Q?NcAux37jqUN7LGiQH/qosHIykqOl4=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?ewVZLibMCliBp8xZXbGEwx+HSadr9R7hZcU2oCqS7WKHqjLbREdcwvRaly?=
 =?iso-8859-1?Q?RWOiYyaQ1v7s+jqOTdS6cQj9S8q/Oe3FTuqqWvcjeZyZyrlCHXMb30xtHV?=
 =?iso-8859-1?Q?9N7yUd04YozLPmjK5k16zS3fuRlt8KWQQzliHs9BY+oytgPkjZjqugmiC+?=
 =?iso-8859-1?Q?NoB9v0bpIUvo0GZqWrEUgyPux823bMFbiTzomWJ8KJAFzqT3dDvIoRJghq?=
 =?iso-8859-1?Q?29+eph8IKxq3SLfIIGXIAFuFRZQs6Hwvk5OcYnmWGfBqT6J1rgfQGe5f6y?=
 =?iso-8859-1?Q?WH/ACklS0LsgZ99poEXAgk83ufH5dD9YaJc7B+GlQnBDZfkMvA2YdvEmv/?=
 =?iso-8859-1?Q?vNFoGmm5+AbZ3as3KXLJ3FToVJ/L9zcU8BUzsu45guJCIjdWCRR2Pe3iLi?=
 =?iso-8859-1?Q?jJrLOMob4vFNh+PxwiVHy7KG256nsGpxeNO4l/8VI8v1KMLTsM7jUki8Ay?=
 =?iso-8859-1?Q?Er6XbiKtihK8JdrliJYGJNTEcYSeui0VQScS6KGRvzT9uru5xF8OZXxIBY?=
 =?iso-8859-1?Q?cBEc3jNu2/cUX//+oB02kP77Mz8PnBhxG8e+WNe+0Ine0KTM7PAcqhLwHj?=
 =?iso-8859-1?Q?nF23OxqleJNVvzdAynbxe3aBpuyw+2QnRWEJMJOIsTxgi3OfNrGtAQTX3e?=
 =?iso-8859-1?Q?orEMa56Vlviw7Aq0YdXXvRuQzmKhAxRHjImxTcMdZ6bAILkg1rElflmKRH?=
 =?iso-8859-1?Q?wyOOAgPVuyWNpWNhkkM5NxZkJmdMSp4YAfHcs5U0/zVOhx7GYY42+G2MNZ?=
 =?iso-8859-1?Q?sKlwO2YKk0kxIiC4ZZrt8laD7UYQlqEqjzRLKvC9i8+dqc9tjm3/LfDAaZ?=
 =?iso-8859-1?Q?3dH5W9Y2bLVL9wwZPIHjtp94f0siLTcakHsjCam9zZ3VP7RAXxFjI9mriG?=
 =?iso-8859-1?Q?1bfD+LjLEHXNp4V54MxvTe/SqvDJ/9xfwFnhdFswXl8HAEt6/Tf851ng6f?=
 =?iso-8859-1?Q?oShKkgDEtEXz88EcpPEKMc3GjC85RYBIfjSRICnJdKurdPONOwDxUwHgD8?=
 =?iso-8859-1?Q?Okn3YBZOpmukjAB26Nd3k0bJz+kxIlTQyP0uur479n4eFNB8YKRSl2L3gA?=
 =?iso-8859-1?Q?p3Ymrl4ioErFMmr+YO6+kd7pqOdMnzY4dTiLgqyJ+H+SWJhvrjMfkd/AP1?=
 =?iso-8859-1?Q?FH/9sPD2dO1MhtKds7yFG3BKCW0Uqk7ZrrCTfVR/J8o+ZJBnofPZKcapr3?=
 =?iso-8859-1?Q?32LfzuJ98X7yIYk1p+XL55GLNgIb7FISqAvEsiFeaDxFPOwXHObNX2ugII?=
 =?iso-8859-1?Q?deuJ4JLgQe3+c8pSDl0fO/mDwwQENe0jK6Vu4SW+8=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-722bc.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MEYP282MB3164.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: eaaeae26-a0ee-4174-9fde-08dd6106fddc
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 01:41:21.2748
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY6P282MB3957

Hi Rob,=0A=
=0A=
Thanks for your reply.=0A=
=0A=
This issue occurred on some embedded ARM system for some device driver whic=
h called of_find_node_by_name. Below is the kernel log including the call s=
tack:=0A=
=0A=
    [  650.456107][ T3481] BUG: sleeping function called from invalid conte=
xt at kernel/locking/rwsem.c:1637=0A=
    [  650.465589][ T3481] in_atomic(): 1, irqs_disabled(): 128, non_block:=
 0, pid: 3481, name: kworker/0:0=0A=
    [  650.474970][ T3481] Preemption disabled at:=0A=
    [  650.474976][ T3481] [<ffffffd36bb03118>] of_find_node_by_name+0x2c/0=
x124=0A=
    [  650.486191][ T3481] CPU: 0 PID: 3481 Comm: kworker/0:0 Tainted: G   =
        OE     5.15.149-debug-gc1dc9fe4253b-dirty #1=0A=
    [  650.486208][ T3481] Hardware name: xxxxxxxxxxxxxxxxxxxxxxxxxx=0A=
    [  650.486219][ T3481] Workqueue: events_power_efficient phylink_resolv=
e=0A=
    [  650.486244][ T3481] Call trace:=0A=
    [  650.486249][ T3481]  dump_backtrace+0x0/0x214=0A=
    [  650.486271][ T3481]  show_stack+0x18/0x24=0A=
    [  650.486287][ T3481]  dump_stack_lvl+0x64/0x7c=0A=
    [  650.486305][ T3481]  dump_stack+0x18/0x38=0A=
    [  650.486319][ T3481]  ___might_sleep+0x15c/0x180=0A=
    [  650.486336][ T3481]  __might_sleep+0x50/0x84=0A=
    [  650.486348][ T3481]  down_write+0x28/0x54=0A=
    [  650.486364][ T3481]  kernfs_remove+0x38/0x58=0A=
    [  650.486381][ T3481]  sysfs_remove_dir+0x54/0x70=0A=
    [  650.486396][ T3481]  __kobject_del+0x50/0xe8=0A=
    [  650.486413][ T3481]  kobject_cleanup+0x58/0x1e4=0A=
    [  650.486427][ T3481]  kobject_put+0x64/0xb0=0A=
    [  650.486439][ T3481]  of_node_put+0x1c/0x28=0A=
    [  650.486454][ T3481]  of_find_node_by_name+0x74/0x124=0A=
    [  650.486466][ T3481]  ethqos_configure_mac_v4+0x13b0/0x1750=0A=
    [  650.486485][ T3481]  ethqos_fix_mac_speed+0x48c/0x1174=0A=
    [  650.486500][ T3481]  stmmac_mac_link_up+0x25c/0x504=0A=
    [  650.486517][ T3481]  phylink_resolve+0x1b4/0x5c0=0A=
    [  650.486529][ T3481]  process_one_work+0x1a8/0x3a0=0A=
    [  650.486546][ T3481]  worker_thread+0x22c/0x490=0A=
    [  650.486559][ T3481]  kthread+0x154/0x218=0A=
    [  650.486573][ T3481]  ret_from_fork+0x10/0x20=0A=
    [  650.486863][ T3481] BUG: spinlock recursion on CPU#0, kworker/0:0/34=
81=0A=
    [  650.493577][ T3481]  lock: 0xffffffd36c5a11e0, .magic: dead4ead, .ow=
ner: kworker/0:0/3481, .owner_cpu: 0=0A=
=0A=
________________________________________=0A=
From: Rob Herring <robh@kernel.org>=0A=
Sent: Tuesday, March 11, 2025 21:13=0A=
To: Ryder Wang=0A=
Cc: devicetree@vger.kernel.org=0A=
Subject: Re: Bug: lock problem for the function of_find_node_by_name=0A=
=0A=
On Sat, Mar 08, 2025 at 10:00:31AM +0000, Ryder Wang wrote:=0A=
> It looks there is a potential bug in some device tree function in=0A=
> Kernel code (It does not depend on the version of the kernel).=0A=
>=0A=
> One device tree function of_find_node_by_name() calls=0A=
> raw_spin_lock_irqsave() to lock. Then it calls of_node_put(), before=0A=
> unlocking (raw_spin_unlock_irqrestore). of_node_put() will call=0A=
> kernfs_remove() in some cases. So problem is here: kernfs_remove()=0A=
> will always call down_write() which might make the process sleep. As=0A=
> we know, sleep is not allowed between lock and unlock of spin lock.=0A=
> That's why there is might_sleep checking within down_write(), as=0A=
> there may be dead lock risk or disabling interrupt too long.=0A=
>=0A=
> The actual call trace is like this:=0A=
> of_find_node_by_name=0A=
>     raw_spin_lock_irqsave=0A=
>         ...=0A=
>         kernfs_remove=0A=
>             down_write=0A=
>         ...=0A=
>     raw_spin_unlock_irqrestore=0A=
=0A=
The bug here would be the reference count going to 0. Do you have a=0A=
case or unittest that can trigger this?=0A=
=0A=
Rob=0A=

