Return-Path: <devicetree+bounces-244521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF94CA5E14
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 03:07:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6D6D830BAEFD
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 02:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06EB32DAFAC;
	Fri,  5 Dec 2025 01:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=windriver.com header.i=@windriver.com header.b="sm+MNBMl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D412F39A7;
	Fri,  5 Dec 2025 01:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.166.238
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764899989; cv=none; b=lmiQDxUpwMYNm37rQduDn3lB+L/xFr59IYfAjrQkbijGQxPL2F/k7wNqgkR0LKNmKDO2eOb6/8cyj3YHBsBgtAG9MtY662TsvMjMTRNalK4juxT3pZlJ7wS1q9F1qqvtobmMVvePhTuApxfnrarQ5aZrHpe0Wuq340u0/b1pcNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764899989; c=relaxed/simple;
	bh=KyMvK9g65gCtdUUwHF0Q5gyLxiGwaQT6jfTZgJNyjxA=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Lz8sJQnjIOGkpdqbK3e6F8X9DAjOWF11jdJHDtcx4rLU3u/oPRAj0ycRsSWNbbYqKp0bQqDpSDS1iLVnZQGzIXV53u4IC22AF7Ok+nP00UxX3hrRxhbQl+hP2mFzlPyrZkHki4qsxLWKhV7Iw0V74vlujPUOR6QGskCtwFpBkwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=windriver.com; spf=pass smtp.mailfrom=windriver.com; dkim=pass (2048-bit key) header.d=windriver.com header.i=@windriver.com header.b=sm+MNBMl; arc=none smtp.client-ip=205.220.166.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=windriver.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=windriver.com
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4M8srk2002184;
	Thu, 4 Dec 2025 17:59:37 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=cc:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to; s=PPS06212021; bh=a+uGpbsU7
	YfqZb7NwBYOoUc/FPokXHcnikBy18ewopM=; b=sm+MNBMlxYVBclvWTMAvvxiTB
	TSsvU+/Xv8Qujji2+Ya/k+GAWjPoIk23UYkcbHrUj0DHpGjXofxRtDce3VIs2mYQ
	kEbTND8MTdoFPYzWS/gVXGvinaiQsDNMvLBWipw2zPVYFjYfSgBxLfzUoxaqRQkM
	1nEaCNfUVG9WL1q7PlJptBH2MiWSfAUynxcB01CHS0PRH0ObtXQarLUjeBPp+oYn
	6frGzQ8Hox/9D1s4mX51eYpzvSbRXUiCsFj4eh6Gok+28idHP/y646oPeIu6veJm
	2vAzpdGvsohnwVc+OhdMMnLiRA6k+Vp8woq9SGlnKrgQcf083FS2XgePFBJHw==
Received: from ala-exchng02.corp.ad.wrs.com ([128.224.246.37])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4audserhsu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 04 Dec 2025 17:59:37 -0800 (PST)
Received: from ala-exchng01.corp.ad.wrs.com (10.11.224.121) by
 ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.61; Thu, 4 Dec 2025 17:59:36 -0800
Received: from pek-lpggp9.wrs.com (10.11.232.110) by
 ala-exchng01.corp.ad.wrs.com (10.11.224.121) with Microsoft SMTP Server id
 15.1.2507.61 via Frontend Transport; Thu, 4 Dec 2025 17:59:35 -0800
From: Jianpeng Chang <jianpeng.chang.cn@windriver.com>
To: <robh@kernel.org>, <saravanak@google.com>, <quic_obabatun@quicinc.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        "Jianpeng
 Chang" <jianpeng.chang.cn@windriver.com>
Subject: [PATCH] arm64: kdump: Fix elfcorehdr overlap caused by reserved memory processing reorder
Date: Fri, 5 Dec 2025 09:59:34 +0800
Message-ID: <20251205015934.700016-1-jianpeng.chang.cn@windriver.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Authority-Analysis: v=2.4 cv=W+Q1lBWk c=1 sm=1 tr=0 ts=69323c89 cx=c_pps
 a=Lg6ja3A245NiLSnFpY5YKQ==:117 a=Lg6ja3A245NiLSnFpY5YKQ==:17
 a=wP3pNCr1ah4A:10 a=VkNPw1HP01LnGYTKEx00:22 a=t7CeM3EgAAAA:8
 a=8E4iPrr8Qj8Yrt28hJ0A:9 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDAxNCBTYWx0ZWRfX0a6gSlLKlYIg
 diIdxQSn1gd5wZEs6RXj92LFLBvpfCqG1V1Jzu1OpSqyB4Hz0OfTJP4E/BWuNBQ2CRHNIGcLTSl
 iP/PqvgNJvnFdJI6gKsaiqdrca6eElGu+l95DBRZ5GplN30Y6ne+1lDmqkQNT5PITSOPzKi0F2v
 SHktOmVlaXAFey8291SMYsI3/7BIa8WtPHTlDrR9TUTHEl4pNLZXbB8GOeDdylMJTBoDYO5Pbmt
 hG79bN1A13NLhjkcfC0HPelMrB2mBxcT51cqG82NQl7sFWiQdGJbBraLaW3BGcelNGHL0ZGUVzc
 uk9BTv9ndq4Obanj08hwnmqhVXPVbIxHijAAuHpQiFwWh5N77bMvUvSUHWb7aHxksI1gvAP8NRi
 kcDK8i7wHGpDQXNqfLr4Pz+tauyQ3g==
X-Proofpoint-GUID: vWrdIwsFAK-ERB8vbke6oZ4zNVskN3BG
X-Proofpoint-ORIG-GUID: vWrdIwsFAK-ERB8vbke6oZ4zNVskN3BG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_01,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1011 impostorscore=0
 phishscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050014

Commit 8a6e02d0c00e ("of: reserved_mem: Restructure how the reserved
memory regions are processed") changed the processing order of reserved
memory regions, causing elfcorehdr to overlap with dynamically allocated
reserved memory regions during kdump kernel boot.

The issue occurs because:
1. kexec-tools allocates elfcorehdr in the last crashkernel reserved
   memory region and passes it to the second kernel
2. The problematic commit moved dynamic reserved memory allocation
   (like bman-fbpr) to occur during fdt_scan_reserved_mem(), before
   elfcorehdr reservation in fdt_reserve_elfcorehdr()
3. bman-fbpr with 16MB alignment requirement can get allocated at
   addresses that overlap with the elfcorehdr location
4. When fdt_reserve_elfcorehdr() tries to reserve elfcorehdr memory,
   overlap detection identifies the conflict and skips reservation
5. kdump kernel fails with "Unable to handle kernel paging request"
   because elfcorehdr memory is not properly reserved

The boot log:
Before 8a6e02d0c00e:
  OF: fdt: Reserving 1 KiB of memory at 0xf4fff000 for elfcorehdr
  OF: reserved mem: 0xf3000000..0xf3ffffff bman-fbpr

After 8a6e02d0c00e:
  OF: reserved mem: 0xf4000000..0xf4ffffff bman-fbpr
  OF: fdt: elfcorehdr is overlapped

Fix this by ensuring elfcorehdr reservation occurs before dynamic
reserved memory allocation.

Fixes: 8a6e02d0c00e ("of: reserved_mem: Restructure how the reserved memory regions are processed")
Signed-off-by: Jianpeng Chang <jianpeng.chang.cn@windriver.com>
---
This BUG is manifested on NXP LS1043 platforms, while other
platforms don't trigger this issue, it represents a general problem,
and it's more safer to follow original reservation order.

 drivers/of/fdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 0edd639898a6..158ae61c7882 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -503,8 +503,8 @@ void __init early_init_fdt_scan_reserved_mem(void)
 	if (!initial_boot_params)
 		return;
 
-	fdt_scan_reserved_mem();
 	fdt_reserve_elfcorehdr();
+	fdt_scan_reserved_mem();
 
 	/* Process header /memreserve/ fields */
 	for (n = 0; ; n++) {
-- 
2.52.0


