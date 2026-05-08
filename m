Return-Path: <devicetree+bounces-294712-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AG9VDjNc/mkWpgAAu9opvQ
	(envelope-from <devicetree+bounces-294712-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 23:57:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BFE4FC17F
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 23:57:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C718303660C
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 21:56:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08B7A329E6A;
	Fri,  8 May 2026 21:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTnhAhzZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA754313E1D
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 21:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778277400; cv=none; b=ZLjRAH5Vjc7dMAEHlJTqlkVwSJkDCd8O8ARNiSb+pEb+nqz+4Nq/5Sl1BnhACxI74ZQsiYo0LMzYgbDvPdD1iZPYnhQeukG9ZQblscMRzQVeuBuSKaDhK6Js6Wv4lu8dFoiOmxrDGFO2rvZhhgcfvFLxCuhdrWwLro5eEB9wJXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778277400; c=relaxed/simple;
	bh=+Hn21cp8ADEJheEB17IHRZh6QBV+LgSTADCuSryUUZY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QqO2Yv3nnUje8fdIUiisynanow7EeJU2ZfEJQs+6D/Ksg+lXKiWHgEbI/NqWVp7npx+3K4m/3IeRfheI7kkrZeUCPwKn2wKtUl0Sy3pXi38r5ziKdLt8StdAXRzezQGgOHNIaCj8yNFGnvCQgvhgD4CS5jdp4L9RGM/2bd/5zFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTnhAhzZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5ED64C2BCF4;
	Fri,  8 May 2026 21:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778277400;
	bh=+Hn21cp8ADEJheEB17IHRZh6QBV+LgSTADCuSryUUZY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=LTnhAhzZgqD8fuYnh8i/T2h4bphpmL36gB9zQrbeL+qvQAqPzCw82Wx1pUCR/b3Vw
	 Fuh1H16/BIEAEOZ19Ng7wYXfNrvJwH4chzKnry5CtqCd27Rp3MJ6lrE9HDJyH4AxWL
	 TJo0gZjE6f8xZ/G5P9MNLGvw7uDOliZkBsnFJPFwkmz87umeNksl0tZpmZNAcehyg0
	 64PGxiRrng5/VM6Hhxe46mWV/89fkNcRU6R2RHtGQg7C3bV7cOuklj2vl4RxWnNZwW
	 2rpOj+5w8dm9dOUhF00NziEvJjZc4UNtCrJzTvUvJSH4X3x9pdjNzeqA07dRIPf5Sj
	 kZTJiySlMCZnA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 5/5] media: qcom: camss: vfe: Add support for VFE
 gen4
Reply-To: sashiko@lists.linux.dev
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260508-kaanapali-camss-v13-5-2541d8e55651@oss.qualcomm.com>
References: <20260508-kaanapali-camss-v13-5-2541d8e55651@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 21:56:39 +0000
Message-Id: <20260508215640.5ED64C2BCF4@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 92BFE4FC17F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294712-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Hardware constraint violation due to AUP_UPDATE and enqueued buffe=
r count mismatch on Kaanapali.
--

commit d8f6f74712ec57882b1ea04201952757c549300f
Author: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

media: qcom: camss: vfe: Add support for VFE gen4

Add Video Front End (VFE) version gen4 as found on the Kaanapali SoC.

> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/medi=
a/platform/qcom/camss/camss-vfe.c
> index 5baf0e3d4bc46..99630ffa1db57 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c

[ ... ]

> @@ -551,7 +553,9 @@ int vfe_enable_output_v2(struct vfe_line *line)
>  		output->gen2.active_num++;
>  		ops->vfe_wm_update(vfe, output->wm_idx[0],
>  				   output->buf[i]->addr[0], line);
> -		ops->reg_update(vfe, line->id);
> +
> +		if (!vfe->res->reg_update_after_csid_config)
> +			ops->reg_update(vfe, line->id);
>  	}
> =20
>  	spin_unlock_irqrestore(&vfe->output_lock, flags);

Does this implementation violate the Kaanapali hardware constraint regarding
AUP_UPDATE and enqueued buffer count?

The commit message explicitly states that Kaanapali hardware requires the
number of AUP_UPDATE commands to exactly match the number of buffers enqueu=
ed
to the write master while it is being enabled.

During STREAMON, VFE dynamically enqueues between 0 and 2 pending buffers
(up to CAMSS_INIT_BUF_COUNT) depending on what userspace has queued. It
skips issuing the VFE register update here because
reg_update_after_csid_config is true.

However, csid_configure_stream() in the CSID driver executes and
unconditionally issues exactly 2 AUP_UPDATEs via a hardcoded loop
(for (k =3D 0; k < CAMSS_INIT_BUF_COUNT; k++) __csid_aup_update()), complet=
ely
ignoring the actual active_num of buffers the VFE enqueued.

Furthermore, if userspace queued fewer than 2 buffers before STREAMON and
queues the remaining buffers later via VIDIOC_QBUF, vfe_queue_buffer_v2()
sees active_num < 2 and unconditionally issues an additional ops->reg_updat=
e()
per buffer.

For example, if userspace queues 0 buffers initially, CSID blindly issues
2 AUP_UPDATEs. When 2 buffers are subsequently queued via QBUF,
vfe_queue_buffer_v2() issues 2 more, resulting in 4 AUP_UPDATEs for 2 buffe=
rs.

Could this mismatch between AUP_UPDATEs and enqueued buffers cause
desynchronization in the state machine, FIFO underflows, or IOMMU faults?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260508-kaanapali-=
camss-v13-0-2541d8e55651@oss.qualcomm.com?part=3D5

