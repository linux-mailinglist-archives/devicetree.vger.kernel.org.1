Return-Path: <devicetree+bounces-273735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4O36E/t9sGnLjgIAu9opvQ
	(envelope-from <devicetree+bounces-273735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:24:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDFE257BA9
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:24:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 026703074784
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D85513E9F69;
	Tue, 10 Mar 2026 20:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WsqaEFjE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cOwEwySQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACE3E3E92BF
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773174063; cv=none; b=jFDQfony3tZ9U71HrUTuG47dhb5McDn5dfYe/6aznTXvGITy5mQpgZ0s60PweSsyZLQLBH5i7274fdbJttE6kToqOthAd52Rnuqt3LA3kxqr1XGTIKASiJDHE1QQDdROeTml7fgCrrPWyHES80Zvb3bkioPBZEhxawlggh4cdxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773174063; c=relaxed/simple;
	bh=s2cfwUngtIxx2eV9eH8Dr8bBdhICSaTG0klgQVpqdHo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cylcHiISOifIcRwmCrWmJzL2qf+XGsybfCXsdNEtBcNjBTZimyUx7/GsNp0xkP6ow4RL25a9R5+1ombWsXKFEqQ6msaVUdoT9TZ4WcBOw8TJ9KEETqJVR9LPoZfLIwhsyeDcVejGV96MDU1EWD9+k8cCyhbjSoPICcmNFJ6Ca9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WsqaEFjE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cOwEwySQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AIeJWl3759617
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:21:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8G6ao9c6IrCim/s3l50tkoj/aPJ0c8mCOq1F3OVXebw=; b=WsqaEFjERT7rg3s3
	Wxh4C+QCKApqmb0SH31sntHGAvWc+qf8wmPqySjMHCo1jeHhJI60NHr0zphUZWHZ
	GQosGveeaBtzUWQ7Q1IAkpdoK9yn08lEhaKJWCAufgufRB6Ior1EGFC2N09sczDb
	7/cx2WLOHllX2osb3iSyttxtVaavlxwEtzl9WjPZXcdjz6WFzIgmYLhGX8eL3AlF
	/KnH3dlStqUuteY6tdTF03fh8MY/DmVq9JpR31DcLm3GeTOhb3PIoEXaBkV+t5P7
	AE2LZZ/2jv+N4eRLEYL00c4jqi+yORHOQGiMaJOCJND+Gilvla1St3elnPg4ssDz
	G0nEOg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctk8uhwaw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:21:02 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-358df8fbd1cso13177539a91.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773174061; x=1773778861; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8G6ao9c6IrCim/s3l50tkoj/aPJ0c8mCOq1F3OVXebw=;
        b=cOwEwySQsAqF4BoYtofEMNrj0/hVrqVwtd6ZYRpYaRcSgeM0fZ7fq/UQV0sEVaVN7f
         lLgg8NFJzxRdKxy/x64a79N9sKKtVxIyGObTniSYfTXs/C6klVZTPvFxblOki5q5oxI+
         A0zmq8HlK3rj+hpELqRWIXOTT8SMEhLNRXWgjJn5Y8PVeoaGXOY2+85APUHB0cNHUd+I
         bgLSHRgHMhXNCBSnpV5vbIB68njEqa4ecGWxl7CsDi2z1LBk4ZmtUCOJsp9EANnV9urM
         6sstr7rMonFDMQHClIH69fFQKxXT7oVvBsZGPB9k8E9yqfkU7LNbd3g07bWNkl5ejwer
         cAag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773174061; x=1773778861;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8G6ao9c6IrCim/s3l50tkoj/aPJ0c8mCOq1F3OVXebw=;
        b=C4VEZg7eCZ3DBfAJ5jtUvBW/Cdk7zsHe+R85GAunTakTf+uCBsT9tfFCYJAAnrFKaw
         HBHhDB0LsFGHNMrfZ7t0oGhI39aIfWjaAoTHXqvTlXAY2edrznkkNZ66T8fhHbLIrQRg
         4SJvQ1eNeNcIvShoKO9eWPsbnvzbpUttbI1umqmlbr56pziGKmvBYIQz1c3VL9NT2DFe
         HPVLPTcv7yXzn1SlSx7OVAM+cdCz8KWzt3dQ8uIjYsYaolsyAQ4cRaryUrFB4DhiMe8J
         +lqOoJ4AnUzhSPTlnYGaBoMcCYzWaaxCWSXK4lWqWMSLu5JYYoMwy4uwzDkCgU4Oxynx
         VHTw==
X-Forwarded-Encrypted: i=1; AJvYcCUe1PW9bA6PzS5NI1tHXHJtA/mVtW3VxHVnYAMvZ5Tm+27e1n02m06z2Kji6cB2R5Xw4d0TfGCcJATZ@vger.kernel.org
X-Gm-Message-State: AOJu0YztVLRGzyx1BsTSvIim0AY42CYs5spZJHMmGwlMwi8qeDtQeO/I
	vyxkFeuLlT2/ne6CB4fyjR9ZdSVBIgL7ymEKfTa5mE5pdWoR1EyI/Uhls8iEzdxzo4Nuom7li5M
	QFTtoOxbnFxHYiAjDEanC9gEeKpZck/7u17DCnA8hns0gdRFeqHw3EBYmWsG01tmh
X-Gm-Gg: ATEYQzyJWd20WQkY4Sr81qwVo49vm3QvteC0V7Sq7aokgcRZVgcAXduQ8zzPqg+rOeP
	BPmIw8vxCvTVLZSo0a5ZOX09mebc+HzHqBcEXBqf7LaZuXBBgiVe2AfOqtULX+Jpq9kkPg5hPPk
	sjdJL/eRMU827aKc7c9GTB5Ga0PLKW9GiGNN4UZJnASzU1XP3OdM1XaRt1aBZrrCNeI51IS+zds
	4+CWdoQ5nTZljn30C4Ul+Fm1knU0GqwiFFArfT0q/z1a9i0FL9cIOlHpWVjfaBLJdqcP8eTHQAI
	38tae4MxMBBoZrXsHsLLs4TQn4ZWgnuGg6p77kbkPSuFnljFRBmjzGrqIXp4UHGRi5+IpBIxkEB
	sYtw2fdMYFvu2ZquKn4XNX1nt1MH/iZOoiEer58VyQsUtU+nq
X-Received: by 2002:a05:6a21:a97:b0:398:b5c0:587 with SMTP id adf61e73a8af0-398b5c00764mr2440440637.42.1773174060662;
        Tue, 10 Mar 2026 13:21:00 -0700 (PDT)
X-Received: by 2002:a05:6a21:a97:b0:398:b5c0:587 with SMTP id adf61e73a8af0-398b5c00764mr2440378637.42.1773174060015;
        Tue, 10 Mar 2026 13:21:00 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6dc2d0asm115262b3a.13.2026.03.10.13.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 13:20:59 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 01:46:03 +0530
Subject: [PATCH v2 19/25] mm/sparse: Register information into meminspect
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-minidump-v2-v2-19-f91cedc6f99e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773173756; l=1623;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=s2cfwUngtIxx2eV9eH8Dr8bBdhICSaTG0klgQVpqdHo=;
 b=xNEeXQa/cNWC1GXYckGzvwIw/v3hCspjDsNkZyY1zYhqsFA/V37X9XsQTlN0zIgnx7o5WUfXP
 T8fHWKWsvkND5KTzL/sjt54KQs43AGyHROp1bjPiWExrBXQcpTK+mk+
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-ORIG-GUID: 18t-c3C8Uru6zsxy9EMiVWzFxyYIOQmQ
X-Proofpoint-GUID: 18t-c3C8Uru6zsxy9EMiVWzFxyYIOQmQ
X-Authority-Analysis: v=2.4 cv=YcmwJgRf c=1 sm=1 tr=0 ts=69b07d2e cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=hPKMzws2jpgYMEASFUsA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDE3NyBTYWx0ZWRfXw/V/Wb7Ac5+2
 VEGPGQDhFZDevH1ZEaoIe14Ss9cIOoJZ2NpsQU022XG4Opm4Y5Njlqm3tSxZll1IN7nToezE0S6
 1CbigG7BgCjioM7FpxJOtH9WmkVQJCssC9WXqW18/9a0S/JimRoY6DLRb7eEKA6XFjxtsveKawU
 HPAKCKguiLwjxXKt+AX1Ujs7uuL0MbfxZ5LDYhQDPIFuu9WCKqDbWWIBLFOONEPg1TlbiiZHoYr
 r4agvvvEDMxU5I7k9Z4LdcH8Dv0M4PGbkcCsoi0FFDYjA1VDDbhGAdGEipcgcJp7dHZvF8xzgsX
 FUkjgjxWVMn6AJSa1NrkvdrQhTcXPSQ8v2d7mye3XHtw/LX5AYFSqYMRcYIVMRrpgrVIr/Ee5oZ
 UAyTXxdOyePBhE/IsdB7fbbkEWd+Yz7z2mF843K74herxQ8R6bW7a3R1drkptZKmIHm38z6MgUi
 jWbJ2yT9RERuflMVI3Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_04,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603100177
X-Rspamd-Queue-Id: BBDFE257BA9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lwn.net,linuxfoundation.org,linaro.org,arndb.de,kernel.org,gentwo.org,linux-foundation.org,infradead.org,linutronix.de,redhat.com,arm.com,goodmis.org,google.com,suse.de,oracle.com,suse.com,cmpxchg.org,nvidia.com,tencent.com,huaweicloud.com,gmail.com,lge.com,chromium.org,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273735-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,linaro.org:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_GT_50(0.00)[57];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Annotate vital static, dynamic information into meminspect for
debugging:
 - mem_section (static)
 - section (dynamic)
 - mem_section_usage(dynamic)

meminspect uses a different API to annotate variables for inspection,
and information about these variables is stored in the inspection table.

Co-developed-by: Eugen Hristev <eugen.hristev@linaro.org>
Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 mm/sparse.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/mm/sparse.c b/mm/sparse.c
index dfabe554adf8..38beae2d4294 100644
--- a/mm/sparse.c
+++ b/mm/sparse.c
@@ -15,6 +15,7 @@
 #include <linux/swapops.h>
 #include <linux/bootmem_info.h>
 #include <linux/vmstat.h>
+#include <linux/meminspect.h>
 #include "internal.h"
 #include <asm/dma.h>
 
@@ -30,6 +31,7 @@ struct mem_section mem_section[NR_SECTION_ROOTS][SECTIONS_PER_ROOT]
 	____cacheline_internodealigned_in_smp;
 #endif
 EXPORT_SYMBOL(mem_section);
+MEMINSPECT_SIMPLE_ENTRY(mem_section);
 
 #ifdef NODE_NOT_IN_PAGE_FLAGS
 /*
@@ -253,6 +255,7 @@ static void __init memblocks_present(void)
 		size = sizeof(struct mem_section *) * NR_SECTION_ROOTS;
 		align = 1 << (INTERNODE_CACHE_SHIFT);
 		mem_section = memblock_alloc_or_panic(size, align);
+		meminspect_register_va(mem_section, size);
 	}
 #endif
 
@@ -343,6 +346,9 @@ sparse_early_usemaps_alloc_pgdat_section(struct pglist_data *pgdat,
 		limit = MEMBLOCK_ALLOC_ACCESSIBLE;
 		goto again;
 	}
+
+	meminspect_register_va(usage, size);
+
 	return usage;
 }
 

-- 
2.50.1


