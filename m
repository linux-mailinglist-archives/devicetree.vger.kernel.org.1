Return-Path: <devicetree+bounces-304796-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CC6HKTm2G2pVFgkAu9opvQ
	(envelope-from <devicetree+bounces-304796-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 06:16:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0429A6146BF
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 06:16:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D5743007F5C
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 04:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91AC42F8EAD;
	Sun, 31 May 2026 04:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4PBCy9a"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 866E61A9F85
	for <devicetree@vger.kernel.org>; Sun, 31 May 2026 04:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780200901; cv=none; b=WaZWvdMn6+lFi/LV7YqekHTabqNJfp35BR02jk8IyemWmHVUqcCsSOLlg5XOQSGI1pB20MzW5ToTfsT+jrmPF6m917igfTCZGzhYe2u6ScQ1MZRytEHeP2BhsousMwXKO6ZOcO4vqM9tDc6w6zrPQDgotFIhYP8O9Xbat5F93P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780200901; c=relaxed/simple;
	bh=1MAPuYBi5353YpeyVfEzYVJNh6ND1irpbylJmrCbmzM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YO+cxTi/0Ws1GG1WC/cZ5wbeZP2StwvuyDpf9L8WpHEkuRxJiMwFjHP4+dKTTs4L1R6Cvhvsi+dNSsfaTmmeTZxQupLyzBj6u0wboGVTIHJATTPREjszlLO+17LLBmnsALgueIru2DhHV1giNdxPKa9GsTkokZusU+C/uSx15qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4PBCy9a; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E307F1F00893;
	Sun, 31 May 2026 04:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780200900;
	bh=08zKcESHJgwpQ2cbXSGCxWuc9hDQ68ANxMzU3oA2JGo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=a4PBCy9a4LUaldYg8ZQ386IGIFQlATy194BJrCEaCsP/vH2RLyY9nV1NWzGuym4nO
	 TZIINcpduayb2aLpUDhi1qw1/KvBmQ4ZrJ0egw+zB8UPmi7a08HjJPQT7iJz3k/ldp
	 Xf6/HQcvVizTmuZKvbxjeOHaT/VATeI9AraEgku6ubeZ+GGtnU0TrwBKfh416De1Sl
	 XoyPuBlwI3LHfhpKIHJ3Hb5rOLiVeh6iwp3U39kf+IcE+tkSQQoo8UClHSRRG2T3E6
	 89eGlKKOnJm/UJ/cqGQ6VtnGwxJKRgn3YGmNISWjzoGXtCwiOI+Hx3u3Y6ClOYFkxh
	 bnbCeldTN+KKA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: qcom,lcc: add MSM8x60 family
 compatibles
Reply-To: sashiko-reviews@lists.linux.dev
To: "Herman van Hazendonk" <github.com@herrie.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <44986bb00724bd127e95651a8cc54fd018430c96.1780197511.git.github.com@herrie.org>
References: <44986bb00724bd127e95651a8cc54fd018430c96.1780197511.git.github.com@herrie.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 04:14:59 +0000
Message-Id: <20260531041459.E307F1F00893@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304796-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[herrie.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 0429A6146BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing overarching schema updates in `qcom-soc.yaml` for legacy-fo=
rmatted compatible strings.
--

commit 5610427121060301089bb1b2b018a18be452795c
Author: Herman van Hazendonk <github.com@herrie.org>

dt-bindings: clock: qcom,lcc: add MSM8x60 family compatibles

This patch adds MSM8x60 family compatibles to the qcom,lcc dt-bindings sche=
ma.
It includes them in the main enum and the existing parent-clock-name
conditional block that already covers apq8064 and msm8960.

> diff --git a/Documentation/devicetree/bindings/clock/qcom,lcc.yaml b/Docu=
mentation/devicetree/bindings/clock/qcom,lcc.yaml
> index 55985e562a34f..bbdad157f03fe 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,lcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,lcc.yaml
> @@ -12,9 +12,12 @@ maintainers:
>  properties:
>    compatible:
>      enum:
> +      - qcom,lcc-apq8060
>        - qcom,lcc-apq8064
>        - qcom,lcc-ipq8064
>        - qcom,lcc-mdm9615
> +      - qcom,lcc-msm8260
> +      - qcom,lcc-msm8660
>        - qcom,lcc-msm8960

[Severity: Low]
Does Documentation/devicetree/bindings/arm/qcom-soc.yaml also need to be
updated to include these new compatibles?

Because these new compatibles use the legacy qcom,<ip>-<soc> format, they
fail the preferred pattern validation in qcom-soc.yaml. Usually, legacy
formatted strings are whitelisted in the overarching qcom-soc.yaml schema
under properties/compatible/oneOf/enum, where qcom,lcc-msm8960 and others
currently reside:

Documentation/devicetree/bindings/arm/qcom-soc.yaml:
      - enum:
          - qcom,dsi-ctrl-6g-qcm2290
          - qcom,gpucc-sdm630
          - qcom,gpucc-sdm660
          - qcom,lcc-apq8064
          - qcom,lcc-ipq8064
          - qcom,lcc-mdm9615
          - qcom,lcc-msm8960

Will omitting them from this whitelist cause dtbs_check validation to fail
when evaluating board device trees?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1780197511.gi=
t.github.com@herrie.org?part=3D1

