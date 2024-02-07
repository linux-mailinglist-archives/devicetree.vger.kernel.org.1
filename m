Return-Path: <devicetree+bounces-39517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C500884D29C
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 21:09:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2ABB9B2228B
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 20:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18C5284A21;
	Wed,  7 Feb 2024 20:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b="jgO6Omey"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04on2056.outbound.protection.outlook.com [40.107.102.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADF086ACD
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 20:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.102.56
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707336538; cv=fail; b=sdcG8RSaDAvvi0WLr+z63U3ZF8IoPs5uemzjXmYjti1VRX6l7GoKTYmpruJLNBwGaZ7GbcgbzhXWs8wz8uiy8GiF2kmJIW4j+0f//+lRpHFMSlZDB6/qOzmG4VbomVbEXLoEotITKrMMuZL09lYQ3DIBkDz1b4Y2GkreJEcH5Ug=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707336538; c=relaxed/simple;
	bh=/vYudmxlTRK0hL9pm9gFfUqiwnWX5EMkZW8sOPQDNsM=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=eVrS6SMUtPvKUTwgGPy7jjMxK/8nmpwWofLqQMcI3tj116EhPpIFhJibQnYeFMJnY8Cs9KAlD28Xo4fhCQCXMdMPPtQ6Frxe3MQkf0Dh9fgiPTd1vdL9Lfw2gtM7ddEvLQCgLp8d+UJPrl3geSfACNRIzF85FR/BsSHoHK0lrko=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com; spf=fail smtp.mailfrom=nvidia.com; dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b=jgO6Omey; arc=fail smtp.client-ip=40.107.102.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iynzyGeoApaTEaznf6mpVkUSf/RQv9d1fuB7rwiamvAdqbd/KoHjiHLbLCzx8jBGHhGbNAYK0oB7D5TCtLIqhCGl5F/pFA/hcuwEZxUPD5xoPhVNbQpqR7/Ld59+4fw+DgOuVzr11ICf5mXS9k67v2ti1AN/Qf4Tc+JGRlcXP82sT8Q7Z/jm7SdJb2xgBGwxTA/SBe/D91YKjP5yTwD216wkLocp6xPm7RjDxPdKksecA/FTrBs9+t1awpPzacNZR9UIZW9YW46MlCjbw+jv2bbFpTerkqKx3UkldHxDcFRBewv1UN73tmXLH5aFXdKwXufzJ16wWvm0zW94RDPK7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pwk6VAW8dEdbi0gzKGgVAnEnEkeUZcBhj4G5vnpibQc=;
 b=irJcXxZAamM/e0FL06nQjBGDVs5eu4vR3bbalrUtVx7CSqbBKQAcmIHsfHeNcTqTiWbEzCU7ZfzJiPPPwWEJeLjLkbs168oUiA7ZZyTZCCV9rkyz3+LZIh4jVsui3VZ5Fs4JeJoW+3LWoTSgbfm8Xv00SLlXA5C3mwdoq/6D7Wb23KYhpNkIF0QK8FMqGgX5OyP1g3/oWfx5qrpC2BTbi7cv6j9kDQc2dOux0ema6OUhJAFPQNvDWiuEN9EK6Drw3P/1WRqKcOaDr1Gi6rvUL0DAyT2OByiPBeqD3gS3HEh6qsoBg6H4Xxi1JCGP5hIWExZ2Wp6Ntv1/i15F+HpRRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pwk6VAW8dEdbi0gzKGgVAnEnEkeUZcBhj4G5vnpibQc=;
 b=jgO6OmeyB8QgU45sfSgu8AoVypiQOZ4Ig68c3TTxWVLATy899nS3I7it/MrMwQex3In1HKhHGntOBXm4kGJzCjPA9HdhT/F/Nofftu1GyG6azphrjA5zFR5ZVPEZUAnhBDpHcKa+vwMdX9g4z3I40idOPLxBpYoPmfT+yhWtf4kfrn0nTrTJS8+cDAidHR55mgQEiPXWxzwQF8FIAHwtELcJxTz6Ulb1MPUdZNzJXSx0YTCeh5ksWqvKCb5l1s70HRzN3S1TsE1Mf3K4GPQ9DbN05h0eU/PZCVy+SvOzqr6Pi21Hi42ZZyDiw6tvBmiLsN9bS6HHBQiPqt7Xexzwug==
Received: from SJ0PR12MB5676.namprd12.prod.outlook.com (2603:10b6:a03:42e::8)
 by SJ1PR12MB6073.namprd12.prod.outlook.com (2603:10b6:a03:488::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.14; Wed, 7 Feb
 2024 20:08:51 +0000
Received: from SJ0PR12MB5676.namprd12.prod.outlook.com
 ([fe80::e2a0:1cd7:a9f5:86a2]) by SJ0PR12MB5676.namprd12.prod.outlook.com
 ([fe80::e2a0:1cd7:a9f5:86a2%5]) with mapi id 15.20.7270.016; Wed, 7 Feb 2024
 20:08:51 +0000
From: Besar Wicaksono <bwicaksono@nvidia.com>
To: Robin Murphy <robin.murphy@arm.com>, "will@kernel.org" <will@kernel.org>
CC: "mark.rutland@arm.com" <mark.rutland@arm.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "suzuki.poulose@arm.com"
	<suzuki.poulose@arm.com>, "ilkka@os.amperecomputing.com"
	<ilkka@os.amperecomputing.com>, Yifei Wan <YWan@nvidia.com>, Richard Wiley
	<rwiley@nvidia.com>
Subject: RE: [PATCH v3 5/5] perf/arm_cspmu: Add devicetree support
Thread-Topic: [PATCH v3 5/5] perf/arm_cspmu: Add devicetree support
Thread-Index: AQHaWOc0qrEx3CWh/UuXwWgIzJPaLLD/UHUQ
Date: Wed, 7 Feb 2024 20:08:51 +0000
Message-ID:
 <SJ0PR12MB56766B7D9D4278C25B4405D7A0452@SJ0PR12MB5676.namprd12.prod.outlook.com>
References: <cover.1706718007.git.robin.murphy@arm.com>
 <836722034302ff62f2df56aaeb0036e71945a5d1.1706718007.git.robin.murphy@arm.com>
In-Reply-To:
 <836722034302ff62f2df56aaeb0036e71945a5d1.1706718007.git.robin.murphy@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR12MB5676:EE_|SJ1PR12MB6073:EE_
x-ms-office365-filtering-correlation-id: aa634dfe-1cdb-4024-0a85-08dc28189a28
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 6Hqv6y3EYhN2iIYZr4KPnFjPrpI/sbh3xJe1aGRnMXG8fFh8bzTXy9HUCE79HAIAQfiu4g3upkqdL0T+xCZRhEmkWNxvgE1skcel3OJup4I0F+JAkAD3zkaBL/MQJ0Qy5im/qffXeTzatS/MUE+zFVFjp1cjPhRS9CnFkrLmkL2TCmTu68uFfoYM8WZpZmN9IKgGn5+h3Uv9PHZnNfFASn4m2GR0Qkt7Y27nncAW8J3N3bF7ebS1okyrqlcsgIz2Bp5NWj2jjOfr2kgepWvM2fYszoA+KUptWwVfXplua/HCRMshcUsu6d5hCoTtGUuzIuNbOp5Y3t2e197csdjOjYQN1fBxvmmPCA3c9FUlCDg68t1BwuFlSkzAzSRZOt34+I8+oeD8jBv75tgoK+vTbFx1TsLrre1UrcFI/YAQtkeGyjRSUD/+3qNo2hKVVKAOTaIgeEAKjAEdoPAPNAFVKdesRoQtdQ0gPNPV7hdiXXYgnbDacfgE5BZR5EjZ+vlFTjYsiccua2a5FTQA5/l3+DDV1Fp8fYCKiqhUil3WX2wDauOovv3UKfmkzOsW/rg7/JNh2MWzVdhUN6N6ek76ijzvhRrHmYpmrNrelAR2gBYhPDBGDnFw2XUS52wDLeMP
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR12MB5676.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(136003)(396003)(39860400002)(366004)(230273577357003)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(38070700009)(316002)(7696005)(26005)(71200400001)(107886003)(41300700001)(66446008)(2906002)(76116006)(110136005)(6506007)(8936002)(8676002)(54906003)(66556008)(86362001)(4326008)(5660300002)(66476007)(64756008)(66946007)(52536014)(122000001)(38100700002)(53546011)(9686003)(83380400001)(478600001)(55016003)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?cLM+m/UjwDF5WpOypBgzBlhZCCX9jGkwD70MTKGzSpmFcb64uFsrLGtN9Pu8?=
 =?us-ascii?Q?xa/fCSYmUsai9AFYMUjVJ/RfmlDafbWlaw/2eWiYqrVuTq5raVHwI2Mf2rVD?=
 =?us-ascii?Q?Phn/rK7NU6XoWKxOP9NbRiRyv0sC63lbJL2Csh1Ld5+aHO2lx7uN0azG6Ye9?=
 =?us-ascii?Q?3M6DE5/NCbJxba2zTlnkijgZCFM+tN7n+b77HBtCn1Cv4o5Gh0I84OHOkJ1E?=
 =?us-ascii?Q?JtDBZzucTRYrPGRcDBMBRpzo/dZxgkD4bolAGGM7TNp46YKCImVlB5gjaS2X?=
 =?us-ascii?Q?0c4c3wsWp/rCu0lp8O0cg3jPNF0pW1n3HgfQuZtxxHwm5EaDkqd4EtJPNLQ4?=
 =?us-ascii?Q?MP5GvKGwP9eTsm2vX+a0MYnA4DMd5oPWnO9Tt+9ZSXhZWifnUkknaINgr4DI?=
 =?us-ascii?Q?AF+UAwGCsHzBixGOkM6VRgOuMr4rF/K+pvXViKVchoNkurs5EZnRXpuId1H2?=
 =?us-ascii?Q?msIgNXw8F3m6CbXxiXQxm5xtZV/rVXG38iQOKYYqrafhDDEsGNqh4494ixij?=
 =?us-ascii?Q?7RC6wPjDrFCNtSNYRdoaCUX4ZJe1OTZadUwpI7TLAgflkeBQXSd0vmr+XYfR?=
 =?us-ascii?Q?J8QzGLBJ0gw1uRQxVmRfaC5FWhf1MidS3xg3X4AIMdDCNatYWkeRUgjBn8Ia?=
 =?us-ascii?Q?GsEe6jLnrTVkOtc+mrMwgY1nI3wgH3Z/3DTjyU/f7v0QOvu7pdORuuh4jUmi?=
 =?us-ascii?Q?MRnIOZxP4TjTANoEywGxEnWgESfl5a8VGaOltP4+kI0ZFF/+ivcl5xjXFpBJ?=
 =?us-ascii?Q?pomqQN/Awf9mdzJIYM2oM7C+zOn4uOAkaAkou/Azf00/lQBq7dB72bXxBMnE?=
 =?us-ascii?Q?Mp7PReLTjQKaTkQZiTXZJbEkFs1JpAF4zTmwZiRolWl10xMSNcl25QMl/szf?=
 =?us-ascii?Q?v+OAgzbRPKkzO/ENR+KVPBidtyyCEk30jsr2/eRCTgyY+xXN0Axq5nur2rnQ?=
 =?us-ascii?Q?G6raU/nJHlt4A0KpbisnmkyRVoH0gtT7zIdUPGKujmbjU+0fXlLM1l3z/eFL?=
 =?us-ascii?Q?IH+58+QM+xpRHw3wWYRz66kGGCcUCzx/sjHkQGSQ/3cjqmZCI5eHAino3/PH?=
 =?us-ascii?Q?tYUWSjfMFBK/8xyaaySALqhLxnjiEAPTQmq44tdXK8GFurUs+E8ZtKdK21YL?=
 =?us-ascii?Q?9cMQuwlX+7lQCcsS3mNf2Nbhu74jyR3FrGaQiFDW2NscveKvG0HzlPNy6EzQ?=
 =?us-ascii?Q?7zKMuu1balUlDAwBWYAXvqU+E7ZJ1IoIIJJHT7Q3y99CXKnXkaB1JIQGFk1/?=
 =?us-ascii?Q?+lp0FVm464IYO+dR15UvqW2ODTlVn+jxxV3fR54OCrfmdPCcTRvJZEUbc4id?=
 =?us-ascii?Q?goekzF74XNHnsS1d1KMB8DetN5rH+bPMTL+tIn2LwXL8GGH/UhZbpDh12r65?=
 =?us-ascii?Q?OKHR5Ggpkvd4RBQfVPr7p8LNhyyq8THrrdbl+NbwjTV/Zhv1pj2sFDwXtFH4?=
 =?us-ascii?Q?k6jV3BXxdBwQn523pi6gnypXV3wgjrKZjq2qN+/I7E2g3L4cDWC98Sn87yy6?=
 =?us-ascii?Q?816Ih2P/NVUCv62qrkdm4v0Z/5r+Gnq1aj0xUPjpP2Fd3MTRa5DUC16ZWTxI?=
 =?us-ascii?Q?59R3RRRKpBv2ZSm5Yxy2CBJO0bMuhnXBvZHEtWfN?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: aa634dfe-1cdb-4024-0a85-08dc28189a28
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2024 20:08:51.0253
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W7MWHP63JrkbT/qPMec88Js9Rfe5JFwrtJTnt8WY8dd4+7Pu/q8dIfilVrj+6NASbLA5jcvr4QUOSGqdgTudyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6073



> -----Original Message-----
> From: Robin Murphy <robin.murphy@arm.com>
> Sent: Tuesday, February 6, 2024 4:28 AM
> To: will@kernel.org
> Cc: mark.rutland@arm.com; linux-arm-kernel@lists.infradead.org;
> devicetree@vger.kernel.org; suzuki.poulose@arm.com;
> ilkka@os.amperecomputing.com; Besar Wicaksono
> <bwicaksono@nvidia.com>; Yifei Wan <YWan@nvidia.com>; Richard Wiley
> <rwiley@nvidia.com>
> Subject: [PATCH v3 5/5] perf/arm_cspmu: Add devicetree support
>=20
> External email: Use caution opening links or attachments
>=20
>=20
> Hook up devicetree probing support. For now let's hope that people
> implement PMIIDR properly and we don't need an override property or
> match data mechanism.
>=20
> Reviewed-by: Ilkka Koskinen <ilkka@os.amperecomputing.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Reviewed-by: Besar Wicaksono <bwicaksono@nvidia.com>
Tested-by: Besar Wicaksono <bwicaksono@nvidia.com>

Regards,
Besar

> ---
> v2: Use APMT node to distinguish ACPI; adjust for binding change
> v3: Handle NULL APMT node properly, fix phandle iteration.
> ---
>  drivers/perf/arm_cspmu/arm_cspmu.c | 67 ++++++++++++++++++++++++-
> -----
>  1 file changed, 55 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/perf/arm_cspmu/arm_cspmu.c
> b/drivers/perf/arm_cspmu/arm_cspmu.c
> index b54dc7fd6ca5..6bc21ef96250 100644
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
> @@ -114,7 +115,9 @@ static void arm_cspmu_set_ev_filter(struct
> arm_cspmu *cspmu,
>=20
>  static struct acpi_apmt_node *arm_cspmu_apmt_node(struct device *dev)
>  {
> -       return *(struct acpi_apmt_node **)dev_get_platdata(dev);
> +       struct acpi_apmt_node **ptr =3D dev_get_platdata(dev);
> +
> +       return ptr ? *ptr : NULL;
>  }
>=20
>  /*
> @@ -310,6 +313,10 @@ static const char *arm_cspmu_get_name(const
> struct arm_cspmu *cspmu)
>=20
>         dev =3D cspmu->dev;
>         apmt_node =3D arm_cspmu_apmt_node(dev);
> +       if (!apmt_node)
> +               return devm_kasprintf(dev, GFP_KERNEL, PMUNAME "_%u",
> +                                     atomic_fetch_inc(&pmu_idx[0]));
> +
>         pmu_type =3D apmt_node->type;
>=20
>         if (pmu_type >=3D ACPI_APMT_NODE_TYPE_COUNT) {
> @@ -425,7 +432,7 @@ static int arm_cspmu_init_impl_ops(struct
> arm_cspmu *cspmu)
>         };
>=20
>         /* Firmware may override implementer/product ID from PMIIDR */
> -       if (apmt_node->impl_id)
> +       if (apmt_node && apmt_node->impl_id)
>                 cspmu->impl.pmiidr =3D apmt_node->impl_id;
>=20
>         /* Find implementer specific attribute ops. */
> @@ -940,7 +947,14 @@ static struct arm_cspmu *arm_cspmu_alloc(struct
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
> @@ -1131,11 +1145,6 @@ static int arm_cspmu_acpi_get_cpus(struct
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
> @@ -1145,9 +1154,36 @@ static int arm_cspmu_acpi_get_cpus(struct
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
> +       return ret =3D=3D -ENOENT ? 0 : ret;
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
> @@ -1244,11 +1280,18 @@ static const struct platform_device_id
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


