Return-Path: <devicetree+bounces-267581-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6N6EGJCXnGluJgQAu9opvQ
	(envelope-from <devicetree+bounces-267581-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:08:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C2617B41C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:08:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 971113053BDC
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:08:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8CFB33B95D;
	Mon, 23 Feb 2026 18:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ajQ603iN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iSx9yM0/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0CA433AD9C
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870080; cv=none; b=Dzq9ri3yjsSMHjO/eSTX58E2jCI4KjOIIP3VSUmQIb9G8aCveDhkTq3T48Kv3kjabXEPmHvbYET2LJgOfsx8UYpOpAHghVLK38XWEbL1cjv6bPC//Ao9XT2R/hx4iylOCYw3IQvKJYTJUMBM4yQAtB9etvyWbNByMx4fsvP4M8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870080; c=relaxed/simple;
	bh=oEkIhNKWtLpHdr8wqnNeYG4kHYWQ5Gh5zUBeJNZTPnk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ILFNqBKroLmQhXtadbQJLl2L1FLjWpeexL4wfy2jU27Sy2a4SEHibTBvoPe8+2C17VBk2a1XKWekMmEcQD2dnFG6OTSkwDcuwvQOQCeu/jLDY5dBldKeASbMT/r3II8RNbw1wdcvMdCuVhsB4GgG+dtRF5evueM6gdflCf86gVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ajQ603iN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iSx9yM0/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NHh3BO322187
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:07:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=I3U7Vm1CHB5
	FgP0u4G05ZUf+1Mwffl62vHgDE0f0D1k=; b=ajQ603iNcCJMVr/s1juL4ITQR/f
	IlSFdAgEi++wCaIXPzNRZHKB/GBsDdzkSX0pNUr1rPsm3bsTES+9kdcLfbDBZRPA
	AS2ciCMahzoxwE9SexzBUFWmzWF12TcARL+oQPHqLdUPQl2NPk+Cxh+y/qsDXlF4
	coqqJP+aiQ345v9WK7YwEyq9XMyyxS0uu7c5EcQzqP1vIZs3kS8jTXjyxV4Ubj7k
	bsHBQrNaT+KG0J7OCNuIuppv0LsxI2D2PMIWRJ2RTdFIUqxSGrJNX/Km2wlju9jz
	TrhQBgXGaGX4Tcgl/VgWSJdNkhNqZdPDYEnFgCfRDM37dQhQRA2KKW1Ojqg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8y1e5s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:07:57 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c7166a4643so4788785985a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771870077; x=1772474877; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I3U7Vm1CHB5FgP0u4G05ZUf+1Mwffl62vHgDE0f0D1k=;
        b=iSx9yM0/wmYVpKVQFUiUn9iZ3mycjlaBJ6c/INVLTbxmlgMpAdRL1NQoin5IHRV5Mu
         2qLp8/VIFD1bNM+Ia4H7I1KP2FZdJb4brkibx7EwCV/GpiiwmKTygMUC6j/8TBitjmh4
         Ws79M8XRFQdqnLID5Cuvc1qmlNuuDSOq/99kl8Aaf0PIhHkuhHR7dYQv9nrkVLHZ13Bt
         WuW84xnDFb3p9HXmibqqYyX8NUUkw0ZdZv8sIMaBlVbxAwd5pJcbx8x+e2XlkBgRrcAI
         EewBxAXSLt/rUi+T7hT8np50FBPGfDMaWpn3biVbA7evPipBZs3aGNwuuIzg8Nco/Ypm
         wWUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771870077; x=1772474877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=I3U7Vm1CHB5FgP0u4G05ZUf+1Mwffl62vHgDE0f0D1k=;
        b=JPNJ32Gn9+QF1naMm8VdBFwl70k3D5ydy3iNQIArb4nB6L/MNlT/pBVDFnhR/CmeyI
         Ed4a8RQnJr94ft5KidlVfjUtr8123yQIWiacgqgQZE/uyaBzH4nlYQV7KG9qxnN620zk
         EUxfJ1G2vD+99oifNi2tjwaNDi11xG90G+8iWiqPY43K/O5ptSa12Es2LqXfmOXMqzZ1
         CsxVhpnZkUBJ8aOKNNfYVaAELlG2J45NVPZTKbxh1LvQ+NBmK1qquZsgyzTWZi1blnln
         e8oxzHk8Ar1eMhgmSITKfOhVljxofnGeKcMYdVFBiyMbv+sFm0M0/OrUT61hCOZ76bc9
         AUqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnkrt20L1JMdkmFAMErp9P54/dy0elOjJJFPEolqYutPZZIK7iPhCbl1fWZxN/9fB5jh96rCYlW8zc@vger.kernel.org
X-Gm-Message-State: AOJu0Ywyj2wxZE9ew2MB9kkdZ1lFBfAF6stIqGd0twgXKU5M/+unTEmI
	39yLYaqZIbsTL92OkbFBgiIjUC47j+InwiffCZZQARdkNrXStBTJHgzlumXYcptiOvF9jMwjrp3
	A3WsV3uGxC9VXMFy9Ufnr157XF1COlz8A0D2DM3bEwkBZfhQmaQqV4JDHbyAh1/4x
X-Gm-Gg: AZuq6aLkrB/VKymUwgNNkbxYVL3fhXKbLFC6KM2bMEHz1a1BO3E0h+OLv22aNQtKPh2
	UhgbcPjPjusL5bMU1xNYHV0Qvvl7i7JSA3MW/yipNApAAn5YF1P1SUt+7MaIsRTwqiilQDhSrUM
	sZ9EGNfrubSzjjkKhzO4/RmBciZPziU8RZo/iyGdJ6z/s0aNPP4amTWQ40eQdDiI2MrI0CrN56o
	16NekjJSK5oVWt0E98nPDiM/TMHUDOa7OkYtMIAN2zyg16G1bPJy/E/EJfQvgGrjDaw8IHeLK4f
	TryzayBnBeAeIhZU7k2uESgjeeiLBIjmeQTRJ76IXTphhkSynuC+zdpi+LRvJfy5FaoXW35jjoP
	cJHN7T6qUkSl+fn5znVW7cUMzPEZUH5w3Y4bJWwDhB1jMvQdKlxt9zT4=
X-Received: by 2002:a05:620a:319a:b0:8c6:a7c8:de5d with SMTP id af79cd13be357-8cb8ca6e71dmr1179963685a.37.1771870077112;
        Mon, 23 Feb 2026 10:07:57 -0800 (PST)
X-Received: by 2002:a05:620a:319a:b0:8c6:a7c8:de5d with SMTP id af79cd13be357-8cb8ca6e71dmr1179957185a.37.1771870076615;
        Mon, 23 Feb 2026 10:07:56 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d401aasm20458574f8f.23.2026.02.23.10.07.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 10:07:56 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 01/14] ASoC: qcom: q6apm: move component registration to unmanaged version
Date: Mon, 23 Feb 2026 18:07:27 +0000
Message-ID: <20260223180740.444311-2-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260223180740.444311-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260223180740.444311-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE1NiBTYWx0ZWRfX/iwGWZ6LeEwI
 mJ/0vFLjGYg7mevJzxWxVXQPy9uNH32m+ONE+metDUEaOOzmAvhnPeTAI/+8Lf00WaRARmp0Quy
 YcslHQtCgLmroLbqmPjU6imisp+xMVdPGkcDcL7RXoKhF368dHBEyQRflIjVMzuNed8b2geddxq
 Zd2LusE/D2Gba3LePhZbYNJiCH5HMoQAk+qPoi/ifx8AB9+Ss0O2DuO9ytJhCYdaPhZd15cqAE/
 +hcFUuJoh7KknGf96vC1YY+LYF09cdLuMGkn5nvnG4rOdPN0EdEKtHCPOsZtqukhxESwOVadp0u
 Y+227LiDFTXCK2YiaiOgxUw4ZUsrbVkh99ICUXBrUxWr9GiLwOYD0VAWXqNadOAmhdShQAAAnhU
 O5UYehvyQ4asBdQIP5fdTAOhHqzqWOlVb+nvt6YbzrnOgXhzI2e15iiVrscjn9ml5LAKTITpVpX
 c3TFwSdMgaB2CFz9TZw==
X-Authority-Analysis: v=2.4 cv=edYwvrEH c=1 sm=1 tr=0 ts=699c977d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=V_9xLtwMS8rYbOKIGWYA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: Id69ibWYtqpD3jKPeQKXL-vpnl0PH5qP
X-Proofpoint-ORIG-GUID: Id69ibWYtqpD3jKPeQKXL-vpnl0PH5qP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230156
X-Rspamd-Server: lfdr
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
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267581-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D2C2617B41C
X-Rspamd-Action: no action

q6apm component registers dais dynamically from ASoC toplology, which
are allocated using device managed version apis. Allocating both
component and dynamic dais using managed version could lead to incorrect
free ordering, dai will be freed while component still holding references
to it.

Fix this issue by moving component to unmanged version so that the dai pointers
are only freeded after the component is removed.

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
index 1d5edf285793..9891e757165b 100644
--- a/sound/soc/qcom/qdsp6/q6apm.c
+++ b/sound/soc/qcom/qdsp6/q6apm.c
@@ -746,7 +746,7 @@ static int apm_probe(gpr_device_t *gdev)
 
 	q6apm_get_apm_state(apm);
 
-	ret = devm_snd_soc_register_component(dev, &q6apm_audio_component, NULL, 0);
+	ret = snd_soc_register_component(dev, &q6apm_audio_component, NULL, 0);
 	if (ret < 0) {
 		dev_err(dev, "failed to register q6apm: %d\n", ret);
 		return ret;
@@ -755,6 +755,11 @@ static int apm_probe(gpr_device_t *gdev)
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
@@ -819,6 +824,7 @@ MODULE_DEVICE_TABLE(of, apm_device_id);
 
 static gpr_driver_t apm_driver = {
 	.probe = apm_probe,
+	.remove = apm_remove,
 	.gpr_callback = apm_callback,
 	.driver = {
 		.name = "qcom-apm",
-- 
2.47.3


