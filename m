Return-Path: <devicetree+bounces-273568-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KKvLMEnsGnYgQIAu9opvQ
	(envelope-from <devicetree+bounces-273568-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:16:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CBD2519FD
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:16:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ED5353157105
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:50:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5567B38AC8F;
	Tue, 10 Mar 2026 13:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uh39Cdgu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3214C1F418F
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773150635; cv=none; b=uQ9Lylf2VYcyXfr9O7Mu4AvthvrppgmMigit2y0awFPtQMRjn6/kGnC39EgrV5x2txHysshS0JBuZ95MvgksDbSazrtmvwtDrTMB7rgKgNFfXHLLh7Wabd30FS9vXhibCg+9z7o30PsvDUP6FRE626kPfc54j2NFHJjKVjtaHBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773150635; c=relaxed/simple;
	bh=rdUiPy2+hha7jKHz5R0tb6oJs3+2mZ0mZsIaAo22UjU=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WxQpX5dR5mfj2IY//kumxxHz79Bz+0362KtXQ00yOoUpywgVvjovpwXDqHHBvilxX/e+rHAKyUD6N4ZDeo5d0Jt79a37pp8KIrxEG/P1k8g1AK6UORujGD7vhpuF85/B4bqctkrv97a2Ygcj/dVIjQmdU2UzFU7203XHYkcx5Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uh39Cdgu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0994CC2BCB6
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773150635;
	bh=rdUiPy2+hha7jKHz5R0tb6oJs3+2mZ0mZsIaAo22UjU=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc:From;
	b=Uh39CdguVSNmdfMEk4hjkoVGqvRgP+iTWzU6OUfJPgHt8AOZaoeD87Z1xIwIUCb1w
	 SKRWjzzOUzMmkP2tGj4mDD1yf+UORrJVbMw9UpneM1aY7Uy2qwLwqlmBkNWDuRFQ0S
	 jDN6UIDd16c30Du5Kx3sjA7Puw3LhmQWsNPlN8U7tq7sTdZ78obDS5PgXdd4+AStKw
	 /rZ7BJL372XSxcLtBPNAzS4v4OHYTM6zQG6O99y3Vm19x0Z1VInaG8RLhFeYYmq9k+
	 PzBlisQZxVS4o6HPwjrJb+cA0rO6bHh3WiTyRpIjMcQYS5dER1IsJD2zPNTPT1fKfp
	 79tSjFqeUqpbQ==
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5a12c310e8aso5993975e87.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:50:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUNV9ZUOMyF1lXETDIh1IVUAcQDvYlKYq5KEeChVvnw3GPrBFxpVLCWAbnA6f75Wiaq8s/gJICz1NSu@vger.kernel.org
X-Gm-Message-State: AOJu0YzP1OZfxeDjjkNVdu+N/9JpdoIy/wwMv1pKSes5CqegGKILCKhn
	c0TQhvN8O3gHOPynnc4bIisxgFtx4yPyb5U1RO8raHjbW7Hc9op4KJYv88lQjOSluA5XMN3IBvj
	A/rTTfBZUKIF+OEtEt/yzoYhm18oRGc76Ep2HrCJ5bA==
X-Received: by 2002:a05:6512:32ca:b0:5a1:2efb:917f with SMTP id
 2adb3069b0e04-5a13caae6ccmr4333373e87.4.1773150633351; Tue, 10 Mar 2026
 06:50:33 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 10 Mar 2026 06:50:30 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 10 Mar 2026 06:50:30 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260310-knp-soccp-v4-5-0a91575e0e7e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com> <20260310-knp-soccp-v4-5-0a91575e0e7e@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 06:50:30 -0700
X-Gmail-Original-Message-ID: <CAMRc=MedT32COu-B_TsrN+jCrHjde2v5gnA6WOUmMQ2dEBY6WQ@mail.gmail.com>
X-Gm-Features: AaiRm51ARcqlsmU2wIb7NleLQsLhCnonv2nK6lkxB23KnfmtQ9OYSi2lSUj0KNE
Message-ID: <CAMRc=MedT32COu-B_TsrN+jCrHjde2v5gnA6WOUmMQ2dEBY6WQ@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] remoteproc: core: set recovery_disabled when doing rproc_add()
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com, 
	trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com, 
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Luca Weiss <luca.weiss@fairphone.com>, 
	Bartosz Golaszewski <brgl@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 58CBD2519FD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273568-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, 10 Mar 2026 11:03:21 +0100, Jingyi Wang
<jingyi.wang@oss.qualcomm.com> said:
> rproc_add() called by rproc probe function failure will tear down all
> the resources including do device_del() and remove subdev etc. If
> rproc_report_crash() is called in this path, the rproc_crash_handler_work
> could be excuted asynchronously, rproc_boot_recovery()->rproc_stop() will
> be called with recovery enabled, which may cause NULL pointer dereference
> if the resource has already been cleaned up.
>
> [    5.251483] Unable to handle kernel NULL pointer dereference at virtual address 0000000000000300
> [    5.260499] Mem abort info:
> [    5.263384]   ESR = 0x0000000096000006
> [    5.267248]   EC = 0x25: DABT (current EL), IL = 32 bits
> [    5.272711]   SET = 0, FnV = 0
> [    5.275865]   EA = 0, S1PTW = 0
> [    5.279106]   FSC = 0x06: level 2 translation fault
> [    5.284125] Data abort info:
> [    5.287101]   ISV = 0, ISS = 0x00000006, ISS2 = 0x00000000
> [    5.292742]   CM = 0, WnR = 0, TnD = 0, TagAccess = 0
> [    5.297939]   GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
> [    5.303400] user pgtable: 4k pages, 48-bit VAs, pgdp=000000089e086000
> [    5.310022] [0000000000000300] pgd=080000089e087403, p4d=080000089e087403, pud=080000089e088403, pmd=0000000000000000
> [    5.320917] Internal error: Oops: 0000000096000006 [#1]  SMP
> [    5.392494] Hardware name: Qualcomm Technologies, Inc. Kaanapali QRD (DT)
> [    5.399466] Workqueue: rproc_recovery_wq rproc_crash_handler_work
> [    5.405729] pstate: 23400005 (nzCv daif +PAN -UAO +TCO +DIT -SSBS BTYPE=--)
> [    5.412879] pc : qcom_glink_smem_unregister+0x14/0x48 [qcom_glink_smem]
> [    5.419674] lr : glink_subdev_stop+0x1c/0x30 [qcom_common]
> [    5.425308] sp : ffff800080ffbc90
> [    5.428724] x29: ffff800080ffbc90 x28: ffff00081be833f0 x27: ffff000800059c00
> [    5.436053] x26: 0000000000000000 x25: ffff000800a56f80 x24: 61c8864680b583eb
> [    5.443384] x23: ffff00081be83038 x22: 0000000000000001 x21: ffff00081be83000
> [    5.450714] x20: ffff00081be833c0 x19: 0000000000000000 x18: 0000000000000010
> [    5.458043] x17: 0000000000000000 x16: 0000000000000000 x15: ffff0008042684f8
> [    5.465374] x14: 00000000000002dd x13: ffff0008042684f8 x12: ffffd37f69f967a0
> [    5.472705] x11: ffffd37f6a006800 x10: ffffd37f69fee7c0 x9 : ffffd37f69fee818
> [    5.480036] x8 : 0000000000017fe8 x7 : c0000000ffffefff x6 : 0000000000000001
> [    5.487366] x5 : ffff000d6536d408 x4 : 0000000000000001 x3 : 0000000000000000
> [    5.494697] x2 : ffffd37f5703c18c x1 : 0000000000000001 x0 : 0000000000000000
> [    5.502028] Call trace:
> [    5.504549]  qcom_glink_smem_unregister+0x14/0x48 [qcom_glink_smem] (P)
> [    5.511344]  glink_subdev_stop+0x1c/0x30 [qcom_common]
> [    5.516622]  rproc_stop+0x58/0x17c
> [    5.520127]  rproc_trigger_recovery+0xb0/0x150
> [    5.524693]  rproc_crash_handler_work+0xa4/0xc4
> [    5.529346]  process_scheduled_works+0x18c/0x2d8
> [    5.534092]  worker_thread+0x144/0x280
> [    5.537952]  kthread+0x124/0x138
> [    5.541280]  ret_from_fork+0x10/0x20
> [    5.544965] Code: a9be7bfd 910003fd a90153f3 aa0003f3 (b9430000)
> [    5.551224] ---[ end trace 0000000000000000 ]---
>
> So set recovery_disabled during rproc_add().
>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/remoteproc/remoteproc_core.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index b087ed21858a..f66dde712cec 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -2286,7 +2286,10 @@ int rproc_add(struct rproc *rproc)
>  {
>  	struct device *dev = &rproc->dev;
>  	int ret;
> +	bool rproc_recovery_save;
>
> +	rproc_recovery_save  = rproc->recovery_disabled;
> +	rproc->recovery_disabled = true;
>  	ret = rproc_validate(rproc);
>  	if (ret < 0)
>  		return ret;
> @@ -2319,6 +2322,7 @@ int rproc_add(struct rproc *rproc)
>  	list_add_rcu(&rproc->node, &rproc_list);
>  	mutex_unlock(&rproc_list_mutex);
>
> +	rproc->recovery_disabled = rproc_recovery_save;
>  	return 0;
>
>  rproc_remove_dev:
>
> --
> 2.25.1
>
>

Ideally things like this would be passed to the rproc core in some kind of a
config structure and only set when registration succeeds. This looks to me
like papering over the real issue and I think it's still racy as there's no
true synchronization.

Wouldn't it be better to take rproc->lock for the entire duration of
rproc_add()? It's already initialized in rproc_alloc().

Bart

