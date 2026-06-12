Return-Path: <devicetree+bounces-310845-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aCpEF4nUK2qsFwQAu9opvQ
	(envelope-from <devicetree+bounces-310845-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:42:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BABAB678673
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:42:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XkaEZCoP;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310845-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310845-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 53E1C3062D7C
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39FD9369203;
	Fri, 12 Jun 2026 09:41:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C362D238A
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 09:41:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781257268; cv=none; b=kM++Ib+sYuR8UaV/2EWA0GZ1yQBKe4unupuBi3pfIR2joBFmRQjitTI2fxndS7cUjyBDdYhXgX+gzy/n5Zz4ugE16cd46aOtj6kp9y3hqnzRMbc2dx6NdZqU1ZMTJSLQzxM84f3GCo+q70fKHkpi1JEa9olhg0hFlygdSJjRy3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781257268; c=relaxed/simple;
	bh=YuSoNcILbhvOckq9qwb9Wyp7iZXLW1ZLvmBlVP85sR4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=up9GOG0qppcn1tovnNciCHIGNzAB6wbxpfq7pyrgOVBtGzWonMrhsLaEJ54Hxv8SmTqs/wI5Zziy4a+wGDHmOfprYWmN41EZWOUCdtpu/1MqA9zwdp+XSGY1aBtJNmwmz+6cB6XvOKNZu886+3OOCoakIZSVi8hpR+ziIgcSUTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkaEZCoP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7704A1F000E9;
	Fri, 12 Jun 2026 09:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781257265;
	bh=TEDifnsXW4hmkc3P2yl+J8y1khySwqJ5bRLUFvoIikk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XkaEZCoPmUpNCxsqZZ6ZizOeglUP7gTcnVh5sf1bIiLSgV52F9QAY/hWszsohNn51
	 bsjCKMlhwA9maBh6qU27r9FA6ZpC3bK9Yn+ApBYX4MD9xoHs5sh1kfP0PKGGIHZ2Hw
	 pzaO1hr9ROWE4ertGp6tir2A7uiD/mxAZ9JDd6OL7kj8oCkmpb6RxKR/HFddm5FkRw
	 eGjQYCScVRhkcNBdSt174pJO6a68CZWBucG29z6pB+NsFO0AI0mqP4j88GKf35t0Lw
	 g4l6fzsN1h56G2gJj0+lQ7gBT36DltshXF+RVDTMkJsQcXa2sMmDqZ//xJNujoJkw2
	 No/SUOuAV0/2A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 06/16] media: iris: Add platform data field for
 watchdog interrupt mask
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260612-iris-ar50lt-v4-6-0abfb74d5b3c@oss.qualcomm.com>
References: <20260612-iris-ar50lt-v4-6-0abfb74d5b3c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 09:41:05 +0000
Message-Id: <20260612094105.7704A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310845-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,qualcomm.com:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BABAB678673

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The newly introduced `wd_intr_mask` field is not initialized for t=
he `x1p42100_data` platform, causing it to default to 0 and completely brea=
king watchdog interrupt handling for this platform.
--

commit 0965d657e0a8904cc63b8cbd790144e332d59492
Author: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

media: iris: Add platform data field for watchdog interrupt mask

This commit introduces the wd_intr_mask platform data field to capture the
watchdog interrupt bitmask per platform. It also replaces hardcoded
watchdog bitmasks with this new field during interrupt handling.

> diff --git a/drivers/media/platform/qcom/iris/iris_platform_vpu3x.c b/dri=
vers/media/platform/qcom/iris/iris_platform_vpu3x.c
> index 2c63adbc55791..aeffd96a4e1cb 100644
> --- a/drivers/media/platform/qcom/iris/iris_platform_vpu3x.c
> +++ b/drivers/media/platform/qcom/iris/iris_platform_vpu3x.c

[ ... ]

> @@ -208,6 +213,7 @@ const struct iris_platform_data sm8750_data =3D {
>  	.tz_cp_config_data =3D tz_cp_config_vpu3,
>  	.tz_cp_config_data_size =3D ARRAY_SIZE(tz_cp_config_vpu3),
>  	.num_vpp_pipe =3D 4,
> +	.wd_intr_mask =3D WRAPPER_INTR_STATUS_A2HWD_BMSK,
>  	.max_session_count =3D 16,
>  	.max_core_mbpf =3D NUM_MBS_8K * 2,
>  	.max_core_mbps =3D ((7680 * 4320) / 256) * 60,

[Severity: High]
Does this patch miss updating x1p42100_data?

It appears x1p42100_data is defined further down in this file but does not
have its wd_intr_mask initialized in this commit.

> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.c b/drivers=
/media/platform/qcom/iris/iris_vpu_common.c
> index 375bcd9234766..41498f94480e8 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu_common.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_common.c
> @@ -109,11 +109,11 @@ void iris_vpu_raise_interrupt(struct iris_core *cor=
e)
> =20
>  void iris_vpu_clear_interrupt(struct iris_core *core)
>  {
> +	u32 wd_intr_mask =3D core->iris_platform_data->wd_intr_mask;
>  	u32 intr_status, mask;
> =20
>  	intr_status =3D readl(core->reg_base + WRAPPER_INTR_STATUS);
> -	mask =3D (WRAPPER_INTR_STATUS_A2H_BMSK |
> -		WRAPPER_INTR_STATUS_A2HWD_BMSK |
> +	mask =3D (WRAPPER_INTR_STATUS_A2H_BMSK | wd_intr_mask |
>  		CTRL_INIT_IDLE_MSG_BMSK);
> =20
>  	if (intr_status & mask)

[Severity: High]
Since x1p42100_data is a static global variable, its uninitialized
wd_intr_mask will default to 0.

Will this cause the watchdog interrupt bit to be omitted from this mask,
preventing watchdog interrupts from being captured into core->intr_status
for the x1p42100 platform?

> @@ -124,7 +124,9 @@ void iris_vpu_clear_interrupt(struct iris_core *core)
> =20
>  int iris_vpu_watchdog(struct iris_core *core, u32 intr_status)
>  {
> -	if (intr_status & WRAPPER_INTR_STATUS_A2HWD_BMSK) {
> +	u32 wd_intr_mask =3D core->iris_platform_data->wd_intr_mask;
> +
> +	if (intr_status & wd_intr_mask) {
>  		dev_err(core->dev, "received watchdog interrupt\n");
>  		return -ETIME;
>  	}

[Severity: High]
Similarly, will this cause intr_status & wd_intr_mask to always evaluate
to 0 for x1p42100, silently dropping all watchdog timeouts and breaking
firmware hang recovery?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-iris-ar50l=
t-v4-0-0abfb74d5b3c@oss.qualcomm.com?part=3D6

