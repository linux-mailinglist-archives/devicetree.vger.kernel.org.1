Return-Path: <devicetree+bounces-299824-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGScGnMRDGoZVQUAu9opvQ
	(envelope-from <devicetree+bounces-299824-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:29:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 080DE5791B1
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:29:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DB93E30071D7
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 07:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 085A83D5646;
	Tue, 19 May 2026 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlPMtkkN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C633D47DD
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 07:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779175792; cv=none; b=YzK9FDbqiitWn90SC5az5pxHwaQ+Th2MrrjYxP+UGdyYFCGIrco4YRQ0Oq3mSL5jrBvLDuNa1QJr0JlzHW7ju7mc4JXZOP4LHPaxs++Lq4idCIM5rXTMZOTvnDM/13FxqVKqdAIV11dF4iF4ASueInXB+Bivpl8qX+dSKIUybPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779175792; c=relaxed/simple;
	bh=UGz4AvthywiYNS7BdM6rlow/WdWL+KB3KfY+IB0Z/b4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hcyhLFIII4JGudOV4yBGtsRrXEZCmVv3zEISqdpNqcqVEX/9PA4CQVcg093vNzSVbdVqNxm/C1O2Sq0AVSWxA0YBs9nMcBkp28dFL1LYIXOvBIUKE0xGrE6qaNQSwQP5DwYVOzVaYL8QtYqZKEURBez+j/k8d4irAQUMi56Uzbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlPMtkkN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55F9AC2BCB3;
	Tue, 19 May 2026 07:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779175792;
	bh=UGz4AvthywiYNS7BdM6rlow/WdWL+KB3KfY+IB0Z/b4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=AlPMtkkN+3peo0jma+EQGHHLRnHgtXY9xG4VJoj5IT1SRfK3rHMRCQVRzl5FAyIkF
	 UXgsDYPrl3M2WeK1TYnnGDLwBAt/aJTC7NI/z+3WMN1jm650M/Q8HZP64o76BtuVHM
	 lkjOMvmHooXuA8v1pG/4shCRdWFW2qV7DBx/qj+0yxNS5CP4kfKplhVtZvNaGrZ2dd
	 UZVlTr0yffdaG7OZ9Jl+OEZrlTQ9nF6B2srvkSZ3thmkXXhnje6ywwYBQLCPkOR3wq
	 pdv7CTX+ndtNSDksvexMAVlXYEHmS6WNFnOc6i9TTbEfTZmQZ1Sxbp8xPwf3ra65+p
	 PIs0YUE9HEAcw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sm8750: Add camss node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260519-pakala-camera-v1-1-b6d897864916@oss.qualcomm.com>
References: <20260519-pakala-camera-v1-1-b6d897864916@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 07:29:51 +0000
Message-Id: <20260519072952.55F9AC2BCB3@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-299824-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,qualcomm.com:email,ad27000:email,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 080DE5791B1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The patch introduces the `qcom,sm8750-camss` compatible string with=
out a corresponding dt-bindings schema update.
--

commit bdba0f08239906fe3e720590f288dff966c590cb
Author: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

arm64: dts: qcom: sm8750: Add camss node

This commit adds the camera subsystem node for the SM8750 SoC.

> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/q=
com/sm8750.dtsi
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
[ ... ]
> +		camss: isp@ad27000 {
> +			compatible =3D "qcom,sm8750-camss";

This isn't a bug, but is there a corresponding dt-bindings schema update
for this new compatible string included in this series?

Adding a new compatible string to a device tree node without updating the
YAML binding schemas in Documentation/devicetree/bindings/ will cause
schema validation to fail during dtbs_check.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-pakala-cam=
era-v1-0-b6d897864916@oss.qualcomm.com?part=3D1

