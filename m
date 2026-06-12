Return-Path: <devicetree+bounces-310865-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /zSgN6jeK2rjGgQAu9opvQ
	(envelope-from <devicetree+bounces-310865-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 12:25:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A374678ABD
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 12:25:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kTAUlofp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310865-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310865-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E3C26311E16B
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 10:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E6C8339844;
	Fri, 12 Jun 2026 10:25:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECA83630AE
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 10:25:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781259942; cv=none; b=ksPkcgnJtJVZ8DzEwXW8qH6BERcSN3F8YeQvhC43GQ7eOxVmsdt5yGAwfImnAm0OulqfLgokq0YBeoBoGpZCjMdsi00rQJGY2jb79MBa5mJ/qjXHrltVP71OXSNR1XlDYEgdKe3sUDS7KQznjDTVBE0wYF7md2k7XIEXfkIELqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781259942; c=relaxed/simple;
	bh=85FC6IsjWuimQExtFovXR5Nw80u2LQdOQ4vOZMKJYtk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lcBtW2yzn2KoSc6mbJCp4TfRxv3LIiyB/jhsi1B3RIdXcY9hZAG6XKQS8ZASnv7QM2EOufYo8/O2O5TEVgD6aX8QOVWcLjAX7KtmqGr0jAqas7ggrnVykCoFvFfyNCYs62+pQ30XeAltzudJTy4l7kviVdnzp2VEIEPDlc1uH7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTAUlofp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C8421F000E9;
	Fri, 12 Jun 2026 10:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781259940;
	bh=Wg/NLzF2e4nTHENR3fme8tQL/0fOLDiitKp0Uhqep50=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kTAUlofp7iHRAKCJV2I8REvRgrJv53dCHe0uDwrHQHJJkJ9MJEqb2f9cCHIYSyLPN
	 1N7fTEKlYA3ds7C5k5nIYNAGNh7bwK4URZ5DWlOvpEb3xi0qoSKdXnlo4gUEkrl3HL
	 2ZPBiBhISssmUEs8Zim3uXz7iKuFCUV5fqj/bwlc/7IznUN7v72xjDPNNMzszOtwqU
	 KWD/BweSw8Q6NiqLwz6xUS7FtxVmiXQ5QH+QRLSEeAzb9KrOXTO8+zImcRdHOem3TX
	 KO380iCnxp5qi48/s+2A2WRdhs2YtXPYZ1MnUjQuY5XGXOlBbL8/Q+EG/CPpRH/pyZ
	 FK9CHns2ExZCw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 12/16] media: iris: implement support for the Agatti
 platform
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260612-iris-ar50lt-v4-12-0abfb74d5b3c@oss.qualcomm.com>
References: <20260612-iris-ar50lt-v4-12-0abfb74d5b3c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 10:25:40 +0000
Message-Id: <20260612102540.7C8421F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-310865-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,qualcomm.com:email,smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A374678ABD

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Calling a synchronous HFI command from the ISR response thread cau=
ses a deadlock.
--

commit 960bbe7059755e03232b477bd06562c01b126fdd
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

media: iris: implement support for the Agatti platform

Port support for the AR50Lt video codec core (present for example on the
Agatti platform) to the Iris driver. Unlike more recent cores this
generation doesn't have the PIPE property (as it always has only one
pipe). Also, unlike newer platforms, buffer sizes are requested from the
firmware instead of being calculated by the driver.

> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_buffer.c b/drivers=
/media/platform/qcom/iris/iris_vpu_buffer.c
> index fb6f1016415e2..4a39b8fef52b0 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu_buffer.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_buffer.c
> @@ -2194,6 +2194,19 @@ u32 iris_vpu4x_buf_size(struct iris_inst *inst, en=
um iris_buffer_type buffer_typ
>  	return size;
>  }
> =20
> +u32 iris_vpu_ar50lt_gen1_buf_size(struct iris_inst *inst, enum iris_buff=
er_type buffer_type)
> +{
> +	const struct iris_hfi_session_ops *hfi_ops =3D inst->hfi_session_ops;
> +	int ret;
> +
> +	/* return 0 on error to let the driver cope */
> +	ret =3D hfi_ops->session_get_property(inst, HFI_PROPERTY_CONFIG_BUFFER_=
REQUIREMENTS);

[Severity: High]
Could this lead to a regression by waiting for a response in the response
handler thread?

When iris_vpu_ar50lt_gen1_buf_size() calls hfi_ops->session_get_property(),
it synchronously blocks until the firmware responds:

drivers/media/platform/qcom/iris/iris_hfi_gen1_command.c:iris_hfi_gen1_sess=
ion_get_property() {
    ...
    return iris_wait_for_session_response(inst, false);
}

However, iris_vpu_ar50lt_gen1_buf_size() (via iris_get_buffer_size()) is
invoked from iris_hfi_gen1_read_changed_params() during event processing:

drivers/media/platform/qcom/iris/iris_hfi_gen1_response.c:iris_hfi_gen1_rea=
d_changed_params() {
    ...
    pixmp_op->plane_fmt[0].sizeimage =3D iris_get_buffer_size(inst, BUF_OUT=
PUT);
    ...
}

This event processing runs inside the driver's response handler:

drivers/media/platform/qcom/iris/iris_hfi_gen1_response.c:iris_hfi_gen1_res=
ponse_handler() {
    ...
        iris_hfi_gen1_handle_response(core, core->response_packet);
    ...
}

If the response handler thread blocks itself waiting for a response, how wi=
ll
that response ever be dequeued and processed? It appears this will stall the
response polling loop until the wait times out.

> +	if (ret)
> +		return 0;
> +
> +	return inst->buffers[buffer_type].size;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-iris-ar50l=
t-v4-0-0abfb74d5b3c@oss.qualcomm.com?part=3D12

