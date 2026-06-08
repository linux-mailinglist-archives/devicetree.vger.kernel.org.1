Return-Path: <devicetree+bounces-308309-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 979cNtTEJmoikQIAu9opvQ
	(envelope-from <devicetree+bounces-308309-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 15:34:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C9161656AEF
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 15:34:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=W1AME6hA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308309-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308309-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E232730011A8
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 13:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABECB2F363F;
	Mon,  8 Jun 2026 13:34:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4BEC12F585
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 13:34:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780925646; cv=none; b=LqAZfkEHtHxl9l8xIBPRDZJr70oeNctmLUbaWuGPl8aBYy0emv/3JrH0miWye9czB6ItASjT8XrUSRHSjajWg97eSsgG4jeEe+kuDTFLglKQWqOVpQHi6XEtGCKDfcA8iD19lAAsdapyQ1i0azjtV4YqiywCEnTJN1nOaJaPAxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780925646; c=relaxed/simple;
	bh=aq3rO4sD8kIIr1wKYmSG3uQT3t+p1ewEwFE5Vbcx5ug=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VWNdiVI/Q7vJLkINR526RnxrLk2HHGgenlL/utNw1w3E+ypuqwa0aXGVJdNgn9Z+2eNCO6+9hUw0aaQLlmjFVXRzBRZdVt0vPFakFQ3BzUhwdNKs1WF4azOWPCMABxwHVmGwZGjokgrDk39KAzo2KnncXm1mqVEol6qS4saPqBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1AME6hA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDC391F00898;
	Mon,  8 Jun 2026 13:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780925645;
	bh=adLAhVsFaCCM+9+Z6IkwW2VDqZxlvubBJAtkLPDU06w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=W1AME6hAkr+gZbxDYTRHwTlfs+TozoKzPXPT9Z/AuyDHNuZ1khDdGgQT1EuSIQIyB
	 6yR/v1xfIYohx+iiyJt4WHmxlA28LJSiscLN48UQJi57kDzfTJh9KRQP00shC6BXsy
	 TwwUuJMTYEnsAksGzk7OLYymzZiqQFYaNG3aUSkgeIq3fG7skRxszFFP8dvUYqKPVl
	 a97PXV7x+EBaWu2psj4PIQjBJkgW3fL8psxL5K8bRZbvlnrg448U8iGXkN1Nbb5Xx/
	 bUXrX4mePxhSgT/8CcxSRT3Et90dIuIpMZLVUpK84aDFdk9kn4l3tp6n4JdBFR1riX
	 aAH1Je3QL972g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] mtd: rawnand: qcom: Make has_onfi_read_op separate
 from qpic_version2
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stephan Gerhold" <stephan.gerhold@linaro.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260608-qcom-nandc-mdm9607-v1-3-4639a0492274@linaro.org>
References: <20260608-qcom-nandc-mdm9607-v1-3-4639a0492274@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 13:34:04 +0000
Message-Id: <20260608133404.EDC391F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308309-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stephan.gerhold@linaro.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,linaro.org:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C9161656AEF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Hardware initialization for `NAND_DEV_CMD_VLD` is incorrectly skip=
ped for QPIC v1.5 controllers, potentially breaking all standard NAND opera=
tions.
--

commit 246019a946e357d7d6d6cced97c09e17d7879610
Author: Stephan Gerhold <stephan.gerhold@linaro.org>

mtd: rawnand: qcom: Make has_onfi_read_op separate from qpic_version2

This commit splits the OP_PAGE_READ_ONFI_READ support into a separate
has_onfi_read_op flag. This allows QPIC v1.5 controllers to utilize the
command without needing to enable all QPIC v2 hardware assumptions.

> diff --git a/drivers/mtd/nand/raw/qcom_nandc.c b/drivers/mtd/nand/raw/qco=
m_nandc.c
> index 0251dd591d40a..9217e8de55129 100644
> --- a/drivers/mtd/nand/raw/qcom_nandc.c
> +++ b/drivers/mtd/nand/raw/qcom_nandc.c
[ ... ]
> @@ -2041,7 +2041,7 @@ static int qcom_nandc_setup(struct qcom_nand_contro=
ller *nandc)
>  	if (!nandc->props->nandc_part_of_qpic)
>  		nandc_write(nandc, SFLASHC_BURST_CFG, 0);
> =20
> -	if (!nandc->props->qpic_version2)
> +	if (!nandc->props->has_onfi_read_op)

[Severity: High]
Will this skip the initialization of NAND_DEV_CMD_VLD for QPIC v1.5
controllers?

Since a QPIC v1.5 controller has has_onfi_read_op set to true but
qpic_version2 set to false, replacing the qpic_version2 check here means
the initialization will be bypassed.

Could this regression leave the hardware register in an undefined state and
prevent the controller from recognizing standard read, write, and erase
command start bits?

>  		nandc_write(nandc, dev_cmd_reg_addr(nandc, NAND_DEV_CMD_VLD),
>  			    NAND_DEV_CMD_VLD_VAL);
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608-qcom-nandc=
-mdm9607-v1-0-4639a0492274@linaro.org?part=3D3

