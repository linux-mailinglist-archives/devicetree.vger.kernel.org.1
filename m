Return-Path: <devicetree+bounces-322110-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id auuGLrAJTWr0twEAu9opvQ
	(envelope-from <devicetree+bounces-322110-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:14:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4313471C6AC
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:14:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=a4LH6Y79;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322110-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322110-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 644513008C28
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3104A341ADD;
	Tue,  7 Jul 2026 14:11:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AC0E343883;
	Tue,  7 Jul 2026 14:11:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783433499; cv=none; b=biJ76lqgjQbFX8n9ufdA05tFwrCP38r3i1tgFs20riMOHZUZkG82SkZfMqc5+KxfDOsiTxUXx5O1IvBOmtgDWIvSqPFkHUA9wIWD6IkyAPAat4J8et+lbUmmaYkZGSK1jnePfjGBGhPV5tgVDbJO0gaYa0k2tmFsMr0CguMMp5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783433499; c=relaxed/simple;
	bh=11E3cLXszqK54bdjggG6ZFRBIxhg+IbdhCdkzPrOauM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mjqvVV/5FB5ZCYVll2QMOD6Z6cj6Pi6hDZFqvFSZGdT9rO3yZrVD0Yc35DAUmkhBlbnbd1LCyJP4LmoioJr+1HxaQvnL4mZQTIfPCSJ9xpWbWZNdODKuPG2+tKOms8Eh66JISr2wVfFSHxtIoxfiDOyMzS7TxcBFJTGlB3YUbD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4LH6Y79; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAE031F00A3A;
	Tue,  7 Jul 2026 14:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783433497;
	bh=bPmEwesHC2AS1HkjPhZDQwSfdjHZQo0VGS0dYxaRFDM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=a4LH6Y79I6wzscYgLyuUhZcE9ZYVaPMk8Wt1y6pXLaPtI+Ki+IdqYnfzUdaul+QYX
	 K08eRdaSblR8oSa8DMpy5s6c+yM7jdDXVQO863trhbuffRq892mqHh1jwmvCJC2I5H
	 e4B2dNEZ9FWnuwSmxPrHf2gopcFpcGRNAPaw4jtSBNO+AuCyzyymzOOZYEe7ZauyEm
	 tWdIydxOTmsRn4h3smJGrEx0WdzY6CfMjIP/+H6NZsDx9RXKuqco7cK43ONbbHFYRu
	 /LGRqy9O7wb/AOAYImtooFC+P/B06itTPqyJ3G6VVSaSuuwc8CvrLG+J3po0ULyYMD
	 4RBp19Mao+NSA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v12 2/7] phy: qcom: add the SGMII SerDes PHY
 driver for SCMI systems
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, robh@kernel.org, linux-amlogic@lists.infradead.org, linux-sunxi@lists.linux.dev, neil.armstrong@linaro.org, conor+dt@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260706-qcom-sa8255p-emac-v12-2-e3ab1ecf2901@oss.qualcomm.com>
References: <20260706-qcom-sa8255p-emac-v12-0-e3ab1ecf2901@oss.qualcomm.com>
 <20260706-qcom-sa8255p-emac-v12-2-e3ab1ecf2901@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 14:11:36 +0000
Message-Id: <20260707141136.AAE031F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322110-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-amlogic@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:neil.armstrong@linaro.org,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4313471C6AC

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The `set_mode` callback fails to dynamically apply the new perform=
ance state to the PM domain when the PHY is already active.
- [High] Incorrect ordering of `dev_pm_genpd_set_performance_state()` aroun=
d runtime PM functions causes hardware under-voltage.
--

commit d60c07674fdf361d41a55e9d09fbdf040bae5797
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

phy: qcom: add the SGMII SerDes PHY driver for SCMI systems

This commit implements support for the firmware-managed SGMII/SerDes PHY
present on Qualcomm platforms. It introduces a separate driver for the SCMI
system variant as it shares almost no code with the HLOS-managed version.

> diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c b/drivers/phy=
/qualcomm/phy-qcom-sgmii-eth-scmi.c
> new file mode 100644
> index 0000000000000..8ee62189556fe
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c
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
Should dev_pm_genpd_set_performance_state() be called before
pm_runtime_resume_and_get()?

If pm_runtime_resume_and_get() runs first, it appears the genpd runtime
resume handler will power on the domain at its previous performance state (=
0)
before the driver raises it. Could this starve the hardware during power-on?

> +	if (ret) {
> +		pm_runtime_put(dev);
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
> +	pm_runtime_put(dev);

[Severity: High]
Does dropping the performance state before putting the device cause a volta=
ge
drop while the hardware is still active?

Since pm_runtime_put() is asynchronous, the hardware might still be actively
powered when dev_pm_genpd_set_performance_state(dev, 0) drops the state. Co=
uld
this ordering violate hardware voltage requirements?

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
> +
> +	return 0;
> +}

[Severity: High]
Does this code need to apply the new performance state to the active PM dom=
ain
if the PHY is already powered on?

When the MAC driver dynamically changes the link speed while the interface =
is
up, updating only priv->perf_state without calling
dev_pm_genpd_set_performance_state() might leave the hardware operating at =
an
incorrect voltage state.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-qcom-sa825=
5p-emac-v12-0-e3ab1ecf2901@oss.qualcomm.com?part=3D2

