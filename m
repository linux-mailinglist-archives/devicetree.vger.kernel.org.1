Return-Path: <devicetree+bounces-273734-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDqNCyl+sGnLjgIAu9opvQ
	(envelope-from <devicetree+bounces-273734-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:25:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C7794257C5B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:25:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CCDF32364F9
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68AE335AC07;
	Tue, 10 Mar 2026 20:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TA9HNEAS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZDJW3FnF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124683E92BE
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773174049; cv=none; b=pNWonSdquZXcjDdBMBoxWngoiN0KDyHujSSq9457H88vrm7Pz0f0KrzWAt6x8XQWuNiZ3+h/0M0aOyXs1CjT/zNm+p6WtLU64zp+c9aGgb1oXE4h+4E0qNCAMFddhjAZMWwwSLKsgyu3dxM0zhqj2+J096geUMzWZj5KFQiPQbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773174049; c=relaxed/simple;
	bh=6Bj6mC+a6VBQpII15E95Sp6w7GOQTay+uqnC/6WwCwU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t9/eh5qNNA9K8Uw16k9d0TkL3yu9qv/j3WQgdkWksGSp1WLB16blwECUknX8Rj7OeWXj6oknX4mHipoql0R5IWZfYip/BEnCCT+n7C5A8bLjk4KFUHx1TK2kIQcAsd6+nPcH4qmt2CQLYbbIyEyDFy98jZDk3Sid1Zd8nxD0O2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TA9HNEAS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZDJW3FnF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AJP7RZ3417073
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:20:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jopR4iBKMZiW0WEP0sLMhWOcTp6GXZxGsMBTPgmxLMk=; b=TA9HNEAS5Og9Z2Fk
	ReNSVQ1eeRV43iBdF8RJ0o+ZkbZMFzv62RmBioWH2uZQ5SxhGftXd7erjg/h5JUz
	AEIwuvWttlHhFCoDGWWBB4PUnq5fLu8MhbDVUVsO/XLUiPu9a7d9V+HaPKy1nTAX
	BEhwiXcEQwgOVRKwfPNCYi+fogRJxPvYFeibZfpIxiTGfsZUuKho1/ZTQ8Bdq4T5
	OKuwj6BnpDpdAn0jJ6pEcoED8ux8lYBJw+LzCj/cAn6NyA64nF17PjpxxswLXfsH
	AWF80tVORsa7QPW4nJFoM7DzoLE7rCX9L0RIR30iZJg1tfIREX+RwJFHHJoa9Cgo
	hP2gyQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctja2a425-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:20:47 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b630b4d8d52so8345256a12.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773174046; x=1773778846; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jopR4iBKMZiW0WEP0sLMhWOcTp6GXZxGsMBTPgmxLMk=;
        b=ZDJW3FnFXEpNhwbrESJkN4UJINRxCbCiwoG+AowG4ZGiufQZGiNlFrll4QoZRycJ+X
         bKtv6lyPUo4g9sVQhWUI3wwm87+tXqDmmR0cYiFUBr0u6ZtPde3XSD3mbvkxpBcusbBz
         a34kYt2RyuxbB975AUZzjiaP6q/63S3it8/h0Ql3KJXilzRzMk+He3jdIUVAeZ0/P+e1
         dvuhsji5czjDN0BUOFTVAf8t+5ZDL50uMx6qLivJ4tcUI2r7C4ZoHOkUR7Dydhod3T8n
         OxpijVDugx26NhcA9sYpyoFUlIekq2o/8smv1ruUY/zBlP7nUHjhzaALSDr75DYLRJPS
         cOvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773174046; x=1773778846;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jopR4iBKMZiW0WEP0sLMhWOcTp6GXZxGsMBTPgmxLMk=;
        b=sdLBpyryUmNKJHSg34ECr01Wa8L9vmvm8c4bHTglFZNT05NqSEmDR4F7l5nT7ci+do
         d/N34gk8nuFQE7UlZFfsIRWlnun1rDuQUrnMdFCKgVUhFVILdMYbDwelgDe74hVmzq8d
         zn34ef6l+xKW57lUukWa0YTJN4NoqcV2E0TCU9zkv8O1tzgyL4qWKb2gstN8m3iO3Zro
         1FHHwJF5LKAyMVp2Uo2PGm1uPQY7fuKc4ROtSQitBSeMVCONx8fnUKSsu11jhkcP4zua
         ctRNm4jYNYhUgf8VB1cjaeNtXKPT75x0glykndEaT/+7yWDD+6JWReAnilyeWM58Wqao
         krMg==
X-Forwarded-Encrypted: i=1; AJvYcCU3sunlqdK7g7Uj3v6sZFK4wwKTBhfyd85oUhiKhbt3xjzoKX5GDurjt1kD620JS/xNViAqkL/3H6kD@vger.kernel.org
X-Gm-Message-State: AOJu0YwaoyRC6q0G4gukOB4DmhJXUXZHIilw+BmbMJvBeDdNHuxsQT78
	XDF2LZzk8rFAuOejKJr2qQ7IN52vwxFOunXoeSp0KbN6arZzxCuRjJHHvCZs1I+ZdqD/70XY5ou
	TrE7pvJmTPVA/CI0YiFrUJAp9kc+iEtWWxQlTlZGaSfvoCuGnpwdyN+1Xi2ljRBCS
X-Gm-Gg: ATEYQzwn7i4chyl0Gs3uspdYr3xv4X36b52GbCKRd00gh4Qy5QycZDXB3BWiYHNcrJA
	P04f1nDss//v3hiu7rHb56lG0EZsFnb/JPR+j35+8gqMEHScXcHaeC37IvBO3MFTp54/BJpTRi0
	G05v37SfRt9BlWG4Y/91KtNfhr8c3rt4w6bVVuIci4VCsyTmObz1MhA8n1WejDRvloHKHI8yiwi
	u06jY2E9WnKLgNPe25eBwjd20+ZEpMVy2/d17aqsK5i/rvqRDL7jZXKKYE/eGfcNnjWvA8bKhwg
	oWTNhAFf6Rle4zjAiD2DKRr1X3Ztf/7brBl7doM6p1MHKVH4pMoRbP+GJN5XH3I+PGg2Nc7AV/A
	IPNsdTC8GE0IthmOiXO0xE0ZCmw2T50wzBujzWOurCDEiEkAe
X-Received: by 2002:a05:6a00:a245:b0:829:7a62:5f with SMTP id d2e1a72fcca58-829f70729eamr159346b3a.9.1773174045388;
        Tue, 10 Mar 2026 13:20:45 -0700 (PDT)
X-Received: by 2002:a05:6a00:a245:b0:829:7a62:5f with SMTP id d2e1a72fcca58-829f70729eamr159313b3a.9.1773174044746;
        Tue, 10 Mar 2026 13:20:44 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6dc2d0asm115262b3a.13.2026.03.10.13.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 13:20:44 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 01:46:02 +0530
Subject: [PATCH v2 18/25] mm/numa: Register node data information into
 meminspect
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-minidump-v2-v2-18-f91cedc6f99e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773173756; l=1043;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=6Bj6mC+a6VBQpII15E95Sp6w7GOQTay+uqnC/6WwCwU=;
 b=sVE7UB8h95VErsPUO4HLhhiTiKsqQAwG/9Ded5XkdsuZg+zS19SjzGCGHXAkoG9YisCapzqnx
 q5gzTZGzf7tAtbmkLgYEPHDDptUq+d/dYvl4noJdNZrSjHyxzW3MTLb
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Authority-Analysis: v=2.4 cv=c9WmgB9l c=1 sm=1 tr=0 ts=69b07d1f cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=nLJQaZXserL0MincpKQA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: CIdpJusRt-3Q9pnV_TCaGgPLefLtccac
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDE3NyBTYWx0ZWRfX5pXZMQC1vcfK
 5tvwR0snxY+JG7fiOR9DLcPSc43ANFMs7lANk9pHP6dKOudv3B5iGWzcrYbzvTCgtfE5sUTjm8o
 niyQhya8Tx9sPFly6AT4lKteAfo7Gby6juG8f5vZIXdCEi8whXamke6EP2JzIeovNc5SI+4hLHb
 5mofETg9FW5iil1d5xFuDeCkSdft43VfW3lDCl+7f6IfAYf2u5/Un9g4WliKocN7zcG81+0Myro
 jUt9g2DFoNHPdfvllxFTYOqHYSETb3NOjqnIDFwSIBxA/pZpQbBsOS3j62xLz3sHJCPZbxEg2pE
 lv6Upu5iiXnJyaC8raH5Ro9yRfScEpq4+Bn4pWNmaDfCC5cGoWZHwuiheciGTfLoDcmGx7mZG46
 z16QYeJ/EoOgVlmw7SWZdU7zV9kshLwx5bHaJKIB2ZPfUDqKNZ9FyhvdYlVqttOMevFJbM1qtoU
 WJGlR3DH+gqswjchQOQ==
X-Proofpoint-GUID: CIdpJusRt-3Q9pnV_TCaGgPLefLtccac
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_04,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100177
X-Rspamd-Queue-Id: C7794257C5B
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
	TAGGED_FROM(0.00)[bounces-273734-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linaro.org:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
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

Register dynamic information into meminspect for debugging:
 - dynamic node data for each node

Use meminspect_register_pa() to collect node data into meminspect.

Co-developed-by: Eugen Hristev <eugen.hristev@linaro.org>
Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 mm/numa.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/mm/numa.c b/mm/numa.c
index 7d5e06fe5bd4..fcf31bf2c552 100644
--- a/mm/numa.c
+++ b/mm/numa.c
@@ -4,6 +4,7 @@
 #include <linux/printk.h>
 #include <linux/numa.h>
 #include <linux/numa_memblks.h>
+#include <linux/meminspect.h>
 
 struct pglist_data *node_data[MAX_NUMNODES];
 EXPORT_SYMBOL(node_data);
@@ -20,6 +21,7 @@ void __init alloc_node_data(int nid)
 	if (!nd_pa)
 		panic("Cannot allocate %zu bytes for node %d data\n",
 		      nd_size, nid);
+	meminspect_register_pa(nd_pa, nd_size);
 
 	/* report and initialize */
 	pr_info("NODE_DATA(%d) allocated [mem %#010Lx-%#010Lx]\n", nid,

-- 
2.50.1


