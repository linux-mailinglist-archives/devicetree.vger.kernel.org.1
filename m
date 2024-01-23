Return-Path: <devicetree+bounces-34218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1B18391C9
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 15:55:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24A33281074
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 14:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12B6E5DF3C;
	Tue, 23 Jan 2024 14:55:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07F95A110
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 14:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706021724; cv=none; b=J7V6crfGN1aWRwhbZ+t2JEOJFl85B8Axw7gyF2ehftiWcqG47QxFfdJiOd2eCHV+hNPwtrfYbU7rC6ZD7V8Ybb/WcqJufGOm6jqcQb1qCzQJpgON03qnYpznGEs/S0estBCnwqGdG7mepkKA9x1u0R+0gJangYMOPNcCN6qaXSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706021724; c=relaxed/simple;
	bh=2Us8d9HFzil7eG4ZdXBlQscQzdTSkCBbCoFOIogreY0=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=hYLo9kdqg4tCTaIKo1SO+99PTB3ft/40WdB9wFPAHns0HAm1TgxWs086IJWwBx+rjxf3TCuDzx21oDeHDzhZVpAaVopANYgRf1Nugy+iPTFjgi2mZnbRjRFCU0xF/aHh3q3NPF3RmxfFU9ZzuuxEAUDmYDTZQaCVL9lCXAbUyEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rSIB1-0007pb-7N; Tue, 23 Jan 2024 15:54:59 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rSIAz-001qtM-Hu; Tue, 23 Jan 2024 15:54:57 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rSIAz-000AK1-1W;
	Tue, 23 Jan 2024 15:54:57 +0100
Message-ID: <c64ae26ea886aea419b31c372f98f0a7b8e664d3.camel@pengutronix.de>
Subject: Re: [PATCH v4 1/6] of: Add of_phandle_args_equal() helper
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Bjorn Andersson
 <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Srinivas
 Kandagatla <srinivas.kandagatla@linaro.org>, Banajit Goswami
 <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,  Conor Dooley <conor+dt@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar
 <viresh.kumar@linaro.org>, Frank Rowand <frowand.list@gmail.com>, Jaroslav
 Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-arm-msm@vger.kernel.org,  alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org,  devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,  linux-pm@vger.kernel.org
Date: Tue, 23 Jan 2024 15:54:57 +0100
In-Reply-To: <20240123141311.220505-2-krzysztof.kozlowski@linaro.org>
References: <20240123141311.220505-1-krzysztof.kozlowski@linaro.org>
	 <20240123141311.220505-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Di, 2024-01-23 at 15:13 +0100, Krzysztof Kozlowski wrote:
> Add a helper comparing two "struct of_phandle_args" to avoid
> reinventing the wheel.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

