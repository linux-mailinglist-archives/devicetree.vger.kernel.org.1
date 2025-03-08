Return-Path: <devicetree+bounces-155613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9381A579A8
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 11:00:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92AFE3AF074
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 10:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4529D1B0F32;
	Sat,  8 Mar 2025 10:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b="Jg+fYEjz"
X-Original-To: devicetree@vger.kernel.org
Received: from MEUPR01CU001.outbound.protection.outlook.com (mail-australiasoutheastazolkn19010006.outbound.protection.outlook.com [52.103.73.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDCC1B043E
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 10:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.103.73.6
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741428037; cv=fail; b=evBJyHRLteiEWecI8vnYHzvpMtFEmrbQRre+O3MOzb5j4elNVSFIgNpWSo37sqnldGV9ktxUJED2rrr9MhTJnln83TEo6ey0DI8HRd4Ak6bJdKWIPa7BRVNQ+7Uen0kHy6/W78lOd5SdYsKbZuRpl0EgE07y3juhCOoZ/S23p1A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741428037; c=relaxed/simple;
	bh=jU2EnX5dRRW38ptEWrjm4I3F/6erwjQHxUw2Enxb490=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=Pw+C5RqTW5+d6XsrJIpXU+3YiNgXZjXW0EMeZfMOoj/og1vq80sHzmMs5GLHFI7wi2P1M1BheB0rlQkZVYm3Sd+YKxqqJgzd/Rla4WfLUHNmtz96Dow0BS4ohrSERBYl+ibusL64hBinARHU48NFDpeIQAcPEiT5rtpKDP1dVlM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com; spf=pass smtp.mailfrom=hotmail.com; dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b=Jg+fYEjz; arc=fail smtp.client-ip=52.103.73.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hotmail.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P6J1Svrqk6R+16XOCNABuQCeCFm/eci6IsMnO9DfNvMjXPlwjfZwLjPzjkeeTL41/EMx7A121UjKUPzhLB08wGv2uNK8OizAABkqTvGRkIZ7LxcE8TmU0tnjl72F7v8rSEf6EiyozA5x3yLWAOzQ/4JE2RMg/tVQYRu7DbG8RGhkPU2MeI+sPyCifvIc61RofsQ9fcHs+hfWO1rKAO0RRv6ApFGJV9xSjCKzoMoGpq5S/Tiwk+c/g77siZqbNsZatA9jtCtKBpgkSa5mlhjeaiA/+Sjja1En6UI1WjuLZXKhKLVF8Az5mulaOsGx+qRz2gwhzzJlz40ymEFxW+fMBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EX5tTB6aZmSkJrKqYPrBeB5w9Z4G25quioBPcrx4c3o=;
 b=Wmj+3h4H6B/RPyovqr+8VglieCe0zjmPHR7EUELLYfADQ7fVs5uS0drq9lvhdNvyRTTJN+83IAGgIC/iYSlcJq24NP/Ry/XjVMgFHhlA6JjvaPBp/+kcvKwthSTZm6s6FoTvOVgCuybPOHFUkJNv1MRamWYBQQ0vLXugaeOuD7gzf3kkIQgnk/4WuvPLOgAzBEOe3EL+p7INJ1sW7eW0HxrQ5nPkFAJ3l+U05yLM3hibOWzDndjdy6bNaq8TTt9L08ZnZQYqLlhusOftJlcLOuiPBNXBHcs0U8XnfY/VlVOrgspVfUJ2kTGKfmll7rWYOaaFdeyw5vg/jndT1nvC7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EX5tTB6aZmSkJrKqYPrBeB5w9Z4G25quioBPcrx4c3o=;
 b=Jg+fYEjzVEnn3lQu/R53oL2FdWz3WsVRNtK0NASd2O6AfDymeq3Y9oFE4Mc3/IYlyz43/11ccJSN5b9BuEOYwQS3BAMzoI32Uk0zK0mUK1NZoJ/1wXNGzaLMQOuTTkyY+jQb53ct/9hTZwIn8AncHjVoI6NG5ZJdMyykrO6Hbk+MPsnG2ain7CZq1d+BZjI96KzSEOM3b0UAaocvInesBAbKc3QS/WBkGCHNusd4rOPEiQ/n8jsfA7vTq1PbOJNKZD3sGi/tgN7i/HMc5nsqaA3tJYKTLlQ0mj9XCfuKwvJ2D7GUVX+77ipQXHbRSYfm6wBsAbfz5JfxrrNv05LMXQ==
Received: from MEYP282MB3164.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:159::11)
 by ME0P282MB4317.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:227::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.24; Sat, 8 Mar
 2025 10:00:31 +0000
Received: from MEYP282MB3164.AUSP282.PROD.OUTLOOK.COM
 ([fe80::f65e:52a:9bfb:525f]) by MEYP282MB3164.AUSP282.PROD.OUTLOOK.COM
 ([fe80::f65e:52a:9bfb:525f%4]) with mapi id 15.20.8511.023; Sat, 8 Mar 2025
 10:00:31 +0000
From: Ryder Wang <rydercoding@hotmail.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Bug: lock problem for the function of_find_node_by_name
Thread-Topic: Bug: lock problem for the function of_find_node_by_name
Thread-Index: AQHbkAsRnFoCuMyk30+7HuTIMoQxfQ==
Date: Sat, 8 Mar 2025 10:00:31 +0000
Message-ID:
 <MEYP282MB3164D0271E9BDA49BBB7E7D1BFD42@MEYP282MB3164.AUSP282.PROD.OUTLOOK.COM>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MEYP282MB3164:EE_|ME0P282MB4317:EE_
x-ms-office365-filtering-correlation-id: 48bfefa1-616d-4add-3301-08dd5e280faa
x-microsoft-antispam:
 BCL:0;ARA:14566002|15030799003|19110799003|7092599003|461199028|8062599003|15080799006|8060799006|102099032|440099028|3412199025;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?Z/Vh2rQxSInq/0hp0PLUpE5MV7m2D42Xwfz5s5cSJ0QnGgMBAGTsDxMo7H?=
 =?iso-8859-1?Q?+tXrJG9dael0wJqWWNg6BciwaTiWvRAhYfUwB8aSJUefWBlfwxo6HHkfZh?=
 =?iso-8859-1?Q?lNyae1iRctmrgJ4o9mH7ilsA8MA1xmb9PczT/+3vIh2SPejZLaFgm9UrVK?=
 =?iso-8859-1?Q?rpsN5mdwsLh+MWYe/OKwMgXHYinyqSdI49ab/fvtRP7J81cKuilwo5bv0l?=
 =?iso-8859-1?Q?4nrH6AePZq7zRr421zBwRBlDzIjfBsRoHTGeZuRh4iuU0OvEMzWko9HofA?=
 =?iso-8859-1?Q?uK2lBaI80g5DrO74+uJTAZo3hqv+qpzCpPZ+KOqx4k9udPtmuMNuJRkToP?=
 =?iso-8859-1?Q?SZKigMYIeHzIrvtGAdm/plab24dUE1Sv8KfNH+Xz69/P4Rspinzx4ydCvq?=
 =?iso-8859-1?Q?GTg/VcgLBs2eg9hW+ondg74xJm2vmPaOE4AAemBgeXBmL8RnSaBUVUJ3HS?=
 =?iso-8859-1?Q?q5/CWMJzkxH5WKNo6IHOEFtSDN99Y7+A1M5iUb1DxtnAGDZQcOUMlX/Aaw?=
 =?iso-8859-1?Q?AaImWHLN7Vx3hnowIkvLy8TPhFMIUMwz9AH42KdkhGeldK9ORqfbTwT0mL?=
 =?iso-8859-1?Q?qEKZIeJ51UNKL7ax6AEj0n8AjipQTr9skJTFTE0Kj6Sbi/DXXwjj0JQfIf?=
 =?iso-8859-1?Q?7bIV0RAmkeMOHdNMOiUt2h52HVHYt6U2wmqi2p02n3YIIMrgtYR5xtqLv2?=
 =?iso-8859-1?Q?qMPb0EpitxHBp4wD7HUz0UVjyuDjvx75bK0xbZpWwiXCYlYvyr7UILXlmi?=
 =?iso-8859-1?Q?mJJ+vLAjaFH6vzCIlpqykxLPse1Akv1I442pfs6FLr+rOQ1/kZctfw/eoe?=
 =?iso-8859-1?Q?DaT6AJE19jGL6+z8HbPB2+V3rGq3koao2uxpZUx4pS6WDGo8yJGlgulMBH?=
 =?iso-8859-1?Q?6xQYCKNtU4Gwl4iN4a3nwVmDxJhjwfPr7Ke/mf3YUne+ZBFckqUd3+MhSi?=
 =?iso-8859-1?Q?3lwTba4fhrlCMhdgJ6T7GjBMEjkTL7Haj7h/eiyXjTpO2+P0imeW+pkvyu?=
 =?iso-8859-1?Q?re3+gsMn4a+SdSSJu3VQ6C1BYWe6PyqZYxbYVFVPdhmyd95tpsERYSGNHU?=
 =?iso-8859-1?Q?GlkQ0pafDjLYwe1qnh1bJz5LzhBMDffkATYLLFb1iW8ZASNveyRL2L6BEQ?=
 =?iso-8859-1?Q?3Wa0NvQzfKVBxTApNsb8oDZ6H8sbY=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?qZ+nEe8zksTLOVzZVZ6KBikWHoVb3nNx7f16mU+edKYacSwZrVH3Z1Ozuz?=
 =?iso-8859-1?Q?/Rf1KnnC8vGCg+tiZFJ8jpkiwGRSXSofqA+qBYofxWm08dPghTSwuX/U6k?=
 =?iso-8859-1?Q?MmmscvwYc6s2+iIiYGfWLP/wxqFTD90e9txPhpiYfChc9k/gVrXYmHgt8O?=
 =?iso-8859-1?Q?7W2MpibESwCYAegYkuRVJmhEUiaxKCOmVJ8WJGfHu3aHPzVoC2b6bJEhCD?=
 =?iso-8859-1?Q?Ym7laRa3hKlDZXotF3gwi9VAuKHy2i2KPTfI5EXbK0T2FxTco3q7JdseOv?=
 =?iso-8859-1?Q?0Zfp0YNf6fPT/+9bGAWMMZ2uDTMIwIV3aZw/oQyPhA2SbFcxOi32hmyZ1E?=
 =?iso-8859-1?Q?ouOvVAPCPuOIV5S208F8ootfY+Y+t1aNxwhjid2dbU6Ez0nVbAUGeDFbnQ?=
 =?iso-8859-1?Q?ssdayBS9AJYsFjhsGmExEMARGs8ztPlMcv2vBw7X/J+2TaI7pScJoVodTD?=
 =?iso-8859-1?Q?IVBaIq23IyGs7ckDNOr27Fx3RpmiKlmiGJKpobEiqMCEXpay5/K7t8JJaA?=
 =?iso-8859-1?Q?or4oNKDM92uIaM2O5L/gOpVew3bFNjUmiagQ+ZuejdQPvSqKEoY4z+Llf1?=
 =?iso-8859-1?Q?BfS89NJxoaph6ivKlOG8BTmIEB1TKcl5m1BQ1yu60LMLyCtjsBO/WTE1Iy?=
 =?iso-8859-1?Q?m/0Gwg/+ZjMiaMIT2LZPHrGMlnLB3URrCq75Iw5ovhvkl6Z4ZhUCyQ1xMS?=
 =?iso-8859-1?Q?dqUpjHp5FCf6nr/QaRwuA6raIczo6ow2qpvQ1VTEMVQ0hYq/CSfUfxyRoL?=
 =?iso-8859-1?Q?nV9kj8AhIeZlpbgfie2LtKruYIhYnvtle/nB96X+VwVK7tfOOls58AXa0m?=
 =?iso-8859-1?Q?evVLkC+n4CGL+kzGC7OuF1s+Ds/84U1ZBuNclyDDBe7erNYWN3CXVvFFHU?=
 =?iso-8859-1?Q?IPZgpDzvyuwlkRQQfkT3WKO1cKyABDqewyAm3P1DajVCcG0BhvtjZBBj1m?=
 =?iso-8859-1?Q?pPYeAi56Vo1xGdW/O4IPIC/vXB8ZuktnuzJCEDVB7DpAZQE+8nYM3XjVng?=
 =?iso-8859-1?Q?xVi1AEczZB0gIbsVuMx8cDmxdAD0J3rU2mCvZ6TqT2/TDp+69DMd/rWEk6?=
 =?iso-8859-1?Q?7Sz2a1cL3XqiUelGgGWA/6hMeWTO5mx0+X++HlvJ0Bbku973HIRjunFNgs?=
 =?iso-8859-1?Q?3h2Xi7iuEMfOM0bc3uRH55AWzR5ru61i8femwVXXpdX4p25owTvmHeuoRQ?=
 =?iso-8859-1?Q?fijDdIyIp64yqruE+GzeE9bs9jbpUPRhAMttRh9HMnssyl27JIW21uLNgS?=
 =?iso-8859-1?Q?ZYKI4qEst+PqaZEWkEKSttnXzOzoTZcNsSnXGTs7w=3D?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 48bfefa1-616d-4add-3301-08dd5e280faa
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2025 10:00:31.0756
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME0P282MB4317

It looks there is a potential bug in some device tree function in Kernel co=
de (It does not depend on the version of the kernel). =0A=
=0A=
One device tree function of_find_node_by_name() calls raw_spin_lock_irqsave=
() to lock. Then it calls of_node_put(), before unlocking (raw_spin_unlock_=
irqrestore). of_node_put() will call kernfs_remove() in some cases. So prob=
lem is here: kernfs_remove() will always call down_write() which might make=
 the process sleep. As we know, sleep is not allowed between lock and unloc=
k of spin lock. That's why there is might_sleep checking within down_write(=
), as there may be dead lock risk or disabling interrupt too long.=0A=
=0A=
The actual call trace is like this:=0A=
of_find_node_by_name=0A=
    raw_spin_lock_irqsave=0A=
        ...=0A=
        kernfs_remove=0A=
            down_write=0A=
        ...=0A=
    raw_spin_unlock_irqrestore=

