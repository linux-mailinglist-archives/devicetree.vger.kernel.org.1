Return-Path: <devicetree+bounces-299111-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ahuCDj2XCmo14AQAu9opvQ
	(envelope-from <devicetree+bounces-299111-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 06:36:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8A3565B10
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 06:36:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F44C3006B2B
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 04:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5D42380FFE;
	Mon, 18 May 2026 04:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/xR9gXR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9082A37649D;
	Mon, 18 May 2026 04:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779078970; cv=none; b=edFekY8wtYVXmJOIuFbhADF7PGqCE3d2wvgWAGzFs/ceTyiELMvaqIB3dG/Z2fmUpGLqlnLY1uBFYPcKYbYglNvXQgkuFQWr1yYfT1pr7+AtFTMUL5Z0JlbGuSe6LI+9F/wStkFLj2qw/aNkfswi0ELRn3wFC3Y07y9atwAL3bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779078970; c=relaxed/simple;
	bh=JEPSreuah6T4boxYXAVzGh3P6xLFXZ0PQPG4DvjoprU=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=dyGFKXE3iykCG8G4VJ2mzwdNn7lLFix5pefYopWDySdYyMAz7xx/dl+amvUDV/1iZ54B6vG5op//s2PNrH+3TF0k20ht/qEyj9hJ3Fp179wdC8EmbB2bUE1TdyKROi98laJbPmGeUykeyzCYvRhpY6Wof6Vjp4H7QOoJ0i7mAA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/xR9gXR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F17AC2BCB7;
	Mon, 18 May 2026 04:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779078970;
	bh=JEPSreuah6T4boxYXAVzGh3P6xLFXZ0PQPG4DvjoprU=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Z/xR9gXROAfI1J4egeZRqDHcrA6bwqWpDcFClWx9owR2+ornhKjZ0TAtXofsZMjro
	 PIRZbqOZF/XqYdKUoZK11PyMX2c7juGSw2OgwOiLyj0vqF3v0HVR4N3nbNDlGBN63Y
	 pTU1hnnfFBFVErbDbqXlhW6OTTCrx5iTBMD4etlDrqZeptyBUxcjtUI60frc/A334m
	 vyf8LRPEOjmb141J3Ocz97+qhlCwxcb5ER5C4NnBt00GWb5VZRDZGPBmo0GwAwLgWH
	 mAGv3B7krHulDZI8InZ67rVQ7wpdtei8QpJ2CzGS035H5buHZ6QEaP+syBg0c+9gS5
	 cjXSFbIs5vh/Q==
Date: Sun, 17 May 2026 23:36:09 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: lgirdwood@gmail.com, kchsu0@nuvoton.com, neo.chang70@gmail.com, 
 perex@perex.cz, krzk+dt@kernel.org, linux-sound@vger.kernel.org, 
 broonie@kernel.org, devicetree@vger.kernel.org, sjlin0@nuvoton.com, 
 tiwai@suse.com, alsa-devel@alsa-project.org
To: Neo Chang <YLCHANG2@nuvoton.com>
In-Reply-To: <20260518024704.118613-2-YLCHANG2@nuvoton.com>
References: <20260518024704.118613-1-YLCHANG2@nuvoton.com>
 <20260518024704.118613-2-YLCHANG2@nuvoton.com>
Message-Id: <177907896943.890754.5956583926974686383.robh@kernel.org>
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: nuvoton,nau8360: Add
 NAU83G60
X-Rspamd-Queue-Id: 8A8A3565B10
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,nuvoton.com,perex.cz,kernel.org,vger.kernel.org,suse.com,alsa-project.org];
	TAGGED_FROM(0.00)[bounces-299111-lists,devicetree=lfdr.de];
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
X-Rspamd-Action: no action


On Mon, 18 May 2026 10:47:03 +0800, Neo Chang wrote:
> Add device tree bindings documentation for the Nuvoton NAU83G60
> audio amplifier.
> 
> Signed-off-by: Neo Chang <YLCHANG2@nuvoton.com>
> ---
> Changes in v2:
> - Dropped the word "driver" from the description.
> - Removed runtime/software configuration properties:
>   nuvoton,low-latency, nuvoton,anc-enable, nuvoton,aec-enable,
>   nuvoton,vbat-microvolt, and nuvoton,tdm-channel-length.
> - Added missing "nuvoton,dac-cur-enable" property for static speaker impedance matching.
> - Removed unnecessary '|' formatting from single-line descriptions.
> - Fixed typo in firmware-name property.
> ---
>  .../bindings/sound/nuvoton,nau8360.yaml       | 86 +++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml:25:53: [error] syntax error: mapping values are not allowed here (syntax)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml: ignoring, error parsing file
./Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml:25:53: mapping values are not allowed here
make[2]: *** Deleting file 'Documentation/devicetree/bindings/sound/nuvoton,nau8360.example.dts'
Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml:25:53: mapping values are not allowed here
make[2]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/sound/nuvoton,nau8360.example.dts] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1639: dt_binding_check] Error 2
make: *** [Makefile:248: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260518024704.118613-2-YLCHANG2@nuvoton.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


