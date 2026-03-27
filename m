Return-Path: <devicetree+bounces-281464-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFN1My0VxmkGGQUAu9opvQ
	(envelope-from <devicetree+bounces-281464-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 06:27:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBA933F3D3
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 06:27:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 04B26303ECFA
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 05:27:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 280863195EF;
	Fri, 27 Mar 2026 05:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="sDNBBMYV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-24429.protonmail.ch (mail-24429.protonmail.ch [109.224.244.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8907325EF87;
	Fri, 27 Mar 2026 05:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.29
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774589224; cv=none; b=gAC/qPqypFef41XhCbFeNxQ2T/scIsAJztEHkAb13Bcleh3dI42PPC/xU6dtS4UbRml0RIwajricOxwIdKwX4v5En0wabfcMu1FXUTbt7rTFi5ix2zGI9l31phztx2WSDOatDYtRbvWHUeVzdQl83OpdSyuP42/LAGQKEucXiTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774589224; c=relaxed/simple;
	bh=bEzkue1X7mLp+/j/hhoJP+Jnd4BlvcuBWwITMbXCxq8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JeH40hhilPWwSjl60Jn6W2+1emBggLY0e5Am9mGKa1z40/GtAienXwFuUuHdGAjKhFRu0djIipgn0lLY7ZusBjVZpzVvTQjX6zFL3M87Brdn5lkWnW3TViHCw5PJenQ2uyHJJBPRirCKqsmdrmcRcubi6kA0CZw0EW5yG5PKDfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=sDNBBMYV; arc=none smtp.client-ip=109.224.244.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1774589214; x=1774848414;
	bh=E+nwK/sviPTJ4YHe+rWlRmRhYCoqZkYMB6zYwWx5tr0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=sDNBBMYVJAp1LdeUIFiSOLc1bKhghvNL2Q1/KdU+eYfNHKzsfgkEW5FXp3fipfxAF
	 kxEReEJ74UPzEYehOn/I43Oft4dOT2J0vhpFHuayeKtp4GyY43vSG5zQ3PCJeBos83
	 etrIxLyRi6fbZGk4iV4fWhIWaG6zTlwT8kHehaEqLVjBcMH9hpemmegLF+S8pBlX4S
	 HsieuSir62nZmmtMFXiS4YrJMF1/MuFpcu3uUv3U4yWighWmEU27hvLXnfIVqDbJOw
	 BcEtLsktfxf0ylr2CZN7sbpn1qqIYuojbyBf9UToMTNgNpmAWd1KiFs8yzH+rPrXv3
	 MFNROqRF7aMnQ==
Date: Fri, 27 Mar 2026 05:26:47 +0000
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
From: cristian_ci <cristian_ci@protonmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH v3 3/6] arm64: dts: qcom: msm8953-flipkart-rimob: Enable display and GPU
Message-ID: <63LsT_8yLkjzVTSswYeIbFl40zYY30Bo5DyyLCqYrG1E0eJ4RqKF715_8j2J0WRd3RESpYvwfPTJzw7xsCa4wdxmYGQbUArRlKz3PL1cJ5Q=@protonmail.com>
In-Reply-To: <87943afd-2601-423e-878d-36b69ac3d6c3@oss.qualcomm.com>
References: <20260321-rimob-new-features-v3-0-d4b8ee867de7@protonmail.com> <20260321-rimob-new-features-v3-3-d4b8ee867de7@protonmail.com> <109d21b4-5d16-4689-8383-ecd29bbbf8a6@oss.qualcomm.com> <7wYxWlqdcbL3ANB9n0g4t74x-dwE2yG4CmVw9TwGNmwARxbT5WsdG1fpuIDSA5ab750Gs8OUBwmVa_nZd065guKDJueytb1AmlQ05__IzmU=@protonmail.com> <87943afd-2601-423e-878d-36b69ac3d6c3@oss.qualcomm.com>
Feedback-ID: 27475468:user:proton
X-Pm-Message-ID: 13a94298c7042e78ace8ac9e771817c299e4a043
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[protonmail.com,quarantine];
	R_DKIM_ALLOW(-0.20)[protonmail.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281464-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[protonmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,lists.sr.ht];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian_ci@protonmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[protonmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:dkim,protonmail.com:email,protonmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CDBA933F3D3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thursday, March 26th, 2026 at 13:08, Konrad Dybcio <konrad.dybcio@oss.qu=
alcomm.com> wrote:

> On 3/24/26 12:18 PM, cristian_ci wrote:
> > On Monday, March 23rd, 2026 at 11:52, Konrad Dybcio <konrad.dybcio@oss.=
qualcomm.com> wrote:
> >
> >> On 3/21/26 5:23 PM, Cristian Cozzolino via B4 Relay wrote:
> >>> From: Cristian Cozzolino <cristian_ci@protonmail.com>
> >>>
> >>> Add the description for the display panel found on this phone.
> >>> And with this done we can also enable the GPU and set the zap shader
> >>> firmware path.
> >>>
> >>> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> >>> ---
> >>
> >> [...]
> >>
> >>> +=09panel_default: panel-default-state {
> >>> +=09=09pins =3D "gpio61";
> >>> +=09=09function =3D "gpio";
> >>> +=09=09drive-strength =3D <8>;
> >>> +=09=09bias-disable;
> >>> +=09=09output-high;
> >>
> >> This says "by default, actively drive the pin not to reset the display
> >> panel". Is this actually necessary?
> >
> > I've tried to remove panel pinctrl stuff from the panel and the device =
still boots/works exactly like before. So, have I to submit v4 without pinc=
trl at all for the panel?
>=20
> No, the pin config is useful, I'm specifically referencing the output-hig=
h
> property

I've commented out "output-high" property and (apparently) the device=20
boots and works like before.

> Konrad
> 

