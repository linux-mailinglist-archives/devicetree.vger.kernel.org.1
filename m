Return-Path: <devicetree+bounces-273724-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDuvJZN9sGl9jwIAu9opvQ
	(envelope-from <devicetree+bounces-273724-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:22:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CC7257AE5
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:22:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D35231D57E9
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98F233E92A2;
	Tue, 10 Mar 2026 20:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AnrC4NkB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MaLXtyRO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2503E92B5
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773173912; cv=none; b=mXbWeiOR5KZRPFeZsQfsJQDwrufsKytH7PcsGtFrpteV2pTJlpKrCSyIfYHtT6psnbmg3XjALI1MsDSaR39nMtpI88oMi1Lo7V7JNJ6dlLkCpf74nq3pCs7BWH5et2EsgR3ee/HcNlF14aMqKqDVi5gEZ5+kHfpKf8AJlZvuJJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773173912; c=relaxed/simple;
	bh=ddnLcCWQifntrskr0bcFbMBQGwwCpIQxRxTa/csgC88=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M4omstQmLifFlY0L1ZuFL5+LO9f0VR/7uxV1jC8+osjrvmwT2hDghBdHkc51xBoaxU4jkQ+Y9JKKXB1/3Lls0xR3oYPtjCYy77xPFoQ8iZpvjFptc1by4UvqCHpa11xHqnihESwfghX8VcY743ezc9p5KiRhuZCiv5W8CVTj5ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AnrC4NkB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MaLXtyRO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AGH4Qi508501
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:18:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xUalwRtla+ayp0MJOatYREBpi53Z8RFSi3SjDfIMcEA=; b=AnrC4NkBToNr65+G
	AeOELDrpl9XgKlIS8M/AtttB4QyAglvTb6SQxjBuNnsCiDxLCeSoU5WmEqxThd3n
	q1r7NaFq7tri0wHflV+Z3u1FJeS4NCUh+YoW29ccfw+azNMLfQsyntExTh9g0eM/
	OK65QDkAjslsNMXN0BZIg5Zs35L3NZGED64QqDWnvxaOkQbYFjYXtz/2YHDRZZ4x
	d/i6zaSKGtTvF74k4p0sDUwgSutpk1nIU+WC11pYUqWQKNQWVXSoRlKiNN3DpcMs
	OyewJGRmFq0SSbpreUfhULNlhtKqRVRBf7e0xiXv8vwnmwA8wH/1n+oQZ2VCsAGO
	B+jY/Q==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctppagwn8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:18:30 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8298150caddso4552980b3a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773173909; x=1773778709; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xUalwRtla+ayp0MJOatYREBpi53Z8RFSi3SjDfIMcEA=;
        b=MaLXtyROcBZIG2lrTCKQpdHM3sgGv7EaztOOHEKwzuUfvG+cYkBQMf7QFqE70H4VGX
         rlPCdwv9FDZ7jO4aPW76cF0kfNenn/pcsqLX5M0fEfMEPWZ8JEoEDWzyt0+CeiFrZYg8
         rJx39BzDt4GWhbjJm3rOwnAtTKiIvI6W/GBUuwqYLGrTTjF8nQ5UH9skMxB69zjTrLvL
         HVejgm7woF6iKUJuEo0oGrP4dDC4iD3yJqBZFTQWM5665OkV1DV0tCa0YxSIEe/CYLw8
         /hKDDgV5d8m41vAk5IdyzqdTzui6ihs4pdsxbYRfbIabjjwQ6qTcJW3PWWr36RcHIiLz
         bWqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773173909; x=1773778709;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xUalwRtla+ayp0MJOatYREBpi53Z8RFSi3SjDfIMcEA=;
        b=Jk3nyfKfbmz4/0DAtZ/a+cNKGjJZBVjst+xixq5h5bCWuv6BJhjfkbY9NaQcFZK5w5
         IubWuM6CC+/uM7GWM7K2nx0K/A9LBFkoX80LakLUC/nFal8PySUH5lyRE8lBLa5EjbYo
         7nQaWqhRc/Ba1xh6MmHbpw0fuff9G7UnjlgJ7Kvf+R/+n1UsW153NmczH9fRgSE9liQG
         p6HqxRGhbVKcwpljDT2939b6bCueEKD8HQnTSoV0kiPYM5HrMnQa+xjeuILtn/GlHuGL
         f8yXEnhjkxOgoclotHgGF8UrIJMUhp8JiTeoH37AyuVSyzrM5pfYGKYuOHjzsCSJetHZ
         aeOw==
X-Forwarded-Encrypted: i=1; AJvYcCXsrG6+WxvcO6WUiob5suvc+lnUA/CIVXwm77T+1r0Y0e+DPaDpolHSha8tfnOWpnfBRQkJTGClCZ9V@vger.kernel.org
X-Gm-Message-State: AOJu0YyOU4lGY5qncdJWAiur8Ow396OGGeciLUe0lsIO+TIxApkN+Ev+
	KI1+qGm8rM4GnWsGa5mlo1kjwy3i8eSFuZPLjRudMZKcApZ9oLDzWCLqW7xhLdnKCyfawmG+2Jw
	OJ0vQRWURTmY1l3ey7cwuYM5+qdcaIEu52jOJDWJ2UDYmlrpCj1lBRAmrfbscf8Ji
X-Gm-Gg: ATEYQzwUGEXx3uVBDBJYjL+zDQeBuaTbwSP6YfWZ1X3BmUnIdK0lvIomVkHUzX+5unH
	7yK3jkjPqhDPKvt+958ZCDXetllrhZIQ/ZzVjE2jwoY/I+7qBI0OBIBXzvktBCQr4QLv2JwpGWB
	PqX60eiCGTh3i+2sLIopC1mmlOHpoERCtKfDDajZaiNlqRc1DRiP6UQVhBdGm9OVmJOqyoM0cXJ
	IgUSYgm1gw7LEeedltCNWx1sF1c50MhyaxEgidID9C8kFPnE6EeC47D0iX6T1X7gqpGEyYU0kzn
	12Jag39zqvT6r4oezYpEefiI03+djWATBCLo9kWoeTJlw0DKii/U11+Hpq90nmIP5yAmzNHuruN
	nndBxADOUZeis+N1MhLrpQr2k8z+FReDQToasOpeLpFB4oQzj
X-Received: by 2002:a05:6a00:1c9e:b0:829:88e7:c89e with SMTP id d2e1a72fcca58-829f6ee65abmr188027b3a.9.1773173908911;
        Tue, 10 Mar 2026 13:18:28 -0700 (PDT)
X-Received: by 2002:a05:6a00:1c9e:b0:829:88e7:c89e with SMTP id d2e1a72fcca58-829f6ee65abmr187951b3a.9.1773173908318;
        Tue, 10 Mar 2026 13:18:28 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6dc2d0asm115262b3a.13.2026.03.10.13.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 13:18:28 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 01:45:53 +0530
Subject: [PATCH v2 09/25] mm/show_mem: Annotate static information into
 meminspect
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-minidump-v2-v2-9-f91cedc6f99e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773173756; l=896;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=hnWgTs3BqNwkuy01WGRtLHEmLnAWVLqGtO9y7HspcnE=;
 b=uLHZ20TEam9IFeoPaxYKND50xjzJmo8/66x/toJROlPuRsGnYldJCrFNEUSo9htPmJgsz83XB
 h1nzBbPPYs9BIy9KMclSQJQfzgEIMyig5knFQTbc87F6JhGMpL4Ps/A
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-GUID: AxuDOHqqX8KNMaIqpgP-as1Tp-D50rMM
X-Authority-Analysis: v=2.4 cv=D7BK6/Rj c=1 sm=1 tr=0 ts=69b07c96 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Ayq6lH46roXo9nsmW_UA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDE3NyBTYWx0ZWRfX9BL5+g2DQFiB
 quspqY3jy+pdFdDxlrwlvhZOsW5OeFAfS/zbkhKWaEzkQMRBYVU0up6GA0aHmvHtFE+VDU2y9H1
 6/yLS3So9bDEPLW3eZqWlBXZJtiXFaipnOqYjLTSh3WrQNP0CJ0+Mro7eZB7n/KUDC0R5q2jk76
 RsXu+hnSn4muQT/tkOJ+YSLv4vN7yqOdJ1YLJhEl/k2DYl3avSp7Adp1R3rSZ/RDbqwSmWb9mNJ
 Ayg3rjUygI1OWPJSkUmKtGMRhOGv8YbrqISpT5o1gqWS3C5fGJ9Pgu8xRFpMbpFOY7L7L+8l38G
 ocfRfFUBoY1M49KJFfrc/xKjPVI4fuI/3dVZABsYJSfWMcd75+MpR39bdtPkvMc1glrJkodsuB8
 VS5AKJajCQ206hT7xMmgDaN9vU2U8KEp5x8ppfjyFutuW94rElnTwGeUHxm1D8RcjZkZcmolGdE
 st9d0+iGOSkfEZhwFPQ==
X-Proofpoint-ORIG-GUID: AxuDOHqqX8KNMaIqpgP-as1Tp-D50rMM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_04,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 clxscore=1015 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603100177
X-Rspamd-Queue-Id: 08CC7257AE5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lwn.net,linuxfoundation.org,linaro.org,arndb.de,kernel.org,gentwo.org,linux-foundation.org,infradead.org,linutronix.de,redhat.com,arm.com,goodmis.org,google.com,suse.de,oracle.com,suse.com,cmpxchg.org,nvidia.com,tencent.com,huaweicloud.com,gmail.com,lge.com,chromium.org,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273724-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linaro.org:email,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_GT_50(0.00)[57];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

From: Eugen Hristev <eugen.hristev@linaro.org>

Annotate vital static information into inspection table:
 - _totalram_pages

Information on these variables is stored in a dedicated meminspect
section.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 mm/show_mem.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/mm/show_mem.c b/mm/show_mem.c
index d7d1b6cd6442..f6a92c7d9d1d 100644
--- a/mm/show_mem.c
+++ b/mm/show_mem.c
@@ -15,12 +15,14 @@
 #include <linux/mmzone_lock.h>
 #include <linux/swap.h>
 #include <linux/vmstat.h>
+#include <linux/meminspect.h>
 
 #include "internal.h"
 #include "swap.h"
 
 atomic_long_t _totalram_pages __read_mostly;
 EXPORT_SYMBOL(_totalram_pages);
+MEMINSPECT_SIMPLE_ENTRY(_totalram_pages);
 unsigned long totalreserve_pages __read_mostly;
 unsigned long totalcma_pages __read_mostly;
 

-- 
2.50.1


