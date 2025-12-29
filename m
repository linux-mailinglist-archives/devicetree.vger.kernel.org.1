Return-Path: <devicetree+bounces-250182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E7FCE6BAD
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:40:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C17193007FE2
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:40:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3B5A3115BC;
	Mon, 29 Dec 2025 12:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=web.de header.i=markus.elfring@web.de header.b="VY9hhpDF"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.web.de (mout.web.de [212.227.15.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4934F2DAFCB;
	Mon, 29 Dec 2025 12:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767012024; cv=none; b=TthxjysS69e7ctlB/FvSZIs+OLhwte4PZ8s6asxdamAVr57xeNNhTHeiyWlNyb8daqdOJKd0uYU9r73oCN0BcyRI5EIartEasRKdOrzmGg9UUlkLBxoqf6Bi0t7FjJz9OjFO7qq6ubhr/c/3gSMfChxTtYafi4H1eXb9cShAiAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767012024; c=relaxed/simple;
	bh=IL8ci2AeHrAapi3cDQJ6HBVAuMN0HN6PV8H5DEOEAsQ=;
	h=Message-ID:Date:MIME-Version:To:Cc:References:Subject:From:
	 In-Reply-To:Content-Type; b=l34lvS65fizspsbXtXkSkgH9bMaGBG2H3TGTBfQopQc1mG9cNQ9YYV80FHnN/9B9+LlmckFEZ830qKdGeUvGONex+Yv+vDXTz+tLmXPopNb1ZRKYyRQ+xS5Pjss52uV/0BM4YwYLBO2zwScFQmSJw4h7DBG7wQZs+J3GaGwC0Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=web.de; spf=pass smtp.mailfrom=web.de; dkim=pass (2048-bit key) header.d=web.de header.i=markus.elfring@web.de header.b=VY9hhpDF; arc=none smtp.client-ip=212.227.15.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1767012014; x=1767616814; i=markus.elfring@web.de;
	bh=08ohrbmiz8m/6ojSTO13eB7/5w86v8RC2xeb2tvnc5k=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=VY9hhpDFcmmeylEOGchSc/uyyIAP2anccazKLIDBinKid2HLMy9F7GriSMarJQBv
	 HcHBSqtmbsTLJNdVDsAxNk3ZsixptDz8OcGdCxXdqj3yVoTrsN63A8vqrgAbZIC5J
	 cCL4cInsSS3cxkDhJI22APKZYysK/JMUA1/Mbkmgg1YbJvVF6PF+RBKG+tThh6njk
	 ELb2qnPh3R+srbxi1N17b6f7upGYwj9qd2C4OjbN4Ac11NcsAnHANAiErVyxn0AFX
	 /tc5L5C15qxCbFUxaT46+on2i6tPxul+M1v91JSLW5Vl5zFvMNDgHZdIiVrH+vb2b
	 RaQlOD5+4d2G6lY5ww==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.29] ([94.31.69.231]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1N3Xjb-1w0MEH02aZ-00xn58; Mon, 29
 Dec 2025 13:40:14 +0100
Message-ID: <91290a53-8f59-4138-9899-4523d25e1cff@web.de>
Date: Mon, 29 Dec 2025 13:40:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Prahlad Valluru <vvalluru@qti.qualcomm.com>,
 Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Conor Dooley <conor+dt@kernel.org>,
 David Airlie <airlied@gmail.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Robert Foss <rfoss@kernel.org>, Simona Vetter <simona@ffwll.ch>,
 syyang@lontium.com, Thomas Zimmermann <tzimmermann@suse.de>
Cc: Prahlad Valluru <prahlad.valluru@oss.qualcomm.com>,
 LKML <linux-kernel@vger.kernel.org>
References: <20251228-lt8713sx-bridge-driver-v3-2-9169fbef0e5b@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/2] drm/bridge: add support for lontium lt8713sx
 bridge driver
Content-Language: en-GB, de-DE
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20251228-lt8713sx-bridge-driver-v3-2-9169fbef0e5b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:QRnbIfcvK9jI5v49kIcSmcY1v74/KlhO1B5vBgotHSZptlL8JM9
 4yR4j1ZYUL44+oRDO9PbXV+R7I4vsFnF1QB+RltJXtmUwj4HMoX04ZVXxK6nbFXKq9M9Ovh
 zq1WbDPgsc4cIL3SQKXeR8IxIQLTSoQMcmkztrs/tj0P+3l6m9RjuWd49s8lluFppDGxMs6
 rOVHhj3E98/9Y/BTYNCCA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Ov+eSY5ALhg=;Mq8jYEcCj8y3p5pGgWLSX0oBlLp
 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
 ADIH4wtE=

=E2=80=A6
> +++ b/drivers/gpu/drm/bridge/lontium-lt8713sx.c
> @@ -0,0 +1,682 @@
=E2=80=A6
> +static int lt8713sx_firmware_update(struct lt8713sx *lt8713sx)
> +{
> +	int ret =3D 0;
> +
> +	mutex_lock(&lt8713sx->ocm_lock);
> +	lt8713sx_i2c_enable(lt8713sx);
=E2=80=A6
> +	mutex_unlock(&lt8713sx->ocm_lock);
> +
> +	return ret;
> +}
=E2=80=A6

Under which circumstances would you become interested to apply a statement
like =E2=80=9Cguard(mutex)(&lt8713sx->ocm_lock);=E2=80=9D?
https://elixir.bootlin.com/linux/v6.19-rc2/source/include/linux/mutex.h#L2=
53

Regards,
Markus

