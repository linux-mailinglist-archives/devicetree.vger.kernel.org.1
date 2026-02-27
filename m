Return-Path: <devicetree+bounces-269025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBCVKfbloGnDnwQAu9opvQ
	(envelope-from <devicetree+bounces-269025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 01:31:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E001B13A0
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 01:31:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 51ED33024531
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 00:31:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1EBF27442;
	Fri, 27 Feb 2026 00:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b="iIBWS4eR"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11020122.outbound.protection.outlook.com [52.101.85.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A974C2FD;
	Fri, 27 Feb 2026 00:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.85.122
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772152296; cv=fail; b=q9ERNATiVCqceqskpyvk1UvjbiNA1UoVVCP+lFFPzuvxzcSU2/4e3SWwO9MMqnTpcwQoJQ26KRQb/c7ShXZslYS5C3eEqeYYwTcWZJyzdNqchrB4WyIsRePeQDPuFQDmkHbwRNjajNEXu7uZyjcwrlZn/OlAc5hKKtELPAFFPhI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772152296; c=relaxed/simple;
	bh=WJ4gvTQLUBXkYFShNYsbwsspZ+ZahiHuv0aTSyK7sS0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hlMGqlUTzm3UptZegy9dT7JW/DZpeoMsLxJCHe2htoLO55CV+jzEqS6NEyvDOyrdkV/5i8Rc0sot0TZJ6njRg8M+g6En8XjLUV5knFPqIYLmMLDZH2gj4F8HkF+CKSFyu90vKBNBWL4SNE1Mn4N1+4r9St2ySRjCXMFZ/8IUtsw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com; spf=pass smtp.mailfrom=axiado.com; dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b=iIBWS4eR; arc=fail smtp.client-ip=52.101.85.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axiado.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V+neJTdgof7bFEzTKjvAOduteSe2wLUYwHxB4CPuB73z45qUStoAEZBCMkHJ83yx1OmVHitp4JMVETE8PLPC7J2UOrSKPIjzNLTj6df7D9zvLchsSX+BGnV/ZURy1W+wXS9V86dMfYxYbBnN/0MhDyB51onyYC9GzKF07hDagbIJFKBw9lZoPa1jPcNFt1EbwlbHKKw+Ce5AI0L3NVyf+QC95AAWVBZTVbP4gNk81UmO4Etd0Rf312i9Q67bxIGbfQrU0o4eH+fB9Lvk9tpt9SHaj4MFEfmgiHqQQD5CrE9vuV405aq719LhyizraCuqx6mjBSf5RvT4WlEK6Lmnpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=THqJOJpOkGv0WRcDYTwGCuptGTWknWnzgTIQMPtNz8c=;
 b=ya8vV2vgQOUmBEoG8HO8l7a8lYCZ+tLzPeWgq/ATFVc1zG//M0Rw/XmNtTqh0hsrT392TMnrKn6JlmHL3+zkR1UMNd0feqRrF7xtnpvRQK16t0+Q4ICeDLXoUpdFRFeUDkFplclSDA2ACK0DGzdwPrtFB0MAq3G3N4xVyQw2kFAxOf1wejdE5C+kRwB6TwRJb0KLnt1CUMvDXTtryTCPuMjniVdvMe3itL13jfFrcvaGnXbU25ovunCdKL4KV74qMgQy2m04cakyqUnjhaTteBtglAZa3rmFYf+pavsHPFR2OP4guNwX1elFiTR4PzjLguHc+Fc3IofroQZFa6PCdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 50.233.182.194) smtp.rcpttodomain=axiado.com smtp.mailfrom=axiado.com;
 dmarc=none action=none header.from=axiado.com; dkim=none (message not
 signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=THqJOJpOkGv0WRcDYTwGCuptGTWknWnzgTIQMPtNz8c=;
 b=iIBWS4eR3+FbXp0vG4B3hiCVu3ZZ2pDVpo7APg34xtOwNxhM0xcYdBKpoWFJcom0UU0RjDYBbFfH3ogXA2/z7EHbqlcfLXlayRBQit3jxMVpaSQAPNPja3D1gTPCXG8XHYIzrDjpoateJ8RwpJhb6oXiNS7vEvrfjfi8Mbl+uiV0AVbBiB5x6Xh89uW7ZqPFwIC7nPBdbJTqbnUFl9fz86knHXkRq9u440kjkzZ8hq8Uogf8O32ROCNYA2z2YQhR1/pZRStnhTD3PgXB0o8GR9uOTYwe9ceZ81Mux2NDLrqbkBB/fcBoOJaLwfe8DXDxlAzTguhQKbGgB2k+R8ic7A==
Received: from SA1P222CA0170.NAMP222.PROD.OUTLOOK.COM (2603:10b6:806:3c3::26)
 by DS2PR18MB927617.namprd18.prod.outlook.com (2603:10b6:8:333::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.19; Fri, 27 Feb
 2026 00:31:30 +0000
Received: from SA2PEPF00003F64.namprd04.prod.outlook.com
 (2603:10b6:806:3c3:cafe::c4) by SA1P222CA0170.outlook.office365.com
 (2603:10b6:806:3c3::26) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.26 via Frontend Transport; Fri,
 27 Feb 2026 00:31:30 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 50.233.182.194)
 smtp.mailfrom=axiado.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
Received-SPF: Fail (protection.outlook.com: domain of axiado.com does not
 designate 50.233.182.194 as permitted sender)
 receiver=protection.outlook.com; client-ip=50.233.182.194;
 helo=smtp.corp.axiado.com;
Received: from smtp.corp.axiado.com (50.233.182.194) by
 SA2PEPF00003F64.mail.protection.outlook.com (10.167.248.39) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.16
 via Frontend Transport; Fri, 27 Feb 2026 00:31:30 +0000
Received: from vm-swbuild02.AxiadoRD (unknown [10.4.1.182])
	by smtp.corp.axiado.com (Postfix) with ESMTP id 009E94186B5A;
	Thu, 26 Feb 2026 16:31:29 -0800 (PST)
From: Karthikeyan Mitran <kmitran@axiado.com>
Date: Thu, 26 Feb 2026 16:31:27 -0800
Subject: [PATCH v3 2/2] MAINTAINERS: Update Axiado reviewer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-maintainers-addition-and-axiado-ax3000_dtsi-update-v3-2-a3b095989823@axiado.com>
References: <20260226-maintainers-addition-and-axiado-ax3000_dtsi-update-v3-0-a3b095989823@axiado.com>
In-Reply-To: <20260226-maintainers-addition-and-axiado-ax3000_dtsi-update-v3-0-a3b095989823@axiado.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Prasad Bolisetty <pbolisetty@axiado.com>, Tzu-Hao Wei <twei@axiado.com>, 
 Axiado Reviewers <linux-maintainer@axiado.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Linus Walleij <linus.walleij@linaro.org>, Drew Fustini <fustini@kernel.org>, 
 Karthikeyan Mitran <kmitran@axiado.com>, Harshit Shah <hshah@axiado.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=983; i=kmitran@axiado.com;
 h=from:subject:message-id; bh=Fzi4PzhkmoOR/4UdDbOj4B4k0kyNNWs4gqKE/GRQLMk=;
 b=owEBbQKS/ZANAwAKAfykr3bAxbrPAcsmYgBpoOXhBS8FiceQQGCyDvFR6IG5Rrdljr8AOZNM/
 rGme8cr5jOJAjMEAAEKAB0WIQQykBiJeI5kfMQLrdj8pK92wMW6zwUCaaDl4QAKCRD8pK92wMW6
 z9wFEACfaU8Ep4xpTPHY5HKBy1RFS6/ULngrIKG0gU+XCvkTerXLQhuzNSOpLVDc6ygJiyHIJ/P
 ip4Z46thVxms9KqxHVsD2GaWb0hcqHyA6w89QnxzzK0vrTY72DvzJWSxgIYtIUKLNHGzD4evDoL
 bYwekNHOkiG75yM10yHTwKTp+qSiIu4Kj9PPabhk9G4TwD+9lXeh4hqCp+ECazNNCkYc/knXGSw
 nATosP6WOcCWr9tWGKNkU8QvlgYOpxni3EHoETL78G3D8RCdYX3hJkcrVWvS3TWOgMRFZw9wK50
 n4aYYXx47bCkfJnLENTSyy9AwdWmn5rXrjEAUr/DvREr2QHLf6ItodSjXHwvq04aWMRqFaO8Pdj
 rc4XH+kAQvqcg9mVPqMPhedfcYMwpQN5dGJvEAxjL3WBF4OVixpwiFCpN8ohxafLwLzI+jNpaWr
 CE/+iIF7qPxSjza10I5D/GgGtMi9S2XlYEI+x+CYGhPLP4+3a6Misgbn3TYKkkeR10NrpIHsz2L
 U7yILtHShiqXHjre7apn7Fdxo8ew1PR9nF/UzsrQzvL2B2Af4HfLMBfD7bIKAQ87XMoifusjQML
 acO9q/tPrrwi9aIjMx47gEqseKeF+Zrt+6sNxmzk42eY0xpbrjG2u6Y9P5d8cwCrBzmG0ciLX3J
 1GbCK3+FIAYr4pQ==
X-Developer-Key: i=kmitran@axiado.com; a=openpgp;
 fpr=32901889788E647CC40BADD8FCA4AF76C0C5BACF
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF00003F64:EE_|DS2PR18MB927617:EE_
X-MS-Office365-Filtering-Correlation-Id: ce959a54-0616-4cd9-7af1-08de75978d60
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
	K+RKNqOPbXVYIsb052zb5VeSzSKSB3BDqMs6yn1CX01BFtWsAtYa/WE5JP83aImWKCFDB09yIuBaDnisAb/JIND3XUGnKZIjXdVslwqVlhm6y9A9G3w7LnHE3DNd7a1pZtMSadyHM74OKhQerWFXE4VTcEVtBjJMXEaTWfCJnc23FAcQUHdrhUY46eYQDw9lSMJ8bF57Qk9rggPreGt7r+CxuouB8uHJrCP0yaa+KF0cuB+xCRtNVMJ7q/zwwkhPhIy7dOzQO1gyFplqS7xeU/D5JC3C3EEZkLqSApReNoAT75Jv5VesFabGUyijNpGzA/zkUHc32W/4vidDLgIDL/qJlI12TrfRwLFcnlPPO6mm/tv/xai8Kzdqt3DkeV+1vEqog/Lp6zY8jnv8pnedcwsTnLSR6QSRR27iwYB6pWmaw0mHi5owd8oIl4SlcVKW/EBUXi0K6oy2Ao1fe9U0GPatha/0X/vpwltiQzd3J0O9q5Pr2xBsnKPBgZ8bS5uOeRPRQoVrxOFlLrq1gSARsiERBnyljIhSWIYhgklh2xE6SY+aFa/OdQou7cR0ndOCh3XtcIQ7zQdEZNKDU89HjEbRyCTuicawqp/uWpJRQvEcva0YZa8Pj3gnu2UVLX26mHnrTNz2mNqaMCFUtP5czmBF+4YYG9l3ev4/x283r4uK1ZIsegl6/7kl3B4vBEjWTX64Qp4Q9Kr411afTAXZcec8rTU59CFLJVBIweiK7lvBQTXkbcwg1WUpAvjAp5z0iIdBADDIP+E2IiLEiOyyeKRvISTUCk2JLk2xow54Sv+zNnguFQ0eJpn3xhtNL4O+UkCfI11Ilq07UrGFFI4Ihg==
X-Forefront-Antispam-Report:
	CIP:50.233.182.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtp.corp.axiado.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(82310400026)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	AsP9m6LOzcA1cCYIDr7rw7od0QDwBwuuVdiICFeNHnXPo7FM60aRiOL+Q/XvGoOKTCH/Drf02HsNe1Rd8F08ooKB1a51A80QwmMJPRhIVImaOFqMEsrXZG1QDYCSPTf5n/2GARJG6P2+xJzE96Wb70+/+8gccY+57PXALZsKI3TjVJSQkvQl1ZztHRaqWayZKD14YZLw9J24uSd0cwT69gcfeBMYVc5fI2Xa1RLlPDZgchYtnZRSoyik4Pm+u2pZWq8N/ltdS3EPEHX/rNyZEhkzwTeJS4pYOZob12VBjCBeOOCI75YeX1Z/FFG4h42CPD6z9zH+XEWwrRk7ZZGu8sf/6f9/ehZ3fyH6yqqDJtWQ/lmm7L1lCNA/vvQFkAp07YycoMe9CD6vG7FVotgcvURgwXRRiWbGyl0Z3DidExTx8eNja4gP6ftIpJ+sBIcX
X-OriginatorOrg: axiado.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 00:31:30.4363
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ce959a54-0616-4cd9-7af1-08de75978d60
X-MS-Exchange-CrossTenant-Id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ff2db17c-4338-408e-9036-2dee8e3e17d7;Ip=[50.233.182.194];Helo=[smtp.corp.axiado.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SA2PEPF00003F64.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS2PR18MB927617
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_DKIM_ALLOW(-0.20)[axiado.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-269025-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[axiado.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infradead.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kmitran@axiado.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[axiado.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 09E001B13A0
X-Rspamd-Action: no action

From: Prasad Bolisetty <pbolisetty@axiado.com>

Adding 3 new maintainers Prasad,Tzu-Hao, and Karthikeyan
also adding a group reviewer entry for review coverage.

Signed-off-by: Prasad Bolisetty <pbolisetty@axiado.com>
Acked-by: Harshit Shah <hshah@axiado.com>
Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
Signed-off-by: Karthikeyan Mitran <kmitran@axiado.com>
---
 MAINTAINERS | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5b11839cba9d..52f1228bf137 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2554,7 +2554,10 @@ F:	arch/arm/mach-aspeed/
 N:	aspeed
 
 ARM/AXIADO ARCHITECTURE
-M:	Harshit Shah <hshah@axiado.com>
+M:	Prasad Bolisetty <pbolisetty@axiado.com>
+M:	Tzu-Hao Wei <twei@axiado.com>
+M:	Karthikeyan Mitran <kmitran@axiado.com>
+R:	Axiado Reviewers <linux-maintainer@axiado.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	Documentation/devicetree/bindings/arm/axiado.yaml

-- 
2.34.1


