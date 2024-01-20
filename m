Return-Path: <devicetree+bounces-33381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3CC833330
	for <lists+devicetree@lfdr.de>; Sat, 20 Jan 2024 09:11:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9ABF01C21395
	for <lists+devicetree@lfdr.de>; Sat, 20 Jan 2024 08:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A9A92106;
	Sat, 20 Jan 2024 08:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b="NfSPNg20"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04on2049.outbound.protection.outlook.com [40.107.101.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753E62105
	for <devicetree@vger.kernel.org>; Sat, 20 Jan 2024 08:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.101.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705738262; cv=fail; b=NL7OPgYEcrDOwYYsm/Unl1RrMeDI+9AVGApaLMs/0yKE/NJww5kO2ecCxJkklVPJGDTCPvckIF+9awiW64o60QK/V0MHS6kGOnmXgogo7vNHE8qFmFVyC2E3rtQqXvPh6+cLNMlWMp/ZmmsKsWF+a8KvTCV9VKLYnI/U4MI3/nA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705738262; c=relaxed/simple;
	bh=blRM4AaIiLhTJ0gUwyIN0FLEh2dMSwSO/R9NbiASueo=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=H8/JfdPjf5ifdDBsDeoKIVvz+r3bMjGgKzwZ7CjqYPlccci48ED3XePUYYX6tj54k47NB//kCzNm+2ITduBFLSOHb6+sfO6muAK770N74UaCLtdYqCwJ5S5cmjS9HY8vU97onG9qTHf3BIKVM+N2p2oLO2O+yW6tt5Me9Chy10g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com; spf=fail smtp.mailfrom=nvidia.com; dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b=NfSPNg20; arc=fail smtp.client-ip=40.107.101.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MW7alRstFQqX7LryAYw65C66d2fJjOp/xNJ1lapJPEkydsVSEUhhPDl0ogb85EvuXTaxiQwEC/oWDgxyhcvUQ2WNJEL2roydIgpBfGB6F1A5Emvxh417hArDwIobCdt9m+zuZRCYJXUiQWcX9NAvM/9iy4X9U+98sEIRn2Wusjb7ODdfWwNFcyfDxdol5TsZvcwnTKeT9gxFdF90kvsAdauFctleku4O/BSzaDXea2jYO+q0UxVPGBtyARj54LRP7DlhjrjtpUl+rpqQuPbVMnbh0OlnBGopWSJL3oJtkM5lNYgIOujm7RovDNPKFQNspeGCX6l6lWi6f2DOB8RCWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mlspw/y2/cgVNCD8YPmt7RjDubah3j7/wvq/VMdwDRQ=;
 b=Azka1/MditjSIFQ1rWpIWy1ecyv2XGFO8s8DHi5QIe2872OhpzwZ23GDK9jkJA8LhJ7s6vfOzTEl710xqrHGm+MO804V313VVj1cgje5+tlVDziwsFNlWajG4L4k6xoIplWdwHIjFZ+Bh+qcX9aHhT7DRXJ4ogarhib8//WqfjFT8E1OtTRFDaJF6oXZX4MorVB6UXgbmSNrzQ7HiO315gH6Ahb7WyQXEoOHQIVI27a2wLjUM1AsEs6OjGo7pFNR5grIh9M0lefNWqTYZ7Aqt8t4/TwUY5RnOPbYdE+Nwx1Azwewy6FsjPnFk7F/FcF8k3xx8UmGhPo8Iti/KCE82A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mlspw/y2/cgVNCD8YPmt7RjDubah3j7/wvq/VMdwDRQ=;
 b=NfSPNg20AGW4lxxwoiWnAP5F3EsLM7uMTMvDUj0cSAa9kNNFfdTHtu7ighhxMCpJxIjLK7x2+wE4pGnDyc654MT5rKWtB4N5H5ANxzGf44s+zePZiQniD0Hyxtna7BAXMWkYdgc2S+IxLGWilY24jwWAHI9Qc8+OXY19YmfmN2woGPkqifRhCrZToDulpfMGcz7ohF7AMVZ6+yQBroHniU6kTgwQoDP/vvmxzbT9UGdXJn3MtrvPlGgWGJE1XVvpAfqz9xbw1e5xvZJwS4nPk8fMvfKm+fhgT39YM3Q+GiLYYreQ6fd0TMBDdAKx5f6fdCqw71F7wNs5uztXdkwYzA==
Received: from SJ0PR12MB5676.namprd12.prod.outlook.com (2603:10b6:a03:42e::8)
 by LV8PR12MB9407.namprd12.prod.outlook.com (2603:10b6:408:1f9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24; Sat, 20 Jan
 2024 08:10:57 +0000
Received: from SJ0PR12MB5676.namprd12.prod.outlook.com
 ([fe80::e2a0:1cd7:a9f5:86a2]) by SJ0PR12MB5676.namprd12.prod.outlook.com
 ([fe80::e2a0:1cd7:a9f5:86a2%5]) with mapi id 15.20.7202.026; Sat, 20 Jan 2024
 08:10:57 +0000
From: Besar Wicaksono <bwicaksono@nvidia.com>
To: Robin Murphy <robin.murphy@arm.com>, "will@kernel.org" <will@kernel.org>
CC: "mark.rutland@arm.com" <mark.rutland@arm.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "suzuki.poulose@arm.com"
	<suzuki.poulose@arm.com>, "ilkka@os.amperecomputing.com"
	<ilkka@os.amperecomputing.com>, Yifei Wan <YWan@nvidia.com>, Richard Wiley
	<rwiley@nvidia.com>
Subject: RE: [PATCH v2 5/5] perf/arm_cspmu: Add devicetree support
Thread-Topic: [PATCH v2 5/5] perf/arm_cspmu: Add devicetree support
Thread-Index: AQHaLqr/7IbpFwV4TkiRRTCZEE1e6bDiic+A
Date: Sat, 20 Jan 2024 08:10:57 +0000
Message-ID:
 <SJ0PR12MB5676E1722FFB67D7FD64F8C6A0772@SJ0PR12MB5676.namprd12.prod.outlook.com>
References: <cover.1702571292.git.robin.murphy@arm.com>
 <6858523689a214543224495fee22f9e31be2f767.1702571292.git.robin.murphy@arm.com>
In-Reply-To:
 <6858523689a214543224495fee22f9e31be2f767.1702571292.git.robin.murphy@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR12MB5676:EE_|LV8PR12MB9407:EE_
x-ms-office365-filtering-correlation-id: f5a36b35-4bcd-4848-79a6-08dc198f54a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 PvCU1V9X7AomIgYw0GSyV5nme3BEjtbc4XbavfefCaVmSjiIpx39AjJ6HnZKf7h1tpdO/JDQ7ia+HKL0+z2wjBGPbVuySDaNRD2+h9QY+4ksuOY5ElPqHEl79e/C6kXXss6e0InND6BugwMGk5XRhTx4uY7CBWvYjvL96kTbW+VNmhdMbDdT3VyGMnY2+TuVRC+epRf+CSYzt5N6kFMuiMQ04hKXkw1tCsdRZ+xy4PKYTXWDqSmPBr/y888DB/uAAYZfwSjHxQ5P8yk9k2vOuU0uF7wTuOcjTr6uVey6USK7TlF9Z+RZrdWQ3ve1uOdl8F+u+SPkgHgqUZNpPAtdfM2OCOH8fm94gHbH2EgMIuGdA3c5TajiSdwzJsG2RS3XfS/UVcxSad5CErhWI9TTldC8Qn5Ip2b8uFlIDBi1XQkpgyMlX6urbudy7x9dPuzgQVSDSk/mJpsK8mC7OAjsu21JZvMUZc8HSJE5z8YrE48/wzI0S2ifAtcs239mRBDKMkL3V7hgnPoRjMTd6Upovn33z7hE/VlTWDy0cG9aVg12wGLQTGq41A2PndQDvT1L60wsPpJhP+1nATIB02LFXcoXfJcC+14BlmM0C7nKjlPPY8gdJPUBhNnlFoa/tG275z4wAubESHgvGQFXgydVd2uOUlYn00O0Nz3TPkHDK0c=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR12MB5676.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(366004)(39860400002)(136003)(346002)(230922051799003)(230173577357003)(230273577357003)(64100799003)(451199024)(186009)(1800799012)(8936002)(4326008)(316002)(64756008)(53546011)(122000001)(38100700002)(2906002)(41300700001)(86362001)(33656002)(66476007)(66556008)(26005)(110136005)(76116006)(7696005)(9686003)(54906003)(66946007)(6506007)(66446008)(71200400001)(478600001)(83380400001)(5660300002)(8676002)(107886003)(52536014)(55016003)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?GRZ34m15yNB50F9YuxZGbMfeFfHZ6psY2vhYvi+MzGZE0T+D0TsJzrCaFNs0?=
 =?us-ascii?Q?8/2lqovodv8qj11jA3HRmzP4uAxVHQAES1l+FOpcRcCzd85QsuA+IQ/cZTBL?=
 =?us-ascii?Q?Nq9hLdwdivnRsxgIJREgHz+7W25/sbxevM1L7xhAkuaPmclV6kr2LgFkcGCF?=
 =?us-ascii?Q?8pbhRmxRscQDooIXYFMjngsGQTgTjY+jyMfHs/sMgu3mJBxoXxalEhgn+kgg?=
 =?us-ascii?Q?NMTspBSrDBYk/VlnjyUjNyWCSWgVK0eQV9V36bHwVNwNWQMuXoQwTFCf/B8K?=
 =?us-ascii?Q?p9h1nHGdkkuFXPPOx0QwnXZIT3dUmNrEcLH5vXvZTjlwVa+k9f3ZWcTTJR5l?=
 =?us-ascii?Q?cR48h2AgA9bGOYziA8AytSMrsqN2Khy1Gn9CcmEY+d0JC4om5NLS319PewN1?=
 =?us-ascii?Q?/VJ8tzCfZ71PLixFFWdBQVUhTR2v9xc8FsieICLMUMtn4afKb9x853/O7wDz?=
 =?us-ascii?Q?VvbuqkmHsDif6jzBDUvwVhDba8sdgwNrqZHHJaI8QAtWDXj9uN7JZbaLebco?=
 =?us-ascii?Q?h9iHoYtK1h88bDpe+NabwyBPkcpY0Nim8MkZBxbZwEZ/OJ0yW+mr2vv5Pt8v?=
 =?us-ascii?Q?X9gTOtLgx2kD5YBg0xfZfQSRPzCBMsOtlpHfJ/p3mPS2UZ2kpN9YOL+zbego?=
 =?us-ascii?Q?1xGXsiixMl+oYOHZ1GdoHvTAyum/NQXOGEmlepYBH3GYnSG6SiMHZNnprPug?=
 =?us-ascii?Q?ububM08DfnBdGETaNB/j+yAEv4bhZt0AElPC3JXxSmVVOYHuhsWInQZRoDNf?=
 =?us-ascii?Q?24KRJqb75WQhYECoMAj+pA+BUZLB5CJvbqIFJhHXt6Gv/4LnehKHIttHW9/U?=
 =?us-ascii?Q?ipCT+tIe8vyhCheaG2qXFQndY+fHtV6OjFs0HoxBoGjzQf52KqK9/OUgzbcM?=
 =?us-ascii?Q?z2yugcLtAeAtwECr5ksuoDTxQqZc5DRQFkg7S8TOez7ImU//VBa5hjI8SE0m?=
 =?us-ascii?Q?6DzzCIY3/GnGt28QQKBWEmxFVTD64ItPnrabNGNSlSOfm2QzYB1ZDTdiA4UH?=
 =?us-ascii?Q?GYWQBmgdC5bG2BnEj8rLhZZtc77T2NPog8DtWCLV+Tc6448UTkIPiA/lU86s?=
 =?us-ascii?Q?mJiVJg689aUVIU2PkVQk01ssU4+2HgqTD03f4+SJJQq6jLvaYLjBhA0Cb/Fz?=
 =?us-ascii?Q?daeSKPwuv3QqVvw3Yfoh7Ab9YVqZW2AYsuaDTWn6RKnr26JbSIyEV9rHxNuG?=
 =?us-ascii?Q?zF/SCUADCAyEa+Y0eqxAERsLhpL6J9iCbHkHrX8voOI3HSk9WumtYBo/ndGA?=
 =?us-ascii?Q?6WF8M2pC+IOH4nt3ZHO2J+qKeZxwJoZDvkCK6+BgHfs7eGpECEY/1HZ4I0y6?=
 =?us-ascii?Q?6MwJ1XoUMgUKaJgE/4+WGb+4UvS9Q4wFg+M1RYnUrmpkrdaD/XaT1WX/d/qC?=
 =?us-ascii?Q?cGFO4jtGKqXjCOVgKOuQIqLMykuQmslhMe/UCXf0GxAr+3dLetL5lQQuTFiZ?=
 =?us-ascii?Q?v6s5tq0fr1WImNwG/65FFoTqdoPZ5lR2MIpHcNjMpMf/Gi3Ci+5FcFlNrl9G?=
 =?us-ascii?Q?gVyFSPTISzjfgVKwhXp+5G91ZITMyse+ezWp/5FlFWf1YFwdj3ovUUa+xLhT?=
 =?us-ascii?Q?giDSb4J99/0tF0JO08t9qaFT/1ISR7app0dWInqI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB5676.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5a36b35-4bcd-4848-79a6-08dc198f54a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2024 08:10:57.1002
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lc9PB0qq8CSFZVN3VQ8+3sbgmKBnx8KPcbibPvg7pWHWc5GhoZagxWjiR46UMpcZLTCaYKLNbvM/x/J3Mk80Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR12MB9407

Hi Robin,

Please see my comment inline.

> -----Original Message-----
> From: Robin Murphy <robin.murphy@arm.com>
> Sent: Thursday, December 14, 2023 10:31 AM
> To: will@kernel.org
> Cc: mark.rutland@arm.com; linux-arm-kernel@lists.infradead.org;
> devicetree@vger.kernel.org; suzuki.poulose@arm.com;
> ilkka@os.amperecomputing.com; Besar Wicaksono
> <bwicaksono@nvidia.com>; Yifei Wan <YWan@nvidia.com>; Richard Wiley
> <rwiley@nvidia.com>
> Subject: [PATCH v2 5/5] perf/arm_cspmu: Add devicetree support
>=20
> External email: Use caution opening links or attachments
>=20
>=20
> Hook up devicetree probing support. For now let's hope that people
> implement PMIIDR properly and we don't need an override property or
> match data mechanism.
>=20
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> v2: Use APMT node to distinguish ACPI; adjust for binding change
> ---
>  drivers/perf/arm_cspmu/arm_cspmu.c | 63 ++++++++++++++++++++++++-
> -----
>  1 file changed, 52 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/perf/arm_cspmu/arm_cspmu.c
> b/drivers/perf/arm_cspmu/arm_cspmu.c
> index b64de4d800c7..6c76c135a0cf 100644
> --- a/drivers/perf/arm_cspmu/arm_cspmu.c
> +++ b/drivers/perf/arm_cspmu/arm_cspmu.c
> @@ -27,6 +27,7 @@
>  #include <linux/io-64-nonatomic-lo-hi.h>
>  #include <linux/module.h>
>  #include <linux/mutex.h>
> +#include <linux/of.h>
>  #include <linux/perf_event.h>
>  #include <linux/platform_device.h>
>=20
> @@ -310,6 +311,10 @@ static const char *arm_cspmu_get_name(const
> struct arm_cspmu *cspmu)
>=20
>         dev =3D cspmu->dev;
>         apmt_node =3D arm_cspmu_apmt_node(dev);
> +       if (!apmt_node)

I got a segmentation fault due to null pointer access when calling
arm_cspmu_apmt_node in device tree environment. arm_cspmu_apmt_node
doesn't check a null platform data before dereferencing.
Snipet from arm_cspmu_apmt_node:
                return *(struct acpi_apmt_node **)dev_get_platdata(dev);

> +               return devm_kasprintf(dev, GFP_KERNEL, PMUNAME "_%u",
> +                                     atomic_fetch_inc(&pmu_idx[0]));
> +
>         pmu_type =3D apmt_node->type;
>=20
>         if (pmu_type >=3D ACPI_APMT_NODE_TYPE_COUNT) {
> @@ -425,7 +430,7 @@ static int arm_cspmu_init_impl_ops(struct
> arm_cspmu *cspmu)
>         };
>=20
>         /* Firmware may override implementer/product ID from PMIIDR */
> -       if (apmt_node->impl_id)
> +       if (apmt_node && apmt_node->impl_id)
>                 cspmu->impl.pmiidr =3D apmt_node->impl_id;
>=20
>         /* Find implementer specific attribute ops. */
> @@ -940,7 +945,14 @@ static struct arm_cspmu *arm_cspmu_alloc(struct
> platform_device *pdev)
>         platform_set_drvdata(pdev, cspmu);
>=20
>         apmt_node =3D arm_cspmu_apmt_node(dev);
> -       cspmu->has_atomic_dword =3D apmt_node->flags &
> ACPI_APMT_FLAGS_ATOMIC;
> +       if (apmt_node) {
> +               cspmu->has_atomic_dword =3D apmt_node->flags &
> ACPI_APMT_FLAGS_ATOMIC;
> +       } else {
> +               u32 width =3D 0;
> +
> +               device_property_read_u32(dev, "reg-io-width", &width);
> +               cspmu->has_atomic_dword =3D (width =3D=3D 8);
> +       }
>=20
>         return cspmu;
>  }
> @@ -1133,11 +1145,6 @@ static int arm_cspmu_acpi_get_cpus(struct
> arm_cspmu *cspmu)
>                 }
>         }
>=20
> -       if (cpumask_empty(&cspmu->associated_cpus)) {
> -               dev_dbg(cspmu->dev, "No cpu associated with the PMU\n");
> -               return -ENODEV;
> -       }
> -
>         return 0;
>  }
>  #else
> @@ -1147,9 +1154,36 @@ static int arm_cspmu_acpi_get_cpus(struct
> arm_cspmu *cspmu)
>  }
>  #endif
>=20
> +static int arm_cspmu_of_get_cpus(struct arm_cspmu *cspmu)
> +{
> +       struct of_phandle_iterator it;
> +       int ret, cpu;
> +
> +       of_for_each_phandle(&it, ret, dev_of_node(cspmu->dev), "cpus", NU=
LL,
> 0) {
> +               cpu =3D of_cpu_node_to_id(it.node);
> +               if (cpu < 0)
> +                       continue;
> +               cpumask_set_cpu(cpu, &cspmu->associated_cpus);
> +       }
> +       return ret;

The ret gives -ENOENT after finish iterating "cpus". I think we could retur=
n 0
or void since there is a check for empty associated_cpus down the line.

Thanks,
Besar

> +}
> +
>  static int arm_cspmu_get_cpus(struct arm_cspmu *cspmu)
>  {
> -       return arm_cspmu_acpi_get_cpus(cspmu);
> +       int ret =3D 0;
> +
> +       if (arm_cspmu_apmt_node(cspmu->dev))
> +               ret =3D arm_cspmu_acpi_get_cpus(cspmu);
> +       else if (device_property_present(cspmu->dev, "cpus"))
> +               ret =3D arm_cspmu_of_get_cpus(cspmu);
> +       else
> +               cpumask_copy(&cspmu->associated_cpus, cpu_possible_mask);
> +
> +       if (!ret && cpumask_empty(&cspmu->associated_cpus)) {
> +               dev_dbg(cspmu->dev, "No cpu associated with the PMU\n");
> +               ret =3D -ENODEV;
> +       }
> +       return ret;
>  }
>=20
>  static int arm_cspmu_register_pmu(struct arm_cspmu *cspmu)
> @@ -1246,11 +1280,18 @@ static const struct platform_device_id
> arm_cspmu_id[] =3D {
>  };
>  MODULE_DEVICE_TABLE(platform, arm_cspmu_id);
>=20
> +static const struct of_device_id arm_cspmu_of_match[] =3D {
> +       { .compatible =3D "arm,coresight-pmu" },
> +       {}
> +};
> +MODULE_DEVICE_TABLE(of, arm_cspmu_of_match);
> +
>  static struct platform_driver arm_cspmu_driver =3D {
>         .driver =3D {
> -                       .name =3D DRVNAME,
> -                       .suppress_bind_attrs =3D true,
> -               },
> +               .name =3D DRVNAME,
> +               .of_match_table =3D arm_cspmu_of_match,
> +               .suppress_bind_attrs =3D true,
> +       },
>         .probe =3D arm_cspmu_device_probe,
>         .remove =3D arm_cspmu_device_remove,
>         .id_table =3D arm_cspmu_id,
> --
> 2.39.2.101.g768bb238c484.dirty


