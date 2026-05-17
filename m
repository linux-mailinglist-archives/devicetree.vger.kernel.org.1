Return-Path: <devicetree+bounces-298918-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AfgcE2TBCWppoQQAu9opvQ
	(envelope-from <devicetree+bounces-298918-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 15:23:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4329356130B
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 15:23:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A49E030013AE
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 13:23:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9498353EE0;
	Sun, 17 May 2026 13:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbBMDaBe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5BA72FFDCB
	for <devicetree@vger.kernel.org>; Sun, 17 May 2026 13:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779024220; cv=none; b=PCFOUQz3BW81LD5LBpY68O+H2+nno15sEwG4hA0Gl8aANWzvEHgH6qnsSZuDWFA+1rIaLW/7B+FofXiJ9k9GKISUQPusPlj93T9BIprl/NhNkxKMmJwsVbFoTIkTriiO7rREW5V78Ac6y93066YVZMZbXlz4ToX9b6xrektT53w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779024220; c=relaxed/simple;
	bh=GHbYEEMXwbFNBawIkU43ib9dtneNNhmzSkmmc61/aAQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YnNipNBbV1Sr/iwcm8GtIPoCKXYUeRsF4mPN+7UlKXwX7CBBUGPLDa1/Jg5nUDYFCfHQUG1S2ZY07DTFlFW6v7MxsPLNb+WzTx/vv467+lNuGkTNyC9Sqie5w8UIjt+ThpruxD5jRzz8DemDyfoPOAaZ84qa3tF+z8tL4BBVxqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbBMDaBe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 602F2C2BCB0;
	Sun, 17 May 2026 13:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779024220;
	bh=GHbYEEMXwbFNBawIkU43ib9dtneNNhmzSkmmc61/aAQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=qbBMDaBeyKkSGbJQsNL8QWaGoFDAoTephAAM2QYIfylJQbPWSBFJKCG54glNKXTT3
	 aJslAjOrb3RT2l6b58IMDGNpGLDhDZ8r3hZTt6f6javSgjUk7x8CxerlWdL6HXVXpI
	 T6oqYnlx855WYgSBLgNqg7WMN+zT+xvqZLwh7muqVBi0b3tRt6M7qSzus0yKovsptR
	 68EhggPtnCwx/QE/eiLd04Q83XHg7hUEpfWdtKKwLOfk3Jnmb1wa9fNt31RYw+fhDV
	 UNS5/HHBxlCnK4ZmaZ4tRdKuCd9nOPC1JVsk7wFA4LhlxXr2XQxtbaXIMOiCdA+kK+
	 QSiDpz91R4fOg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: arm: qcom: document the Ayaneo
 Pocket DS
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alexandre Hamamdjian via B4 Relay" <devnull+azkali.limited.gmail.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260517-pocketds-v3-1-d5910c801756@gmail.com>
References: <20260517-pocketds-v3-1-d5910c801756@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 May 2026 13:23:39 +0000
Message-Id: <20260517132340.602F2C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 4329356130B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298918-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,azkali.limited.gmail.com,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The compatible string 'ayaneo,pocketds' violates Devicetree naming =
conventions by omitting a hyphen between words.
--

commit afa187f3006436f1b9cb60821ba5f70e1c3ff499
Author: Alexandre Hamamdjian <azkali.limited@gmail.com>

dt-bindings: arm: qcom: document the Ayaneo Pocket DS

This commit adds device tree binding documentation for the Ayaneo Pocket DS
gaming console, based on the Qualcomm QCS8550 platform.

> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentat=
ion/devicetree/bindings/arm/qcom.yaml
> index 2741c07e9f416..f130a6b092b95 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
[ ... ]
> @@ -1107,6 +1107,12 @@ properties:
>            - const: qcom,qcs8550
>            - const: qcom,sm8550
> =20
> +      - items:
> +          - enum:
> +              - ayaneo,pocketds

This isn't a bug, but there is a missing hyphen in the compatible string.

Should this be ayaneo,pocket-ds instead? The commit message refers to the
device as the Ayaneo Pocket DS, and the sibling entry for the Ayaneo Pocket=
 S2
uses the hyphenated form ayaneo,pocket-s2.

A check of subsequent patches in the series confirms the string remains
uncorrected.

> +          - const: qcom,qcs8550
> +          - const: qcom,sm8550
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260517-pocketds-v=
3-0-d5910c801756@gmail.com?part=3D1

