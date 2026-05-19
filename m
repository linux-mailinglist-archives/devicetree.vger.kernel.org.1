Return-Path: <devicetree+bounces-300097-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4+P8KWhRDGqmfAUAu9opvQ
	(envelope-from <devicetree+bounces-300097-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 14:02:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0403557E423
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 14:02:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0A9CA300D1C7
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E710E4C0431;
	Tue, 19 May 2026 12:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYZjSSQb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C46614C042E
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 12:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779192158; cv=none; b=dnQY+tY/WjLAp0zE8bVugwrzVd4DasuU/jtg73s4XRzzaJm5qqi7T+zPk6rxilzXEh1eJ61vje1hwokVpw90ik4ypbasiBipmr5bDNH/Wbsmgc7/ZjbCWZKA/oFRgOsbkXRmRmg+x/QcxQMw9aMRGmOBTEU1qaji+MG8Y3n9THo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779192158; c=relaxed/simple;
	bh=4QhiP/O5Cduyi8JFpsxktoqRpBVXZeNxxdFhkjZreyI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=s6BfE5NaflSBZkErUbzryVSjTwyaz2YkDXJ7j4RVKQkWtPHxBt9Tqog5bwT5KA+zIo+AOJpdTF3eLQW0aGO2/00W4vN5HQcOU4Qy/jfQy60oPkGtD6fQ/KY1Xi2YF3eo7syE38/r5wQREfeEMQU+Ge4bzRvtRZCyTWubeGaQgAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYZjSSQb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C84CC2BCB3;
	Tue, 19 May 2026 12:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779192158;
	bh=4QhiP/O5Cduyi8JFpsxktoqRpBVXZeNxxdFhkjZreyI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=DYZjSSQbjjnoJpDMXBywq3QDX1qwMIZ3/6/oCyP+ZWvxNkGXZcT7IrA/hnCsZNIKt
	 WNVeE8YLSo3wMKbhEjY94+srl+JHTHrYUQmuW8PxoTRWkd5dF9au07Z78OfIQSCYXy
	 0WWfFJ6ER1TptB8yOTKflUI+SkwKsHcWZ+EAuFtZDczUFgvXjSedjMO40gfHINy3y9
	 QkZTNAsO/P6bsExWayhllK91l02h4p3ReBjO09N7j62C6/Sdu3GOI81G9Cb/DLSz6w
	 eXwOrkp7k65YgqsCz5MPXdX/pE4QFeHIgPuInZVT1tHzkVhL6yZYOCzxldpak10l7C
	 Tilbt9fW/cqUQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: Add Shikra CQ7790M SoM
 platform
Reply-To: sashiko-reviews@lists.linux.dev
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260519-shikra-dt-v2-3-c01b90fb4395@oss.qualcomm.com>
References: <20260519-shikra-dt-v2-3-c01b90fb4395@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 12:02:37 +0000
Message-Id: <20260519120238.1C84CC2BCB3@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300097-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,linaro.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,qualcomm.com:email,sashiko.dev:url]
X-Rspamd-Queue-Id: 0403557E423
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The SoM device tree partially defines PMIC regulators (LDOs) but c=
ompletely omits their internal parent SMPS regulators (S3, S4) and the requ=
ired supply linkage properties.
- [High] The SoM integrates the PM4125 PMIC, but the device tree include fo=
r the PMIC's SPMI components (`pm4125.dtsi`) is missing.
--

commit 1edd30ea88da411f667f786ef5494cebf1420c78
Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>

arm64: dts: qcom: Add Shikra CQ7790M SoM platform

This commit adds the device tree include for the CQ7790M variant of the
Shikra System-on-Module. It includes the common shikra.dtsi and adds
PM4125 PMIC regulator definitions specific to this variant.

> diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi b/arch/arm64/bo=
ot/dts/qcom/shikra-cqm-som.dtsi
> new file mode 100644
> index 0000000000000..401e71720519d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
> @@ -0,0 +1,112 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#include "shikra.dtsi"

The commit message mentions the SoM integrates the PM4125 PMIC, but is
pm4125.dtsi supposed to be included here as well?

Without including the PMIC's SPMI components (like pm4125_gpios,
pm4125_pwrkey), it seems carrier boards won't be able to address or utilize
these peripherals.

> +
> +&rpm_requests {
> +	regulators {
> +		compatible =3D "qcom,rpm-pm2250-regulators";
> +
> +		pm4125_s2: s2 {
> +			regulator-min-microvolt =3D <1000000>;
> +			regulator-max-microvolt =3D <1200000>;
> +		};

Does this regulator node need to define the internal parent SMPS regulators
like s3 and s4, as well as the vdd_X-supply linkage properties for the child
LDOs?

The driver drivers/regulator/qcom_smd-regulator.c expects supply mappings f=
or
pm2250 (e.g., vdd_l1_l2_l3_l5_l6_l7_l8_l9_l10_l11_l12).

Without representing this fixed internal power routing in the SoM's device
tree, the core framework might not be able to correctly manage the parent
supply voltages and states when child LDOs are toggled.

> +
> +		pm4125_l3: l3 {
> +			regulator-min-microvolt =3D <624000>;
> +			regulator-max-microvolt =3D <650000>;
> +		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-shikra-dt-=
v2-0-c01b90fb4395@oss.qualcomm.com?part=3D3

