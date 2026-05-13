Return-Path: <devicetree+bounces-296738-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEabAN9IBGrNGgIAu9opvQ
	(envelope-from <devicetree+bounces-296738-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 11:48:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2166B530EB9
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 11:48:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DFFB6305363B
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 09:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 113723E6DDC;
	Wed, 13 May 2026 09:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMr7RnQr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23143E5597;
	Wed, 13 May 2026 09:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778664971; cv=none; b=OifD36o1Xs/gjOup+g3kgfLZkSVEj5szXVD8C8HJ/vXo45gFe9cFV5VpIU3bwn5iS8PScYtXCkQqf2fttPevC++b46mZKJ6fhU/w5qGFmUR8DhYbcRRevSe6QDMXO9lUKG+Wi5FpAdKoLBBU85oAy7i1Dc5rLacS+I1QoFtlcA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778664971; c=relaxed/simple;
	bh=R6htYCFiU3TCkVRmDtL15EtVi3itaBuVdzl8GZDE/es=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=vEkepjejXZD9fuHilBImpqJwhYpL1FRlzaLgK8BnDkBaF9j1UZV9Sf1mGzVlwJRZcXww1kExBGgY0EFdk+ehvJtA1y2nAVmlc3m3zS8GLvJkBVXNIX88VBu3b/9qTanbExNh3WFGLFDC8HGu/HEFtQz+Hqs9cmL2cU8ZwGLPlss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMr7RnQr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0FE5C4AF0C;
	Wed, 13 May 2026 09:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778664970;
	bh=R6htYCFiU3TCkVRmDtL15EtVi3itaBuVdzl8GZDE/es=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=KMr7RnQrkou3Tfhosaj0bFI4ityEPFdizhLuJCeRDM2RJ4dUjy5W2omdYIl1vot9K
	 5Y6sRV+JcxdezxXL/umf+QQeyIhH4nperhDRRLOqkvE4TleFE21ZPiwVHKn0wTuIMT
	 0bZPPomJKDFXPLdbDQzYybCwclkRJyQaHnh9E2fvNfhGy8zXpmGupoBHo/RiZjtlpd
	 4MtyGGezHXLgEJ79hx1cI2Jl84ssCAq6emUjhWCwPIrSx1IrP50qn38KUsF/jIwcO1
	 rjlW/6YNcDZKLYkR2ZPVwM4WLSoKraJiP5cWjjeDypgX+aGSE7OSnLWoNut6DBFuyB
	 MrkvhzPCAKJBA==
Date: Wed, 13 May 2026 04:36:07 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Roger Quadros <rogerq@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Peter Chen <peter.chen@kernel.org>, 
 linux-usb@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Pawel Laszczak <pawell@cadence.com>
In-Reply-To: <20260513-b4-no_drd_config-v5-1-1c633a4b9a29@cadence.com>
References: <20260513-b4-no_drd_config-v5-0-1c633a4b9a29@cadence.com>
 <20260513-b4-no_drd_config-v5-1-1c633a4b9a29@cadence.com>
Message-Id: <177866496780.143152.1880701975733654167.robh@kernel.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: usb: cdns3: Add no_drd property
X-Rspamd-Queue-Id: 2166B530EB9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296738-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,cadence.com:email,devicetree.org:url,5b120000:email]
X-Rspamd-Action: no action


On Wed, 13 May 2026 10:41:21 +0200, Pawel Laszczak wrote:
> Introduce a new boolean property 'no_drd' for Cadence USBSS/USBSSP
> controllers to support hardware configurations where the Dual-Role
> Device (DRD) register block is missing or inaccessible.
> 
> When 'no_drd' is present:
> - The 'otg' register and interrupt resources are not required.
> - The 'reg' and 'interrupts' properties are restricted to 2 items
>   (host and device).
> - 'dr_mode' must be explicitly set to either 'host' or 'peripheral'.
> 
> When 'no_drd' is absent, the binding maintains backward compatibility
> by requiring all 3 resource sets (otg, host, dev).
> 
> To achieve this, the schema is updated with an if-then-else logic
> and 'reg-names'/'interrupt-names' use enums to allow flexible
> ordering during validation.
> 
> Signed-off-by: Pawel Laszczak <pawell@cadence.com>
> ---
> v5:
> - Implemented strict conditional validation using if-then-else logic.
> - Enforced 2 register/interrupt items and required 'dr_mode'
>   (host or peripheral) when 'no_drd' is present.
> - Enforced the standard 3 register/interrupt items (otg, host, dev)
>   when 'no_drd' is absent to ensure backward compatibility.
> - Updated 'reg-names' and 'interrupt-names' to use enums in the main
>   properties section to support flexible resource ordering during
>   validation.
> ---
> ---
>  .../devicetree/bindings/usb/cdns,usb3.yaml         | 67 +++++++++++++++++++---
>  1 file changed, 58 insertions(+), 9 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/usb/fsl,imx8qm-cdns3.example.dtb: usb@5b110000 (fsl,imx8qm-usb3): usb@5b120000:interrupt-names: ['host', 'peripheral', 'otg', 'wakeup'] is too long
	from schema $id: http://devicetree.org/schemas/usb/fsl,imx8qm-cdns3.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/usb/fsl,imx8qm-cdns3.example.dtb: usb@5b120000 (cdns,usb3): interrupt-names: ['host', 'peripheral', 'otg', 'wakeup'] is too long
	from schema $id: http://devicetree.org/schemas/usb/cdns,usb3.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260513-b4-no_drd_config-v5-1-1c633a4b9a29@cadence.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


