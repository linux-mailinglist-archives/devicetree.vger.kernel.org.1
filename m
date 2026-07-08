Return-Path: <devicetree+bounces-322783-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gmjUMdo7TmrNJQIAu9opvQ
	(envelope-from <devicetree+bounces-322783-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 14:00:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A00572618D
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 14:00:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OPEuMR7P;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322783-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-322783-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C90A5300E028
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 12:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88678438FFB;
	Wed,  8 Jul 2026 12:00:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E85D43847B
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 12:00:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783512024; cv=none; b=fboVIHwJo7uRo5qdr9/wn/YlRhs5CZ+gCxG6VRsm9aFEBTVQth1hu5cVJp4YfgLhpppWGv5IMoRKOWPYTz6ig+Q5Ecgg+QArHF8cOsmlObjIgHCoNHJoTLzXbBDRKTGDAfRhIDbE3eZtXjvkVdK2ffiWGZlYHJJZcbJgKajMlb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783512024; c=relaxed/simple;
	bh=xbVBrUqAtb7iAXIw3bV67j3K2U/EyBVoWT/ZVk/4fu0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Dwxz3GDtIx54DuUxSOUhX1NEW4CF7PeE3vL6TbW2tAcRnqSt8GiF3gO1Hj8lZr4/87bsGVYytFs2UOwYPKtTUgWpV+dZ3V9Fp0Uail1hM/RTgqA+EPe2HJ8mTI+c6NEiumRbNJI2xv01MU2PdkqKmqEcOmgNPbmRsczFjPgt440=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPEuMR7P; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 963171F00A3A;
	Wed,  8 Jul 2026 12:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783512022;
	bh=Pz9AiJkbaB2Vg+WpeBbn003bDC5vi6kizfsx+9UGdgE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OPEuMR7PYdEG0c0nJuuSiBvK8b3uBtlWQSqMtnrWqXElYtqYQBCJ0FG/oQTNY8n1g
	 1KXAKR4Ahi/Hrne9+UB7DfNYZoghXZClNjhE4rqtGsXyOcobBzQUBhfBdRPHLrjZi6
	 NKmTHBp1Z/XvFIH2/6tXHP6rsiEu6iJ1blonT09Lp0fEkmaIxruh1bTcgS5Ylk8MdI
	 n+SwRNi6tpFAt6b+zeSeW4sRFPNyp0u1EK9Uegd/psQVr/Gh7+oFHYiv5rst/WTiFw
	 TpR1QLbmbypjMEVGCdGlQOtjd9QTC72Q8LNF9x/may8iii1kaiPUFqFsmctWfg28t3
	 fJ6WM7mzfaMuA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 1/4] ASoC: dt-bindings: qcom: add LPASS LPR vote
 clock ID
Reply-To: sashiko-reviews@lists.linux.dev
To: "Prasad Kumpatla" <prasad.kumpatla@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260708114924.1069239-2-prasad.kumpatla@oss.qualcomm.com>
References: <20260708114924.1069239-1-prasad.kumpatla@oss.qualcomm.com>
 <20260708114924.1069239-2-prasad.kumpatla@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 12:00:22 +0000
Message-Id: <20260708120022.963171F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322783-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:prasad.kumpatla@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A00572618D

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The newly added clock ID LPASS_HW_LPR_VOTE is missing from the q6p=
rm clock driver.
- [High] Q6DSP_MAX_CLK_ID is hardcoded to 104 in the driver, rejecting look=
ups for the new clock ID.
--

--- Patch [1]: [PATCH v1 1/4] ASoC: dt-bindings: qcom: add LPASS LPR vote c=
lock ID ---
commit fe14afabf9a256155105b2b26aa6c17a00fb25dd
Author: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>

ASoC: dt-bindings: qcom: add LPASS LPR vote clock ID

Add a new clock ID, LPASS_HW_LPR_VOTE, to represent the LPASS low-power
resource (LPR) vote through the PRM interface. Also update Q6AFE_MAX_CLK_ID
to account for the newly added clock ID. This allows clients to explicitly
manage LPR resource voting via PRM.

> diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include=
/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
> index 45850f2d43425..06ca2c287ab2f 100644
> --- a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
> +++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
> @@ -236,8 +236,9 @@
>  #define LPASS_HW_AVTIMER_VOTE		101
>  #define LPASS_HW_MACRO_VOTE		102
>  #define LPASS_HW_DCODEC_VOTE		103
> +#define LPASS_HW_LPR_VOTE		104

[Severity: High]
Is the corresponding driver implementation missing for this new clock ID?

Looking at the clock provider in sound/soc/qcom/qdsp6/q6prm-clocks.c, the
q6prm_clks array doesn't appear to have an entry for LPASS_HW_LPR_VOTE,
which means the clock would never be registered when a client device attemp=
ts
to request it.

[Severity: High]
Will the hardcoded limit in the driver reject lookups for this new ID?

In sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c, Q6DSP_MAX_CLK_ID is hardcoded
to 104. When a client device requests the new clock ID 104, it looks like it
would be rejected here:

sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c:q6dsp_of_clk_hw_get() {
    ...
    if (idx >=3D Q6DSP_MAX_CLK_ID || attr > LPASS_CLK_ATTRIBUTE_COUPLE_DIVI=
SOR) {
        ...
        return ERR_PTR(-EINVAL);
    }
    ...
}

Could this result in -EINVAL being returned instead of the expected clock?

Also, if the clock is later added to the initialization array without updat=
ing
the Q6DSP_MAX_CLK_ID macro, is there a risk of an out-of-bounds write during
driver initialization since the array size remains 104?

> =20
> -#define Q6AFE_MAX_CLK_ID			104
> +#define Q6AFE_MAX_CLK_ID			105
> =20
>  #define LPASS_CLK_ATTRIBUTE_INVALID		0x0
>  #define LPASS_CLK_ATTRIBUTE_COUPLE_NO		0x1

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708114924.1069=
239-1-prasad.kumpatla@oss.qualcomm.com?part=3D1

