Return-Path: <devicetree+bounces-211274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F7DB3E300
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 14:33:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB730200982
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 12:32:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 545803376AE;
	Mon,  1 Sep 2025 12:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Sc3mWsNK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD822727E0
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 12:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756729785; cv=none; b=Ui16a5bn+PZQINEOuStILXhs5aUkv9TNf2l71vIQyX+WurViI3nSr3IAJtQ8M+hKb/kdzLLh7O5MiAZL6eTdx4Fx48RxHCBHt9tyle507h4qQQWeDbUYJAGwtfTD+hzd9fUXWzqp0127PIFF4v3C/85BtufG5eh6aqechE8dBZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756729785; c=relaxed/simple;
	bh=BXXJFNVnWqFWJdLmrPWmz1ytBvEbJCHfeL49wtsB9yk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ZQgeBVXpd1He94oE1pQKuKLAjBYOg67ydom4eDeH/XIiBXHS3WlLQbZXT79TKDKvqE4y+HXt+bktPEHUREbRrzu6O5VwKh1rAqYcuNVg3Kua5h84Rd7IgD7/7lJar+o6xEG8LU9XnuGXn02AUygAVvwFrOjIK8UBY+8H126ySjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Sc3mWsNK; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 23AA11A0A08;
	Mon,  1 Sep 2025 12:29:42 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EDD1860699;
	Mon,  1 Sep 2025 12:29:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3F5951C22D87C;
	Mon,  1 Sep 2025 14:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1756729780; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=cWgoH2Dk3tP8+kSxnwvn4KHgYnZS93diogUKlzT44bQ=;
	b=Sc3mWsNKvebbzs3fTPRX1biLkJfchmfJkPG9xud03MuTJkxYOw1f6UtPBR6QcYZybftTOd
	HgLuk6jeBaA8OLkkFNMqN1QB1RqV6fx+T84104BcmgpBL9gdVSypKK50rKzKOeEBSxqcOW
	xCn9lFlNpqSTZ0McAu0gjyabQ6+RDYYKsCNyaHF8FMsi7b+J+nbWLoJntU8IL14fij0JKA
	zdHZLKwx1ZIzo8zoAd5OAQWvgX2mV8ACVVGbx2WLn8Z+S3uxfHnk9bQgayiv+bohqXQbPe
	j1QWmqM+iKbbs1HVDr83yckEFJa1c2ynPYqF/q/oXai/olZnPPm1r6qMNl6fgQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: richard@nod.at, vigneshr@ti.com, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, Amit Kumar Mahapatra <amit.kumar-mahapatra@amd.com>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, git@amd.com, amitrkcian2002@gmail.com
In-Reply-To: <20250623105445.2394825-1-amit.kumar-mahapatra@amd.com>
References: <20250623105445.2394825-1-amit.kumar-mahapatra@amd.com>
Subject: Re: [PATCH v14 0/3] mtd: Add support for stacked memories
Message-Id: <175672977534.48892.6856890804594361623.b4-ty@bootlin.com>
Date: Mon, 01 Sep 2025 14:29:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-Last-TLS-Session-Version: TLSv1.3

On Mon, 23 Jun 2025 16:24:42 +0530, Amit Kumar Mahapatra wrote:
> This patch series adds stacked support by enhancing the existing mtd-concat
> driver to be more generic.
> 
> As background, a few years ago, Bernhard Frauendienst initiated an effort
> [2] to achieve the same, which was later adapted by Miquel [1] to introduce
> stacked mode support. In this approach, partitions to be concatenated were
> specified using a DT property "part-concat" within the partitions
> definition, allowing two MTD devices to function as a single larger one in
> order to be able to define partitions across chip boundaries. However, the
> bindings were not accepted. As a result, the mtd-concat approach was
> dropped, and alternative DT bindings were introduced [3][4][5], describing
> the two flash devices as one. Corresponding SPI core changes to support
> these bindings were later added [6].
> 
> [...]

Applied to mtd/next, thanks!

[1/3] dt-bindings: mtd: Describe MTD partitions concatenation
      commit: a7c81ac328a6dddf51588ecc7a94f56da34c7875
[2/3] mtd: Move struct mtd_concat definition to header file
      commit: 08be224e3965dc716460ee62ddf1f30421049bed
[3/3] mtd: Add driver for concatenating devices
      commit: fa47dc8295194a03c9182945805b617b01447ae9

Patche(s) should be available on mtd/linux.git and will be
part of the next PR (provided that no robot complains by then).

Kind regards,
Miquèl


