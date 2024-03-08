Return-Path: <devicetree+bounces-49277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 884C4875CCE
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 04:38:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3CA5D1F21E39
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 03:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAEE62C1A2;
	Fri,  8 Mar 2024 03:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pT+PbecW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B528B5C8B
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 03:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709869098; cv=none; b=lIeYwZX/oqWybR5qDGsFhgZ8Ghq9qmN+iQP0HRKX4qX/NdhGR/aP9BUxCFu1kAGJtGdc/Bd7wmCy3il1buudZX4DBopv09BYb2xczOjkhaId8jSo9ai707k5ubQ0a1jeJAmSCFemA3X5wIkA2nxm7YWnKLKkayE5/3XAme6vf9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709869098; c=relaxed/simple;
	bh=8Ut/HJVz+mHmfuPuFyi8iubl66qlZqHRc5BShFqhLdA=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=WzPInsmL1lZh9Hbe650/sIHxsZfYiNvGUccsJX/624RqtyV4vxSdNT5BNkmzwwlfIWPiY3xVUt0D8RA2rIkCkCxh2THzwhbu1eAL4wc+sRKSrXhfddbHcJxNvlYezedScWQFxbCclG+FYJvAbIZ0kWVRPZWNo/UI2waAvRbU9Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pT+PbecW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09F4CC433F1;
	Fri,  8 Mar 2024 03:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709869098;
	bh=8Ut/HJVz+mHmfuPuFyi8iubl66qlZqHRc5BShFqhLdA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=pT+PbecWuHgv6dp1SYNRPGCopVGFpPzjDBIzy5IT79QDLfDhqYufzY1AOinafuLtA
	 tPSkcgnEjEPxIj2jjofirrSpGbplgHEeXNdsOESC0MnaFItFiJl0mr/N7UZyCqdqRO
	 qGQuHraZn+yh0B+lqk+W/yjWgtyjorzD8d/1ySzl2jHP+LBcCc2wIJKw4QXoOpQc86
	 zW60XfcycXQPRV365x9L1vVHf8YkqQoQJpLF6CmP7zQoDWxKqttORb5kMBZggDF4Zw
	 9j8hJVrqnUL6N/BotB1NtJyViRbt/OA7lCey7J5pPZQzuC36XSaogTCZ67Z6N4269P
	 u6jfTli8uYg6Q==
Date: Thu, 07 Mar 2024 21:38:17 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Dorine Tipo <dorine.a.tipo@gmail.com>
Cc: skhan@linuxfoundation.org, javier.carrasco.cruz@gmail.com, 
 vgupta@kernel.org, devicetree@vger.kernel.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, linux-snps-arc@lists.infradead.org
In-Reply-To: <20240308021842.1975-1-dorine.a.tipo@gmail.com>
References: <20240308021842.1975-1-dorine.a.tipo@gmail.com>
Message-Id: <170986909603.3525341.12390422749723437881.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: pct: Convert to dtschema


On Fri, 08 Mar 2024 02:18:42 +0000, Dorine Tipo wrote:
> convert the PCT Arc Performance Counter bindings to DT schema
> 
> Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
> ---
>  .../devicetree/bindings/arc/pct.yaml          | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arc/pct.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/arc/pct.example.dtb: pmu: 'reg' is a required property
	from schema $id: http://devicetree.org/schemas/pct.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240308021842.1975-1-dorine.a.tipo@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


