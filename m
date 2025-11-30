Return-Path: <devicetree+bounces-243197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1BDC9512D
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 16:16:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E4DD3A314D
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 15:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 935191F5851;
	Sun, 30 Nov 2025 15:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqNF5ci3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9571E0DCB;
	Sun, 30 Nov 2025 15:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764515751; cv=none; b=KuNV2rq9XEruDsePY0LKo38qDKK/fWnlbJaQ64NJae+taup/U9h1si8UkPG4U9GGRxISVrn7YP4cdGnuxQEip4qrGsHUOCzA/HEH1M+4KmndUp771lI1XDU/iXKgjX3jQBibOT+fEj1AyFea7Xz+lBhqFbxujVW+nreNwI7SEOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764515751; c=relaxed/simple;
	bh=hMizoJdXUR5jj48wInWzYGy+PF1KqvVUCrqSYZVjpBE=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=M+z3bZklZ7UwlWDXgjgY+TMAK48qkXY3yE1t5HSWP7bpfbpEsy6mBXaHHQFwuEE0bT3nTDKRH7U6TQO23bEXgWtwaKDTlz0UUQe1ZZbs7rFKhuopOrgie1bM0mY2b8IBQCLgMf9u33QAyKxhDkMRSUYcEkgZXc0zq4udaHqynU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqNF5ci3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1578C4CEF8;
	Sun, 30 Nov 2025 15:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764515750;
	bh=hMizoJdXUR5jj48wInWzYGy+PF1KqvVUCrqSYZVjpBE=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=IqNF5ci3EiLuQUlGIjLJCNcg4Qe81EAX9pOR3uYIDEiwJiyUDqvQd8ChVSoSGllhM
	 rIzy3np2qM1hAdQNtneM3ifCrmE45B1bsfR33dQAQtvHdr+5XeQqipfruCqz4Zih+w
	 rqi5iSzYajSSGgDE4KiKMfjTp9t/LiQHqMln2XbLbm/9EqOfTijmYuWKHxLpDTr4aY
	 pyT5p0hRiPPZNqtLGYX8xPxy5VwGAUxbJEDiWHeEX7m8rz9M0kAtmaPOObVeTJ6trJ
	 mDDX/LMGVPDQEPvX0exISE0KrvsZTxvL4wIPQbMge2Hsleb+eXUcvw1A7cuLxe6QV/
	 q87q8crCsVh5w==
Date: Sun, 30 Nov 2025 09:15:49 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: thierry.reding@gmail.com, conor+dt@kernel.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 mripard@kernel.org, airlied@gmail.com, neil.armstrong@linaro.org, 
 devicetree@vger.kernel.org, maarten.lankhorst@linux.intel.com, 
 jessica.zhang@oss.qualcomm.com, tzimmermann@suse.de, simona@ffwll.ch, 
 sam@ravnborg.org, krzk+dt@kernel.org
To: Renjun Wang <renjunw0@foxmail.com>
In-Reply-To: <tencent_FD75580BB3BF35F44985E237E7DE56BE2407@qq.com>
References: <tencent_FD75580BB3BF35F44985E237E7DE56BE2407@qq.com>
Message-Id: <176451574938.1028542.3454025128487626115.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add HannStar
 HSD156JUW2


On Sun, 30 Nov 2025 22:35:27 +0800, Renjun Wang wrote:
> Add the HannStar HSD156JUW2 15.6" FHD (1920x1080) TFT LCD panel to
> the panel-simple compatible list.
> 
> Signed-off-by: Renjun Wang <renjunw0@foxmail.com>
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/tencent_FD75580BB3BF35F44985E237E7DE56BE2407@qq.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


