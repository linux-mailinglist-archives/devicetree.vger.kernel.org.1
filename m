Return-Path: <devicetree+bounces-273728-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNBfH2B9sGnLjgIAu9opvQ
	(envelope-from <devicetree+bounces-273728-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:21:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F34B2257A59
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:21:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 71A003067863
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 320153E958D;
	Tue, 10 Mar 2026 20:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lpukSPyA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RFJEfbkt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08ECE3E8C44
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773173972; cv=none; b=IYrcaKddthZ6/kIFrlrnZJ3pjcdbhvAmjw0w2C6EKTjN5jOoKxViBa3UCA74jhwCNzTPH8b52PFnf8knlucEPKoxvz65wmGoZQmAodXlhU7bnnZLjz6peBEEOdHadDqOAb8qlBOnbfvSDhD44lNhL949Z8UKgJMAFGM4FfKHb6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773173972; c=relaxed/simple;
	bh=SDVzuWlIT0Mtepv+39geIXaXq+UWjaDr7JbnOUNe6QM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u7VhQg4I+OgLG6nAVAP7gFEiRrbG9amr43BKRvp4T/zeFwyrEAFhqEl6SJe86JtCcsU9XhqaNPUFVYKoMyJkBU4fS+TVM3rDMTUyxF8csSGka1HEYE0bbHnQxpPrLrd7Cfwtfu5iETLD5fm5QPstJSpTIflPcDWyJGPVuFLNdDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lpukSPyA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RFJEfbkt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AInp3v3892708
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:19:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o14Z2a6/l2NPuJTTgYLWWvyApkp7bYXMngm3IoV823k=; b=lpukSPyA3VeEnHyR
	NLJSoEqP4ax8Yy2GOodPU4MzO3kLLtNTNCVaqaajOgmUE5ZC1WAur70H7NsehL4E
	GtQ9HNrCOhegZZFynzYM6fnATHBTeZ3o+wH/Yq7J3k9EVPuVbRRiMMPsDcwFHuHr
	XOcT39XRmjb3bwN52r+AnJZD5kU118bZa73vAx3Yv5QoYGmGpkvts05pinATjuhV
	wSf0t5jNLICVa69+TV4FioHsK/egPTVNgWdbu2uEL86s5BWsNV2aJzVTNYENoA1W
	qnHbsscQCwJAEsPoPKAyDgJSgJIn5hOHgQes0gIOMWxoxEEMxkkHZcjGIW7N84/u
	tMOAvA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctkmyst83-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:19:30 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c738b1f630eso21068593a12.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773173970; x=1773778770; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o14Z2a6/l2NPuJTTgYLWWvyApkp7bYXMngm3IoV823k=;
        b=RFJEfbktKiowYBV2iPbyR/8QII5dUu/1/5LaSPsOXYIpY/hZ5EHKzrflWTBOisZ+76
         J9seCoZN0/o6ZCBZczZ7KePFnoeY1AsSs49PJAy+jbQVzq/kU4E61AvCp9y12kSOUNFU
         aslBZtsMaM8Px1hhrqEwi/k1nhBzrXPm6DXaPzx2CL67P29Wb/SZ4v5FCP4+1SAn+Em8
         tZIDG45yVGbYd+BbOc3vkcKZyBaehJxEW2QOoMZ/j5fdSNPrI3Jl/DsMidTTgHCzJlfo
         kUTIki0jGMhcyVvjNYA5Q66AUXKgBscm8yzykgnZ3W3BAI2gSt61hQEDOW7/nvQvTEae
         esXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773173970; x=1773778770;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o14Z2a6/l2NPuJTTgYLWWvyApkp7bYXMngm3IoV823k=;
        b=WkyuDj8RuR6+fPASFl+S5WkPYdo/l7XMQxKuXctwr98SyJ0Tz6YKc1f2u9iFBxzyCN
         tnm3gkJaZVZDlTlnZ39Ggqe+fKDNdTT3A0RW2/JWFQT5YR9fUBtZxT8t6GS3IkknA2aZ
         gUnI7Dm2tKjJcTMGiLXXk9aehwLTsznAnxq1qH5yi36VmrUyVxEi9l5Wd4EOuv+ksfbR
         QvICWs+80gwDAhvs1sVbpLSOyz7gwXK/Z/yP3x/TS3v9PQpDAodQjiD8mcEJU3ZaeDyE
         p0/aOxQMxagG190EIJ25HswUNB2H8kduEPhfjKy55K8sgYqMS4SyAJWMWd+ClgNVxiST
         qYSw==
X-Forwarded-Encrypted: i=1; AJvYcCUXVbevGqqowmVPi8WuS/JTusxvKbtusGEbLACnKHPCiXkIiW8UOaF28vdtB7wXwa0uTaiwvL+bm5CD@vger.kernel.org
X-Gm-Message-State: AOJu0YwF0nKH2I1Xx8XEIlZwa9r2dYXtju/Qam+XrBujI4UXK2ZmDWup
	4YtL2O+aFWimtAIoSxQsip/uV2d2phbXyhgWkfSqRAj8abC+Qby5+48iLlHwRNCrbmRxlYyKMhy
	1ly+u+GAekvc5dHRLtfWsqnVyUC+Zq/UHY/lkbrR6S3Ar2erDA6W2Nu1TCFoNB9OL
X-Gm-Gg: ATEYQzwJLUFx4ndTZDDihskYI8v6Fqs/nU+pcKFFe4EkKMWc9Zbmy/Gjfr51JdxNn3S
	U8o0E9KOhLXBPyLBQoeQ9twQqvL7IqzfwJC/oV/0OxPposbO98dZrD/uD7E8DZFfZye9GGQoDCj
	VgIbd9F3fLjONwgmj+bBDuIuNIW5R2f4ItOKSqCtKlYtks1H2/FvrLuw699w+uMDcfQKhyQ06xn
	oaR+v0b2HXvvOZBXqBRHnRFC7GylImxNUI9bzaF8QPidnDJ7IOiR3mD21DNOhh10m/OL7JUQS4a
	5TJR3hYVcg6eMOTu4ef3Fo/bJKAXCbnjoDi5gsoub3ZcYwZ5ExoSPeJTPRUQsGDSeogWbCanrKf
	ruhcLEDN/5ZkCqRsCO+nFgpBy5rEVNAVeW7ZECJR9KdJUNWbu
X-Received: by 2002:a05:6a00:94d2:b0:827:4372:dd15 with SMTP id d2e1a72fcca58-829f710801fmr145170b3a.40.1773173969633;
        Tue, 10 Mar 2026 13:19:29 -0700 (PDT)
X-Received: by 2002:a05:6a00:94d2:b0:827:4372:dd15 with SMTP id d2e1a72fcca58-829f710801fmr145089b3a.40.1773173968931;
        Tue, 10 Mar 2026 13:19:28 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6dc2d0asm115262b3a.13.2026.03.10.13.19.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 13:19:28 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 01:45:57 +0530
Subject: [PATCH v2 13/25] mm/init-mm: Annotate static information into
 meminspect
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-minidump-v2-v2-13-f91cedc6f99e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773173756; l=1598;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=5nQ0p9n3c31Q2RIq4yMUZPGaE3IA3pjushf8tYEqgcs=;
 b=t7nzKjfrKipDpTwS4ZqlI9VkibqL8C9dDspYDVaOjrd+X4QGwj5GMAm1C9hhwSvzQOmAs+88P
 roE/qXbWEnYD4lhp8Gct4DRbuiio0CZSZC02jdz7e/q3zVjh3RXgYE2
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Authority-Analysis: v=2.4 cv=RYudyltv c=1 sm=1 tr=0 ts=69b07cd2 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=HJIP93yTpLwjP442z3MA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: Hi01WKkejgG_i6hx1H2DpJUvynn9ju3S
X-Proofpoint-ORIG-GUID: Hi01WKkejgG_i6hx1H2DpJUvynn9ju3S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDE3NyBTYWx0ZWRfX1AAblZUEU2E8
 YVvuWYVOzT4qeCTg0umRmRvAxjgoo5bKt+cuC9wxeG1VVZ84+Uq7WONkKIyHuS2Zv3fJWL0p7+E
 j6xXeghFVQsoAWBuXuGWQHTqSKJ4aZ44DCdh7gIvHi4DGJFswtzodv3M7wqBwjVPL3sykKybN/+
 VXVIEl0k4Ilf0aZOsLKM7dwft/g5r8rHOoRnJ3xHZqH8shTCTZX3D4qHifs3Bw+pwt7l42bWfjX
 tTVrv1G7Vb5XdZkwMfU7pN1sLHqoDis0z5kGjfzcw1hvJLVfWF86M6gtaMnjQ4YoSOMNTdcocmR
 YF6vhcIV/zV0mAEl60/BWWScld7WRHqUOoq4clpxjrKA5OWx0LsLjhP5g2PRfrpi1hsrVBND7/8
 4Mky0jaSXfWReEVWwMggk4QkhM+YPp/Ng4nxtQvT9kF7iFKlHzTZzpjR8vVd3+9GCuhf9UA80ln
 xpCdScBm7YptWCR4kRA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_04,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100177
X-Rspamd-Queue-Id: F34B2257A59
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
	TAGGED_FROM(0.00)[bounces-273728-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,linaro.org:email,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
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

From: Eugen Hristev <eugen.hristev@linaro.org>

Annotate vital static information into inspection table:
 - init_mm
 - swapper_pg_dir
 - _sinittext
 - _einittext
 - _end
 - _text
 - _stext
 - _etext

Information on these variables is stored into dedicated meminspect
section.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 mm/init-mm.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/mm/init-mm.c b/mm/init-mm.c
index c5556bb9d5f0..4add144a0e99 100644
--- a/mm/init-mm.c
+++ b/mm/init-mm.c
@@ -7,6 +7,7 @@
 #include <linux/cpumask.h>
 #include <linux/mman.h>
 #include <linux/pgtable.h>
+#include <linux/meminspect.h>
 
 #include <linux/atomic.h>
 #include <linux/user_namespace.h>
@@ -19,6 +20,13 @@
 
 const struct vm_operations_struct vma_dummy_vm_ops;
 
+MEMINSPECT_AREA_ENTRY(_sinittext, sizeof(void *));
+MEMINSPECT_AREA_ENTRY(_einittext, sizeof(void *));
+MEMINSPECT_AREA_ENTRY(_end, sizeof(void *));
+MEMINSPECT_AREA_ENTRY(_text, sizeof(void *));
+MEMINSPECT_AREA_ENTRY(_stext, sizeof(void *));
+MEMINSPECT_AREA_ENTRY(_etext, sizeof(void *));
+
 /*
  * For dynamically allocated mm_structs, there is a dynamically sized cpumask
  * at the end of the structure, the size of which depends on the maximum CPU
@@ -51,6 +59,9 @@ struct mm_struct init_mm = {
 	INIT_MM_CONTEXT(init_mm)
 };
 
+MEMINSPECT_SIMPLE_ENTRY(init_mm);
+MEMINSPECT_AREA_ENTRY(swapper_pg_dir, sizeof(void *));
+
 void setup_initial_init_mm(void *start_code, void *end_code,
 			   void *end_data, void *brk)
 {

-- 
2.50.1


