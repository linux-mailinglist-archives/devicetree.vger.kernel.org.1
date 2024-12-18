Return-Path: <devicetree+bounces-132300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 709CA9F6676
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 14:08:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0A5D16754C
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 13:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 504321BEF9E;
	Wed, 18 Dec 2024 13:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="fEmsBL4/"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A78881B0404;
	Wed, 18 Dec 2024 13:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734527155; cv=none; b=EOaqzWztGem/bjMhjOFafLdQ2Ab3y/kd4WZg2O4E925rm/yOmYhJUQGw/yU+PuCS675wyjTC6ktounh+bDW7ZeKXh/xvpPeiZ9YGKqf+A4CCBspi6uhZCyaHevV81Rl6g8LgS92AJ/L0YteJsJHQDhyyrRYashg3itZWVEOkdmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734527155; c=relaxed/simple;
	bh=0KrMokV+wQL81Chiv+4xRoYBQXtTHxMx2/rMRVnFj7o=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GNd5FIpq7VKhxx5IaXkiYvIUtJcgnlLOn8K3VZyPHB86EPuLvGARX6Y4KmeRJLPWYkQMZSeKcAjcCXTmsIhun5xG7jF8CRovHy2WYIMGSKGgwLyusKg+9YUCbvSDU+SwE+X6eiya6rEuJsON7MjDpL9YH4S28xIO8+fVtAprvck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=fEmsBL4/; arc=none smtp.client-ip=217.70.183.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 00C55FF805;
	Wed, 18 Dec 2024 13:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1734527151;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=So/rg8be4PTJLWyjimEFA5bN/6FPXZTGQpz7ancwLNA=;
	b=fEmsBL4/v3um5pyTvAcEzkq0mWvsyR+4IjjkZBjn5Wnq1imQ/S7mfkccuNgyVuA1m4bB6Y
	iWeOuiiQQMlbtiIFF099gbP4h3lPrKZnin35oi30ZX9w/688kymYOorrq+VKxsV7d0FMkY
	d5Zds62auWnHuHjevmE/yBwb0NhrgoxjdKJAzbxnj6NvF4a93F8ZRYIt76CSxiEkpZ7dyd
	yeG+OjQPfs7LwRYGTuZh9TPqtej8teqqF0XQAoWmCnfXVxQMElX7viK9lxWzd5BQFQkbCq
	40uCQIrZAJ8IyLvuYK2gO6JUTbCl7zXI2AsKX6P59hdOiPY3FO+T4/qPlQlhhw==
Date: Wed, 18 Dec 2024 14:05:48 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Conor Dooley
 <conor+dt@kernel.org>, Ayush Singh <ayush@beagleboard.org>, Geert
 Uytterhoeven <geert@linux-m68k.org>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Saravana Kannan
 <saravanak@google.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Davis <afd@ti.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH 1/7] dt-bindings: Add support for export-symbols node
Message-ID: <20241218140548.53e54d83@bootlin.com>
In-Reply-To: <173376158687.562854.15324053122820075954.robh@kernel.org>
References: <20241209151830.95723-1-herve.codina@bootlin.com>
	<20241209151830.95723-2-herve.codina@bootlin.com>
	<173376158687.562854.15324053122820075954.robh@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

Hi Rob, Krzysztof, Conor,

On Mon, 09 Dec 2024 10:26:26 -0600
"Rob Herring (Arm)" <robh@kernel.org> wrote:

> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> compress: size (5) error for type phandle
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.example.dtb: uimage@100000: compress: b'lzma\x00' is not of type 'object', 'integer', 'array', 'boolean', 'null'
> 	from schema $id: http://devicetree.org/schemas/dt-core.yaml#
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20241209151830.95723-2-herve.codina@bootlin.com
> 

I am bothered with this issue and I can't see what's wrong with my binding
export-symbols.yaml and why it has impacts on other binding such as the
example in fixed-partitions.yaml.

Can you help me in understanding what I missed that leads to this behavior.

The idea in export-symbols.yaml was:
  - Constraint the name of the node to be 'export-symbols' with:
      properties:
        $nodename:
          const: export-symbols

  - Constraint properties in the node to be in the form
      'label_name = <phandle>;'
    Many properties of this form are allowed.

  - Do not allow any other kind of properties.

I thought that only bindings referencing export-symbols.yaml or bindings
using the 'export-symbols' node name would have been impacted but it seems
the it is not the case.

Best regards,
Hervé

