Return-Path: <devicetree+bounces-133842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B489FBD80
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 13:46:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2FC807A1A71
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 12:46:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8F611CD1F1;
	Tue, 24 Dec 2024 12:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="nltQDPYV"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D221C1B87FF;
	Tue, 24 Dec 2024 12:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735044345; cv=none; b=o8Sk5ZEL+yDp63zMw252yuuROZg0ScM6NPnzcJJnkNGfAz0IPQ6abTK/pNXVq0c18GWJnz+M2yB8IssEFZGX6LPVLgux2ho6yVrRaE0Zmtdk28LQzdlw96qz8pS2J2wPMX9gNsE9H2dH85j1UwwKMreORKl2FgelhLBm/9RpWKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735044345; c=relaxed/simple;
	bh=rWCsGvD9QnfTuU6X99jcViPA6Eo+vPLARmv4GvK3440=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=obchVAs6xKXI98iYGP51XAeHAQTkFidF1GHxCzXNdorXUtKu4bGA0s/kIEFi2SqlSLSjfdjz2ztY9jgVQeiwo/TK3AIP0ND8NNt33hDlnL6YpLIuUmit+gwyC2xQa9O/5vgoe4lFd6BFQVrOwqHT4L1kz7cvwH+hnYCzOG3/Gxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=nltQDPYV; arc=none smtp.client-ip=217.70.183.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id D87361BF206;
	Tue, 24 Dec 2024 12:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1735044342;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=D9oHSSdzUgNNGO3HtvGsdVLx1zrHCaDWiTDtWXZrgxc=;
	b=nltQDPYVjooQOS7kOo8HIq5we9+uWO2/rZZipR0SSVEMpzr1yOfZvJNWbMYYk1QaDYcwle
	6HuZGkDXHMyCk5pklTB4g4q0S+8OFvE77j4IMQv2G37W+WMW75KiaP2unkiiooZ/ovZwAp
	MgceXaUxdM+n284Z+xlEzWQy0wQFMnu3YiA0rdw/dJClTqGL3XUGwKmUaAGkyvJGfGY6Gl
	r4mnO+vNv/QfdcdlN1mqUlQ3G0s+pXN1ijt3ZACr1UMvbOCbyS8OCERx81hzo7Tmx1gjmq
	DzTsB8OhOeHElBbKEaSAxsQCv/IOJ5GWm3gnH6J15J7/SboW95JMuAWYNnz9UA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: devicetree@vger.kernel.org,
	niravkumar.l.rabara@intel.com
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH RESEND v4] dt-bindings: mtd: cadence: convert cadence-nand-controller.txt to yaml
Date: Tue, 24 Dec 2024 13:41:00 +0100
Message-ID: <173504401427.1625053.3257683304271546231.b4-ty@bootlin.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241209081826.1242214-1-niravkumar.l.rabara@intel.com>
References: <20241209081826.1242214-1-niravkumar.l.rabara@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-GND-Sasl: miquel.raynal@bootlin.com

On Mon, 09 Dec 2024 16:18:26 +0800, niravkumar.l.rabara@intel.com wrote:
> Convert cadence-nand-controller.txt to yaml format.
> Update cadence-nand-controller.txt to cdns,hp-nfc.yaml in MAINTAINER file.
> 
> 

Applied to nand/next, thanks!

[1/1] dt-bindings: mtd: cadence: convert cadence-nand-controller.txt to yaml
      commit: 1f05f823a16ce0c310a1a50bfc2924a330ea87fc

Patche(s) will be available within hours on:
mtd/linux.git

Kind regards,
Miquèl

