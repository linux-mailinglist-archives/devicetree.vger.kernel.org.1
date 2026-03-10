Return-Path: <devicetree+bounces-273720-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLNpEtB8sGnLjgIAu9opvQ
	(envelope-from <devicetree+bounces-273720-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:19:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD992578B8
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:19:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 90F98307F025
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:17:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644343E9F74;
	Tue, 10 Mar 2026 20:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="by4B4Kk5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hU3TKpNN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5493E95B7
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773173851; cv=none; b=n5UsC4r8oHMxGGF2l10abYpIEwULKfzBi1PSGvEFutFm0beqYfSyPM1PhgmPSslm3VJw4URH7Etrd4eO+7ddLaQ0OqAOR2pA2xbv+VvOfAWYQ71gqwprV3HCtNo/XwXuk+Oe7SafC57Y6WJQr8eC5czKXKuPh1ztAvcsUIiqEbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773173851; c=relaxed/simple;
	bh=/g8HEiXUYfa3Zq5UeMQE3tUVgKrL8ys+bUgFTnVC3x0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W6BnS+zrL4FqXg5rgnXPyexpSxztu+tvxN6wBmfyQmLetJ40TOwrADpFnibkfU00P4LhB+dRr+QEhZKJdimyZLW3EaaIdeFkzumqpIIKkbdU4Uzn1BXOlblOFnHylh8XCxVjXqa2bbpb99Gn6fqWVgvfppALe8XttQdZAXMt1PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=by4B4Kk5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hU3TKpNN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AIaDFY2862524
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:17:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/p5bQNtsurS8ELLM8cfGcTYhFbVSlQNGcc/PqunPdEc=; b=by4B4Kk5+VrKoSdS
	6QyqTOk4zerpxFHN9awWxqzVBp5b3Mbr9Z2OSzscqVAx95NlEcLuGCeFrp5wkCor
	c4u8y1+2cddOZHOuCwlb4trlfPIlcBqsiLktXdRhu26uZ7LrcFQWmSSE1xgkztHZ
	bRkzfwzAfTXWaFbv9/xATSrCiv2I3Wfn36Loaj3XoBEioFfD/2E6fsm63URDyl2y
	nkIFioEFaNvJKMYKFzFHpmIGQL7IU1jCt2ZIcL9zpLf2QlAYZrKj0XqOF75lafAU
	dJwLzxk2YiqgzWwu7Pg7sSwVEv2cgU23b9noj6vPEkTuFMFs2LXYtiNLQ7ovBjj+
	SjLD4g==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cte3wb5wt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:17:29 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c7381a95fffso3694265a12.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773173849; x=1773778649; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/p5bQNtsurS8ELLM8cfGcTYhFbVSlQNGcc/PqunPdEc=;
        b=hU3TKpNNJ001yX2DiFyaTw4dzs1LcUKPlbeShEYB1mM/k3aw1BYqXUkWlJDuIcV7Cu
         8cJguLTa/cMI/Os8l+uQxW8WGd+UdAETzDAj3nfVKUlA/ppjx0zZgcBQzoLcPVVTV2Gf
         aBAEarGR9wObJInuokzQ5S7B7hr0kOeHGwJpzgBayMv61hM1hB/CDZ+xT9RQk3wtpowC
         HIkjVSgQobgItO2BOWYXRTVOIw+0S9Oy1y8Ii5GLbJyq/rjDivc6hfnpuIHLYwMcUKEc
         a/dS8v18OEzvKaO89H1NhqD9jM/wRuwQ8P2dMn+o1WY+xwh+gLKjA1Wad96PT1ehfCna
         41KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773173849; x=1773778649;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/p5bQNtsurS8ELLM8cfGcTYhFbVSlQNGcc/PqunPdEc=;
        b=Hvg8+2910xWJzk7NjS7KfcjzIzi1zhFFcqbFuHL5tfQarCxM8qlNZGl9W1A2tYj8Px
         XTGacQoXlPQCOVRMVwe7uFNaCIsGC+E+CrluuOcUZgCFO3/3OHP0AMMBkvjyNW8kLD41
         TVfKW/1VjOaWpU/5rvM61iT1KwDR2nEjyIOjl7Tn7bV7O3xE4fbaJ93nSLSdT0RvU3v3
         /6xVb1g4TLd44lVNS+9yJIdPG84gk2pttam4UpRs3lROVkuzs4XeDrrHSRX38MSw6VWH
         GbBPcLcCkmTtGA+x97RwPcB9q+HuGxNznJkTe++qpms0GCJNGWyBD7Gt2Mr1aeAoYzY/
         bSzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNrsEJACHqbOwZeATkZFTNs/mmHQ5oJB1T8xduTsP9Q0CuxSBYC9lsKmhcpJK16lT4r43C/MWjaQEY@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9om53H5zdGFwCbaIDFcXLad18QQrMFuyqZhq7YjvHXlYs/Cuc
	rUqdTGp0HfwiWEXKc3gdneYAs1+d2uFMCpXndSXQ/vIcL09+pll9lBQHIAhfSwndveRtfBdWw1R
	Qum9DOlIrS8QPF3am2SmE15KqqYrexSMoj/knFYBm3bCMdxwXqgimaXGSYt0+qpXg
X-Gm-Gg: ATEYQzwLLHE3EFyUwn2wjvrJBVH3xMnbLknTOgigiQQ+UlXo3mcx3NQfCLyvyt2wdB7
	oS058xEa8qwLdoM+cCMQArXWgZgeScKmCyCXbbf2GIh/mZUGuKAXSUGGag7qYDA2M1VXQ8+YFbZ
	bSSNrBXv+g2fuAJJqA9Qyp+sfvteuTJi1wxIqK7Uf2XGX71Ij2Gr6KNo3X8ypzdlw7NnycRNIkA
	n2mXjFhgdjx9m3uqFrsiNL0J14hxa23ueQDneG4sJQOTcRbPtM6xqx2cvWNuo2rsJb5u/J0RcCE
	a+Wn8WtvVSV8MMb+aVShBI1E+C9kF9HrTZQ67g2orKFOzrn+vtXjHq0AEw3TJ2EAkC7vVsQf/5m
	58kfy3q0LJjsVkAiyfDMw1T4rwJweF2wl/o3TnR8ep8N4aJzf
X-Received: by 2002:a05:6a00:180f:b0:829:7e6d:cf12 with SMTP id d2e1a72fcca58-829f6ea54e6mr176831b3a.18.1773173848439;
        Tue, 10 Mar 2026 13:17:28 -0700 (PDT)
X-Received: by 2002:a05:6a00:180f:b0:829:7e6d:cf12 with SMTP id d2e1a72fcca58-829f6ea54e6mr176795b3a.18.1773173847792;
        Tue, 10 Mar 2026 13:17:27 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6dc2d0asm115262b3a.13.2026.03.10.13.17.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 13:17:27 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 01:45:49 +0530
Subject: [PATCH v2 05/25] genirq/irqdesc: Annotate static information into
 meminspect
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-minidump-v2-v2-5-f91cedc6f99e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773173756; l=961;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=UXg1t0l9m5ubA1qVNL7kczvqoaB7NuMSr+jbvqU0OqA=;
 b=tpLi1SDrgekMvdM7bSodVPbvBq2jkmRJ9w+7dr9fMPSvTOVcpu589oNcA+Ssz2qd7S8Bd4rG9
 EZ0hqpigrLFAIbWc52tOHGSzhTc9cgRgeA1CcE72coJ1nJxp+QVKA/P
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDE3NiBTYWx0ZWRfX+LW8a2y6Krh6
 eTLHADWDO2KuGQyYGG6Vo5O7VvwVWRnBGIZhFtgVeWdMR3MIGPjH/eOTHl+RLbPb8ye84k7MDub
 /i2O1HZcyOGcS7uAXCoL2sAPvdHx3g3vqBl76WMhpcuZka0hF0Wak7xVj0V8EPo8zRM6LpXqWc6
 sM56vPkmmtBNhbv0yRTQ7wH2m5cYMvtZf6AJkovUi6QQS+hrjKhOeGuT3xCBSJqnpRMudSwZCVi
 rU8w64QDcilyaSn5ifANzXP0Zr5WOmJ64kxGvHVYk7vz0Lm8OT+OxwDxiMZc4NxAcoPQjpLTqEl
 Cn+mAShGpmyNyJMBKEmGyVBs41SAZKm4jqffGA6LiZjAJ37GbhwalvhGzMwstIDBWCR92qJ0d5u
 g4ZQ7FAdAZ3/QIX1GGblzIg2JqVVnafdhw/aahKGtSpr685wEB3eSQwdiMB4/ta7DPMmt5KTyfS
 2phpJSIpPQZYSfRDDZg==
X-Authority-Analysis: v=2.4 cv=GtFPO01C c=1 sm=1 tr=0 ts=69b07c59 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=W0BCv_TwhUmk0ohr3HAA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: tuDKSyusGFQ9z2ZCu5J3VZniv3gCOH9P
X-Proofpoint-GUID: tuDKSyusGFQ9z2ZCu5J3VZniv3gCOH9P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_04,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100176
X-Rspamd-Queue-Id: CDD992578B8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lwn.net,linuxfoundation.org,linaro.org,arndb.de,kernel.org,gentwo.org,linux-foundation.org,infradead.org,linutronix.de,redhat.com,arm.com,goodmis.org,google.com,suse.de,oracle.com,suse.com,cmpxchg.org,nvidia.com,tencent.com,huaweicloud.com,gmail.com,lge.com,chromium.org,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273720-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,linaro.org:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_GT_50(0.00)[57];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

From: Eugen Hristev <eugen.hristev@linaro.org>

Annotate vital static information into inspection table:
 - nr_irqs

Information on these annotated variables is stored in a dedicated
meminspect section.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 kernel/irq/irqdesc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/kernel/irq/irqdesc.c b/kernel/irq/irqdesc.c
index 7173b8b634f2..44ef0ebcc3ce 100644
--- a/kernel/irq/irqdesc.c
+++ b/kernel/irq/irqdesc.c
@@ -16,6 +16,7 @@
 #include <linux/irqdomain.h>
 #include <linux/sysfs.h>
 #include <linux/string_choices.h>
+#include <linux/meminspect.h>
 
 #include "internals.h"
 
@@ -141,6 +142,7 @@ static void desc_set_defaults(unsigned int irq, struct irq_desc *desc, int node,
 }
 
 static unsigned int nr_irqs = NR_IRQS;
+MEMINSPECT_SIMPLE_ENTRY(nr_irqs);
 
 /**
  * irq_get_nr_irqs() - Number of interrupts supported by the system.

-- 
2.50.1


