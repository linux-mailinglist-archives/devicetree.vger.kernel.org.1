Return-Path: <devicetree+bounces-273726-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AM7pCzN9sGnLjgIAu9opvQ
	(envelope-from <devicetree+bounces-273726-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:21:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D1D2579A5
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:21:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B1F0B30731AA
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:19:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFF953E92BF;
	Tue, 10 Mar 2026 20:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WXvMHFKq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c7/neEOg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F7F23E92B8
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773173941; cv=none; b=Ct61sLob+wj2BVWDcK1R9heZvtNuzQaTqphhLxVC8pOq+Jg/1VZE2zr33MCT7mIqhlYMyW04SYsjwjESpe8itwBguIS321CiJ1QeUu+iz2gB05XI/ok1kLeRJfJDeCxWRtOYjnpTMDCsVXgIQRKedtC8auxyrks7CpQxCr22qzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773173941; c=relaxed/simple;
	bh=JjyaV+tgv5UDZXjq5MizMtlnFRKCCCj76Cp/0PM5tSI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bJoSsRTyZEhlZ3rcvvD3ZTuck72799esTvhtSltAOn0pAnKexSjAojruBKSHtkFXPWh3bYQyDu7PB0pz393MQqxpCSbHf/O6iVXDMGzNG1dWvXipKIJYdXa2ETDIbzK+R+P8EqDKkKg3PXAoidRf2Dcn+WsrhX0CxHOEa9IRSI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WXvMHFKq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c7/neEOg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AEFCNm1863660
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:19:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9TmROf+bPb6FNDxEurt6WhWR2L8qwZm5Ni95BDxLLsk=; b=WXvMHFKq+20+1g7L
	oZQU641VdU9D+cbX6AIovAiQqEr5nAj6pMMuZPy3yOFt3Wt9bNablBID4RKL4D3g
	wg6x7qai8CZwzdERZf/AnCgVVCABZDxrhBm4+3Ud6c5AnhIjA2TA/UpstU/qGbWu
	+pWrTVu6616q2Wi4HqFtVl+AGsMqXRERL62sHA3SQOIXs9juL8KIHh/u2/Lju7rG
	M+R4VT/5h+i59gwg0bduxUeOpuKM3zoFr5pBjSK4hmThUnqHwHC5S41U3f010/Vm
	yRSEenFCQbwavL+2kM2e/Hcge38aLh71cAdRl44mye1AUAnxyt/RCCt0icuwO1YW
	INbz1w==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctmw81frd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:18:59 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-829a6463afeso2461738b3a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773173939; x=1773778739; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9TmROf+bPb6FNDxEurt6WhWR2L8qwZm5Ni95BDxLLsk=;
        b=c7/neEOgrsodjS2HuECUIxr23vrCrMYJlk8alfWeYYh//tzRp2PS5kZl5afBOATPgG
         ViGyUcZnlYjxUcteWO1LT1IuNGFtDGv1/ENkyiptl+niUMVy5U5awXKrJgS4nEcJX0fw
         XRxnk8mOV0NntsapoQ37sTjPe2oxwMJCcQGrZD3IKZBclBHoDu3Guc8cKms75ArOa144
         cozgDNGqtyjfmnIJpf3q/KgA869Ltry7+4zCRZSbPDWtS0MC68R2xcZs7h/CRD6lSp/k
         iXLbJL5IzaSWVC4lU5ebz7sgIoNuM3fNjp0kUN959rOuPcHiNL8GgXHhf3VEI7X4iJts
         FBDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773173939; x=1773778739;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9TmROf+bPb6FNDxEurt6WhWR2L8qwZm5Ni95BDxLLsk=;
        b=Rf92a8nkdrpYfo6dZMrj2gvgjJgg8iurHEQndDCL3iFxywf0zBcBwzRUq02K4cyRbE
         m9dBlUyEOJi7K9C+6pI/Sv0MM+p/7BqCEkevnxGRwPm4wGnLh2t87UYhpGl7ow+1c4fn
         QZ6axLxE+hsNOVGQRLVdEz5rb4rbqAec1Oiu73z6W8IoilxwY/cn2q81NWCf6IV1gekA
         a7GcexFFtLu5CUpkeT227yg858fwCcpunN0KcThLrVhqqMHrS8W+1I643bICbQPrNuEf
         +Q9VqPDZN9DOj1UiXkXeoHbFRSncAhTds4Xanv4EAvjX3SX6WBpGXMSmmPJJBOjqVZaK
         hWPw==
X-Forwarded-Encrypted: i=1; AJvYcCUd3oq3QF45qVYQgYAd2dZIWQcYnRnYaLQXQCznSVNbpcEfCRBE3JI7ZwIzUImWpDoY5Mqek3EwiFFE@vger.kernel.org
X-Gm-Message-State: AOJu0YywNKqXvunorAwT4gaW0C7gvH2g8Zwi3jurC+At/jxBiA+W78bq
	DxFcdREsOdXhf+zTsBn/r/Ee7LNasbigCyP1fvc9U6P5QZK2wILDz1d+lO+WwmalCg9ZVq2R1ov
	Kg2Yco4nHt4mwMiezJZbbuQpotStVzyTNEOYjQ3aYEW0gIJMZlJWqEUInO9mPAE42
X-Gm-Gg: ATEYQzxzs+UVGAyzBrbqnhfbxxuJ7djSybM9y1UKw70GooDQZmF/2UYKPji7icNwHqx
	q0hQO30uNpmi+krR2Pmvy8liozzOidnrMS8kjEVquStkaeyXx/pGo/l8dNfaG+RGFSELCVoQKNp
	Zp2iHy61XdFIgBchWsfKyWYGDN8/P/eZroXpIWrhRf5VOJHIRuCNnXxBVjWC8L8l+S1MsQkCpl6
	UYlIGdT52rbYe0U23u8K3Jdz+H4JBjK0xh4xJU4VfQ/YF6SrIIMv2vLQsiL/K6/DRx8em8H9dFM
	XVFbP83BT5y4TCdalhWUuhm0Nn3VweH7UIp2K4ggzE0Th9dyrhcoaVvaaGVXChZHCExSC9H2zl6
	aRbylCCgSVNSA6brafWdzLLYwTRvECyInPToFeP8ojjvkInQy
X-Received: by 2002:a05:6a00:a208:b0:81f:852b:a934 with SMTP id d2e1a72fcca58-829f6ec4858mr185479b3a.24.1773173939238;
        Tue, 10 Mar 2026 13:18:59 -0700 (PDT)
X-Received: by 2002:a05:6a00:a208:b0:81f:852b:a934 with SMTP id d2e1a72fcca58-829f6ec4858mr185434b3a.24.1773173938596;
        Tue, 10 Mar 2026 13:18:58 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6dc2d0asm115262b3a.13.2026.03.10.13.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 13:18:58 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 01:45:55 +0530
Subject: [PATCH v2 11/25] kernel/vmcore_info: Register dynamic information
 into meminspect
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-minidump-v2-v2-11-f91cedc6f99e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773173756; l=1244;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=W0/rYOUIz9/ZCoXh44K186q/e3UtR3GkqMBkRm9T0k4=;
 b=ludxEbTdMls4VjiNy/QHAIk8/k+SgkzNMzSydpcQb8gVJ4uiMEuIbGBNqWIItJVo0Zf5Xkd+v
 kxXcoDDsIsOAhyrZZK7SX5Tg2/pa7IFWKbP5zQo7BszRJRELF9pecT6
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-ORIG-GUID: AJLWqss4ax6EH4iVgeiTL3-36sNFD_dY
X-Proofpoint-GUID: AJLWqss4ax6EH4iVgeiTL3-36sNFD_dY
X-Authority-Analysis: v=2.4 cv=PJECOPqC c=1 sm=1 tr=0 ts=69b07cb4 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=6_paXCCOVaejlYIppVYA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDE3NyBTYWx0ZWRfX+e9maY11CJsb
 xIuUDNv+P9gWwX9aTu4d5Amz3szuWlxRpET3yV95r+x1cYKRu7ud+UThDEiRJRCiVCguPkSZ+iW
 8JKtcjWZHx0caqd+Gc/UALpLKCEvkN+hMvshkOmpyADfA5uc/NNbVaTQyfgS+P2lY57HufrzHTv
 4GvTkriC/vXl28R821QObFOq16/KdxaZZjkEAhdm2EpKK+39ZJJODHYMNtDjsbYSCD1DY9nRz8R
 Qvpf+vnlZBKcXSoBxZ3jlXGZOn4ARrHatygWy+vjTE9pmOkcxl0HXvzjT/AnvfnVk930VvCAh+8
 GTx53NRg0mIEKASqQJtKereYL67y6cOT35ktVD9T3lAiuo/ynsLl6r/coBoO99Ao0kgxPACK043
 iGAo7tvtnMfQQLwuWzVt1O5IO6SyEGi9Fzw5OdKfF3/xIjaWG1G5jipUWdnGliZVrU0x/AJRwku
 P07NkYKhXOJc3duwzlQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_04,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 malwarescore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100177
X-Rspamd-Queue-Id: B2D1D2579A5
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
	TAGGED_FROM(0.00)[bounces-273726-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linaro.org:email];
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

Register vmcoreinfo information into inspection table. Because the size
of the info is computed after all entries are being added, there is no
point in registering the whole page, rather, call the inspection
registration once everything is in place with the right size. A second
reason is that the vmcoreinfo is added as a region inside the ELF
coreimage note, there is no point in having blank space at the end.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 kernel/vmcore_info.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/kernel/vmcore_info.c b/kernel/vmcore_info.c
index 94e4ef75b1b2..4ebb280dc38a 100644
--- a/kernel/vmcore_info.c
+++ b/kernel/vmcore_info.c
@@ -14,6 +14,7 @@
 #include <linux/cpuhotplug.h>
 #include <linux/memblock.h>
 #include <linux/kmemleak.h>
+#include <linux/meminspect.h>
 
 #include <asm/page.h>
 #include <asm/sections.h>
@@ -249,6 +250,9 @@ static int __init crash_save_vmcoreinfo_init(void)
 	arch_crash_save_vmcoreinfo();
 	update_vmcoreinfo_note();
 
+	meminspect_register_id_va(MEMINSPECT_ID_VMCOREINFO,
+				  (void *)vmcoreinfo_data, vmcoreinfo_size);
+
 	return 0;
 }
 

-- 
2.50.1


