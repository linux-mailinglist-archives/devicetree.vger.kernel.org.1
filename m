Return-Path: <devicetree+bounces-271032-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJgwIt8uqGlPpQAAu9opvQ
	(envelope-from <devicetree+bounces-271032-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:08:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 041E520011A
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:08:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BFF46305A2DC
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:07:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4FEE283FEF;
	Wed,  4 Mar 2026 13:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AHnOr0z6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ECtHfBj0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3657C279DAF
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629641; cv=none; b=X4SB5/ABVoZAU13hI1DS2Xxqd448hQ0NprnCmaIoczWgeQF4RRr6RX7rQf3ZsZBbL1CXdYlAMTpo7Ns53jYJHcdv8ZNVx1gzBeveoJ90YhpzpNrWUVKU4frcgfw8YD4/dW1VQUjTuN+dhBalYvE2g6lW5USkdW7ErregKP73erk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629641; c=relaxed/simple;
	bh=8xebNSAbJUskVVac7rNorJvuDpnXHbFrlQJGj+Tdu08=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JYXZkCQdaCW+UnSgW+bwQviKqhlUapmguKMhOjXPq0vsulZo/zEpejbUUox3UhCuJH9qVKwJWqIiEl+N9eZD+U6/wOLC7cxi3fmj8FPgha4D3OJC1q+GeDEf97bjaVh1ftRMp5EOAiORrKPyKyjONuANT/20ELGNyTs7JmX1yHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AHnOr0z6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ECtHfBj0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6246D7WS1203235
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 13:07:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=IH7tu4cejEh
	a0Z5gHxKrQArAxI79sxkumwMn24DAosQ=; b=AHnOr0z6zdx6n1osel6oUbvvHOZ
	kHmTWBZw3gAJth1pSpViiFIWmPiASmaSH72QKWjvlCphGlwxvJfBfTQHKGs7abOd
	jpCjvQrWBFT356kQkVymr28lQv1qQC258iyBZoHTVfOhplXVPsVhxdqfYdu+PUwA
	QjRUGlVF97zL+u1A0vRX0T+Dp2wGC/C7ZdaF4Cq83adfeS8djVlW3IRv+NYsgieu
	l1Vl/PPaBnhg24HnaEfXuzdUi7L+jjeH86RyZagWIevfXOplNg3fAY7c+F9G3flJ
	NeDR/mo3CA4kgjwmrSqQKeyHVMcUTOMdBH9B2N9ZjVsgVfID3GLS8LX5x4A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpf9c1a8k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 13:07:19 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cbb8040f48so4776762885a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772629638; x=1773234438; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IH7tu4cejEha0Z5gHxKrQArAxI79sxkumwMn24DAosQ=;
        b=ECtHfBj0Khb8O0VCPzNFz39CokzOp6k5y2OMBUtCOPoQJb2Nkdj3ao8sOsvoh9ymkV
         MZfPMBagbu+5YAlfDaqDwriw7aZJgtfG0ayX2Th/mHShU5xgGo9lm96PFzjX96EMw3A7
         rYSAT/kclZevKNPBZqiSj0ci6J4TXVXKomwsNQjsg8nH0QYgrTOTLTcmhoQmQk7x+JF2
         3Ltct2ex7AKQD8AAwfWU0i7m1xcRSfLAcg+L2bIUjdfdu+NuwoCLWUfflYU87lQqzXDh
         XtLC1YbW/sbM5ja+oskQ6NfSCmRicfPAd2lsjwnVOYYYIBRdtd4gu4hHTyK2mu7WlWn2
         fXfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772629638; x=1773234438;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IH7tu4cejEha0Z5gHxKrQArAxI79sxkumwMn24DAosQ=;
        b=cCeIXs/6TBGLLGUoAcScLTapmv8JjdOje3p1AJuqOm6FhoO6qPf3akdLbbLgkOcQAv
         5xiNq4ACpgj58bun7AvYiuhDjQVdfzhygr9Fa6qZEulf/2u1FHRzXFjS2vsUGA/J7GFh
         AR/1nPzebUxLycqcWJ2TTgyJfXgWAIF1bdQJ3Q/grV5i2EjzSWUcgd8a6H3wDqxH45eV
         yRl8uleWgdhUaxIP+rlPWhwWigROiidcum89ssFLygzztXTJbpj/1lRL97+WOJhmW/W0
         ddESjIC8lLWf8p9iyiIks79z5jocp/z5EJWAAif5YzrhAHsdPNGumpPFVN7BLXo9VoL/
         9E6g==
X-Forwarded-Encrypted: i=1; AJvYcCUhrnS2yELHlX+NZ4B0aYNdabIgIDB6XhtI3V8qxRRoLmy38LNBXwDWSnBzIRGakj22yUeUqLmeEQwh@vger.kernel.org
X-Gm-Message-State: AOJu0Yym5glJmj5atO+f89xQoqg93L60/W4ecA4O79LjpBP/zwL2nasv
	2f33xhrSBfTM3o/GrB6vXd7vOwqO+bljsaJzN6Y6CJQ141gYIbtnWByeTOtR7nZjXpTeee7oB5J
	nMkvnLwS9zl1D/izvSXzp38PCS9s86V9L+HFhPVoPcc/J1x3WGN/RIrdHP8lSjUDK
X-Gm-Gg: ATEYQzyNSp04UnIlzIxwf72FevOXSDMeIO8YFYvxtIvYqJ9mgXv63hUzmCFrTjJlJvk
	GVQDOBt0oifFqrmGzQvhFk5b+QeagB6wUNNyKl7c7H+7zDOsedPwjPciqUGuXZt2WaWQ16RkzHK
	FPBPOWhoNTrirO7Jzd7TZpuJx3cZz7Jji2TsRTreGuz/UIbhN81f6+lgu1w9QmR2eDkHWawiOHJ
	IXpOBuNq+oWnOe2OmLpsZeg2OZEeedsquac4dtPa/rm4S2hTw7654SAnI/qhsKaR0uhRApEl+y+
	bV57f2+z2fCb91Csr2iDWlNTCUj30d7A6zXJdGQYpqYE2ALDhYf1tkdDw2ycec3yrOZRrP8PVGx
	9exIFxQ/kTLbhMjQ4NUWJ/YH+FsapZZgLwaNO3Q6Y7c7o/fa7nvYexz0=
X-Received: by 2002:a05:620a:46aa:b0:8c0:cec4:b6fa with SMTP id af79cd13be357-8cd5afb910bmr232004185a.65.1772629638563;
        Wed, 04 Mar 2026 05:07:18 -0800 (PST)
X-Received: by 2002:a05:620a:46aa:b0:8c0:cec4:b6fa with SMTP id af79cd13be357-8cd5afb910bmr231997285a.65.1772629638068;
        Wed, 04 Mar 2026 05:07:18 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485188122a6sm49969745e9.12.2026.03.04.05.07.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:07:17 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 01/14] ASoC: qcom: q6apm: move component registration to unmanaged version
Date: Wed,  4 Mar 2026 13:06:59 +0000
Message-ID: <20260304130712.222246-2-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260304130712.222246-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260304130712.222246-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEwNSBTYWx0ZWRfX4fc5Kg+p3pZ+
 ETbmm6v8uHmuRqOEmVVHnI3QQKMFv0QfDZKdCkCp4ut2u1r2MA0UHLmR3wIIm0ljLcqV+P2wPbO
 VKvqFlahRgKPP3VvRWX4LL5jVATW/4qYHX2kwBnoEErCbT6WF55sO4CPQAFwnyODPlhtS80Mm2D
 DBnt+8drWy7Q6x250e2yiKZt/I5iUFWtncdvvvj/SoPgJYwzGacLzGQujVBCTqDXqjzJjjV3sl0
 9kXG8sTUhcgPGw9BNZZpKWfWP2IJLjyMY/mvINJddIhBzSkvcGaVTlnA8dUQTSh1WhPEY0PYRxa
 PUV0Mn146gDy9s+1yRLtlCBZYTot/rT5toIA7tv/VDLmqpr4zawTkIfwIHERKdiaKzqcnIUF7sF
 w+bK2qiNNTe7YrL74uAchRq9pSAKPp6LLsclWYQL5zEb2JnhgD/ETtAyOo5W3ZVcMPYZGyOjO4l
 mT98jWhnZ9sHuq16T8A==
X-Proofpoint-GUID: YoA9YdE4qWF9ADeoVeL3NJH0ZfHbnIGE
X-Authority-Analysis: v=2.4 cv=S4LUAYsP c=1 sm=1 tr=0 ts=69a82e87 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=ZjLH_7kMUelE1Q3ziugA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: YoA9YdE4qWF9ADeoVeL3NJH0ZfHbnIGE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040105
X-Rspamd-Queue-Id: 041E520011A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271032-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

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
index 44841fde3856..a4c662be52e0 100644
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


