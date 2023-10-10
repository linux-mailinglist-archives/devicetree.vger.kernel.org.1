Return-Path: <devicetree+bounces-7285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD937BFE83
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:54:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 03C031C20B3C
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16D7E1DFFF;
	Tue, 10 Oct 2023 13:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqie0jq2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF7DD1DFC1
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:54:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4631CC433C9;
	Tue, 10 Oct 2023 13:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696946070;
	bh=cpr5M03mDBi9QYzoamwhalraoyUpzQ9rzlWPtaN31MI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kqie0jq2vyoogMWRvJAmCpy0XZrj9Id0YaSWZ1cVu9uj2jqa9HjL5/o+RZKnFs+J+
	 n1OrbDDi5PUiu3gzfu0qXLRxnf8Q6Zu/qRHVdLk3NEv9O+tgrJke+c8x0iCyKdoQ9i
	 i+P13VS1iV9RAAmduOe/MrmxozQOzzchuipQvY7uJo8HjXk0qdnc4gLPMFhKLglKin
	 +FPWB30sL+qxyBzwOs8B4qD4dGeKLRBz+QPlL67lHBO8VGroXjMEg48a+YDxyYP+T7
	 B1NV5D5a94pZGL2142t6I0ZRLKSJBAWXgAfzTXylQizxTdKH3/L6KsE44EFYcQzrRF
	 jHbGiZnC6rPrw==
Received: (nullmailer pid 661704 invoked by uid 1000);
	Tue, 10 Oct 2023 13:54:28 -0000
Date: Tue, 10 Oct 2023 08:54:28 -0500
From: Rob Herring <robh@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org, Nick Terrell <terrelln@fb.com>, Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, U-Boot Mailing List <u-boot@lists.denx.de>, Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, Tom Rini <trini@konsulko.com>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v4] dt-bindings: mtd: fixed-partitions: Add compression
 property
Message-ID: <169694606700.661639.10236902968461331107.robh@kernel.org>
References: <20230927180545.3522628-1-sjg@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230927180545.3522628-1-sjg@chromium.org>


On Wed, 27 Sep 2023 12:05:43 -0600, Simon Glass wrote:
> Sometimes the contents of a partition are compressed. Add a property to
> express this and define the algorithm used.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
> Changes in v4:
> - Add an example
> 
> Changes in v3:
> - Just add a compression property for now
> 
> Changes in v2:
> - Use "binman" for compatible instead of "u-boot,binman"
> - Significantly rework the patch
> - Use make dt_binding_check DT_SCHEMA_FILES=Documentation/../partitions
> 
>  .../mtd/partitions/fixed-partitions.yaml      | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


