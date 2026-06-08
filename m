Return-Path: <devicetree+bounces-308048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Wc7wKthrJmoGWQIAu9opvQ
	(envelope-from <devicetree+bounces-308048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 09:14:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F6B6536D6
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 09:14:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kvtSB+ND;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308048-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308048-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D325E30038CF
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 07:13:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37A7736DA18;
	Mon,  8 Jun 2026 07:13:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB9F34E745
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 07:13:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780902808; cv=none; b=vBJBCvEsLrJS+yn9TRjYPoO57UXnv4uurBTEhfCxNEnmoC48DELIDLb1cCaX0mFT96yOYBO3OkQj0aq2c2T0e9nwRQWkqc2aNgvaumc1xTWYjTAC1V3gnuQp4pdRNOgg1rI7dP5xMM7WWc6+HUh1tfk5zigXZvcZ/5CFAV6o0G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780902808; c=relaxed/simple;
	bh=Ak1owQ5BX9MsCAeXdFVtSY0W68Ac8UBPiqbMXgXanr8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BhIo3yBc/3wCR/6Rk+QJ+SxVj6cCnjri7FJOw5NnHuPuv/6qPV5dOOfi8egxigFeM85tbykes7XgcEtNkqomx1bXt1iqaCuoY2UjD03oRle59QkIHfkk1sBv4WZ9FhmzRN6/MVjq2+MSXGwvsXrHADCtMj0qzes/GNne+TrIcUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvtSB+ND; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70A2E1F00893;
	Mon,  8 Jun 2026 07:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780902806;
	bh=Vet+Yt7W8IpTw3HV2qBEOyNlQqmzaMdonxzrFHRYbdA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kvtSB+NDkTd2a5IsCyMZk0z9OdMYP4rzW5P7bXQUNeI0CxTQAtGVZKuWoJA6m/8v/
	 hzyHMWyTEuxHckBPAdTWR02u2ruG35A+sIEYkPiRV4IVe4Bo0oNuAbNyke9Mk9Q5Sb
	 HPhLeT2mBJF6VV/ehE5Z/XwmMERzOSbKODtFf6NBgMr6X5hn0zdbEIXGPW+Eh1DEym
	 FpDC6srFtqMN2CFnwDFXhpVoqGHl0vqzajvdPZnd2SaL6cYNq20cF+NO77IzJN55rh
	 ZpNDBVTPJKClQTaibNHYk/SA6BDXzPigNnAk+gjMACcCAKfiYLmQssnark9J/h+HcC
	 q7MWIZBsN/ZwQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: display: msm: qcm2290: Add Shikra
 MDSS
Reply-To: sashiko-reviews@lists.linux.dev
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260608-shikra-display-v4-1-88a846afdd5d@oss.qualcomm.com>
References: <20260608-shikra-display-v4-1-88a846afdd5d@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 07:13:26 +0000
Message-Id: <20260608071326.70A2E1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308048-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto];
	FORGED_RECIPIENTS(0.00)[m:nabige.aala@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 19F6B6536D6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The compatible string `qcom,qcm2290-dsi-ctrl` (and the newly add=
ed `qcom,shikra-dsi-ctrl` fallback) is missing from the conditional `if-the=
n` constraint blocks in `dsi-controller-main.yaml`, preventing strict valid=
ation.
--

commit 605ca9e1f594a8d64bb53c70c6ef6319fc95eeed
Author: Nabige Aala <nabige.aala@oss.qualcomm.com>

dt-bindings: display: msm: qcm2290: Add Shikra MDSS

Shikra reuses the same MDSS/DPU 6.5 hardware as QCM2290. Extend
the existing qcm2290 bindings to cover Shikra by adding fallback
compatible chains for MDSS, DPU and DSI controller nodes rather
than introducing a separate binding file.

> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller=
-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-m=
ain.yaml
> index a24fcb9144181..08a6668d3ca78 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.y=
aml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.y=
aml
> @@ -46,6 +46,10 @@ properties:
>                - qcom,sm8650-dsi-ctrl
>                - qcom,sm8750-dsi-ctrl
>            - const: qcom,mdss-dsi-ctrl
> +      - items:
> +          - const: qcom,shikra-dsi-ctrl
> +          - const: qcom,qcm2290-dsi-ctrl
> +          - const: qcom,mdss-dsi-ctrl

[Severity: Medium]
Should qcom,shikra-dsi-ctrl and qcom,qcm2290-dsi-ctrl be added to the
conditional constraint blocks lower down in this file?

Because they are omitted from the conditional blocks governing 6-clock setu=
ps,
the schema falls back to permissive defaults (3 to 12 clocks). This allows
incomplete or invalid device tree nodes for Shikra to silently pass validat=
ion.

While the missing qcom,qcm2290-dsi-ctrl constraint was a pre-existing issue,
adding the new qcom,shikra-dsi-ctrl compatible without ensuring it has stri=
ct
validation introduces this permissive validation bug for the new platform.

The block enforcing these strict limits starts like this:

  - if:
      properties:
        compatible:
          contains:
            enum:
              - qcom,msm8998-dsi-ctrl
              - qcom,sa8775p-dsi-ctrl
              - qcom,sar2130p-dsi-ctrl

>        - items:
>            - enum:
>                - qcom,qcs8300-dsi-ctrl

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608-shikra-dis=
play-v4-0-88a846afdd5d@oss.qualcomm.com?part=3D1

