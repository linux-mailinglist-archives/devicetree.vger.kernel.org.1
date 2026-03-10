Return-Path: <devicetree+bounces-273729-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNYZCOt8sGnLjgIAu9opvQ
	(envelope-from <devicetree+bounces-273729-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:19:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5DD25791C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:19:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 120233001FD4
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:19:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F0EB3E92BF;
	Tue, 10 Mar 2026 20:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DjRDOs4L";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B+TFtFQR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9D83E2760
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773173987; cv=none; b=e0CtpYgo4i4bxgmYiV4wa6F6XOj72MVcIMlKvFp4fqaxFxCoUtJw3KJy2/+YNqQlIvZEOP/LeM5BYNUAtZEQcZkIzMg71YTBe0O+xsE1GFwTQIfjBEGCgUOTu6ri2f5zLCSG9r+eVpYQ3EMtJJMagcJCVIpbKLBWrqUUWVPTNUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773173987; c=relaxed/simple;
	bh=wlqT0KjWJK0l8lqum7wtMlCC8k5TDcN2j/YxGJ8VYZk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kqOLy/m1pINWzKD5uHLb04uedyHHiD6xR7SwsaGQiME90VuZTRZr0NlLi+eXreR3ZoekIzBejdvMOvmFZElYwk04TMXTSHK6fzQ1sqQyB65Uum5AcC24BBZJuVlMhvZ63X6MQo6cBUD29vm/+Tm8qzS5t9ks9VoFEc/8cyr1Aq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DjRDOs4L; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B+TFtFQR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AIutaX3892938
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:19:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gwpDp7aMAgBSG+xcal97Cd6xKHw+4XmuCvZKGe6Z0+E=; b=DjRDOs4LgNnogppS
	pbEtzYSW/aSQ1bjfJwg3k2S39P0xRyV7xKiR+7tMMqNmVhvTUY+UQft64oSHwc0m
	O0wKRltcKUkeV5nyagGJrw7iUhjkQ+KaQGhmsAFJu8Ns8VKMirOXkYe9TL/kbNKn
	1EtKdUpA3QAi5bLLilcf6G/V4kHSC3+YBVcuex7nOWge88/ZR8rzGtzNSpfHfm4/
	/PperC8fre5EIXn8E9lbFebGMkC3Jj5XtWMVk5RDFZAHzj1PEvi51Vq/eVnzlBTQ
	nnCRCPJW8Vto+Q9/ZeP8V4rOHGT0Udq57XA8N60ZS4vIorBICL6riLYCBqLcC9Uz
	ax41ZQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctkmyst9g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:19:45 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c70ea91bfe1so8029212a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773173985; x=1773778785; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gwpDp7aMAgBSG+xcal97Cd6xKHw+4XmuCvZKGe6Z0+E=;
        b=B+TFtFQRkyEnCxFNU423e+2m9+02EAB/d766+wwYcH7ksB5Xrb6VfUwPZnRs09kU+i
         33xDZD/2CXrTn2tIG5rV2xOWmvsr6Xdr2KLtxm9nUBHsmsqXvOvs+Ed4u74a4nerdov2
         Enz9Uq15rE1tRvY/hLY9lvoWrGfxmPtxutWze1pAUtShGKpApSwpP3MwrR76eaZE/FHp
         nz9GsK2oNpD/18XGNIxGFAdkmC35ELXEuDYhENKrnZnoHFTQV2EEnynkDxy0ahINe47T
         pVlIkIrn3o3GbEGTzyQNeZg4pEw9Ei1oUvZuk7YjIO8GaYnV4xSluRYZhpuF/9x1TeJu
         OE/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773173985; x=1773778785;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gwpDp7aMAgBSG+xcal97Cd6xKHw+4XmuCvZKGe6Z0+E=;
        b=klOlQ1PvJKgM+C6JOluLVBXBXYH3UlhM79BiCXgqCvBkSyuwA+rWaBTOpcK2Nap4Op
         U3xkgnYYANlQs624OCRaetBXqFo/09D8N4IgeVc2dnsFD/ppYH9Pu6yz5uCWKtVdBYCU
         FNeW5kuT6m7zYGr9ZPGKCGTQhSErlEMKndcqrTzQivwBKg6wcbZshm5wKkDhU/IhDTSQ
         czvQRbKUYHvu4OfvYhz8+deR3rYqkf8IC5S0NvnMS5VkgSG++Vs8d8Uuoz+AiK6QQfOt
         wStFiqfWfqjkj8YqygqEMnVXgD5k9YQH20kzDllO4G0YnOmLuroe5PflGAHOfgPxFQ70
         hKJw==
X-Forwarded-Encrypted: i=1; AJvYcCVNFM402izHKeENIM8rTaa/cnA3qHjQAFqXKe4ofMQFa3BxnyNmCCBzvqe6PWCdokEpfSqx6bdcf0FJ@vger.kernel.org
X-Gm-Message-State: AOJu0YymowfRlqo/LiKrDjR3gZJOBYiW1TYuegjKEg6Rx7RPewfUwtyw
	6nTVesgmSXkrA7QIWjzVjcWgS4oH/LIci7bk5qw3UF3q0xjUXDgJyOsHUglxNWpyfxJZ1P/8G2Q
	oozmY4hS5yn/jm6HdVtCFjKJBog7MhUnS3L3LSbPAWlFVsNCcD8a/JOCeAyiuUXUn
X-Gm-Gg: ATEYQzwyezAJigPct0Fzx7XNDppNgLstp21342dqeEUusJFhCvYesMXQSrfgchTFAYd
	zuYym6B+HACoWa9HAqcn9Mo8D/o/G/9vJbxXKi//xPey34aFddL1rqg5N1e9p6UaQJ1M9ccWIOj
	+ccsXAWFleZuc6gyKYL5CeNTC5x2nZsxOK5tH3BRlzlvZnc8/q2tToPyW2pyq59Y2i+cjDHiyzo
	7diosuuUvRvVLMLCfjQ8SEBuNDJcio9ZMUAzsFqGPmMIIyFKWvBnzPwcOls1Y3LnJhxLG8Nd0LE
	XelOluqLvLx7n82lefjYXlz2sPMst0WssTe+SBus0ik09rv4FQK78ItDvpUY7sW+n0iP/kJIgk7
	wb3Reojill+GsEFI03OZxuztoY8Imh1pMNnOaOpah/PbxlpXS
X-Received: by 2002:a05:6a00:ad04:b0:827:2736:d928 with SMTP id d2e1a72fcca58-829f70f04c4mr138754b3a.39.1773173984640;
        Tue, 10 Mar 2026 13:19:44 -0700 (PDT)
X-Received: by 2002:a05:6a00:ad04:b0:827:2736:d928 with SMTP id d2e1a72fcca58-829f70f04c4mr138715b3a.39.1773173984034;
        Tue, 10 Mar 2026 13:19:44 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6dc2d0asm115262b3a.13.2026.03.10.13.19.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 13:19:43 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 01:45:58 +0530
Subject: [PATCH v2 14/25] panic: Annotate static information into
 meminspect
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-minidump-v2-v2-14-f91cedc6f99e@oss.qualcomm.com>
References: <20260311-minidump-v2-v2-0-f91cedc6f99e@oss.qualcomm.com>
In-Reply-To: <20260311-minidump-v2-v2-0-f91cedc6f99e@oss.qualcomm.com>
To: Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
        Eugen Hristev <eugen.hristev@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Dennis Zhou <dennis@kernel.org>,
        Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@gentwo.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Thomas Gleixner <tglx@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Anna-Maria Behnsen <anna-maria@linutronix.de>,
        Frederic Weisbecker <frederic@kernel.org>,
        Ingo Molnar <mingo@redhat.com>, Juri Lelli <juri.lelli@redhat.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Dietmar Eggemann <dietmar.eggemann@arm.com>,
        Steven Rostedt <rostedt@goodmis.org>, Ben Segall <bsegall@google.com>,
        Mel Gorman <mgorman@suse.de>, Valentin Schneider <vschneid@redhat.com>,
        David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <ljs@kernel.org>,
        "Liam R. Howlett" <Liam.Howlett@oracle.com>,
        Vlastimil Babka <vbabka@kernel.org>, Mike Rapoport <rppt@kernel.org>,
        Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>,
        Kees Cook <kees@kernel.org>, Brendan Jackman <jackmanb@google.com>,
        Johannes Weiner <hannes@cmpxchg.org>, Zi Yan <ziy@nvidia.com>,
        Chris Li <chrisl@kernel.org>, Kairui Song <kasong@tencent.com>,
        Kemeng Shi <shikemeng@huaweicloud.com>, Nhat Pham <nphamcs@gmail.com>,
        Baoquan He <bhe@redhat.com>, Barry Song <baohua@kernel.org>,
        Youngjun Park <youngjun.park@lge.com>, Petr Mladek <pmladek@suse.com>,
        John Ogness <john.ogness@linutronix.de>,
        Sergey Senozhatsky <senozhatsky@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>
Cc: workflows@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
        linux-mm@kvack.org, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773173756; l=1365;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=lNXUiyOavxpH+nkJAUsL6tXwgIVeayDdpUTtrMGpbN8=;
 b=XhDH2w4mEz3MQsVANAQsn4u6is7j4U79l+YZiSzviUo/lRPaV+eAvCHeg+LHm3FJEyUmXtITH
 h7lwIX9gOjtD4Zhh82gN9bDOruCNJrlOfEq3jVS3l0UVOlydRIeQN4F
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Authority-Analysis: v=2.4 cv=RYudyltv c=1 sm=1 tr=0 ts=69b07ce1 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=sIx07V1IIwI039IRSX0A:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: CxQpvOGp3YwVWSuQVTHuYoM-WOxzzWSC
X-Proofpoint-ORIG-GUID: CxQpvOGp3YwVWSuQVTHuYoM-WOxzzWSC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDE3NyBTYWx0ZWRfX4aEtdnesijRH
 dqKAE7mVDhnu8YpkjoAWvs26oezrUTE/abYyTtrjlvTrSa2r2sO/cqxk6eaRfmKRuaO0zRh3db1
 jfy6mkj7Bee9XocVi8zYACfNdpR7g+k4EHHd4BbG/TYjPuGY+Tj5s0ACEy0+1J+KbLveUfgR8I/
 tY4rdCZmYggar2t4R5h+L2sJK52VGwIYTuBlb2/LDABocbSmo2+8MNN4yQaDgtQ/xFhtJt9p5FS
 C/tLDbIFYMphJAEbfFPkd84y38UhU2PhxgN4CGK58PzBrYIcxdFFpJyB4MulQUDpyQ2rzj4XTmt
 bmDEQJUhbZ3PTQx9kHh83Ri9WrGD/1Z5ge0NOn+bCk/fbbAsRlIcL5/5zN2sO6LMaDNsKVAPvQ6
 pNK1MAbvy86fSfHucCiaq9Wup/QTllKPTw3A0who+TwygbcWSd4qfYcOL9jGWQvogwwyHmYo/ZJ
 fIM5Bc1F7LLCp6cs7bA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_04,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100177
X-Rspamd-Queue-Id: AD5DD25791C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lwn.net,linuxfoundation.org,linaro.org,arndb.de,kernel.org,gentwo.org,linux-foundation.org,infradead.org,linutronix.de,redhat.com,arm.com,goodmis.org,google.com,suse.de,oracle.com,suse.com,cmpxchg.org,nvidia.com,tencent.com,huaweicloud.com,gmail.com,lge.com,chromium.org,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273729-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,linaro.org:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_GT_50(0.00)[57];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

From: Eugen Hristev <eugen.hristev@linaro.org>

Annotate vital static information into inspection table:
 - tainted_mask
 - taint_flags

Information on these variables is stored into dedicated meminspect
section.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 kernel/panic.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/kernel/panic.c b/kernel/panic.c
index 20feada5319d..ea1969d81fd9 100644
--- a/kernel/panic.c
+++ b/kernel/panic.c
@@ -37,6 +37,7 @@
 #include <linux/context_tracking.h>
 #include <linux/seq_buf.h>
 #include <linux/sys_info.h>
+#include <linux/meminspect.h>
 #include <trace/events/error_report.h>
 #include <asm/sections.h>
 
@@ -57,6 +58,7 @@ static unsigned int __read_mostly sysctl_oops_all_cpu_backtrace;
 int panic_on_oops = IS_ENABLED(CONFIG_PANIC_ON_OOPS);
 static unsigned long tainted_mask =
 	IS_ENABLED(CONFIG_RANDSTRUCT) ? (1 << TAINT_RANDSTRUCT) : 0;
+MEMINSPECT_SIMPLE_ENTRY(tainted_mask);
 static int pause_on_oops;
 static int pause_on_oops_flag;
 static DEFINE_SPINLOCK(pause_on_oops_lock);
@@ -827,6 +829,8 @@ const struct taint_flag taint_flags[TAINT_FLAGS_COUNT] = {
 	TAINT_FLAG(FWCTL,			'J', ' '),
 };
 
+MEMINSPECT_SIMPLE_ENTRY(taint_flags);
+
 #undef TAINT_FLAG
 
 static void print_tainted_seq(struct seq_buf *s, bool verbose)

-- 
2.50.1


