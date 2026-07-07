Return-Path: <devicetree+bounces-322406-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ezb9FkuDTWre1QEAu9opvQ
	(envelope-from <devicetree+bounces-322406-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 00:52:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA40D7204D5
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 00:52:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SNfmp+P6;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322406-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322406-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 453623009526
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 22:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7671A331EC7;
	Tue,  7 Jul 2026 22:50:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7A03451C6
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 22:50:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783464635; cv=none; b=joRVS5ay/LdMTHu3EQwNn1wvJoCl9thcPV33BY7drBvB1JWEnUqLUX4bAg9zd2a6GOe2F0IidlOGduasnJzOzU47vxu4hox1bVj2EmEYIUYndmNTrMcwDZW97MkOfQxUoYNReXuISFIajt6pbOevmqDzjrOnrfCe6N3AslFil7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783464635; c=relaxed/simple;
	bh=kENAZxGNgk7SJbSMfHIV0pZnZqdpfXjsm7sdNIKsaKw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EKggDl6latiDH+WmO/vbgzxhy9Qvnt0WNvg7DPPsSVi/IZOQOuNaE1Yb8R87ajA7LubG3LkierU7Q7XfVeNMY7ZhMjkgxpt585ylzL7E6DGNge52TREkTj+gYZK12nY6yNKPSBEKcjJeAdQ63THr6onGfZK+T1mRIl+bj76Qcko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNfmp+P6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E5741F000E9;
	Tue,  7 Jul 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783464633;
	bh=weAhUDjT0/bjVLL+5t/KQPpvr52n2ffoyMow7i+WqII=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SNfmp+P6DYouz68AfiFT4G++65u56qazDkFe78xGNnFPKNBIjKpTfl05g45OxPsjh
	 vx5w1mPrmOEX6M6TTHY7ohEY5Ztup+iRJALzU7uDkElagybTmWBLJxFaRLz2iKxQNy
	 LvqAIrpbJQKVgTE8Y78isjzbffTQTuDpeJBtzVtdP2sFXiFtrGRC7G5tn9NUyh1QYO
	 esOl26zGcF5kfCPeMlD7WWBb/HJ6wrhAsp8sqiYovufHLKq7cGRnVfRv4/hJoA5WWB
	 zIYBSw/S0H9xf7RyhE1tw91kEXtcDdMZj4b6mFPoo/XChK/jYK2/yvcniXi0ZZx7fS
	 6MxO0lu7cFUVg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 15/18] media: iris: Introduce buffer size
 calculations for AR50LT
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260708-iris-ar50lt-v6-15-374f0a46c23b@oss.qualcomm.com>
References: <20260708-iris-ar50lt-v6-0-374f0a46c23b@oss.qualcomm.com>
 <20260708-iris-ar50lt-v6-15-374f0a46c23b@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 22:50:33 +0000
Message-Id: <20260707225033.9E5741F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322406-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AA40D7204D5

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] VP9 AR50LT line buffer calculation is missing size_vpxd_lb_fe_top_=
ctrl, size_vpxd_lb_recon_dma_metadata_wr, and size_vp9d_qp.
- [High] Missing SIZE_SEI_USERDATA allocation in hfi_buffer_persist_h264d_a=
r50lt.
--

--- Patch [15]: [PATCH v6 15/18] media: iris: Introduce buffer size calcula=
tions for AR50LT ---
commit 21a2756943f587f0146e1fc640977667f461e12f
Author: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

media: iris: Introduce buffer size calculations for AR50LT

This commit introduces AR50LT buffer size calculations for both the encoder
and decoder. It reuses the buffer size calculations which are common, while
adding the AR50LT specific ones separately.

> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_buffer.c b/drivers=
/media/platform/qcom/iris/iris_vpu_buffer.c
> index 511502d4ea6c3..00dbb091c54ef 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu_buffer.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_buffer.c
[ ... ]
> @@ -230,6 +328,11 @@ static u32 hfi_buffer_persist_h264d(void)
>  		    DMA_ALIGNMENT);
>  }
> =20
> +static u32 hfi_buffer_persist_h264d_ar50lt(void)
> +{
> +	return ALIGN((SIZE_SLIST_BUF_H264 * NUM_SLIST_BUF_H264), DMA_ALIGNMENT);
> +}
> +

[Severity: High]
Does this code omit the NUM_HW_PIC_BUF * SIZE_SEI_USERDATA allocation?

The original hfi_buffer_persist_h264d() includes this allocation for SEI
metadata, and the HEVC equivalent for AR50LT retains it as well.

Could omitting this cause the firmware to write out of bounds when parsing
H.264 bitstreams with SEI messages?

[ ... ]
> @@ -492,6 +689,17 @@ u32 hfi_iris3_vp9d_lb_size(u32 frame_width, u32 fram=
e_height, u32 num_vpp_pipes)
>  		ALIGN(size_vp9d_qp(frame_width, frame_height), DMA_ALIGNMENT);
>  }
> =20
> +static inline
> +u32 hfi_buffer_line_vp9d_ar50lt(u32 frame_width, u32 frame_height, u32 _=
yuv_bufcount_min)
> +{
> +	return ALIGN(size_vpxd_lb_fe_left_ctrl(frame_width, frame_height), DMA_=
ALIGNMENT) +
> +		ALIGN(size_vpxd_lb_se_left_ctrl_ar50lt(frame_width, frame_height), DMA=
_ALIGNMENT) +
> +		ALIGN(size_vp9d_lb_vsp_top(frame_width, frame_height), DMA_ALIGNMENT) +
> +		ALIGN(size_vpxd_lb_se_top_ctrl(frame_width, frame_height), DMA_ALIGNME=
NT) +
> +		ALIGN(size_vp9d_lb_pe_top_data(frame_width, frame_height), DMA_ALIGNME=
NT) +
> +		ALIGN(size_vp9d_lb_fe_top_data(frame_width, frame_height), DMA_ALIGNME=
NT);
> +}
> +

[Severity: High]
Is this calculation missing size_vpxd_lb_fe_top_ctrl(),
size_vpxd_lb_recon_dma_metadata_wr(), and size_vp9d_qp()?

These sizes were included in the previous generation's VP9 line buffer
calculation in hfi_iris3_vp9d_lb_size(). The AR50LT versions for H.264
and HEVC also retain their direct equivalents.

Could omitting them result in an undersized DMA allocation, leading to memo=
ry
corruption when the firmware writes past the end of the line buffer?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-iris-ar50l=
t-v6-0-374f0a46c23b@oss.qualcomm.com?part=3D15

