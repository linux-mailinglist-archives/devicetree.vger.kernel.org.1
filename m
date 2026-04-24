Return-Path: <devicetree+bounces-290058-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMHwKb9i62mtMAAAu9opvQ
	(envelope-from <devicetree+bounces-290058-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 14:31:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 391C845E747
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 14:31:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 48E5F30055A8
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 12:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B7B43CB2D8;
	Fri, 24 Apr 2026 12:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vdcj+rsS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772511D61A3;
	Fri, 24 Apr 2026 12:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777033916; cv=none; b=ojMXHmhw4woONgGxpiVXXeIf46MfBODAGZLtvpGedgTtuCBA697go2Ku4ayCItziu1FmpgEXPc9v2gAS9vNhnEw1TInk8TvU1T5I4isZPj6XaNZNT8vQO2HB66UArOnZxYEtNqzkos9i+e/NHqhisTUEHBR8whX52g6yYjZVjDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777033916; c=relaxed/simple;
	bh=GK9+WQJM6GBNOao/w4LCrjLyab9AiYr/M0fE61fgAJM=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=pw6jNuBGkqTnuvVBeqRSYhzwbEiQBACyDLgRoIX2qmQpVBM0SP0SEgn130C01kprwjnSXGxxneSoLNcz0pYXprYTORFJF/FLNsfXaRNEpOkScM+RzSfoCjPL879Nuf+62UbRUj5IYvrWwzkmelUxKwKu4pW/51TVsCFPfJR3TNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vdcj+rsS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9D19C2BCB7;
	Fri, 24 Apr 2026 12:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777033916;
	bh=GK9+WQJM6GBNOao/w4LCrjLyab9AiYr/M0fE61fgAJM=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Vdcj+rsSglufIK1l5d/RKfQmIk9HLv2UFu/VkLvzs2kJBUkM35zJAhIqTVx+Cb4UL
	 J3jsgCrSAVzi02XOP6INESfEUdH2gsb6zD6s6n9Pqba7Cudhr+hTrQECmlGohg+V7i
	 jFWlo8aRFzutXiKjLwyHxsp1CY/v2iUnhjsEbK8izKZT8rR1LUfsYR9vLLDNgxXStV
	 mQku5XO+NGJkc/nKtrVvKe3Nxhxqc/7h7csVYIO0pb1JW90Qr0zQ1m0qpV4miUTqcf
	 4OtPj8ssr7JYLD6O2uuvAkL5AqDBgWM6SFIkDeH8BNa7sbt72cWU/NFzOKANErELoW
	 HaCKwbLGg6vlQ==
Date: Fri, 24 Apr 2026 07:31:54 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 dri-devel@lists.freedesktop.org, Jonas Karlman <jonas@kwiboo.se>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Simona Vetter <simona@ffwll.ch>, 
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <mripard@kernel.org>, 
 imx@lists.linux.dev, linux@ew.tq-group.com, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Alexander Stein <alexander.stein@ew.tq-group.com>, 
 Robert Foss <rfoss@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Ying Liu <victor.liu@nxp.com>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 David Airlie <airlied@gmail.com>, Andrzej Hajda <andrzej.hajda@intel.com>
To: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
In-Reply-To: <20260424-dcss-hdmi-upstreaming-v22-3-30a28f89298d@oss.nxp.com>
References: <20260424-dcss-hdmi-upstreaming-v22-0-30a28f89298d@oss.nxp.com>
 <20260424-dcss-hdmi-upstreaming-v22-3-30a28f89298d@oss.nxp.com>
Message-Id: <177703391401.3671402.9330071570952735700.robh@kernel.org>
Subject: Re: [PATCH v22 3/8] dt-bindings: display: bridge: Add Cadence
 MHDP8501
X-Rspamd-Queue-Id: 391C845E747
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.freedesktop.org,kwiboo.se,linux.intel.com,vger.kernel.org,suse.de,gmail.com,linaro.org,ffwll.ch,lists.infradead.org,lists.linux.dev,ew.tq-group.com,nxp.com,ideasonboard.com,intel.com];
	TAGGED_FROM(0.00)[bounces-290058-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devicetree.org:url,32c00000:email]


On Fri, 24 Apr 2026 11:07:16 +0000, Laurentiu Palcu wrote:
> From: Sandor Yu <Sandor.yu@nxp.com>
> 
> Add bindings for Cadence MHDP8501 DisplayPort/HDMI bridge.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> Signed-off-by: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
> ---
>  .../bindings/display/bridge/cdns,mhdp8501.yaml     | 135 +++++++++++++++++++++
>  1 file changed, 135 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml: Unresolvable reference: /schemas/phy/fsl,imx8mq-hdptx-phy.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.example.dtb: display-bridge@32c00000 (fsl,imx8mq-mhdp8501): phy: False schema does not allow {'compatible': ['fsl,imx8mq-hdptx-phy'], '#phy-cells': 0, 'clocks': [[4294967295], [4294967295, 248]], 'clock-names': ['ref', 'apb'], 'phandle': 2}
	from schema $id: http://devicetree.org/schemas/display/bridge/cdns,mhdp8501.yaml
Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.example.dtb: /example-0/display-bridge@32c00000/phy: failed to match any schema with compatible: ['fsl,imx8mq-hdptx-phy']

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260424-dcss-hdmi-upstreaming-v22-3-30a28f89298d@oss.nxp.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


