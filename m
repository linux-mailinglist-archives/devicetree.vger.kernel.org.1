Return-Path: <devicetree+bounces-300063-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFguKBtKDGrjdQUAu9opvQ
	(envelope-from <devicetree+bounces-300063-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 13:31:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D2557DA77
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 13:31:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 74BAC3044CB8
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 11:16:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CFE93FADE2;
	Tue, 19 May 2026 11:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJDZdQ9Z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E263002BB
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 11:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779189387; cv=none; b=q7qQvn71QJAIUauWz/gVZEeq3j0qtMFb4Au/9O0IpXLenfH8Aweawwu6FS7QWu2+XhH+dv3HTWfBiabAYPptvKbT3WlLFhU5uw5rpZwHdf8VEot20Os7RBVLuhpggnWAoKQfdh0e9gVZ1/DY1cXKQE1jxCWdI10PmN8M2hDMU/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779189387; c=relaxed/simple;
	bh=7wnMQYnrcxRUBR/8vF910vMtrwLbi+8r8gwkW4AnWjc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=T6tQ8tTpL733FEUE+rQmsulFwco1dU9uk6atRbwdpt5eecKzL3afF9Mb/3p+kk9jPbL8pwUYNCrMjQaHBv0AoiejCSxAJq7ee147eubT+UnHhVP45bMDTyXvswgWKvnPYUkMlOKil+7Y92cc0LIFUYYw7bBYm4Tdm0sRvfu08T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJDZdQ9Z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8A98C2BCB3;
	Tue, 19 May 2026 11:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779189386;
	bh=7wnMQYnrcxRUBR/8vF910vMtrwLbi+8r8gwkW4AnWjc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=jJDZdQ9ZHZP+s/D4nF2PsQ4g//VaOdaCKMPyAa3Svui5/xjtOyG6oSeMMVACX/ucC
	 DTkt4DMm1bOLaCka2k53HW/o8VviV0Xg87c12o9uyFXoRNgeCqftTsXkCieZ9BGQAF
	 i1wGO9j9zOc1raJMoz3Gpgnm5rdZYHP7IT4lDJ6WJg9lzgefLoJi8HKinE7ff1q/RX
	 36LMV6xOUvisEqVxJvPzwv5vCaNo29rlEcbj4xt0/8hQXnKk86MtgdjOPaie591xsS
	 QDcnzPvMbJ4D3Lw3yeaj2QwrsUNjmI7bh6o590BGWJksoGgiQY7b34o/cBGxgSjalZ
	 lnwbwFlrioQTQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/6] usb: typec: tcpm: qcom: prefer VBUS supply from the
 connector node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260519-fix-tcpm-vbus-v1-2-14754695282d@oss.qualcomm.com>
References: <20260519-fix-tcpm-vbus-v1-2-14754695282d@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 11:16:26 +0000
Message-Id: <20260519111626.A8A98C2BCB3@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300063-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: A3D2557DA77
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The fwnode_handle reference acquired via device_get_named_child_=
node() for the 'connector' node is never released, causing a memory and ref=
erence count leak.
--

commit 41b7b2878f5810dff29da5bdf47dafca44618828
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

usb: typec: tcpm: qcom: prefer VBUS supply from the connector node

This commit updates the VBUS supply retrieval to first try fetching it from
the "connector" child node before falling back to the "vdd-vbus" property on
the device node.

> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c b/drivers=
/usb/typec/tcpm/qcom/qcom_pmic_typec_port.c
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

device_get_named_child_node() returns a fwnode_handle with an incremented
reference count.

Does this code leak the connector node reference by never calling
fwnode_handle_put(connector) after getting the regulator or returning an
error?

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
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-fix-tcpm-v=
bus-v1-0-14754695282d@oss.qualcomm.com?part=3D2

