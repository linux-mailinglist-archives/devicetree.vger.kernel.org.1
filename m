Return-Path: <devicetree+bounces-322408-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YbFIAUOETWoo1gEAu9opvQ
	(envelope-from <devicetree+bounces-322408-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 00:57:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A63720515
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 00:57:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mk9wDPup;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322408-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322408-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9B1D300AB05
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 22:57:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB9A12874E6;
	Tue,  7 Jul 2026 22:57:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A45E918C008
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 22:57:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783465023; cv=none; b=WyuFXpNVlR5X99hgF9DBfzJwUKoh1B6jftTB2At7ylM2Ic8irSZrdQy1g3nKT23nLjO/N/OK41AhFGlhAUtVd3btKttVGJI5zOHQ8ZyBiCD6mpylkPPwa4rUzmvRkOl/wtAgzJ9vfHALxy0+QtvX5+7XcngczoxkNjn/A+QKd2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783465023; c=relaxed/simple;
	bh=3bc3U/8MyqlTN1faTdJBd/V7/8V/mITI6oCC1SYEKAw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HksQWc19QI3v3dypHuT/B43OU7ra0xyt6TIh5asuprAQWZ64dkPmEzUiNVXE4EqqVw3/Yib0TC2VvbDkxU1XhpCD0fDtsrX+MJmIYPF78nE2q+9bURdM3CBry4jM0Kq9XrJJEoGmXzt850vOYK2l+ALwXG0xR0/0e/6SB0WuUDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mk9wDPup; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 113C91F000E9;
	Tue,  7 Jul 2026 22:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783465022;
	bh=BKB0DMr+3TjAh7LQ+dtk/LcZq56u+ENQYrcIxYMkhQo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mk9wDPupLB2gvJoIoqQiopsbXokmIKj7JojtU5ULdNe0MJiMHaDKswozySKI41glG
	 CtQpEdK9Wd0QONxJThnW2vSGhuJ4ADibzkl769dh5sEmCouREHJ4E7bbO9FBqMXebf
	 msDQw3ifiuCi0NB6boW6Y9211UHC57tsaT5lCEpU0hWyhsZB9YOgyp3efloFNtyJNx
	 hpy683RvggCHCHX+gJYuev2IJNlEE6o2hXuSUuhD9rur+1aENc7q51H3/jCCjM/k6h
	 jpXTUlPXlJVX6/pWgNRYGzxXo/EJ0Fnz9EddIZAJ4FRCGx+EcDNmDcEKUUUc825fnY
	 ruw8h9L4zIIYA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 10/18] media: iris: skip PIPE if it is not supported
 by the platform
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260708-iris-ar50lt-v6-10-374f0a46c23b@oss.qualcomm.com>
References: <20260708-iris-ar50lt-v6-0-374f0a46c23b@oss.qualcomm.com>
 <20260708-iris-ar50lt-v6-10-374f0a46c23b@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 22:57:01 +0000
Message-Id: <20260707225702.113C91F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-322408-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 40A63720515

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [Critical] Omitting the PIPE capability from capability tables leaves `fw=
_caps[PIPE].value` initialized to 0, which triggers a division by zero in V=
PU3x/4x frequency calculation.
--

--- Patch [10]: [PATCH v6 10/18] media: iris: skip PIPE if it is not suppor=
ted by the platform ---
commit edfcba3c56c71e16ef96daa3fb5e261b5fb5ef8c
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

media: iris: skip PIPE if it is not supported by the platform

This commit allows iris_set_pipe() to silently skip programming the
property if the platform does not support it and omits it from the
capability tables.

> diff --git a/drivers/media/platform/qcom/iris/iris_ctrls.c b/drivers/medi=
a/platform/qcom/iris/iris_ctrls.c
> index 10e33b8a73f60..33a34573391a4 100644
> --- a/drivers/media/platform/qcom/iris/iris_ctrls.c
> +++ b/drivers/media/platform/qcom/iris/iris_ctrls.c
> @@ -534,6 +534,9 @@ int iris_set_pipe(struct iris_inst *inst, enum platfo=
rm_inst_fw_cap_type cap_id)
>  	u32 work_route =3D inst->fw_caps[PIPE].value;
>  	u32 hfi_id =3D inst->fw_caps[cap_id].hfi_id;
> =20
> +	if (!hfi_id)
> +		return 0;

[Severity: Critical]
This is a pre-existing issue, but permitting the PIPE capability to be
omitted seems to expose a division by zero elsewhere in the driver.

If a platform does not support the PIPE capability and omits it from the
capability table, won't inst->fw_caps[PIPE].value remain initialized to 0?

Looking at iris_session_init_caps(), the fallback that sets a default value
for PIPE is inside a loop that only iterates over present capabilities, so
it is skipped when PIPE is omitted:

drivers/media/platform/qcom/iris/iris_ctrls.c:iris_session_init_caps() {
    ...
    for (i =3D 0; i < core->inst_fw_caps_dec_size; i++) {
        cap_id =3D core->inst_fw_caps_dec[i].cap_id;
        ...
        if (cap_id =3D=3D PIPE) {
            core->inst_fw_caps_dec[cap_id].value =3D
                core->iris_platform_data->num_vpp_pipe;
        ...
}

If inst->fw_caps[PIPE].value is 0, won't this cause a divide-by-zero panic
when calculating the VPU frequency?

drivers/media/platform/qcom/iris/iris_vpu_common.c:iris_vpu3x_vpu4x_calcula=
te_frequency() {
    ...
    vpp_cycles =3D mult_frac(mbs_per_second, caps->mb_cycles_vpp,
                           (u32)inst->fw_caps[PIPE].value);
    ...
}

> +
>  	return hfi_ops->session_set_property(inst, hfi_id,
>  					     HFI_HOST_FLAGS_NONE,
>  					     iris_get_port_info(inst, cap_id),

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-iris-ar50l=
t-v6-0-374f0a46c23b@oss.qualcomm.com?part=3D10

