Return-Path: <devicetree+bounces-300135-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNtwFttgDGpXggUAu9opvQ
	(envelope-from <devicetree+bounces-300135-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 15:08:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 515CD57F4F8
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 15:08:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2B83F31036B5
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 13:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D96FB4DB562;
	Tue, 19 May 2026 13:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZJ3Ptis"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B66F64E3781
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 13:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779195649; cv=none; b=c0VOf5HJrwJ8TbftPGstnV2GrUi0vFLMo5LMF1s2U0/JE4D8JK1gEhtjTvk4JZWwfl4CH1JNXDYMsOBS1ADRJ1nYChTGYqYSvQCZjlMJeOq9zyDfSyA1MlRoRA9owQkISYKT+WUTExAEgDXGzrpnX018Ay0uLcIKcB+ZXuB9nN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779195649; c=relaxed/simple;
	bh=Raw2ewHcCFzji/tAL24qeJBQwxbYxe1N9SanMEHHpF4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dbPp7pOadsPuo9kmN5sEJza6xcEHswQS50u8hBJLHO9oA782Y8WN5XLDBElcG2JNAP+RGGAZXdkzm/ZKxyE0daQFwTaxAvgrKd9kmV3UCrHLCkHQBVMSU52092WRtAJ+DnunlbpFvBw2xkvoBKeb7jLtHe2WWxqfcbKINU93CiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZJ3Ptis; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A16F9C2BCB3;
	Tue, 19 May 2026 13:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779195648;
	bh=Raw2ewHcCFzji/tAL24qeJBQwxbYxe1N9SanMEHHpF4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=iZJ3PtisrYleKH05Rybb/81KryYJT7zV/3V+tjxeyvl8HOg6oSA1roXofxUTcUXJr
	 w2PGfLne4Lwso1F5/8zmCSK5ZE11PyE2syUCtn9k83ljg0CoMKYM7DF+FG8ncftlvl
	 /6BhzS//Gs8qHx0/j6QmZlZ4k7Gim5U9Hdw2fWOaArBNSuFGqWafOkGAXg1fAMh6CW
	 ExKFc9BbnXYimtbkNLjUnk4e6iFbknO37OsN/WAWqsuox5xJ9hDvpxEPNSeYmIgVEz
	 0sqpytxWno8tFmShL4f8pS7ukKum7RIYeQa0h07bxsHdiKADL6l9HZgANcn6AYOj/f
	 cmo5IbDbJqOdw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/6] arm64: dts: qcom: pm8150b: move vdd-vbus-supply to
 connector nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260519-fix-tcpm-vbus-v1-5-14754695282d@oss.qualcomm.com>
References: <20260519-fix-tcpm-vbus-v1-5-14754695282d@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 13:00:47 +0000
Message-Id: <20260519130048.A16F9C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300135-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 515CD57F4F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Resource leak of fwnode reference in Type-C driver probe.
--

commit 41b7b2878f5810dff29da5bdf47dafca44618828
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

usb: typec: tcpm: qcom: prefer VBUS supply from the connector node

This commit modifies the PMIC Type-C port driver to look for the VBUS
supply in the connector node rather than the main device node. It falls
back to the old vdd-vbus property if the connector node does not specify it.

> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c b/drivers=
/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c
> index 8051eaa469913..429bd42a0e628 100644
> --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c
> +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c

[ ... ]

> @@ -720,7 +722,15 @@ int qcom_pmic_typec_port_probe(struct platform_devic=
e *pdev,
> =20
>  	mutex_init(&pmic_typec_port->vbus_lock);
> =20
> -	pmic_typec_port->vdd_vbus =3D devm_regulator_get(dev, "vdd-vbus");
> +	connector =3D device_get_named_child_node(dev, "connector");
> +	if (!connector)
> +		return -EINVAL;
> +
> +	pmic_typec_port->vdd_vbus =3D devm_of_regulator_get_optional(dev,
> +								   to_of_node(connector),
> +								   "vbus");
> +	if (pmic_typec_port->vdd_vbus =3D=3D ERR_PTR(-ENODEV))
> +		pmic_typec_port->vdd_vbus =3D devm_regulator_get(dev, "vdd-vbus");
>  	if (IS_ERR(pmic_typec_port->vdd_vbus))
>  		return PTR_ERR(pmic_typec_port->vdd_vbus);

device_get_named_child_node() returns a node with its reference count
incremented. Does this code leak the fwnode reference by missing a call to
fwnode_handle_put(connector) on both the error paths and the success path?

For example, when the regulator fetch fails, the function returns directly
without dropping the reference:

    if (IS_ERR(pmic_typec_port->vdd_vbus))
        return PTR_ERR(pmic_typec_port->vdd_vbus);

Could a call to fwnode_handle_put(connector) be added to ensure the
reference is properly released?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-fix-tcpm-v=
bus-v1-0-14754695282d@oss.qualcomm.com?part=3D5

