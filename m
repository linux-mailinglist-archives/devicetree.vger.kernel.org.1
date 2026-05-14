Return-Path: <devicetree+bounces-297805-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOnBKQkuBmpsfwIAu9opvQ
	(envelope-from <devicetree+bounces-297805-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 22:18:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AE3546AFB
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 22:18:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CEB1A3015455
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 20:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 554133914FA;
	Thu, 14 May 2026 20:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wv4eVXqr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CC838BF72
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 20:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778789894; cv=none; b=EqgGPr8t7ye1f/PKLKDwmO9tBX2UR332b8Ozt8AEs2PWKicXaKjJ9Xfo1c32gvWAGOmZNZnHqdpjezJaI24NG58yKRcE64hnwEq2u5ISBfIBzMCArrYUEcg+iKKxl3uSHOz8+TbUjBlrf/mDfrvCtOZmAyWNTc9Retw9H71ALs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778789894; c=relaxed/simple;
	bh=eeG9fQkvwPjJRL5JSBJO5rD/9qhQX1xIiE7dWKBbyuk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FZAu3itUveDFns31xder7F7kt6AbgwLT7VseyWHsnxZ4ssUmjXfq48jFaNdUtKDg0MOpUn2Uy6p/iuPWbp4uAkMOIlDicL6A/4XrF2V3GjTWHj1HSTXYB8Ovy3yOmV+x7AthZBS5qgZpitrRaXZB6BiGN3BD6oB6kK+LyYSsWyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wv4eVXqr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AFDAC2BCB3;
	Thu, 14 May 2026 20:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778789893;
	bh=eeG9fQkvwPjJRL5JSBJO5rD/9qhQX1xIiE7dWKBbyuk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Wv4eVXqrUcF11C7IRJ35NwjPwE7G7y8u5A77IRO1nidG0gl07QF4s7utddKFeoVlq
	 f3nX/RpcM83Yp/QPyrKD5izBqGOOAZb+cgp0glOAgvl2EWTWIUTle0g/18RnZ9bu6C
	 wyFeElHDF+kupMwmaNmoLtWu3ByAiL7dOTuMuMJrIzeHFUfwxroOOiJKRKSfjxYCa3
	 pFPr1bNMXEVLBEFE7swRU5EtkermBMvrxuLb9JCFB8wI2v8mwvU7fx6vVvZRdW7C8W
	 gAWbk/kqubhuaawKxqKQVr/bhz2TKreg6NPltAT2Cvz5PqFaRmkkt2sTEJ7ywtWRoM
	 zQ/8jp2DMt09w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: eliza-mtp: Enable USB and ADSP
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Abel Vesa" <abel.vesa@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260514-eliza-adsp-usb-v5-3-a21056ffd892@oss.qualcomm.com>
References: <20260514-eliza-adsp-usb-v5-3-a21056ffd892@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 20:18:13 +0000
Message-Id: <20260514201813.9AFDAC2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 08AE3546AFB
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297805-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The compatible string 'qcom,eliza-pmic-glink' is used in the device=
 tree but is not documented in the YAML bindings.
--

commit b9c08b3ae54cc2b9b02f4c789a987a560f3a9531
Author: Abel Vesa <abel.vesa@oss.qualcomm.com>

arm64: dts: qcom: eliza-mtp: Enable USB and ADSP support

This commit enables USB and ADSP support for the Eliza MTP by describing the
USB Type-C port and eUSB2 repeater. It also enables the USB controller, PHY=
s,
and the ADSP remoteproc.

> diff --git a/arch/arm64/boot/dts/qcom/eliza-mtp.dts b/arch/arm64/boot/dts=
/qcom/eliza-mtp.dts
> index 90f629800cb02..3e41c95edb28f 100644
> --- a/arch/arm64/boot/dts/qcom/eliza-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/eliza-mtp.dts

[ ... ]

> @@ -54,6 +57,44 @@ bi_tcxo_ao_div2: bi-tcxo-ao-div2-clk {
>  		};
>  	};
> =20
> +	pmic-glink {
> +		compatible =3D "qcom,eliza-pmic-glink",
> +			     "qcom,sm8550-pmic-glink",
> +			     "qcom,pmic-glink";

Is the "qcom,eliza-pmic-glink" compatible string documented in the YAML
bindings?

It appears to be missing from the
Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml schema.
Will this cause validation to fail when running dtbs_check?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514-eliza-adsp=
-usb-v5-0-a21056ffd892@oss.qualcomm.com?part=3D3

