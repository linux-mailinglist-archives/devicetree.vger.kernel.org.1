Return-Path: <devicetree+bounces-258428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDibIzAtcmmadwAAu9opvQ
	(envelope-from <devicetree+bounces-258428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:59:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB3967A04
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:59:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6BEF4507FB9
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 13:48:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B0A6329C70;
	Thu, 22 Jan 2026 13:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="tf7KX3VK"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011069.outbound.protection.outlook.com [40.93.194.69])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4601630FC2E;
	Thu, 22 Jan 2026 13:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.194.69
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769089673; cv=fail; b=bw71t5izF3DRj6DG0kivjvllhmLc9YNqJ9zSzsdkaAxVM/UuCGoeLpVWKtEtZ887PLfO7JokEJ0K8WZ8Ith7QnCZSWKPD0HDbnVaVVeuzTYlX6GjyrYC1SDL2hymtxzhH6+J2yGxcAHVA9mIuc4rPQdJ2B7jUXk0x1JzbPKg1tE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769089673; c=relaxed/simple;
	bh=YSs8cLy54vW57gt4F4nNqgzRnOJxwlqOO4SOIkbRI2g=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=CYDWEW9/ZNp5M6h7V+3n6cq6IIWarnFlSmp8Mk7643HwJsZQaxGbvN56iX9saIPIbtF5xAuJCh8K9QzOT8ZkGWOVLcqieC0tDbM+j/z+6NCJP1Y4zJ/VisC5+wS5fvcpqKLwuEReUJ6zO6IbBsrwYdSAjLetiQMDMI0intOjS+M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=tf7KX3VK; arc=fail smtp.client-ip=40.93.194.69
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EhVi+xbNz9zGN80T6I9bWnCc0sjxOxfUiU+IF0D5pdwgmDrFExTajRMeTVQMuTqpc4m2T4c4F8C6zNpkzTOtkwxrDV7QvRBj/PN5tuOSW6AP4gD86J/G91JKMJ2Erq2i3m9Dmnzcl28NgTGiC/wcG3eV+W5ilKE7PP2DY3/tUvO63lYAjVcxFL4bG8zHXCKyCFocYYrgMD9sFATjb1SewQqoAlix0frdNiwy2j/67VWFp/66DCCwkB8ejY0ViN91ZxCc07F8tjnUUobVdGgXS0N52tC/qy7O8kRjc5BapLcCkuJNEtCTS7xEIXguicAW07yFR1cQOxxpPPCDBmF1Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=adVIvnZolYw/mnHFWQSM1zgtFdaQ7XseX9j7nGdwTWc=;
 b=AqLN3KfU1m37lXRqdwf4ttPa2Euyd10F+hv5ooXXWxOvHzQSbcXuRumqgpmcRhHQ0gI8j/kUxVF5D6bxUafLjhedczFv9UNAZcDnvQYEW+D/6APdjx+89Z2XVx1HVagDYmnj1oE1Btx/ffcsJNcFDLEbRrSqygX2TTwLINXW7hBaRW1in3Ze1N45FDJv1Mcio21ZF3jj2vuB/JAaUDeBqCDlBVj+ky1+hO7QVlzo2mtYZyGrf9fTmaZs+CZA3ETe0xiG7aZx12kcahzfVsJmdfbX8P/lQix2sRUZ88jRjE0lksNsa2BelP5Qe+gjQasubGtLbF1cAFuefTBhE8YE7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=adVIvnZolYw/mnHFWQSM1zgtFdaQ7XseX9j7nGdwTWc=;
 b=tf7KX3VKy4WsmxhQQQ8zb/1beANvqnyTQJ/dOylIm+ZgS/XzdJclk2/DBNoPbTTYSHUrTRfNFzBub8HA/K5uQJ0PRzQB0hyB+LIZDD6vJQ8HW/jslJsM716yFTsfgcqU52QCVnKBr/IWOVCVBkvad13RmNxpzDYbsph0FgYC7FrUt2nhMvCnW5gqfB39iZi7mSfGLGtd9LfgS0kM9UuyPSJ5HJDJY+2AQbTNni64kyTyPeR1NMByac3v6ShfnaSLAbELB99ca/rLYR51Rbiv91LaJ8a9j3wssFI4pOaMYySkpaaB3mQcCnU7ice42DSPPMupSCpnNSp6NdlVW7YHZg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by DS4PR03MB8374.namprd03.prod.outlook.com (2603:10b6:8:329::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Thu, 22 Jan
 2026 13:47:49 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf%6]) with mapi id 15.20.9542.008; Thu, 22 Jan 2026
 13:47:48 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: dts: socfpga: stratix10: Add emmc support
Date: Thu, 22 Jan 2026 05:47:43 -0800
Message-ID: <32c1ae8735c80629757ace0c35a62da0c40911d0.1769089199.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1769089199.git.tzeyee.ng@altera.com>
References: <cover.1769089199.git.tzeyee.ng@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR13CA0209.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::34) To SJ0PR03MB5950.namprd03.prod.outlook.com
 (2603:10b6:a03:2d3::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR03MB5950:EE_|DS4PR03MB8374:EE_
X-MS-Office365-Filtering-Correlation-Id: f5ca850e-c313-4b74-fb8b-08de59bcd41e
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?RethgV5yFDbcw/V+tEYwy8a2HbegkpOHvayCdnmjfHVdyH68Mxv4vJCWT+D5?=
 =?us-ascii?Q?Y7bsQQGUTKVUV4Nv83zxdUR3z1EGRxay4qbdgob9tWMuX8pWUyj+WTtCHjJb?=
 =?us-ascii?Q?ZdaP9NrzveIf93Yk4/dA71wXq0O0GrRvZJPHHbO2YR14PCWXKoR2PAnwZfxu?=
 =?us-ascii?Q?1+hvfeldx+P0mzG+Vr5hCwXRO9Z5CmhakeaAB3XzjgSaSVmQvuQXUOPIre0H?=
 =?us-ascii?Q?D+rwteol6KLPss7sM8CQ69Yo+dBKL4q12Zlt3QR6yuPjTayLgZZft/ICjtVF?=
 =?us-ascii?Q?Z1Kgx2zT/EXsH6jWXOLzqPGq5QztcpUSsYlrGTkXIvNKDxxtYK8R+/V7RH9i?=
 =?us-ascii?Q?Dzesq+NVCM3UiJUxI9XXYSZasGwx48FE+upZ94cnYgvcI5g+Y72qV05UTVtk?=
 =?us-ascii?Q?+Wg13/sz5yJ7MpwO75AudRl4IFFc3FArsLubhUFvVGvqWgAxNiFSayb8/FFS?=
 =?us-ascii?Q?AIUay/PU6tUucNu3w/C99r+rR3UZjfeOHBr0vDvrUMdpvkNvfg0tjNkhlFhG?=
 =?us-ascii?Q?aVTEF/+amRN+l94xDlIJVHAAMJZp1SwHYAQsel/uMlI1dt9ahbICgkvg9QW7?=
 =?us-ascii?Q?em9ncQBQaUDqwSwIvXI/0hbKeaF00Fka7OwzPsJouIsE7SlEhR9go8RqXZWL?=
 =?us-ascii?Q?iVy7L+Q+7dq/SBAcXRKM6HT5iNLM40Q0pRk7vyrhX3fn+l776DGBoeYqmY6u?=
 =?us-ascii?Q?x3b05/C97Pp3we4LsdqQRYimm25dFnx/tt6Gv0N2la4F/sLIetpvZ5xgMubG?=
 =?us-ascii?Q?nKDZYtTA9yhaSneHQN8oPs12EfdFkN0QYdfnKwJ4rOOBMC+XwSswEs1yEsW6?=
 =?us-ascii?Q?Kz1pLjorF055nvH8sECIgAn+GJX+BF8yq8ltCHUfckrwwbx/EzZTVK+SCXfg?=
 =?us-ascii?Q?sVJIAOOmqBWGzVPix+o+LDSjRxHAEW3IvzwVlfKhpeY3roMw7wjw4H2plwZ3?=
 =?us-ascii?Q?T24kLmuXTfnNywsg+oEUaNkQrbNy8tWVl8rVZkIFM96vUeHRMMR92bd4Wr8J?=
 =?us-ascii?Q?sjN6xz4+6AmKMR9XNDvDPcJ2qFs8ar5JYfQE2NBLGxncgrSXD1u4w2aRq4Ub?=
 =?us-ascii?Q?XQV/Rt6rGwdgpjO2laAm3Pwd11vs7JfNjuoL48CZGU5kF0rXRPH1b1DkQ7nT?=
 =?us-ascii?Q?2rJ5ofkrK86OTW7e2GaAEJgU52NBAIWO0xLR6CJRt0N/Zo9iQmzPK4HKD0Od?=
 =?us-ascii?Q?7WuoewHxfm5yTyI+uZVNS7w8I4q3koKOTCNHjuugXds/arXL5BvoNLrlJC3J?=
 =?us-ascii?Q?4zdS1x1MVjLQ9tlIaaeIEgjCxu9ITqD6p7hIAOPbUzlRswxy12HjIGoo3Tgg?=
 =?us-ascii?Q?QxwylQNOZbMQrpM60eW7LBCL2KFF1B1OeJfHH6+qV0uPur2Fo9ie3excbF/1?=
 =?us-ascii?Q?qEev7vxGrwyWKKDYh9cJLNcMG4qP+CL1AdbRZtg3jtBRznx8XNJapICnaL3A?=
 =?us-ascii?Q?bXi7d9g8tLZ+gy/0n8UI7mU5IjhhCYtooUzjoyPEKflwM6nbe7CwHxKH7Lf5?=
 =?us-ascii?Q?gIBwNa82dUlTBhgbozZJ5ffRn/5sgxkD6C08Qc+05YJzIfER/bhd3C2lbzWS?=
 =?us-ascii?Q?DB6CbXHJTFjEht2SbFk=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?3qaB38t3kjj25BbIFckWJxtcKqZv3uqLlxW0AApPA5s97lRWIER9o14YpZuA?=
 =?us-ascii?Q?CL6vjaUwbvrnu3qL30URRHroBXNMlMnaNdhQUcWjm1ZcojI5XK2pUTteO7LC?=
 =?us-ascii?Q?t8uFfxVRMe3T4+QPJ7aw/2zW7Vw71dhNKoh/mLRetRsfWZe9z9WRl46gSObh?=
 =?us-ascii?Q?z9Jx7o+7RqvPgD+GxC8YIUOpPVM7KfhFmx1fo6amfzN5q1XIp+AW7hpCMW9R?=
 =?us-ascii?Q?CKOzfhJPK6EsO8pdbilqxLJjoJsvtZAQsOW1njVkvvtVHnDpR4sX93IP/4m3?=
 =?us-ascii?Q?Pvf0AQ0djD6pQSj6Txpx/K6+xbDHYDa9oQAJA1LbhRIdTi7uUUSdiGweVk3s?=
 =?us-ascii?Q?R/7lYtrOZ5RrTnEgwVGD8IHCmxYMqz1nOpFOxRye+Ft3nzjg2I4K332VmGdH?=
 =?us-ascii?Q?Wuk+xa3uPbqA/Nr+hJP5jHryXSi7naPtdLtmmTW6eRP7ldgO1MtNT074YdOP?=
 =?us-ascii?Q?Bg3HZJy4Y6lmiQdkQ2fBkgrOXCnm4TeQqle7WXwvUha/d8BfCQkgPqqTJ0qz?=
 =?us-ascii?Q?BFiLsSbwXqrO8WBpOIsJ0O0mShhRy8QwNdUagfbN2O0kZlu62LX+wIq8jS0a?=
 =?us-ascii?Q?faQh+QM40XYi/h5oT+S+SK5ICu0Nr+hWIqHi0uXiSRuhaKlwt3uOTjBdnYbW?=
 =?us-ascii?Q?eWQ5rMte9zfDLNK3dQcvTibgRJkVz6U2JscycITP7RGHuXGDY7IWTZXmFqnO?=
 =?us-ascii?Q?Il5N7ZGpIRp3JrPlP50hUBI0EBlVBJR77iORBDmBJHLEZOeJDOyr5oHbvzRU?=
 =?us-ascii?Q?xrx1whfwm6Q3cI7o1+leIecxTvuP+HVFazFW1AEUhg6HMAcLKbL8K8mjaLKF?=
 =?us-ascii?Q?b4rFjvPFb5L42PjEJnipnj5/XxkT0QDbp6kNsQhmjzFunhBUmqqZOQPyeeAk?=
 =?us-ascii?Q?fAIsoJCZnXadjnkdMycUdQA5WlxZj5OL8HIpxsvUGdL6DnmMZyHfX5XCX+rS?=
 =?us-ascii?Q?tnfhy8zBIvHbqcc1mz7EnoEUuYKu45L3Kik+5E2XDSF0Z/L/pLgMssDnBtt8?=
 =?us-ascii?Q?3SHrTtVtIjVsDfZqhiUgPrYhjEpkBzRwj9Dx/7kUc8wbp8RsnvSlNo6+2S8M?=
 =?us-ascii?Q?DYM+LmveVySBBdQn+F1ndxeDkRYtnRuhB7K3gaScMVn49DIVzYtswdxZWXa2?=
 =?us-ascii?Q?LP/hlx3PlWafxrAuCLPPdeMSkEySTW63rokSvUrjiHdz4aeO+wpQAbQUjupE?=
 =?us-ascii?Q?q4SA4rJckViCCR8YO2QVe9ZjNJu3KNmtpESW+kqmVCxaLgQr+Q0fEB5WDDDj?=
 =?us-ascii?Q?o+xgON/WExFTzy/PrMpoNSNKo+kLiBZ18zpNgwntA7sH7QjGNI/0u3vwIHpL?=
 =?us-ascii?Q?FChluSjpZkVBo0w8Utx28B5qLwrH5ghBq+pW21T7qUt4pkTfkRCMH5xndDOF?=
 =?us-ascii?Q?di1CHR80Kvl0UQZopUfJAXFQsbJm+PeZgjmnignO9U8wEW0fa3jHc7bIr3R6?=
 =?us-ascii?Q?2gbTVQH2HSE8VdRXbY+4aYxMBMheL73BeL3h9pPeU7k+nfxtnARuGkojoeFH?=
 =?us-ascii?Q?dM0TQe9kQsom9lTYXMDFd7elm9yguTAPy2aCA/+0qHee4N1GCVRVjhjt2LYn?=
 =?us-ascii?Q?aqKaUfw1YdnKuHfgQCT8iOKyCFP4EyL4ieVcWIRclgaVEaZT3wErziGwHRmm?=
 =?us-ascii?Q?1HkP02AXnQMJQKnNoptvwIAmpbfPrXd6UhOdA3xH9K7745abNQkxjgXHAaaN?=
 =?us-ascii?Q?OIRWlMOhjd7nQLyThXqdB+KL04vs1vfMOlUnJ8YQp7jXElZgqB+Wgw3WvTYa?=
 =?us-ascii?Q?q4vI5vLD6A=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5ca850e-c313-4b74-fb8b-08de59bcd41e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 13:47:48.4722
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QERe+7Ez01o489Bpugq1qRegkaLMLM4sbgdQjVGqrNGWHjGHCxkSTDfWvEwWZWtvlesoCXt/8zdg67tS0ySziw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR03MB8374
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-258428-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[altera.com,reject];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[altera.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org]
X-Rspamd-Queue-Id: BEB3967A04
X-Rspamd-Action: no action

From: Ng Tze Yee <tzeyee.ng@altera.com>

The Stratix10 devkit supports a separate eMMC daughter card. The eMMC
daughter card replaces the SDMMC slot that is on the default daughter card
and thus requires a separate board dts file.

Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
---
Changes in v2:
- Introduced socfpga_stratix10_socdk.dtsi for common board settings
- Updated socfpga_stratix10_socdk_emmc.dts to include the new dtsi
- Added fallback compatible string "altr,socfpga-stratix10-socdk" in
  the socfpga_stratix10_socdk_emmc.dts
---
 arch/arm64/boot/dts/altera/Makefile           |   1 +
 .../dts/altera/socfpga_stratix10_socdk.dtsi   | 131 ++++++++++++++++++
 .../altera/socfpga_stratix10_socdk_emmc.dts   |  21 +++
 3 files changed, 153 insertions(+)
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts

diff --git a/arch/arm64/boot/dts/altera/Makefile b/arch/arm64/boot/dts/altera/Makefile
index 1bf0c472f6b4..540bb5ae746b 100644
--- a/arch/arm64/boot/dts/altera/Makefile
+++ b/arch/arm64/boot/dts/altera/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += socfpga_stratix10_socdk.dtb \
+				socfpga_stratix10_socdk_emmc.dtb \
 				socfpga_stratix10_socdk_nand.dtb \
 				socfpga_stratix10_swvp.dtb
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
new file mode 100644
index 000000000000..fd968103dfc4
--- /dev/null
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
@@ -0,0 +1,131 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright Altera Corporation (C) 2026. All rights reserved.
+ */
+
+#include "socfpga_stratix10.dtsi"
+
+/ {
+	aliases {
+		serial0 = &uart0;
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+		ethernet2 = &gmac2;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		led-hps0 {
+			label = "hps_led0";
+			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-hps1 {
+			label = "hps_led1";
+			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-hps2 {
+			label = "hps_led2";
+			gpios = <&portb 21 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* We expect the bootloader to fill in the reg */
+		reg = <0 0x80000000 0 0>;
+	};
+
+	ref_033v: regulator-0v33-ref {
+		compatible = "regulator-fixed";
+		regulator-name = "0.33V";
+		regulator-min-microvolt = <330000>;
+		regulator-max-microvolt = <330000>;
+	};
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&gmac2 {
+	status = "okay";
+	/* PHY delays is configured via skew properties */
+	phy-mode = "rgmii";
+	phy-handle = <&phy0>;
+
+	max-frame-size = <9000>;
+
+	mdio0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+		phy0: ethernet-phy@4 {
+			reg = <4>;
+
+			txd0-skew-ps = <0>; /* -420ps */
+			txd1-skew-ps = <0>; /* -420ps */
+			txd2-skew-ps = <0>; /* -420ps */
+			txd3-skew-ps = <0>; /* -420ps */
+			rxd0-skew-ps = <420>; /* 0ps */
+			rxd1-skew-ps = <420>; /* 0ps */
+			rxd2-skew-ps = <420>; /* 0ps */
+			rxd3-skew-ps = <420>; /* 0ps */
+			txen-skew-ps = <0>; /* -420ps */
+			txc-skew-ps = <900>; /* 0ps */
+			rxdv-skew-ps = <420>; /* 0ps */
+			rxc-skew-ps = <1680>; /* 780ps */
+		};
+	};
+};
+
+&osc1 {
+	clock-frequency = <25000000>;
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&usb0 {
+	status = "okay";
+	disable-over-current;
+};
+
+&watchdog0 {
+	status = "okay";
+};
+
+&i2c2 {
+	status = "okay";
+	clock-frequency = <100000>;
+	i2c-sda-falling-time-ns = <890>;  /* hcnt */
+	i2c-scl-falling-time-ns = <890>;  /* lcnt */
+
+	adc@14 {
+		compatible = "lltc,ltc2497";
+		reg = <0x14>;
+		vref-supply = <&ref_033v>;
+	};
+
+	temp@4c {
+		compatible = "maxim,max1619";
+		reg = <0x4c>;
+	};
+
+	eeprom@51 {
+		compatible = "atmel,24c32";
+		reg = <0x51>;
+		pagesize = <32>;
+	};
+
+	rtc@68 {
+		compatible = "dallas,ds1339";
+		reg = <0x68>;
+	};
+};
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts
new file mode 100644
index 000000000000..f15fa39d75b5
--- /dev/null
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright Altera Corporation (C) 2026. All rights reserved.
+ */
+
+#include "socfpga_stratix10_socdk.dtsi"
+
+/ {
+	model = "SoCFPGA Stratix 10 SoCDK eMMC daughter board";
+	compatible = "altr,socfpga-stratix10-socdk-emmc",
+			"altr,socfpga-stratix10-socdk",
+			"altr,socfpga-stratix10";
+};
+
+&mmc {
+	status = "okay";
+	cap-mmc-highspeed;
+	broken-cd;
+	bus-width = <4>;
+	clk-phase-sd-hs = <0>, <135>;
+};
-- 
2.25.1


