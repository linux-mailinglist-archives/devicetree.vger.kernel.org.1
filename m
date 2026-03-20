Return-Path: <devicetree+bounces-278314-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFD/LeBgvWl09QIAu9opvQ
	(envelope-from <devicetree+bounces-278314-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:59:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 796AD2DC2D5
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:59:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D220D314B1EA
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:49:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5DC13C4557;
	Fri, 20 Mar 2026 14:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o3PZlQwQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kn4HGu86"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698453C2771
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774018167; cv=none; b=fZ8WHd7COxXtmjY6JHzYkSOULRxfQKAsRlXSaQ/jSfXeXRO67xt79pB5tN++rCr7BAqdXtXsh7u+z+oW7towvifGFEfYE+m9kdUCSDdVLzPYh8TBjBci5BrhwGyprTI97kaDEMxPA4vFmd89qQkk1ILdU4A7QmBwMZjA+oFpSI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774018167; c=relaxed/simple;
	bh=ioMmjxhpKgEGbU9Q5ZhuNjYP6+vM1Ed4pEa/HmaRSl8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VZyLrLu16MpECTS3nA/W980tWSo++zh7nfb/UIR70D2Hn6f3xaQO7D5Cg4Koy7JU+s24xdBae2E7ryePMUXUz39prRaCy4K31HzTwHg16juJWlvFAggpyOShYyMZa9k0BN0/fxpZI+gepTqAxg/yM1uRdTEfWDkPLJvVEuZsgGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o3PZlQwQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kn4HGu86; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62KA7cQS3347639
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NKjWGmdRv65
	20W4OaNXC1TctOioozKWeG4nDgD3XJX8=; b=o3PZlQwQO9IaP04i4zJIwMNcNc1
	edwARPEPwIoKRydap85PblMumF6blqYfYpjc2BLZP/WHvVC3XXg5qaXHdXdyytcP
	G8ki5J5AFmJqp0iYdgJzhP1y3zgDV06Myv0oQT/qhc0xTg7t5TMtfj/CxCCoKZOb
	gvAM4Ycxo3cdKOey1k68+kh1gfOP9FQAmC2QEM56eD0NKwXIfzOFUqIxGouWiuQm
	ziwXzKRcxIkYji86xrF56zrW5+OpSqrKC4Tkn1l/6ZR+ElgSVzijguUw2w4Y00Tt
	Kz+iyP1L/PEwH77EnMX98pTd8JXBWVnWm7CTRc0pX1UXiQNF8YncdE0bCoA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d1479rndj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:25 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-899edf01747so138646046d6.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774018165; x=1774622965; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NKjWGmdRv6520W4OaNXC1TctOioozKWeG4nDgD3XJX8=;
        b=kn4HGu86d8USTYfXSr8YZ5BgVhZ+7F+Sw6yiOMBWJr81h50MZxNo5z/GT6BMIWmp3q
         X9S4wZy2DiiWMQZsPb+h8Gw7rGLF2Lv+isvHG2mn8eY8WgeASiaM06tFwss5QdH/B6st
         NgcSUDEgHbp3qTykxE/4r6JJQl9AZY9jRw8umDKSv8OxZKymlwcnHZlh7Q8BJmsnRaOt
         AUzFe2rGaSvnyw/UrT6r9eK6Kk6EJWuBplDsCkR1vb1+UJE18BqAgopa5XbfPRIRaiKb
         aELjdZKpXARkPY2AFGL2GK9QnQXTDzKtfi4Oqm1nXhPxx988ymmmoCYlLmLGC/Km8oto
         ocqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774018165; x=1774622965;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NKjWGmdRv6520W4OaNXC1TctOioozKWeG4nDgD3XJX8=;
        b=Fj22zsLNOHYqwMojRdwu86XNmLX5Fy6FqhbI4ksQVadBib/NTiiLN4qfdFN/M5PcYU
         m8vzUz34Ya9bNTcpMG9/R054CB12ilHP3FmRhzIealDatC8p3XX4kFpep4pcEf46M1uK
         oc3cshEr922W6UksgeMVtMFAfRJwO1sDoZv24zq4MEnR3ST1Qg5a82T/yNhwywm4tn8F
         e7vzwn/LC3svrGUQw0Ox225nzVQyoDiAYWshXupMAqyYRwA9oArloccGOtICuKtmQ+k1
         gEqnt+4Eof61sWotibDuk2sAKtuBUJMoAAJzzHOfKvxuYBwc4ORB4T+v/F6//qSXhRPp
         aN6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXryWtFI1qnWtCFOwOGpfQ1VY5U9F8zZ30faJJSX8SR4WWYgivR6IO3S5nqxbyS2b14k2ceqNj5oZsM@vger.kernel.org
X-Gm-Message-State: AOJu0YySTezhOStD+9U3MbAiikcuRDEO7dplVSJyK86fHDC0Zt39OUmw
	EfNSKOwtEwD4FPtEtd7EUglrb5yQq0qxrb/EhdkDiSg9zTVpStqp9uG/FeYOwG3VEaSdIUCNrvy
	zdErcmDrVmf1BHJk2ss3Y4yVHjw5qUQBID3g2sndFbt/lkVAiFPuItEI2rXR519v3
X-Gm-Gg: ATEYQzwbVPs7TaHe35f3kBoojv/UFImFveOPITNogFhHqDG1D/6er3N5ahWMCXNUtY+
	SgPkXxQB6GInMY6pyJCRzdc1kdRiWuogqoI9op81zkOJ+IDl/Ib+gou/sIbKJVUZxETTvYaeGoc
	vrSIuulK+SIIkRwbrkZG0jvBKXpciqNt58zJzpdNNm62fsrhgykkrY/FaJO8nCeXlU6zcnR74lm
	mW577Xnq63TYOMzN1OvzMBwA+wCf22LehIgwbbjYVBw03ArxjhUSxB2MHmwD5FLNRn9yYXd59u6
	S3jYnnAsV0vqRb8zdUqr/UCqGAr+1lUtzB1eo27KQvD9fqRfw1+KAJfOHsuyH0g/lVEpA9TTAWB
	3AxfZN67R0zZ8clplfM3u8fw21gSB8JIxb/tIi6wDLPba4LTvdGPCIsE=
X-Received: by 2002:a05:622a:1b8c:b0:50b:4001:ae12 with SMTP id d75a77b69052e-50b4001b068mr19927691cf.46.1774018164496;
        Fri, 20 Mar 2026 07:49:24 -0700 (PDT)
X-Received: by 2002:a05:622a:1b8c:b0:50b:4001:ae12 with SMTP id d75a77b69052e-50b4001b068mr19927011cf.46.1774018163780;
        Fri, 20 Mar 2026 07:49:23 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486ff109b95sm47906825e9.1.2026.03.20.07.49.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 07:49:23 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org, val@packett.cool,
        mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v6 01/13] ASoC: qcom: q6apm: move component registration to unmanaged version
Date: Fri, 20 Mar 2026 14:49:06 +0000
Message-ID: <20260320144918.1685838-2-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260320144918.1685838-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260320144918.1685838-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ygJ6mhx1uMhCI3x81r1u2yhUgK9_ITE1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDExOCBTYWx0ZWRfX2UB9P6giJ/wz
 zaK6N7O59GoH15C5MC6eqgumOWLkWmpUbdiIsmPwI+4w548aLklPamGEOv7Bpm5VXEoKYGOIsfn
 k+izdQiK3R7FkGb5Cr2COJ8oww8851XqZU8hOIkYEDLGMNWxRhTm2FKe9Df6pHIzKIpQB7u4AW7
 vlBnOcuSG6Qfk5UIMdXMpZkvw1KLqM+rBsRV4CB7ELybsZLWBSQEVanFtX+7Hj11zoM5Ae7NCMo
 Cn9VHcgahUne25GuvSGlKEev33//CU8WL+ETnoKMhXauvZ/ZrT1lAKrHgiU2Y0gfPuWYLGBF7dd
 zIx5ULERjspZ3XrUZDOtFJJuAzq55mcUnWQMP/wSNoPKvbAufgmfsACLd8Cf7d19gg4VW3SO7kF
 AeY9V1C/SMZ5Nmn23y5v0wTfMtu1ZbzaJFLo85PzRb4pxv/8uZ3kiMzZdYR4coSJjF669wKBK28
 xuTKE73sWR66uDfbEHw==
X-Proofpoint-ORIG-GUID: ygJ6mhx1uMhCI3x81r1u2yhUgK9_ITE1
X-Authority-Analysis: v=2.4 cv=fOo0HJae c=1 sm=1 tr=0 ts=69bd5e75 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=ZjLH_7kMUelE1Q3ziugA:9 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_02,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200118
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org,packett.cool];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-278314-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.967];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 796AD2DC2D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

q6apm component registers dais dynamically from ASoC toplology, which
are allocated using device managed version apis. Allocating both
component and dynamic dais using managed version could lead to incorrect
free ordering, dai will be freed while component still holding references
to it.

Fix this issue by moving component to unmanged version so
that the dai pointers are only freeded after the component is removed.

==================================================================
BUG: KASAN: slab-use-after-free in snd_soc_del_component_unlocked+0x3d4/0x400 [snd_soc_core]
Read of size 8 at addr ffff00084493a6e8 by task kworker/u48:0/3426
Tainted: [W]=WARN
Hardware name: LENOVO 21N2ZC5PUS/21N2ZC5PUS, BIOS N42ET57W (1.31 ) 08/08/2024
Workqueue: pdr_notifier_wq pdr_notifier_work [pdr_interface]
Call trace:
 show_stack+0x28/0x7c (C)
 dump_stack_lvl+0x60/0x80
 print_report+0x160/0x4b4
 kasan_report+0xac/0xfc
 __asan_report_load8_noabort+0x20/0x34
 snd_soc_del_component_unlocked+0x3d4/0x400 [snd_soc_core]
 snd_soc_unregister_component_by_driver+0x50/0x88 [snd_soc_core]
 devm_component_release+0x30/0x5c [snd_soc_core]
 devres_release_all+0x13c/0x210
 device_unbind_cleanup+0x20/0x190
 device_release_driver_internal+0x350/0x468
 device_release_driver+0x18/0x30
 bus_remove_device+0x1a0/0x35c
 device_del+0x314/0x7f0
 device_unregister+0x20/0xbc
 apr_remove_device+0x5c/0x7c [apr]
 device_for_each_child+0xd8/0x160
 apr_pd_status+0x7c/0xa8 [apr]
 pdr_notifier_work+0x114/0x240 [pdr_interface]
 process_one_work+0x500/0xb70
 worker_thread+0x630/0xfb0
 kthread+0x370/0x6c0
 ret_from_fork+0x10/0x20

Allocated by task 77:
 kasan_save_stack+0x40/0x68
 kasan_save_track+0x20/0x40
 kasan_save_alloc_info+0x44/0x58
 __kasan_kmalloc+0xbc/0xdc
 __kmalloc_node_track_caller_noprof+0x1f4/0x620
 devm_kmalloc+0x7c/0x1c8
 snd_soc_register_dai+0x50/0x4f0 [snd_soc_core]
 soc_tplg_pcm_elems_load+0x55c/0x1eb8 [snd_soc_core]
 snd_soc_tplg_component_load+0x4f8/0xb60 [snd_soc_core]
 audioreach_tplg_init+0x124/0x1fc [snd_q6apm]
 q6apm_audio_probe+0x10/0x1c [snd_q6apm]
 snd_soc_component_probe+0x5c/0x118 [snd_soc_core]
 soc_probe_component+0x44c/0xaf0 [snd_soc_core]
 snd_soc_bind_card+0xad0/0x2370 [snd_soc_core]
 snd_soc_register_card+0x3b0/0x4c0 [snd_soc_core]
 devm_snd_soc_register_card+0x50/0xc8 [snd_soc_core]
 x1e80100_platform_probe+0x208/0x368 [snd_soc_x1e80100]
 platform_probe+0xc0/0x188
 really_probe+0x188/0x804
 __driver_probe_device+0x158/0x358
 driver_probe_device+0x60/0x190
 __device_attach_driver+0x16c/0x2a8
 bus_for_each_drv+0x100/0x194
 __device_attach+0x174/0x380
 device_initial_probe+0x14/0x20
 bus_probe_device+0x124/0x154
 deferred_probe_work_func+0x140/0x220
 process_one_work+0x500/0xb70
 worker_thread+0x630/0xfb0
 kthread+0x370/0x6c0
 ret_from_fork+0x10/0x20

Freed by task 3426:
 kasan_save_stack+0x40/0x68
 kasan_save_track+0x20/0x40
 __kasan_save_free_info+0x4c/0x80
 __kasan_slab_free+0x78/0xa0
 kfree+0x100/0x4a4
 devres_release_all+0x144/0x210
 device_unbind_cleanup+0x20/0x190
 device_release_driver_internal+0x350/0x468
 device_release_driver+0x18/0x30
 bus_remove_device+0x1a0/0x35c
 device_del+0x314/0x7f0
 device_unregister+0x20/0xbc
 apr_remove_device+0x5c/0x7c [apr]
 device_for_each_child+0xd8/0x160
 apr_pd_status+0x7c/0xa8 [apr]
 pdr_notifier_work+0x114/0x240 [pdr_interface]
 process_one_work+0x500/0xb70
 worker_thread+0x630/0xfb0
 kthread+0x370/0x6c0
 ret_from_fork+0x10/0x20

Fixes: 5477518b8a0e ("ASoC: qdsp6: audioreach: add q6apm support")
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/sound/soc/qcom/qdsp6/q6apm.c b/sound/soc/qcom/qdsp6/q6apm.c
index 970b08c89bb3..fece0e3def23 100644
--- a/sound/soc/qcom/qdsp6/q6apm.c
+++ b/sound/soc/qcom/qdsp6/q6apm.c
@@ -747,7 +747,7 @@ static int apm_probe(gpr_device_t *gdev)
 
 	q6apm_get_apm_state(apm);
 
-	ret = devm_snd_soc_register_component(dev, &q6apm_audio_component, NULL, 0);
+	ret = snd_soc_register_component(dev, &q6apm_audio_component, NULL, 0);
 	if (ret < 0) {
 		dev_err(dev, "failed to register q6apm: %d\n", ret);
 		return ret;
@@ -756,6 +756,11 @@ static int apm_probe(gpr_device_t *gdev)
 	return of_platform_populate(dev->of_node, NULL, NULL, dev);
 }
 
+static void apm_remove(gpr_device_t *gdev)
+{
+	snd_soc_unregister_component(&gdev->dev);
+}
+
 struct audioreach_module *q6apm_find_module_by_mid(struct q6apm_graph *graph, uint32_t mid)
 {
 	struct audioreach_graph_info *info = graph->info;
@@ -820,6 +825,7 @@ MODULE_DEVICE_TABLE(of, apm_device_id);
 
 static gpr_driver_t apm_driver = {
 	.probe = apm_probe,
+	.remove = apm_remove,
 	.gpr_callback = apm_callback,
 	.driver = {
 		.name = "qcom-apm",
-- 
2.47.3


