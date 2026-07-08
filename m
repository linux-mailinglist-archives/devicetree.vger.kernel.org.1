Return-Path: <devicetree+bounces-322496-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id a4McCvviTWrD/gEAu9opvQ
	(envelope-from <devicetree+bounces-322496-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 07:41:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AF11F721F7E
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 07:41:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=FfzuHjvm;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=HCipTncA;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322496-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322496-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E8F3D305672E
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 05:38:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3A303BD644;
	Wed,  8 Jul 2026 05:38:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8053BD225
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 05:38:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783489084; cv=none; b=ledm8fXke3p81KYPMXwqcGUQ1VZTb2/XPZhh1U8aS/MM2Lnyue98QfIsG9oqMk8rpUS5Ci9uyQV+tgdPRsmvCgva2CXUfdzCJ7Ub21Ffbbopeuj7LqidDabehBLxlrXBS0cc9nPwyWBDlj5yqVA6KFOkYzioQ0fvUW67baTp1cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783489084; c=relaxed/simple;
	bh=z1ZsDtb3AdWukosz6c8vmkJyyuvespbAakGiTQ8hg/k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=j66wISr72Rm4KM5L8iLBYLX6dTPOU4Ns9uf1Tek4shdPPF//T7sQafdzWgBd5zWKKmjjUBJEJcVOecM62zFx4/rdTVr2EX28So3zl2gIrj7c7qjZDbBeAtGKPMdAiGpMu7qmp1qs3/7MHkSkUm36dDZC90L6jCJ1UKsG3qzsWpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FfzuHjvm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HCipTncA; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66842CQ61572682
	for <devicetree@vger.kernel.org>; Wed, 8 Jul 2026 05:38:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6tQhSIWI14qqnmz6kQc2gEQdl1vvWUYPv8dRt1VJvvg=; b=FfzuHjvm75cQHZf3
	TCN9eJ1x4s7H0avZYnpHrX0U4q749iAj2TENyuuyKJE1sjE+UdIN/2rsFExFjoTh
	CI3ywe2xNZ/eZkaOxt6yCpn9a7u/O3vrsWA9AUZtB2UIsE9xo/GOseBFd+VcNwfg
	+hxjGwJzz9cjDnygtg/MHpTXucuO2kdVmd6930H0oqVrh2IAwMr8UcZGNPaEJDvx
	lIkDWX+ZZdokzTR/dRXDLdWw4OQRVdS0tSp+KwLk3eN4KyrGcsI8HHOhUOxX7/xd
	0izWDl06giRUT9qFU1ujKNQfQZqHSxO78F71U9MNLaA/ooldiHZMh7mdgRhovq2c
	5kHv2g==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f99hgsj5n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 05:38:01 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8423f1fe39eso665640b3a.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jul 2026 22:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783489081; x=1784093881; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6tQhSIWI14qqnmz6kQc2gEQdl1vvWUYPv8dRt1VJvvg=;
        b=HCipTncAaotn7SHTQr9v6Q6kTpQO3WNQqidyL1/dDzix6njKD9e6PKcoxKXId8sS1m
         wbmXk49bvFPPxwpws3EBW7f1UUt/Yi9aktJB+aFRstjfIEk47bkkXPjIfVCVZvx5AKWS
         V1rXiO40JZteUu8KeleRD8N2UvBJBJZNyLbAYQOA+VGi4TH8cvxrPnMrkR+HwPMe9aKV
         2XG7WfvViJo30sVyrRB/vCPiPcDgtZsxuGcbhijDumHIkyPefcemTL4DXO7kGWMpItl4
         M4d1YNHd35OVs5w6/Tkei5CUzR/m7LQojWqN0d//Y9d2TdMkuV+DTszgY71QOS8TnuQd
         XekQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783489081; x=1784093881;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6tQhSIWI14qqnmz6kQc2gEQdl1vvWUYPv8dRt1VJvvg=;
        b=AxWrCkEX26qx3j/Wb8NxXH+Clo+kUQv9izOq4cqu5fcatbiYnblSnnEOARE5PKg0Yv
         c9a5bvZV+FHT1zukJqItWmbccTVlbOn4NW/OG8udAX8jJ21cA4fVQK00MoPwCIdvDEDf
         zJfQhfayUj26TfC+w9XfkPVofabSco+/mYAU5Iw852YawUC3Kmrxm8o342SCtS01wIrT
         AEpiNlAV+GtFhzf3JjF4y7+wueAele47T6IN//w6zrp5s3KJfqc5vyfO1HzLWO+3nCZx
         RaIiNahZwnk5mWe45GtCXkGIkZaJwkU6bsubPSFuTcIoKuI5GLOd5toyYe6/6jRlXREc
         06UA==
X-Forwarded-Encrypted: i=1; AHgh+RrqSHKSKxUH0Ttf2jy8apye2G1wrfcF+R5GMi/ZzPKSwKS46C97SGTLeC0vHWOzcdnH8W5235LiyBep@vger.kernel.org
X-Gm-Message-State: AOJu0YzO/KCHdaGm0/4i1KmMppEEyOffeXycjpVv0Ff7vTlcvAbXW718
	+2rHxHGraweUUzBjWdBK7tZiO+p6LeBJOC/+9JMQJ/paMm9EJJSKxLYTCpd510iuw4tChgWK3xn
	XEyspvjlflbIM5HhkrU81LQ9Y+d8uWMZMbU6zISW8k4+TqVfwzlyTw0yPXKUkBc32
X-Gm-Gg: AfdE7cm0GJXoksk+lRJYrHBnd7ZPMnx2uAz89b0W+lPuPgWWOrkf27v3Ay+JVynEeIe
	+vsu9X0qibKhusfcqXa+GK7vGR0J6gyHJkxMTAvdSJ6D5wd37L4bwZCAAvUaoLGDDqdZiAzeRag
	kvU6GQo+tyMdYLZDfC/zD1FEEUY4aH6RHUJsxVh6keArxfoOnbKdeNpsiPDxAKwNymHUFV/aTmt
	/RMsoCWRom6ubVIGEIgKhG2UR/myC/TG31tLcQAUCXSut6dAWLj0DwyBtHeaNPNKQK7aWyDQboz
	bofKHUxdXU/gOON7alLCwiwORUZKfsmgjlDFnGo1Q1cukM7QP6LnnDBEMIeN20deVgh+HqIguK4
	ky2vJ2hTVl9a8VuCrf+JwfPVpOZkZ7AcrbJPqYA==
X-Received: by 2002:a05:6a00:1826:b0:845:cd11:37e8 with SMTP id d2e1a72fcca58-84843273dccmr1108589b3a.24.1783489080603;
        Tue, 07 Jul 2026 22:38:00 -0700 (PDT)
X-Received: by 2002:a05:6a00:1826:b0:845:cd11:37e8 with SMTP id d2e1a72fcca58-84843273dccmr1108519b3a.24.1783489079953;
        Tue, 07 Jul 2026 22:37:59 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847f6db29d1sm6484592b3a.53.2026.07.07.22.37.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 22:37:59 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 08 Jul 2026 11:02:01 +0530
Subject: [PATCH v3 22/26] remoteproc: qcom: Move minidump data structures
 into its own header
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260708-meminspect-v3-v3-22-7aa5a0a74d5c@oss.qualcomm.com>
References: <20260708-meminspect-v3-v3-0-7aa5a0a74d5c@oss.qualcomm.com>
In-Reply-To: <20260708-meminspect-v3-v3-0-7aa5a0a74d5c@oss.qualcomm.com>
To: Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
        Eugen Hristev <ehristev@kernel.org>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Arnd Bergmann <arnd@arndb.de>, Dennis Zhou <dennis@kernel.org>,
        Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@gentwo.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Thomas Gleixner <tglx@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Anna-Maria Behnsen <anna-maria@linutronix.de>,
        Frederic Weisbecker <frederic@kernel.org>,
        John Stultz <jstultz@google.com>, Stephen Boyd <sboyd@kernel.org>,
        Kees Cook <kees@kernel.org>, Ingo Molnar <mingo@redhat.com>,
        Juri Lelli <juri.lelli@redhat.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Dietmar Eggemann <dietmar.eggemann@arm.com>,
        Steven Rostedt <rostedt@goodmis.org>, Ben Segall <bsegall@google.com>,
        Mel Gorman <mgorman@suse.de>, Valentin Schneider <vschneid@redhat.com>,
        K Prateek Nayak <kprateek.nayak@amd.com>,
        David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <ljs@kernel.org>,
        "Liam R. Howlett" <liam@infradead.org>,
        Vlastimil Babka <vbabka@kernel.org>, Mike Rapoport <rppt@kernel.org>,
        Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>,
        Brendan Jackman <jackmanb@google.com>,
        Johannes Weiner <hannes@cmpxchg.org>, Zi Yan <ziy@nvidia.com>,
        Chris Li <chrisl@kernel.org>, Kairui Song <kasong@tencent.com>,
        Kemeng Shi <shikemeng@huaweicloud.com>, Nhat Pham <nphamcs@gmail.com>,
        Baoquan He <baoquan.he@linux.dev>, Barry Song <baohua@kernel.org>,
        Youngjun Park <youngjun.park@lge.com>, Petr Mladek <pmladek@suse.com>,
        John Ogness <john.ogness@linutronix.de>,
        Sergey Senozhatsky <senozhatsky@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>
Cc: workflows@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
        linux-mm@kvack.org, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        Eugen Hristev <ehristev@kernel.org>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783488714; l=5306;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=/Jtff8M2EKscXA/Je0INbgmO1YS6m/R2F3Zo0Iz1ek4=;
 b=xINWUZfMh5pzjvIvBrT7eJj7xNvbLw2tKLmtZMw6qxkQ1gC5A0Ib7M6fYtAHV7x10PU5CxuEP
 JzEOyAstB91B4AE5pg32ds/zx+eCqBM/u716kEL+09/CtbaoWEyfJmx
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-GUID: S6Y-oiAZ8CpCSftq6yQfwTEatrnhOaK2
X-Authority-Analysis: v=2.4 cv=CviPtH4D c=1 sm=1 tr=0 ts=6a4de239 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=b4h7NkmuwT24Zy2QmmkA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: S6Y-oiAZ8CpCSftq6yQfwTEatrnhOaK2
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA4MDA1MSBTYWx0ZWRfXyZ9akg2A4fKo
 PHavwg3JhQrVIMqjfboGsgZr8GM1S3sPq28GFD60IurZ26dqwkZfiU5kjEuSCY01uGYgfUMAv3s
 KoQkC9gbQcjrI4NlRtK9fCwvbpZf9iA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDA1MSBTYWx0ZWRfXxdgPQWWk8J/W
 HWfJNWmGfG5JDGBszMdYYmTOq+Rzydl9rYsKxQ5ChR4gjHzEL/z0slSTb5eY9fBxbKKvNAInS0/
 rdKyK3vsBRWntGwSjcpqz7QdPPq/EClOdT/4PZQpljJ+b4NDbaDzfEQA6ceJQ8yP3NtqNM/q+51
 F8QqJaffoKhTbKh1Ue+xfAu99sQaxdlb3x5Prk7osInTdNYQftE8Tkb3vpNMrCe+TrtFRAAUvnN
 bg9EGAreoLCwL/gBcBIOaucRF5IcYnCrbJYId0AUjJwHOSXuHsRiQkFhTZyiVdfvJkZP9DSCqBf
 LpWj3EywJ3mMeLqJxkUlx3LymTW+hApZy6VD3jTQ+CvxMigJir86whET9LhK4/XDA6t/4xEDGhs
 Yx0J7zmlDXetTQbhL4uF85AWFiMP66/a4JgFV+j8DfW08bzP9kQs8EljbcKcpPbL91UrEl0HR5k
 fNbOGnpyS+bD+Ghe11w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_06,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 adultscore=0 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607080051
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322496-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:ehristev@kernel.org,m:mukesh.ojha@oss.qualcomm.com,m:arnd@arndb.de,m:dennis@kernel.org,m:tj@kernel.org,m:cl@gentwo.org,m:akpm@linux-foundation.org,m:tglx@kernel.org,m:peterz@infradead.org,m:anna-maria@linutronix.de,m:frederic@kernel.org,m:jstultz@google.com,m:sboyd@kernel.org,m:kees@kernel.org,m:mingo@redhat.com,m:juri.lelli@redhat.com,m:vincent.guittot@linaro.org,m:dietmar.eggemann@arm.com,m:rostedt@goodmis.org,m:bsegall@google.com,m:mgorman@suse.de,m:vschneid@redhat.com,m:kprateek.nayak@amd.com,m:david@kernel.org,m:ljs@kernel.org,m:liam@infradead.org,m:vbabka@kernel.org,m:rppt@kernel.org,m:surenb@google.com,m:mhocko@suse.com,m:jackmanb@google.com,m:hannes@cmpxchg.org,m:ziy@nvidia.com,m:chrisl@kernel.org,m:kasong@tencent.com,m:shikemeng@huaweicloud.com,m:nphamcs@gmail.com,m:baoquan.he@linux.dev,m:baohua@kernel.org,m:youngjun.park@lge.com,m:pmladek@suse.com,m:john.ogness@linutronix.de,m:senozhatsky@chromium.org,m
 :andersson@kernel.org,m:mathieu.poirier@linaro.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:saravanak@kernel.org,m:workflows@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arch@vger.kernel.org,m:linux-mm@kvack.org,m:linux-arm-msm@vger.kernel.org,m:linux-remoteproc@vger.kernel.org,m:devicetree@vger.kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[lwn.net,linuxfoundation.org,kernel.org,oss.qualcomm.com,arndb.de,gentwo.org,linux-foundation.org,infradead.org,linutronix.de,google.com,redhat.com,linaro.org,arm.com,goodmis.org,suse.de,amd.com,suse.com,cmpxchg.org,nvidia.com,tencent.com,huaweicloud.com,gmail.com,linux.dev,lge.com,chromium.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,vger.kernel.org:from_smtp];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_GT_50(0.00)[61];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AF11F721F7E

From: Eugen Hristev <ehristev@kernel.org>

Move the minidump data structures into its own header such that it can
be reused by other drivers. No functional change.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/remoteproc/qcom_common.c  | 55 +-------------------------------
 include/linux/soc/qcom/minidump.h | 67 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 68 insertions(+), 54 deletions(-)

diff --git a/drivers/remoteproc/qcom_common.c b/drivers/remoteproc/qcom_common.c
index e1a955476c9b..a5ab9f024e64 100644
--- a/drivers/remoteproc/qcom_common.c
+++ b/drivers/remoteproc/qcom_common.c
@@ -18,6 +18,7 @@
 #include <linux/rpmsg/qcom_smd.h>
 #include <linux/slab.h>
 #include <linux/soc/qcom/mdt_loader.h>
+#include <linux/soc/qcom/minidump.h>
 #include <linux/soc/qcom/smem.h>
 
 #include "remoteproc_internal.h"
@@ -28,60 +29,6 @@
 #define to_ssr_subdev(d) container_of(d, struct qcom_rproc_ssr, subdev)
 #define to_pdm_subdev(d) container_of(d, struct qcom_rproc_pdm, subdev)
 
-#define MAX_REGION_NAME_LENGTH  16
-#define SBL_MINIDUMP_SMEM_ID	602
-#define MINIDUMP_REGION_VALID		('V' << 24 | 'A' << 16 | 'L' << 8 | 'I' << 0)
-#define MINIDUMP_SS_ENCR_DONE		('D' << 24 | 'O' << 16 | 'N' << 8 | 'E' << 0)
-#define MINIDUMP_SS_ENABLED		('E' << 24 | 'N' << 16 | 'B' << 8 | 'L' << 0)
-
-/**
- * struct minidump_region - Minidump region
- * @name		: Name of the region to be dumped
- * @seq_num:		: Use to differentiate regions with same name.
- * @valid		: This entry to be dumped (if set to 1)
- * @address		: Physical address of region to be dumped
- * @size		: Size of the region
- */
-struct minidump_region {
-	char	name[MAX_REGION_NAME_LENGTH];
-	__le32	seq_num;
-	__le32	valid;
-	__le64	address;
-	__le64	size;
-};
-
-/**
- * struct minidump_subsystem - Subsystem's SMEM Table of content
- * @status : Subsystem toc init status
- * @enabled : if set to 1, this region would be copied during coredump
- * @encryption_status: Encryption status for this subsystem
- * @encryption_required : Decides to encrypt the subsystem regions or not
- * @region_count : Number of regions added in this subsystem toc
- * @regions_baseptr : regions base pointer of the subsystem
- */
-struct minidump_subsystem {
-	__le32	status;
-	__le32	enabled;
-	__le32	encryption_status;
-	__le32	encryption_required;
-	__le32	region_count;
-	__le64	regions_baseptr;
-};
-
-/**
- * struct minidump_global_toc - Global Table of Content
- * @status : Global Minidump init status
- * @md_revision : Minidump revision
- * @enabled : Minidump enable status
- * @subsystems : Array of subsystems toc
- */
-struct minidump_global_toc {
-	__le32				status;
-	__le32				md_revision;
-	__le32				enabled;
-	struct minidump_subsystem	subsystems[];
-};
-
 struct qcom_ssr_subsystem {
 	const char *name;
 	struct srcu_notifier_head notifier_list;
diff --git a/include/linux/soc/qcom/minidump.h b/include/linux/soc/qcom/minidump.h
new file mode 100644
index 000000000000..7449a04e6e15
--- /dev/null
+++ b/include/linux/soc/qcom/minidump.h
@@ -0,0 +1,67 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Qualcomm Minidump definitions
+ *
+ * Copyright (C) 2016 Linaro Ltd
+ * Copyright (C) 2015 Sony Mobile Communications Inc
+ * Copyright (c) 2012-2013, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef __QCOM_MINIDUMP_H__
+#define __QCOM_MINIDUMP_H__
+
+#define MAX_REGION_NAME_LENGTH  16
+#define SBL_MINIDUMP_SMEM_ID	602
+#define MINIDUMP_REGION_VALID		('V' << 24 | 'A' << 16 | 'L' << 8 | 'I' << 0)
+#define MINIDUMP_SS_ENCR_DONE		('D' << 24 | 'O' << 16 | 'N' << 8 | 'E' << 0)
+#define MINIDUMP_SS_ENABLED		('E' << 24 | 'N' << 16 | 'B' << 8 | 'L' << 0)
+
+/**
+ * struct minidump_region - Minidump region
+ * @name		: Name of the region to be dumped
+ * @seq_num:		: Use to differentiate regions with same name.
+ * @valid		: This entry to be dumped (if set to 1)
+ * @address		: Physical address of region to be dumped
+ * @size		: Size of the region
+ */
+struct minidump_region {
+	char	name[MAX_REGION_NAME_LENGTH];
+	__le32	seq_num;
+	__le32	valid;
+	__le64	address;
+	__le64	size;
+};
+
+/**
+ * struct minidump_subsystem - Subsystem's SMEM Table of content
+ * @status : Subsystem toc init status
+ * @enabled : if set to 1, this region would be copied during coredump
+ * @encryption_status: Encryption status for this subsystem
+ * @encryption_required : Decides to encrypt the subsystem regions or not
+ * @region_count : Number of regions added in this subsystem toc
+ * @regions_baseptr : regions base pointer of the subsystem
+ */
+struct minidump_subsystem {
+	__le32	status;
+	__le32	enabled;
+	__le32	encryption_status;
+	__le32	encryption_required;
+	__le32	region_count;
+	__le64	regions_baseptr;
+};
+
+/**
+ * struct minidump_global_toc - Global Table of Content
+ * @status : Global Minidump init status
+ * @md_revision : Minidump revision
+ * @enabled : Minidump enable status
+ * @subsystems : Array of subsystems toc
+ */
+struct minidump_global_toc {
+	__le32				status;
+	__le32				md_revision;
+	__le32				enabled;
+	struct minidump_subsystem	subsystems[];
+};
+
+#endif

-- 
2.53.0


