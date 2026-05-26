Return-Path: <devicetree+bounces-302940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AP4WGI5mFWqVUwcAu9opvQ
	(envelope-from <devicetree+bounces-302940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:23:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 546A95D3388
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:23:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 79C90300BD44
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 09:18:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4BA93D5C06;
	Tue, 26 May 2026 09:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BW+vivDS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98BFF33F5AB;
	Tue, 26 May 2026 09:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779787132; cv=none; b=T6gOVF1zeuHQ/hVu3L2ESlWKs0FB2lkMpXZTO38HzyTNyREz3ADTIgLNbMkBoPm9furHlUl5jQ2GfYXQbS0/+/k+9uK7YaNxH7SZzpu8/Rceab4lXp3/YP3uQoAg4lg5bTCs3fMp30nsYeJ6HNwkCyGGhsoYRh7WRxgQbUr8+Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779787132; c=relaxed/simple;
	bh=0ETd1Jt6YxKzgm3EOdK5RT2ztbo4n7tcmqn7nISRKYE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=p19mjgf1Spf5nnkohLvn4LgaRhTmuh6I4as4q+CTehgFcuIpT9E0mYieAbeZ5tIWpdgBFl1Bdb+VqA0kPPh+dPatQUl8+5ZT4VdBOpo3q8DnbehrrXI3YyqpzcNcZApd7GTPP9BlUaeY9PA0KPBnCJeBHfg96Nj7LxYfZwueLiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BW+vivDS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFCB31F000E9;
	Tue, 26 May 2026 09:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779787128;
	bh=4fAwYv5601n3Mn8rVOFXUhflbHhd3iilupoPAXjNfrg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BW+vivDSCXqf4FWX8WiL4PmSVf+3tI57BUi0PQqh9x8+FiXAMxoIM9tYm3DpchR9r
	 9SK+v9AdBN7VyM05ed7i0Tac43YvXteCnANhGiQSwCoMA6oQOcZIkpbZ2Nkxbl1tLN
	 fbAChDyQicwOYM8xzAPbr9kRUcFOVl4/3p9EafE8uikUoX/aQe17ZgtwgxjihiNhay
	 yyTjPtvaQHP/zThlRH5InKvoX+7GZ9JLiQxE7xcnuNVkjn20aLXMK2BslOxH2hkvHu
	 kjV4t21sQlznCHOq7uC/4R21CGBa4tL0Qc/wY6u6Y1H6WRVMQaMflkQkfz5zYR1oZq
	 8pkqgwDvN6/iA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 2/3] media: dt-bindings: Add CSI Pixel Formatter DT
 bindings
Reply-To: sashiko-reviews@lists.linux.dev
To: "Guoniu Zhou" <guoniu.zhou@oss.nxp.com>
Cc: devicetree@vger.kernel.org, Frank.Li@kernel.org, conor+dt@kernel.org, imx@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260526-csi_formatter-v9-2-ca3d8c334c39@oss.nxp.com>
References: <20260526-csi_formatter-v9-2-ca3d8c334c39@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 May 2026 09:18:47 +0000
Message-Id: <20260526091847.CFCB31F000E9@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302940-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[4ac10000:email,0.0.0.0:email,nxp.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,4c100000:email,0.0.0.20:email,smtp.kernel.org:mid];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 546A95D3388
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Low] Unit address mismatch in the example's syscon parent node.
- [Low] Missing 'ranges' property in the parent syscon node in the example.
- [Low] Poor formatting in the device tree example block.
--

commit 1b3ddadbdea2fb3bc19aa036199bd1e0ef56413b
Author: Guoniu Zhou <guoniu.zhou@nxp.com>

media: dt-bindings: Add CSI Pixel Formatter DT bindings

This commit adds the device tree binding schema for the i.MX95 CSI pixel
formatter module. It defines the constraints and ports required to interface
the CSI-2 host controller with the Pixel Link definition.

> diff --git a/Documentation/devicetree/bindings/media/fsl,imx95-csi-format=
ter.yaml b/Documentation/devicetree/bindings/media/fsl,imx95-csi-formatter.=
yaml
> new file mode 100644
> index 0000000000000..61068ea0a69a0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/fsl,imx95-csi-formatter.yaml
[ ... ]
> +examples:
> +  - |
> +    #include <dt-bindings/clock/nxp,imx95-clock.h>
> +
> +    syscon@4c100000 {
> +        compatible =3D "nxp,imx95-camera-csr", "syscon";
> +        reg =3D <0x4ac10000 0x10000>;

[Severity: Low]
This isn't a bug, but the unit address in the node name (4c100000) does not
match the base address specified in the reg property (0x4ac10000). Should t=
he
node be named syscon@4ac10000 to match the reg property and avoid unit_addr=
ess
validation warnings?

> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;
> +        #clock-cells =3D <1>;
> +        clocks =3D <&scmi_clk 62>;
> +        power-domains =3D <&scmi_devpd 3>;

[Severity: Low]
Does this syscon parent node need a ranges property?

Because it specifies address and size cells and contains a memory-mapped
child node (formatter@20), omitting the ranges property prevents correct
address translation for the child node and typically results in dtc warning=
s.

> +
> +        formatter@20{

[Severity: Low]
This isn't a bug, but there is a missing space before the opening brace.

> +            compatible =3D "fsl,imx95-csi-formatter";
> +            reg =3D <0x20 0x100>;
[ ... ]
> +                port@0 {
> +                    reg =3D <0>;
> +
> +                    endpoint {
> +                        remote-endpoint =3D <&mipi_csi_0_out>;
> +                    };
> +
> +               };

[Severity: Low]
This isn't a bug, but the closing brace here is indented incorrectly compar=
ed
to the rest of the block.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260526-csi_format=
ter-v9-0-ca3d8c334c39@oss.nxp.com?part=3D2

