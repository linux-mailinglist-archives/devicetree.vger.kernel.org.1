Return-Path: <devicetree+bounces-8293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 774D07C781D
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:51:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D5F7282B5B
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 20:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A58BF3D976;
	Thu, 12 Oct 2023 20:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ni.com header.i=@ni.com header.b="biu3DDlq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8A23D970
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 20:51:41 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2098.outbound.protection.outlook.com [40.107.94.98])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D14BDA9;
	Thu, 12 Oct 2023 13:51:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E+ABi66S7bo3cKhYEWb8zpqdHQlbpIAUVSs3oe1xzU7YSlPecKyV05qJZ/hFt6AwYoqDviZvhYJ+uqrxTTLPf/XBabLTPczPQ0pIMPptP7aQUtlYqjnEYxrMIlipz8sKkAU+ILM2Zt1SjfXjxhW7PUHwHeBDS3ypQzFovv1J/0KJStKc6vOOAVDFimvaiSOty3za1QqtDvreL58yqICmd0qXNXHvK2hor/yv2AdebHNnwT/FUlax8BazZBamyBh8hTLoVsj8qLACkcwgQZHPTOyGPHT9IKgPOJynvyjjS8FU6k/q7YQONK1qjvi5aSlZiRFXue2N1KsKw1fhSXbyhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Iw5FRkuCAddj6aCuQyeliwqJ/eqPugxwATruAfBhJjQ=;
 b=PHUgthfaBIW7Y00NKKhhbYa0VaQ4PKq9O95R2oS1ZfovDAycw4/r0mVPU2pO/Q/yXIH3WCzIXKM1253VnmY/Ngk9bvsBL8x0vAdtpGpUW8MIYlpbSL+s4BQnLN1mtXljN+fBJbkCNFsn6BMReFJ4hm8fyEhIcPDL72G9TutgY2dK/4HpUlutYPDMR+qrnNhkAq3toEOlvi6Mvd0LFCkmaaWF1z6PQVuLURxyQgs8+vpUBvqSHXmUhHCzy1RQ4/AePjRXJ2fUqxfs4FsQ2LARkYqIjr6PqyRX27fZ8TvNuz3VzGNWBXQ6s7X4/xCHP+sPnx6LV1siInY0wqvgpqQ30g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Iw5FRkuCAddj6aCuQyeliwqJ/eqPugxwATruAfBhJjQ=;
 b=biu3DDlqrroakebzKh15KdL88xmeGUDJVXHZAxAtG7X+tQcbzIuEHaWyZUi27++fD8vI6seevQwqDiwCekVBnmK4LDTxWYpNCwQ/5HmeRCKgnr42qU1XkzG9oJKBiKFV05CZTU0onYP01Pndnwvcs8K4GuQxzq4skjwZRn8ld7Q=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
Received: from SN6PR04MB4973.namprd04.prod.outlook.com (2603:10b6:805:91::30)
 by BY5PR04MB6376.namprd04.prod.outlook.com (2603:10b6:a03:1e4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.29; Thu, 12 Oct
 2023 20:51:36 +0000
Received: from SN6PR04MB4973.namprd04.prod.outlook.com
 ([fe80::3205:e23b:425e:a57]) by SN6PR04MB4973.namprd04.prod.outlook.com
 ([fe80::3205:e23b:425e:a57%4]) with mapi id 15.20.6863.032; Thu, 12 Oct 2023
 20:51:36 +0000
From: Brenda Streiff <brenda.streiff@ni.com>
To:
Cc: Brenda Streiff <brenda.streiff@ni.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-serial@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 tty-next 0/2] serial: Add driver for National Instruments UARTs
Date: Thu, 12 Oct 2023 15:51:09 -0500
Message-Id: <20231012205112.112261-1-brenda.streiff@ni.com>
X-Mailer: git-send-email 2.30.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SN7PR04CA0184.namprd04.prod.outlook.com
 (2603:10b6:806:126::9) To SN6PR04MB4973.namprd04.prod.outlook.com
 (2603:10b6:805:91::30)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR04MB4973:EE_|BY5PR04MB6376:EE_
X-MS-Office365-Filtering-Correlation-Id: 6080d44f-a130-4752-c5ef-08dbcb650686
x-ni-monitor: EOP Exclude NI Domains ETR True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	lnxdc1OnKUb5lwjnabjXxUF4irwSQCXkJuzjLrBQSG+5dZo5jkaWtnAjuiKmZhNVLh1vEltFhOMe/ZjEaT7h7fEZc20fvE9D9cztXWNBpTvGp/t0qHQtI6r+y7q/8HbNGglKazr+WYxpkYyzufWmNu3rUBNoAGoL+5r92NxZ5yPSc694zzHY8DKTThKfCGVFWkJt3VEzlqzxVXW0IawHZP85piawsJ423Rqur+7hotYMM2aHBeNYtCzxenyV6NDsGzns3V43pqOpLVhJZkUw8Uc5nS4+9Rm5CBGV6JdEXMef5AuliL9Uykkaz65770sCHIN5fxzC+1eNNyh0XR6PU1Wa0ZK+9VAbR6tafWRauwAGO+oEYYXsFON1+fhg2R91aP3f+FROIZ94CbvsdF3u+SPX5wPcpMtWrvPHJnqwhRCOHjd1kyVcIuvamoBvzltjvb4Jb0d8wAufKSKKxGOXdRvar/ds2BKaaRa/NCJ7ZcVWRakBIVIGVDZwXNoeurZuy1dUfIy87yKhRRnpnwe9vnq+Muo8NSjGWre+rXE8M9i2GuJGEYNhkTUmMV2fjsXM5cWbv3p7Y8vIZJPKWBEV6A==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR04MB4973.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(39860400002)(396003)(346002)(366004)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(109986022)(6506007)(966005)(6486002)(44832011)(5660300002)(83380400001)(6666004)(478600001)(4326008)(41300700001)(1076003)(26005)(66946007)(8676002)(8936002)(2906002)(54906003)(66476007)(66556008)(316002)(2616005)(6512007)(38100700002)(36756003)(86362001)(266003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?hcpJ7bA31W7FzL5qlEC/NfvRq0pRxXGHYvyiN5hcLV0/+c2arWWSxBBwQ+CZ?=
 =?us-ascii?Q?wRSW0XYJ+ccOzC5X7/0Oat9rl3zhb1eNkbN6hnpYCOxUAPg+iULmwHt8cp5Z?=
 =?us-ascii?Q?c1hEAWOuTFD/j59jf091X/os2t6MZ+qjWiwxmy1/9aRJvgmitw5KV6tA5PyH?=
 =?us-ascii?Q?k+Z35oIYGeE+8xtHd/uCWUJYLfypn51GB6vtqxyMb+2EfAdPetsLVSqoYofY?=
 =?us-ascii?Q?Kqd1Ss4f+zbszWmjz5dFhJSm7wwg3/Z4nMJ+98NDsPsQgzUgvcwKdK+Vx0PL?=
 =?us-ascii?Q?5CGPvhrZL8ro2Y5CXAK8H7/M5GSu0KO8Rh3czWORo1DdYxxcsAr0D5OMQfZG?=
 =?us-ascii?Q?4+bpiekMv0wW3ADWWElQA4hNj7NTf6YsJzXlpvB03gtJOf/ZD3dFN3tCLYyX?=
 =?us-ascii?Q?6TA7clrBodgTlS25FAAedHgipBXs2BsCsAswICMNazXbBwc7tICB6IR2rq/u?=
 =?us-ascii?Q?eY3Q9HEWxs+q0AGsSwyF3w6StE/zn35vLp+ITEe4sfEaWv3vznV5u4d9U9bU?=
 =?us-ascii?Q?YpTT2JI8gGAgHkO5o/H6UhKowtE7LwQ27kp1wUl1UYZVphkTkkaJX7H24PLV?=
 =?us-ascii?Q?rds7xkIyj3JxCeyWF00Y1RsSggu6dT5k0X9cje0ZzRvte7s6xLm3TtHrMjnX?=
 =?us-ascii?Q?Obk4VpC+jIrrHtCiciN2IGEaejFWYvobKuQHSriXos/BRMlTB3chyLsSIegg?=
 =?us-ascii?Q?AC6Zoblxjz/4TqRNVJ6YnboRod8+0gcJeSXPwShU8IleSEsHi9no67f77PK3?=
 =?us-ascii?Q?7x1pzD05lRmUaapVEAlsKPc72mOlavuCGH07Iyl95A3sEcKxZfWc16huI4Zu?=
 =?us-ascii?Q?hGdYTYvkoLNHYWmitKp0HF+jWT5pkaubZfwCorNsv2gBBNq70dd+wFjPNeSi?=
 =?us-ascii?Q?Xhxp5TiNnHHYeTjf8wFFwMsBKOJXFr5/iyhj3rsjRr/uUZI5+MlL5owUJpwZ?=
 =?us-ascii?Q?nOZC6Qj5kCamgQ9sLoucRJUJ9NQV7ut3uPpE4GtescJz7w7UdxkFruIj5hdy?=
 =?us-ascii?Q?yJnXr6gIQFWOFbTay2ooOXHE/pcwiZPj9Hou3QW2+F5bx/DjuZfNbfL8bDPA?=
 =?us-ascii?Q?SJTnZY/kdNAkpr9+EQJ6DL886QsKL2kqx7Uro+UZDbgi4G73YW52wDlTt0KZ?=
 =?us-ascii?Q?AgRl0dgJBDbvIsreEMOsjegcIT9immcJ0f/ojRuShheoFKS/h5IKxLwPBvM6?=
 =?us-ascii?Q?3G+qGuCK29LpOsSN1UbYfWY9S6vzcRdDDVQ+EAd3y0UScSAuGnDaAOu8NaBF?=
 =?us-ascii?Q?v02pDQqoCiz/T8CqyUnNoakujASbxnH08vma0oMlKBullsEY+G8yG2AaWl26?=
 =?us-ascii?Q?8DUB7d2aPEXT6J6H1FDUdtZZ3ii+vVYkttYFj60WDyCjfKI7QRx6+BWwvz7u?=
 =?us-ascii?Q?Dh1yx60OAXMmKkmrSk1W65XiTqeZj/TtzTmz83V4Xj/jc+q6qK0aVERrzJOr?=
 =?us-ascii?Q?4Mk/u8gZA8arAnjZUI9+uzasjAtV/qGQP8aDhokm7utKyMKtPC98BEFSgk6+?=
 =?us-ascii?Q?f7d+zwpAVDu6CEIItonh4JR00D7mmSNuywcKd3hF8SVg/wM9HeEl94e9EDw4?=
 =?us-ascii?Q?Z8MrhCpBB3bWjM4WHu0OzJFtPlSpgu0DPts71Afo?=
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6080d44f-a130-4752-c5ef-08dbcb650686
X-MS-Exchange-CrossTenant-AuthSource: SN6PR04MB4973.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2023 20:51:36.5789
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LFDbz3DC8fh4ei+qPG8Hj2zVjJ0Jvh4t7dKsuY388p/wmkaOw8hpHE4nuWCrjKlBzTeRML11shB+eWMJs3sfXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6376
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This patch series adds a driver for the 16550-like UARTs on National
Instruments (NI) embedded controller hardware.

These UARTs have an interface that is compatible with the TL16C550C (for
which we build on top of 8250_core) but also has extra registers for
the embedded RS-232/RS-485 transceiver control circuitry.
---
Changes from v4 -> v5:
- set_mctrl callback needs to set CLKSEL in up->mcr, not local mctrl
- initialize potentially-uninitialized 'prescaler'
- Style fixes:
  - comment the effect of the PCR modes
  - remove extraneous parens
  - add to Makefile in the post-66ebe67d1b68 sorted order

v4: https://lore.kernel.org/linux-serial/20230505213850.829639-1-brenda.streiff@ni.com/
v3: https://lore.kernel.org/linux-serial/20230418223800.284601-1-brenda.streiff@ni.com/
v2: https://lore.kernel.org/linux-serial/20230410211152.94332-1-brenda.streiff@ni.com/
v1: https://lore.kernel.org/linux-serial/20230329154235.615349-1-brenda.streiff@ni.com/

Brenda Streiff (2):
  dt-bindings: serial: ni,ni16650: add bindings
  serial: 8250: add driver for NI UARTs

 .../bindings/serial/ni,ni16550.yaml           |  51 ++
 MAINTAINERS                                   |   7 +
 drivers/tty/serial/8250/8250_ni.c             | 478 ++++++++++++++++++
 drivers/tty/serial/8250/Kconfig               |  13 +
 drivers/tty/serial/8250/Makefile              |   1 +
 5 files changed, 550 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/serial/ni,ni16550.yaml
 create mode 100644 drivers/tty/serial/8250/8250_ni.c

-- 
2.30.2


