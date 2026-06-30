Return-Path: <devicetree+bounces-317815-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CnXgKMLFQ2qGhQoAu9opvQ
	(envelope-from <devicetree+bounces-317815-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:33:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EE59A6E4E44
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:33:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YQofbJtu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317815-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317815-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5555530E8A60
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:27:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 357804219E8;
	Tue, 30 Jun 2026 13:27:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E4839D6DD;
	Tue, 30 Jun 2026 13:27:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782826068; cv=none; b=RcT22wxZU1gaA/9oF9lxnDtGNLuDoJE85wcgegS8Jn0sC+kz+lHvEMqgc08v9YgrzJwY4KS1yIL9lfwYO3noxuqflOCrZDAFmmHk3CkgyAIcnTEKP1J7CNECgQKRYN6ingJ9D9LdiMJoOi3JN04B3eXVYCUjvvZuaHz7NLuf1H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782826068; c=relaxed/simple;
	bh=E+phIvRKHtAFcf4SE8jFIGgW+TmoMStAqmY/4hbmzYU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BYIMHiPeuxEUg+qRS3hOD3JxgvfYBhLApjU2basDFYHLf8sEr07nRYV8Q1tDyNiZAPWUuyE5tSKt4+KtNrhGw6+LHAvdf3jEsi7FUUy2VVAkZ0T2T4Qwi72Pc4aWIPlR6HU+7z5tqP6TVTtrEyUhI0LQQFkrrs77g8zKtGIzgTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQofbJtu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 030BF1F000E9;
	Tue, 30 Jun 2026 13:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782826066;
	bh=Ij3NRhGfU5nfU4zCffaoDI0O0bRHiZZipB7Oc8RoOqE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YQofbJtumcvxgTyZuJ4CCy6Hsala5iUnIxuvBlipMMOVIyRcBvN82JsySQC6MnpZH
	 5YCUGpeQ/2mKYsr2jmv1VlGHtRhW9QDsvdsRR9vjbk4bldRh30gC59IZRwXmCf/38v
	 S8eI4LLxp3zBe7EIAygOzuAhRYhTZWW+u7vRvdHt8F2OCAiqQ5ksUP3Nh6OQbgpnWX
	 6H5EQn8O6a0bW0FWvg+cb7vQM/JinDb6H03QmzIjdPqQXs9qzQybexbXqK51FT0dD6
	 uGu6VRoGtlWwhwrAwaQID+eeZMbqT+1eqXvzT1C0vOVNKgBpNE9rFROyaUfGotF4sM
	 d6+b14r6cT3gg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v11 2/7] phy: qcom: add the SGMII SerDes PHY
 driver for SCMI systems
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: linux-amlogic@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev, Frank.Li@kernel.org, imx@lists.linux.dev, wsa+renesas@sang-engineering.com, robh@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260629-qcom-sa8255p-emac-v11-2-1b7fb95b51f9@oss.qualcomm.com>
References: <20260629-qcom-sa8255p-emac-v11-0-1b7fb95b51f9@oss.qualcomm.com>
 <20260629-qcom-sa8255p-emac-v11-2-1b7fb95b51f9@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 13:27:45 +0000
Message-Id: <20260630132746.030BF1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317815-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:linux-amlogic@lists.infradead.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-sunxi@lists.linux.dev,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:wsa+renesas@sang-engineering.com,m:robh@kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE59A6E4E44

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Asynchronous pm_runtime_put() in PHY power-off callback creates a =
race condition with device unbind, permanently leaving the hardware active.
- [High] Incorrect genpd performance state management causes voltage drops =
while active and powers on the device with insufficient voltage.
- [Low] Kconfig symbol PHY_QCOM_SGMII_ETH_SCMI unconditionally selects PM_G=
ENERIC_DOMAINS without inheriting its dependency on PM.
--

commit dd2da8ee656d44ae9a3f555af9c5e8b85b759597
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

phy: qcom: add the SGMII SerDes PHY driver for SCMI systems

Implement support for the firmware-managed SGMII/SerDes PHY present on
Qualcomm platforms. Do this as a separate driver from the HLOS-managed
variant as they don't share almost any code.

> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
> index 60a0ead127fa9..bd7d3fe411d7f 100644
> --- a/drivers/phy/qualcomm/Kconfig
> +++ b/drivers/phy/qualcomm/Kconfig
> @@ -232,3 +232,13 @@ config PHY_QCOM_SGMII_ETH
>  	help
>  	  Enable this to support the internal SerDes/SGMII PHY on various
>  	  Qualcomm chipsets.
> +
> +config PHY_QCOM_SGMII_ETH_SCMI
> +	tristate "Qualcomm DWMAC SGMII SerDes/PHY driver (firmware managed)"
> +	depends on OF && (ARCH_QCOM || COMPILE_TEST)
> +	select GENERIC_PHY
> +	select PM_GENERIC_DOMAINS

[Severity: Low]
Selecting a Kconfig symbol without satisfying its direct dependencies produ=
ces
"unmet direct dependencies detected" warnings.

Since PM_GENERIC_DOMAINS depends on PM, could this lead to silent build fai=
lures
on platforms where CONFIG_PM is disabled, for example during COMPILE_TEST?

> +	help
> +	  Enable this to support the internal SerDes/SGMII PHY on Qualcomm
> +	  chipsets where the SerDes hardware (clocks and registers) is owned
> +	  by the firmware.

[ ... ]

> diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c b/drivers/phy=
/qualcomm/phy-qcom-sgmii-eth-scmi.c
> new file mode 100644
> index 0000000000000..8ee62189556fe
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c
> @@ -0,0 +1,161 @@

[ ... ]

> +static int qcom_dwmac_sgmii_phy_scmi_power_on(struct phy *phy)
> +{
> +	struct qcom_dwmac_sgmii_phy_scmi *priv =3D phy_get_drvdata(phy);
> +	struct device *dev =3D phy->dev.parent;
> +	int ret;
> +
> +	ret =3D pm_runtime_resume_and_get(dev);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D dev_pm_genpd_set_performance_state(dev, priv->perf_state);

[Severity: High]
Does raising the performance state after the device has already been resumed
risk a crash from insufficient voltage?

Since pm_runtime_resume_and_get() brings the device up with the currently
cached genpd state (which is dropped to 0 in
qcom_dwmac_sgmii_phy_scmi_power_off), the device is briefly active with a 0
performance state.

> +	if (ret) {
> +		pm_runtime_put(dev);

[Severity: High]
Does using an asynchronous put here risk leaving the device active?

If a probe or subsequent initialization fails and triggers devres cleanup,
pm_runtime_disable() will cancel any pending asynchronous suspends. Would
pm_runtime_put_sync() ensure the device actually reaches the suspended stat=
e?

> +		return ret;
> +	}
> +
> +	usleep_range(5000, 10000);
> +
> +	return 0;
> +}
> +
> +static int qcom_dwmac_sgmii_phy_scmi_power_off(struct phy *phy)
> +{
> +	struct device *dev =3D phy->dev.parent;
> +
> +	dev_pm_genpd_set_performance_state(dev, 0);

[Severity: High]
Can manually dropping the performance state to 0 while the device is still
active (RPM_ACTIVE) cause voltage drops that lead to a bus lockup?

Also, as mentioned above, doing this overwrites the cached performance state
so the next resume initially operates at state 0.

> +	pm_runtime_put(dev);

[Severity: High]
Does this asynchronous pm_runtime_put() create a race condition with device
unbind?

If a consumer unbinds, calling phy_power_off() followed by the PHY provider=
's
devres cleanup (which calls pm_runtime_disable()), the pending async suspend
could be cancelled, leaving the hardware permanently in the active state.

> +
> +	return 0;
> +}

[ ... ]

> +static int qcom_dwmac_sgmii_phy_scmi_set_mode(struct phy *phy, enum phy_=
mode mode,
> +					      int submode)
> +{
> +	struct qcom_dwmac_sgmii_phy_scmi *priv =3D phy_get_drvdata(phy);
> +	int ret;
> +
> +	ret =3D qcom_dwmac_sgmii_phy_scmi_validate(phy, mode, submode, NULL);
> +	if (ret)
> +		return ret;
> +
> +	priv->perf_state =3D (submode =3D=3D PHY_INTERFACE_MODE_2500BASEX) ?
> +			   SPEED_2500 : SPEED_1000;

[Severity: High]
If the MAC driver changes the mode dynamically while the PHY is powered on,
does this only update the local priv->perf_state variable without actually
applying the new state to genpd?

> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-qcom-sa825=
5p-emac-v11-0-1b7fb95b51f9@oss.qualcomm.com?part=3D2

