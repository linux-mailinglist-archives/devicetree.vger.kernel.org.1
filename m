Return-Path: <devicetree+bounces-10139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E543D7CFC70
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:26:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A931280F14
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:26:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A7EF29D0D;
	Thu, 19 Oct 2023 14:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="hCHQbiwB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E2FC29D0A
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:26:20 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2078.outbound.protection.outlook.com [40.107.95.78])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B6D2134;
	Thu, 19 Oct 2023 07:26:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E5PHtCHj2wSdLL6yKtroZxkJPOzFEh9EtvoT9m7znSV/hP4pyfyDZvBOlYE82T7TN4FcQHGYCmZQHquwFp9No2GBaqmvSKpQlsXkDvuwjwtRHPDN5QR3PCUL0FoufJRaJkOWDpt3aGJNYxVv9ITInuqjUMQVRs1+ExVn3fI6t0TYv1L5xDWGo9Cgov5fZ9OzcZKSBgZqRr7uDbjO1Ng4eecdvFb0Gfmf/Tvxmvcelddqi7o5Nwlu6SmvXkm+5VCrFIu1Qk45yU7CwCKoWBWGwUq5EyUHLhqdgi9h1lpUU5FHpzvzCKoyuD+DRwyGjfc6phAjqo5YPOiJZBtIJQJkmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SZt0zNWlqVIirl/U0HAAhHP7Lwtzs5Tok9XFy7v17Ag=;
 b=Xj6FNbWtfX6SO0A0jnhQclaHyERWpKFxu1ExwH7zCiX4wlURLRYa/sVQiZpI3cpZfr0vqW7QI9zlhjnUqSOMg/8ZvLGLXa9y2ba86LpH16JQHMO390HE/Qxog8pr6uHNoIJJ0XrWG26aTUwcvmZP+Y4yEDNts2LmpssAXpDa1bfntjd6Odwf/kal1CunUOXrvQUOslyI8eahhu8Nxp3ZRYp9Dpt/io8iqkTjiNQgvCi8Gp1DlIEPCnPg3PCQHp01wkQYilwW8OcGVP1mB82x+GwOxG+NF1CikNVoPXf6cd7UfbT1cvCj5gv48lTdI2dx8YDK65T0sPOTqj8HA7arGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linaro.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SZt0zNWlqVIirl/U0HAAhHP7Lwtzs5Tok9XFy7v17Ag=;
 b=hCHQbiwBSG2rIncsnckOWhCGtCUWpIzNLL5yMz02rPO96ZvD0QCDiHQHAxULb1MQmzlrjZdW74lK11IQfafS+KeNP3DCrTIz8cH4thzWjpVzmGfa/euHPzp0mROr9QqYPUlgLGRgdLWnV4zZq65yX6Lf6GViZ7r3jn10Ue0zwUc=
Received: from PH7PR10CA0015.namprd10.prod.outlook.com (2603:10b6:510:23d::17)
 by IA0PR12MB8351.namprd12.prod.outlook.com (2603:10b6:208:40e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.47; Thu, 19 Oct
 2023 14:26:14 +0000
Received: from SA2PEPF000015CA.namprd03.prod.outlook.com
 (2603:10b6:510:23d:cafe::ca) by PH7PR10CA0015.outlook.office365.com
 (2603:10b6:510:23d::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.24 via Frontend
 Transport; Thu, 19 Oct 2023 14:26:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 SA2PEPF000015CA.mail.protection.outlook.com (10.167.241.200) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6907.20 via Frontend Transport; Thu, 19 Oct 2023 14:26:14 +0000
Received: from SATLEXMB08.amd.com (10.181.40.132) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 19 Oct
 2023 09:26:07 -0500
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB08.amd.com
 (10.181.40.132) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 19 Oct
 2023 07:25:50 -0700
Received: from xsjapps55.xilinx.com (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server id 15.1.2507.27 via Frontend
 Transport; Thu, 19 Oct 2023 09:25:49 -0500
From: Kris Chaplin <kris.chaplin@amd.com>
To: <kris.chaplin@amd.com>, <thomas.delev@amd.com>, <michal.simek@amd.com>,
	<krzysztof.kozlowski@linaro.org>, <robh+dt@kernel.org>, <conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<git@amd.com>
Subject: [PATCH v2 0/2] w1: Add AXI 1-wire host driver for AMD programmable logic IP core
Date: Thu, 19 Oct 2023 07:24:16 -0700
Message-ID: <20231019142526.10592-1-kris.chaplin@amd.com>
X-Mailer: git-send-email 2.42.GIT
In-Reply-To: <20231013093109.37165-1-kris.chaplin@amd.com>
References: <20231013093109.37165-1-kris.chaplin@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF000015CA:EE_|IA0PR12MB8351:EE_
X-MS-Office365-Filtering-Correlation-Id: 913d9e0a-ddee-4593-d80a-08dbd0af5997
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	G5t/AspDLEmnLGXB9seAiUZ0JwJWehX8n3IwNN8Ot6kyRRRHTMltm47IuPywwf38mCqpPg8yz6pJm4Za7R/WEMxYIbB1KjhnnnfUBlzHnTQy8RmPa70rMn0xJXjz0OYSlZ3qS5JVAW8L5rHoECUvlPXC+9hD9TFvxCdPrtcR8vSDOMQCvF9T+LRcqFlfRzVZZ0X0SLHsMetNduQi91Ff2ZRq0B4mv//rknFKQJ9m3ycQdOaRORC7EccHCh7iG63aul5adSoGoPwKQXaFR1h+MByUjpT8kjoYhL52qYV8nkYMCFy3kpJrUU9fCcKVTRQDB7Uki8/pawhmtzfQhtXuB0rxAA7+jDfoUxZ099tyoTCjjgfTHNZUmQaEvgw7d/PFkUcM0xFFPjFCFHqayISGOpuBt0Nf8xXdDXEx677Dda/ntZdTzUlJvzrIENHG+XBrhadhYseg4NkAGrICi/1WPyo39bdR6pQAZbfdLGm+/gMe8yL+OnEaNQ105Z5F9w5Qp1iY7wbnu2okI80fmdeCwwia2+uCKbIBZJAjvvba0qKh+j3VfB3RTwJ/UWYi8JBXQv0FD8MBgElq/krfASmcUZtdXu3mqQIzHXIMK13ZytsbEWsfxIKj+4y1Q9ox2GVB69n0mb08pN6a4/RHU78sPgaW5K07vi/Uoz+qRLqwmx1k9tFvUKzfXvkOK4sVsqla3FO5RbXSmwMmqjQdYIILj7d2usM4h6Gm0IPThBHHvO0lp/LvPXX5NgT6dIUjHWbzM0oUtBpXyILpckh9z3k2TA==
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(396003)(346002)(136003)(39860400002)(376002)(230922051799003)(451199024)(82310400011)(64100799003)(1800799009)(186009)(46966006)(40470700004)(36840700001)(426003)(40460700003)(40480700001)(36756003)(356005)(47076005)(36860700001)(81166007)(316002)(1076003)(83380400001)(70586007)(6666004)(2616005)(336012)(86362001)(70206006)(54906003)(478600001)(110136005)(44832011)(82740400003)(26005)(5660300002)(41300700001)(8936002)(2906002)(8676002)(4326008)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2023 14:26:14.3409
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 913d9e0a-ddee-4593-d80a-08dbd0af5997
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SA2PEPF000015CA.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8351

Changes since v1:
 Updated IP name and binding to axi-1wire-host and filenames to match
 Comment pruning where operation obvious, additional comments where not
 Unwrapped helper functions for register read/writes
 Removed un-necessary device reset on fail to add device
 Fixed duplicate clock disable in remove function
 Move bus master structure to per instance
 Improved hardware testing with multiple w1 instances

Add a host driver to support the AMD 1-Wire programmable logic IP block.
This block guarantees protocol timing for driving off-board devices such as thermal sensors, proms, etc.

Kris Chaplin (2):
  dt-bindings: w1: Add YAML DT schema for AMD AXI w1 host and
    MAINTAINERS entry
  w1: Add AXI 1-wire host driver for AMD programmable logic IP core

 .../bindings/w1/amd,axi-1wire-host.yaml       |  44 ++
 MAINTAINERS                                   |   8 +
 drivers/w1/masters/Kconfig                    |  11 +
 drivers/w1/masters/Makefile                   |   1 +
 drivers/w1/masters/amd_axi_w1.c               | 395 ++++++++++++++++++
 5 files changed, 459 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/w1/amd,axi-1wire-host.yaml
 create mode 100644 drivers/w1/masters/amd_axi_w1.c

-- 
2.42.GIT


