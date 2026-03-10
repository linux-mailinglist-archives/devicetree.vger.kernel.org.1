Return-Path: <devicetree+bounces-273722-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PLfK798sGnLjgIAu9opvQ
	(envelope-from <devicetree+bounces-273722-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:19:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D434257882
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:19:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1823D3029247
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:18:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47F773E8C42;
	Tue, 10 Mar 2026 20:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ltPrFDPp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H9Y/Xkdo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A4A3E92A8
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773173882; cv=none; b=ucm5/2t7M8WR2OsUGagK9kJtuueuzf1Dm24APL7P7FptTps1ONILWuZsofMZLlw2VrKRLYI+WgSpYOOebKi64Jz6BqzmnoUMX3ldpwiIYEP05rVqS6WeV8CmUdxmEFeKGrSfHxwdVeLgh4lP69bXb3Gk/UIQ7GFFAWsafOefyc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773173882; c=relaxed/simple;
	bh=ug1wcCRzPYFk9IAOWMuUc6kVL0dAY9kLZVyg1dl3ZxI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DJAH3oMtGKGo0zf/hV7eI3tWZ0T5bYCTPbTQDPijQD1s2DnGX+ntAMy7v22m9O/WSuaVIQOqw04aTRJtgDXSYwqGdzPVDraOyoQbU3EDz+3IO0ioSLwK+f8a27DBQPk33Xy0pA9CsO8lN12+Z8JGI3f5GkEcla/3Xs5FTKoCYuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ltPrFDPp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H9Y/Xkdo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AHd1O22179858
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:18:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bfUV+gBEdHPcOo4V9gaPme4dCYACtyl7032fIDcKRTA=; b=ltPrFDPpBsvwp4po
	ad90malbUSCAVb1F77szLolF5CGbif8xsLCMrHPQ395uceqWccxjjS731AmtNcZA
	s35yyO+XxfA+/9ksW1XEG1SZEp8/x90VJsvDurZvg0w5K35oxTWTuBitgb0rQlxN
	jm815/+ebhvK6V/FnI7Hl3iAjyrgOcIyWjGA5OndLr7U1uoDwcObVsxWHkBy49pe
	ijrlD7wNCQLDh9J4i+76LgLqSYK1DiABrcBtbo2D2HkuTUnNd6M+qALdxFx5fz4+
	KU/YVzFef4M2F1sc+1Fuas+IPIKF6mtUPu53zirHUT3TSA+QFU8S0VT5isIfdIXz
	dralag==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqvsrjrr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:17:59 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8297d2c1e64so2200705b3a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773173879; x=1773778679; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bfUV+gBEdHPcOo4V9gaPme4dCYACtyl7032fIDcKRTA=;
        b=H9Y/XkdoYSMZHUA7g/qReLNyFtYHKZf7qfvSLjDVPVluho1OOOnihTIZfdAl/UuUdg
         PuCp87ZIxhv1zgQ2V474ojA/DR+tDS2270FKRQqpxz2tZVGpTF7mAV1/4QHJZJ7lPizo
         zLj3/+nMkOYwiuNFOSKyrLHvpRFbp6/6coH6MFZYIq5TMqydINyswx0P8XEJNZvwhHtg
         +QfujNBXWwnKWIV5S1om5hBWRwsr1z36wAWMWjvJp8fP+Zl3bAio7bjxMSnKUlw7B8NC
         gjuMDAgRTlqvI4K5oXXsPqJmQvWYv8W/QnaFepyfGRcPvrEFo6T5ohdPCZOu5mHzqHA7
         n4lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773173879; x=1773778679;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bfUV+gBEdHPcOo4V9gaPme4dCYACtyl7032fIDcKRTA=;
        b=FX/OWK8gMOnDvmDw/YnSiiMUJrsGUTY1KPLDX1xoyPW7tMzy8zKpyLgeq1C5l4Uuom
         +RgaMw6v1KRKGfCXilARjoN074k6cE0uuQYi0D2LOOe5Rdwh4/qkbksk7uqvYLJlBwei
         ciuq+LE9orlcB08EZENz+9hmuHJVBeFc/JsQZ09v/s9zqI1s/r4kMqxSXG1+4Hl/DR3r
         b2LRvAYHDPceeljiq3iXisHULsTaSQdo5RswjS2DNXIvwyMIq3BkkyBiIYKdRkKwg8Q4
         DOtQ983BnQzlQOyOJsikE3ZIvbitRQS6Ii3F1rQtU42KsZ0Dkc4f0C3M36GcrtLJoJ8l
         ENmg==
X-Forwarded-Encrypted: i=1; AJvYcCVOEjNI/lxNO4tLniXBbUQpqQpU5cU/HxQnmuwVDmdU7fwW+umneywMzB4ip42MX/UltadMDsBRXCNN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2MI4J/SOs8IXiNkvqNCNRSst0dtnEkI5TU5fYbKIjU+svxwJO
	XS2zCcoe3qqdpA7xks5AllDGoZB/a73XhT5VPtU5YXNzKTcWdCCxQWJoYBX2vbYh2wkUNSK+Jgu
	EDNHsBSimoJhL7g0nqJxIWINHBC4EmVDyfzpNDC2mnTj9d/mrUE8bBwsvGuec2cF8
X-Gm-Gg: ATEYQzzQDBMc/24DEwRZyCb8USbO380rNNWespnL8VjyjhfqVtUMmvfO11R1AniB0Eg
	b2/p8cCpZeabdJc+upeqgML6SNlEz57XoHYKSZSzDt/4IX3Eodqopgqx6ZXY8OJ8nd92XHImtTv
	etp0efB5DFRIkC+W17tfkCYNRDeuJuTAH99W3p74VgCs79aAdWNThGt/rzlDURnlukRU6ENwUL3
	izxsHCds7zW5OVfP/Egu9QklVAGtjmzwR54KTbe8Njm1XDPcGtf/LLoni6RA9Im4QXOwdCS2IkI
	qI4B4Y5oWxvJUJ4GaJbNb8jV8qkLnZfFFJUqPIuXNOcrK5T/RdxABkz+Zvjp0LgKLlz69wnvWTE
	hupRp250he/LNjX38nKvldeixRUmIB10a5IxGkcj7C38VQQ9C
X-Received: by 2002:a05:6a00:4503:b0:824:9451:c1f5 with SMTP id d2e1a72fcca58-829f71970a8mr146628b3a.58.1773173878760;
        Tue, 10 Mar 2026 13:17:58 -0700 (PDT)
X-Received: by 2002:a05:6a00:4503:b0:824:9451:c1f5 with SMTP id d2e1a72fcca58-829f71970a8mr146573b3a.58.1773173878123;
        Tue, 10 Mar 2026 13:17:58 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6dc2d0asm115262b3a.13.2026.03.10.13.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 13:17:57 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 01:45:51 +0530
Subject: [PATCH v2 07/25] kernel/fork: Annotate static information into
 meminspect
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-minidump-v2-v2-7-f91cedc6f99e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773173756; l=954;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=tIrpoWgx8SQ0AJN4uKOz8Q5k4KFIipptt9Oac2pyJ/g=;
 b=u81ZD0X0X0SI+khpkrPGcBBxMXVinSVgpb28+k/sEaIN8k2yywYYFp73LfCO2jT2lgtl+DXbZ
 rxxNXkcBZHpBttjt41FiCwlNIOvPQKsMtMaqk/XFlaQv/SJP7SYKiPJ
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDE3NyBTYWx0ZWRfX5+qjlyltonIq
 n3HMNnbCoMSJPtehICOR+sYwt1ZK5sWJjSH7gpmk/jbCl1E929MwFGUSjM8RzOxMfaOy97yioxm
 1/ByLAhyK2t7W9R9MUoO0pGEZTmr2kzZA6Fz5utCifPHjFqZFCwCNskKKEMoRcqAvDGihveZwjK
 20/xjoc1y92YSIV1AmzWpugIMNzinSEQySmpu+HWCxc0yjmZ3Z6SHOBh5Oo1nXXcPHkkPOFl/EB
 wWV0xb73YYzUoBhQpYp+TgE7BTFQN5cFckdg4HnEOa+2sNmG8E9PhlIex+UW5gXfvSG3NfyclaJ
 ylSiK7FRgVmHbZvlgkPkHzKPri3axDuExpZTQqdIk+W80GSpevAs2m02uZlB+alVETbCgF8uc/K
 aNF1CE9VxHAkQgEN3LH3/hge79tVpKUEOGOtfX85Fn/r6jFS8Vyh91pQxCkaAsq2t1Qcz+JVLa3
 4yAmUIrr6ypJsYxRcng==
X-Proofpoint-ORIG-GUID: 63Ga2Rbbbi8AqyRf8pQv9WTXzbZPIb4E
X-Authority-Analysis: v=2.4 cv=Lo2fC3dc c=1 sm=1 tr=0 ts=69b07c77 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=A5cnksRAjNInYuj8VG4A:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 63Ga2Rbbbi8AqyRf8pQv9WTXzbZPIb4E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_04,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 bulkscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100177
X-Rspamd-Queue-Id: 9D434257882
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
	TAGGED_FROM(0.00)[bounces-273722-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,linaro.org:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
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
 - nr_threads

Information on these annotated variables is stored in a dedicated
meminspect section.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 kernel/fork.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/kernel/fork.c b/kernel/fork.c
index 17d2c2a9af93..5f20b6250259 100644
--- a/kernel/fork.c
+++ b/kernel/fork.c
@@ -108,6 +108,8 @@
 #include <linux/tick.h>
 #include <linux/unwind_deferred.h>
 #include <linux/pgalloc.h>
+#include <linux/meminspect.h>
+
 #include <linux/uaccess.h>
 
 #include <asm/mmu_context.h>
@@ -144,6 +146,7 @@
  */
 unsigned long total_forks;	/* Handle normal Linux uptimes. */
 int nr_threads;			/* The idle threads do not count.. */
+MEMINSPECT_SIMPLE_ENTRY(nr_threads);
 
 static int max_threads;		/* tunable limit on nr_threads */
 

-- 
2.50.1


