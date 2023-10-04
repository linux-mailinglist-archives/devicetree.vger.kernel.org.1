Return-Path: <devicetree+bounces-5790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EDF7B7E45
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:35:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0E350281511
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 11:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F96D12B93;
	Wed,  4 Oct 2023 11:35:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E4D811190
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 11:35:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4756C433C8;
	Wed,  4 Oct 2023 11:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696419313;
	bh=EKub7DB0kxiceubZBtND+wquahZHKwwMH5j2bwwGvZo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=E6myhdpplLeJMfThiZcQnD5TncbV3oJuuWCinlPuQn3k62ICZ8+K1qAe7EQ3P+ESt
	 x6o33yAOVmljx52m51Uqj3J5Ef+/6Zjv1Uumgy4uOj+QhZoDzNzLvfbSQuB0Ma7uf2
	 GWh+mHpReWV2wzYF2F2ON1l7PZG9NxLcHKuGCkTHgycbXS8cVWCSH1CH9uV9TWRntm
	 gKrqsO0Wx8WY6IV1emB+TGJeTnLYlhulj+hojFts5ksLDZ3dJc6vcJ24Kh5TPrBpzY
	 Yp2+jP9LJYd3sUDcB4fYX5EkjIFbCYHpVD7jPKnS59GLT78lyezPF2/oKNTNKgZk/x
	 s/fFrsndcc4GQ==
From: Michael Walle <mwalle@kernel.org>
To: miquel.raynal@bootlin.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	linux-mtd@lists.infradead.org,
	ptyadav@amazon.de,
	rafal@milecki.pl,
	richard@nod.at,
	robh+dt@kernel.org,
	robh@kernel.org,
	sjg@chromium.org,
	trini@konsulko.com,
	u-boot@lists.denx.de,
	vigneshr@ti.com,
	Michael Walle <mwalle@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: mtd: fixed-partitions: Add binman compatible
Date: Wed,  4 Oct 2023 13:34:58 +0200
Message-Id: <20231004113458.531124-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231004093620.2b1d6917@xps-13>
References: <20231004093620.2b1d6917@xps-13>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

>> Add a compatible string for binman, so we can extend fixed-partitions
>> in various ways.
> 
> I've been thinking at the proper way to describe the binman partitions.
> I am wondering if we should really extend the fixed-partitions
> schema. This description is really basic and kind of supposed to remain
> like that. Instead, I wonder if we should not just keep the binman
> compatible alone, like many others already. This way it would be very clear
> what is expected and allowed in both cases. I am thinking about
> something like that:
> 
> 	Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-partitions.yaml 
> 
> this file is also referenced there (but this patch does the same, which
> is what I'd expect):
> 
> 	Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
> 
> I'll let the binding maintainers judge whether they think it's
> relevant, it's not a strong opposition.

What is the overall goal here? To replace the current binman node which is
usually contained in the -u-boot.dtsi files? If one is using binman to
create an image, is it expected that one needs to adapt the DT in linux?
Or will it still be a seperate -u-boot.dtsi? Because in the latter case
I see that there will be conflicts because you have to overwrite the
flash node. Or will it be a seperate node with all the information
duplicated?

Maybe (a more complete) example would be helpful.

-michael

