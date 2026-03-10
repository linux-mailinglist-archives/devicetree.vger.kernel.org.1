Return-Path: <devicetree+bounces-273733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AM1XEhR+sGnLjgIAu9opvQ
	(envelope-from <devicetree+bounces-273733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:24:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7B5257C14
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:24:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 56EC23254D21
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 080D03E95B9;
	Tue, 10 Mar 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bNqSVUAR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bdQSvb3x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96A353E9F67
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773174033; cv=none; b=bpgUZHONLm875TTMyzjPLjFwPV6bfKy2T7KgzT2u0aPBPEvZjm5uOep7Drm3ZWhfKlnSAxCbHoU8fhvvGEiZz1XgSX645VgN8AVt8sX4SO64cO7phGrFmS2VsJ8S/Ns8pXyH6oRv9RJvE6JovgdKbOS78C5yw88XIVybCPmtpC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773174033; c=relaxed/simple;
	bh=GJsyRX5M78HpXD5ZIPg64tgahV7EZgChDo8/tB3hlfQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ftDdt3bInVF/uJ5fwG8qyfp+Jj9CL4biU3vlHgeWAf/EYjWD7CTBkl03/bD4E2E6ZBzYOf8oLXzmx61a71R/zYgZYxuzgQdLBWcHDQOCkzlEyYaUFFzkjXfBrzF73Y7yjzNQ+l1qZhjDst+9mXEoXXuCqjcDjXOZBElwCBCOdYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bNqSVUAR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bdQSvb3x; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AGH1tq508407
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:20:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FwPwm9egcX+1gvanmp7QoXzEqEd1Picj/3vW/4UCWRY=; b=bNqSVUAReEBebBrT
	ofohgRxPzbWGJJ38g5iWUzHtnSkL/fjdSQlZ0gdSMlAFXkNkOP4rEQmBrnov7snm
	HbeI38MRtkXkee+aCtlogRvfLkSMIR/qWkWlRtD9sFhEMOtYNytkfbSFOFzMfu+H
	We25PIxl2QFD57enTLWaatpPBvYhic/xuHsemTbMvEUO2G2erVOPG8l2ceamOU6E
	/FgY0+QEaDXlCGBSKoIxprW3BLsxJjuly+/xmQvEwgP3fnHLoVwiugxuExFXjhdY
	vKjH9P2s85pdWK0yn16vc2VtDZR5SmuC+uW+yDzEEAMMmgnLoDpKcDkb8EuWnJFa
	F67aIg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctppagx1x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:20:31 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-829a655f5e4so1543077b3a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773174030; x=1773778830; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FwPwm9egcX+1gvanmp7QoXzEqEd1Picj/3vW/4UCWRY=;
        b=bdQSvb3x8Bno5avjsdGD1oaHkPQFDn37kSX2EcOjR3T2NQ3zcYRgTK6AVF6FCy73u4
         tMCYmpM9OQtvxi43L7FQpx1j4A1x4PaponcM2lQyQ70o1HAHFaIBJ+pk2E3lZD3Jt+xl
         0Z0zr8XOuT5Eohp4hD9Rs089DTNTKfQH7UiA0SRrUH/Bs+ujVU04dHpDV9w5VgWReR4x
         oWRwrCaufuxqs6+IHlmqJ8NFNWflgQTDa1WDUwJkSdEQtzDSlDGzInpEDIbpfdulSLNV
         6gPejJOCg1rvEG9e3Jz2TYEkxltHfxnP9UeanCAIgF+80TOvrKiNyBO2e2Eb+wrekKox
         pHVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773174030; x=1773778830;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FwPwm9egcX+1gvanmp7QoXzEqEd1Picj/3vW/4UCWRY=;
        b=u6t/H8qpRgsYm856dFyJeDSNxqAAA8tMBu9PpVZEf1xni0DoSwQQe+6gfKs9zC/Sa7
         /Dyul2SpzcTt/MgTetCh/TpWDThTrkFZlmmvzNN5KuA04PMHnvTBbJGUkscUjOBZJseC
         i743kaK83JLMMM0yfXjPCDJ4ft0nrnMlFsTd1mVana/iRPZTHDu+/1AyU5dGaCX5r/Yz
         qR29x2s9Qk1OKvx1Ixwle29wxRQ3ndmbaWn8dnuDLIfSK0yU4pTRRYja1ltttqP7TnSo
         BAoap3S+FtoC5lBBf1uC3EcgEGll+og/MnFm3mStuQOyw45n/fa2CQUy26wJYQbFqHMg
         ETNQ==
X-Forwarded-Encrypted: i=1; AJvYcCULI6qJL/urwRm42f1XdYQ15o9BjbZ9TAtFMY001CTEQ1S4QZfZ49krjzMgykmbJTg4H2vrZGRKJC3O@vger.kernel.org
X-Gm-Message-State: AOJu0YydBxPdlyG9s4tNr7CfXyoC7FQUltY68O6LCswj9Y/O5ywceahb
	BzmXUlcsWZlMTSM9HoMMMMtVHXQUI+O9af381SN9fbCaVqInqOXoa1l/aZi00E7VlI5BQ9twV4y
	ttlf25J0cpxwCRms9caiJnSRmaE2CFf8/8xf2SCzwQnZKA8ZqJa23r5FU4/lGXzCq
X-Gm-Gg: ATEYQzzQmUIr4R4rNb+gsvSUqBgulxtqGGDbLeppf4BhdyQDb2LPyOyHsxnMNme/EWn
	i9qThY75b9kWR08lnMvNof+XGhsRXm4d1yBEUMqox3KLxJ1cMfXaf1jscqfdfLBYJvPIRohp2jG
	rxyCC5pKfgnoGDEgMyjGzSXc9BKJSdz/INJfApvxoM7Hj4G4VwTz+TFjWt4JWpkkZ3tjVO6EQ9v
	nbukukmcRo1CXqOAsmZ/ypQAaJcV0cryapmF4+10IoyQVx45x3v3zZ0P5ofSwEkJGnFbC+laKuQ
	qwFDm6+td5jTynksL/dBVaJN6knmt/YaD55+RNhaZEMGrq8A4UhvC2QxXtZ04/VMkIfcap8Odia
	CMeV7jl55GhuTP9YrSyJvLnxm4rBzaHitX9XK8wPEAmIFP/P4
X-Received: by 2002:a05:6a00:1c85:b0:826:b70a:7350 with SMTP id d2e1a72fcca58-829f7240393mr123080b3a.52.1773174030009;
        Tue, 10 Mar 2026 13:20:30 -0700 (PDT)
X-Received: by 2002:a05:6a00:1c85:b0:826:b70a:7350 with SMTP id d2e1a72fcca58-829f7240393mr123063b3a.52.1773174029418;
        Tue, 10 Mar 2026 13:20:29 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6dc2d0asm115262b3a.13.2026.03.10.13.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 13:20:29 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 01:46:01 +0530
Subject: [PATCH v2 17/25] sched/core: Annotate runqueues into meminspect
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-minidump-v2-v2-17-f91cedc6f99e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773173756; l=1089;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=ZO7/bDryoGYv40z36iJsb1xhTIu6V9V40nzuQaYTMw4=;
 b=97ph7aGBo5DOsMrEvMbA9BDZtVSKSQVZcudPly6Z6cNUsdakmi1m/CNdYna9ssoZjW5hq3wnH
 06UefCLXjwxBLjVEa/zKZewRQLiHGj6hw5oxhvMiehOvkGLtM23NX1E
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-GUID: ouw4fg8wYaRwOa8jVLNUx7NBbRmNwbgp
X-Authority-Analysis: v=2.4 cv=D7BK6/Rj c=1 sm=1 tr=0 ts=69b07d0f cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=WIgWxXLGzmshCHNC7soA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDE3NyBTYWx0ZWRfX5e7FesIVv9SG
 vrhJJccnUgMum7iqbhzWP0qzXeezmy6fdk/2zsN6h7A2BJReJG3MVwfGUcGo9cTLDkEe97RwK74
 8Jw5GLfQzHNOWYA3GEkYAL2YqYqBC98ENb3+8FzvTqputNEB13BYlt98NziqA7Lb4zMfMOmW+1Q
 /Z1AxvEl8e8CF4pHVBSoOlvATWMF3ORqDNMBS1R2YXdHqf7cSzmCNMLRDU34K10UqV4Zclctyp+
 2g1vZ6IFrpuvZfsWVxs3WB4AbkqAyJg7RCTe8m2hpMJgFJ6B9t5nX8EUX57yjXEwA3tmFnEVP1z
 kdBOAxENWA5BBdK921h7FCF3lt+mRenNCbaeaoGggiPqAm3v9PN9/zBuCWQRIqQH7QHrD7+sLyM
 Ouxa5bHRKryi5c9YoozqZz66nnsYBneyucVqniJGP0RRBoZYP0jYfYyY450O4bU3mX/LS73cUs2
 asA6RziZO91+gRTXLeg==
X-Proofpoint-ORIG-GUID: ouw4fg8wYaRwOa8jVLNUx7NBbRmNwbgp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_04,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 clxscore=1015 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603100177
X-Rspamd-Queue-Id: 9F7B5257C14
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lwn.net,linuxfoundation.org,linaro.org,arndb.de,kernel.org,gentwo.org,linux-foundation.org,infradead.org,linutronix.de,redhat.com,arm.com,goodmis.org,google.com,suse.de,oracle.com,suse.com,cmpxchg.org,nvidia.com,tencent.com,huaweicloud.com,gmail.com,lge.com,chromium.org,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273733-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linaro.org:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_GT_50(0.00)[57];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

From: Eugen Hristev <eugen.hristev@linaro.org>

Annotate runqueues into meminspect. Even if these are static, they are
defined percpu, and a later init call will instantiate them for each
cpu. Hence, we cannot annotate them in the usual way, but rather have to
call meminspect API at init time.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 kernel/sched/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 82afa387d529..09a532a5e9f7 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -69,6 +69,7 @@
 #include <linux/wait_api.h>
 #include <linux/workqueue_api.h>
 #include <linux/livepatch_sched.h>
+#include <linux/meminspect.h>
 
 #ifdef CONFIG_PREEMPT_DYNAMIC
 # ifdef CONFIG_GENERIC_IRQ_ENTRY
@@ -8804,6 +8805,7 @@ void __init sched_init(void)
 		rq->core_cookie = 0UL;
 #endif
 		zalloc_cpumask_var_node(&rq->scratch_mask, GFP_KERNEL, cpu_to_node(i));
+		meminspect_lock_register_va(rq, sizeof(*rq));
 	}
 
 	set_load_weight(&init_task, false);

-- 
2.50.1


