Return-Path: <devicetree+bounces-274524-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FslKESZsmnENwAAu9opvQ
	(envelope-from <devicetree+bounces-274524-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:45:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0665B270762
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:45:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F11130A54C0
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 10:44:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA8523B9613;
	Thu, 12 Mar 2026 10:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhzuj9Go"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C781B30BBAE;
	Thu, 12 Mar 2026 10:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773312257; cv=none; b=iRIwlqJNN0n0OqMvhNytk0Gnp82fNkIinscWSyTgL1nNogf2pgS2Xd9s0jLj/aNgg6EB4/ckSIRbI4AXjy188WaooiG7bNtQsKnUtMjNJWfTNQIlDuoDwBRAEAMIeF2AodygcnX2kTzXlQBo7FlmG78BTXnCSBMQMbAhtyx+3+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773312257; c=relaxed/simple;
	bh=RQl4cQHw2vxOHj/N4vk9xIw7gKGsxB7Usr3ddtX/tvw=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=Q7pOtqb23g1IIIRdoNeaxlrj97XR9/mwZpQmCdNP+6yGqdZj1NABEOcC0gHKHhMZfiJTDVojzUkjJWS84TxpLelPfQghTVKwFCcLK+0aGiqqMajZ4iz7me7Fl3GxlbLqBZsnbZw6pcHygoppzxhcDHSkaujzN7vO4JK02NyYhQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhzuj9Go; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5997BC4CEF7;
	Thu, 12 Mar 2026 10:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773312257;
	bh=RQl4cQHw2vxOHj/N4vk9xIw7gKGsxB7Usr3ddtX/tvw=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=fhzuj9GoOcmoPJcmUUcRslcJSQfckwLBQ1Jgf4L5koKTh75ABGBhXKwOrPjehOdZK
	 ClO0a1C4iFvqM6T9d8u6K007ArLx0wY9d7W2Nncn6S9SQPepFW/D82GPB6rgltzggw
	 T3fCLKjUZmiXOLtHfdlO6pTsAva/y6ZLDruqjlunqPBrEXj6szHZjMgHt00/48yobK
	 I74euXIRstW0EiNFRdGh0PG5aCazhLUGl0N0vu9p2kD7uGqEWutimdydBnJwJ6DwHM
	 41PfVXY+9tQcfT4lYHwGoxOCvp+kNi3/lyaWCofBp9ltS4QQsLO79u8fAmxyTyAiXP
	 hR/0K0f2TNClg==
Date: Thu, 12 Mar 2026 05:44:16 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: festevam@gmail.com, mani@kernel.org, bhelgaas@google.com, 
 l.stach@pengutronix.de, kernel@pengutronix.de, linux-kernel@vger.kernel.org, 
 kwilczynski@kernel.org, linux-pci@vger.kernel.org, s.hauer@pengutronix.de, 
 lpieralisi@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, 
 krzk+dt@kernel.org, frank.li@nxp.com, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org
To: Richard Zhu <hongxing.zhu@nxp.com>
In-Reply-To: <20260312092745.295578-3-hongxing.zhu@nxp.com>
References: <20260312092745.295578-1-hongxing.zhu@nxp.com>
 <20260312092745.295578-3-hongxing.zhu@nxp.com>
Message-Id: <177331225647.2535696.15664490600606531279.robh@kernel.org>
Subject: Re: [PATCH v5 2/5] dt-bindings: PCI: imx6q-pcie: Add i.MX94 and
 i.MX943 PCIe compatible strings
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,google.com,pengutronix.de,vger.kernel.org,lists.linux.dev,nxp.com,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-274524-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0665B270762
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Thu, 12 Mar 2026 17:27:42 +0800, Richard Zhu wrote:
> Add i.MX94 and i.MX943 PCIe compatible strings and fallback to
> i.MX95 PCIe compatible string.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  .../bindings/pci/fsl,imx6q-pcie-ep.yaml       |  6 ++++
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 28 ++++++++++++-------
>  2 files changed, 24 insertions(+), 10 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml:39:13: [warning] wrong indentation: expected 14 but found 12 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260312092745.295578-3-hongxing.zhu@nxp.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


