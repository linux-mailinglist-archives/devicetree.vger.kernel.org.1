Return-Path: <devicetree+bounces-141025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE88BA1D27D
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 09:43:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56DBC166541
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 08:43:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D12E1FBEBD;
	Mon, 27 Jan 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stPSlalc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310768C11;
	Mon, 27 Jan 2025 08:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737967433; cv=none; b=oy5vvK2wgW6tS7LK673eL8jLwV2r3HbncKp5kdSWXZxfmUy1mQvh6yTfEB5ZtConrLsGe8kot8jpyWyyNyZb7pXs7ALttxOFoKNUBvWiZn2OPOKDGZ+i6yrrU9q1mavL7SpDAHTM4CN4CHTGQrwWNlcBkdSfjSSEjUuLeAP6xrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737967433; c=relaxed/simple;
	bh=jLX2rDd3SzantgTErJwwxmWIGZdNZQCcLp89H0S17hQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YXAKubrezVuElnh0rIgF8jawlfmQrtGs6oUyvwIg2ekiO2XDbTG7k83LWKgAb1g3sMbiNV4nAwx1/7fzoGdPgCl56L+CkndY5T9pxa7T4MxrEzJ+UbXFuwpv+I/eC0u7nK04kn2j9Ih7XNnG+LRWD1HBeNaba2b3gCwbPQpFEk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stPSlalc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E59D3C4CED2;
	Mon, 27 Jan 2025 08:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737967432;
	bh=jLX2rDd3SzantgTErJwwxmWIGZdNZQCcLp89H0S17hQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=stPSlalcbrxVIbCYH+u79LVjyyJ+qf05Ji0dIjBEMKNeCQ6LlbbNnjgeDvvxTJgKn
	 ohQ5Whe081H4oHnFeziuQCLpJ9UTus7xNZsZySB2vEKC7dWYxo94k5JGbZgljuXNCg
	 I0cDRe7KWJ9ue4ikcj0rGBwkXvzCZRUOyo2O9NcfqXuvNZPWW4hfxJwc9/Zt30zH8Z
	 /rJ0MsT83MqxLsEcr2X5uNvEjLMSxtPzLPEC7wzSSgAKD3Zz9a7NEVg9jwMDdzBwnb
	 0Wf8qp5821CxDB93Rivg2pqKF6g8X1YfwMEFcv1lqzoaDfpP4W5QXGc/G35bRygxq5
	 8vuapDbzP6MoA==
Date: Mon, 27 Jan 2025 09:43:49 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, dianders@chromium.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: display: panel: Add compatible for
 CSOT PNA957QT1-1
Message-ID: <20250127-copper-dalmatian-of-excitement-c474da@krzk-bin>
References: <20250127014605.1862287-1-yelangyan@huaqin.corp-partner.google.com>
 <20250127014605.1862287-2-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250127014605.1862287-2-yelangyan@huaqin.corp-partner.google.com>

On Mon, Jan 27, 2025 at 09:46:04AM +0800, Langyan Ye wrote:
> Add a new compatible for the panel CSOT PNA957QT1-1. This panel
> uses HX83102 IC, so add the compatible to the hx83102 binding files.
> 
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---
>  .../devicetree/bindings/display/panel/himax,hx83102.yaml        | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
> index c649fb085833..d876269e1fac 100644
> --- a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
> @@ -18,6 +18,8 @@ properties:
>        - enum:
>            # Boe nv110wum-l60 11.0" WUXGA TFT LCD panel
>            - boe,nv110wum-l60
> +          # CSOT pna957qt1-1 10.95" WUXGA TFT LCD panel
> +          - csot,pna957qt1-1

You need to add such vendor prefix first.

It does not look like you tested the DTS against bindings. Please run
'make dtbs_check W=1' (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).
Maybe you need to update your dtschema and yamllint. Don't rely on
distro packages for dtschema and be sure you are using the latest
released dtschema.

Point us to your DTS so we can validate that you really tested it.

Best regards,
Krzysztof


