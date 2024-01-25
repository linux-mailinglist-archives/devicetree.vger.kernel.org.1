Return-Path: <devicetree+bounces-34959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE4583BDB0
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 10:45:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 902941C2578E
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 09:45:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB4D51BC22;
	Thu, 25 Jan 2024 09:43:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03211CA9F
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 09:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706175809; cv=none; b=egmwdKYGQ5LFNzCAtKPh4Vwb/Q3oZkjQmQuTMOhshHiu9EcllLaOSle5FXFkK/eawlhmr4i9d+4Zk9Xgs3VXqxcakFHg6nD8X37x8LAdzfU2YF1tm+SNW5X7QcNem9+pzjccU9qYOeoIxnSdvZTwC9RLRkR6YOX0/29nScPVTVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706175809; c=relaxed/simple;
	bh=NO+cYd0QNeHPKrWW+ljDppiytbZEHXhjbmaRFrtMguc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=b5If3JGCnf6FbPm/W/AxEIHzmGY/NBvIxk2wNBURNmX0Azur8OynAW1Bv6613Yw+AVuGCfV6pyvlmsMjhbnvbpla0zNQzJo2VuLDOHH5osREhYMPmEQY4WwLoDyPrMs8q+/VqdqqGR425+wg3P3gxjbAR21yruW4k4QQea5cRuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rSwGI-0002Fp-20; Thu, 25 Jan 2024 10:43:06 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rSwGF-002Fm4-V4; Thu, 25 Jan 2024 10:43:03 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rSwGF-0003hB-2q;
	Thu, 25 Jan 2024 10:43:03 +0100
Message-ID: <88b75ffea33078d092ffa15e3be235358f576c8d.camel@pengutronix.de>
Subject: Re: [PATCH v5 1/6] of: Add of_phandle_args_equal() helper
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzysztof.kozlowski@linaro.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Banajit Goswami
 <bgoswami@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, Konrad
 Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,  Conor Dooley <conor+dt@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar
 <viresh.kumar@linaro.org>, Frank Rowand <frowand.list@gmail.com>, Jaroslav
 Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 alsa-devel@alsa-project.org,  linux-arm-msm@vger.kernel.org,
 linux-sound@vger.kernel.org,  devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,  linux-pm@vger.kernel.org
Date: Thu, 25 Jan 2024 10:43:03 +0100
In-Reply-To: <20240124220716.GA2454626-robh@kernel.org>
References: <20240124074527.48869-1-krzysztof.kozlowski@linaro.org>
	 <20240124074527.48869-2-krzysztof.kozlowski@linaro.org>
	 <20240124220716.GA2454626-robh@kernel.org>
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

On Mi, 2024-01-24 at 16:07 -0600, Rob Herring wrote:
> On Wed, Jan 24, 2024 at 08:45:22AM +0100, Krzysztof Kozlowski wrote:
> > Add a helper comparing two "struct of_phandle_args" to avoid
> > reinventing the wheel.
> >=20
> > Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> >=20
> > Dependency of cpufreq and reset change.
> > ---
> >  include/linux/of.h | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
>=20
> Acked-by: Rob Herring <robh@kernel.org>
>=20
> I've wanted to write this series for some time. Great work.

How would you prefer this to be merged? Stable tag from the devicetree
tree? Go through the reset tree as part of this series?

regards
Philipp

