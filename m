Return-Path: <devicetree+bounces-80953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AB82D91ACCD
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 18:30:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 17701B21568
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 16:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5EF4199EB2;
	Thu, 27 Jun 2024 16:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BA6w7wii"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81C4D1993BF
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 16:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719505765; cv=none; b=KvnmBuovNrudgAFVuGvKo7AWkwdy3T1EVNPQTy2z6mnKFMifxaeFh+TBSABe167fm5mQVwKIH/8H9TtwgtgyB89LJsrGUTvHnfzsDf8TwiO67Fej+3aFVe1NcrTqfRCEx2eQwNRZRY3hkFVdhfs/d50Hf7tFJ295oRT+8RZ37l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719505765; c=relaxed/simple;
	bh=5X0PSLb0yF01n+91IhXWNnt7Q/KdCDlBNzDWnTcnx94=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=q6WOX65dNd+qTlgTMOceh4Smx7Z+14BN+XXNQXsJ1fTSrL5PCAS0Qw9nZ/jhGOgKJKfEpszDQcurvUF3QQUzQ8gLxYCM/y1xRdyC0UzSPz75NCn67+4QAh6DmUJRFleQTVEedttUEGy6VMs/bP1ueH/jizPKdijo/YMflPMq8+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BA6w7wii; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACC26C4AF17;
	Thu, 27 Jun 2024 16:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719505764;
	bh=5X0PSLb0yF01n+91IhXWNnt7Q/KdCDlBNzDWnTcnx94=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BA6w7wiiooA8+OfKgI+dYmnfFj3enh+xsC0Owj7UoxQb9XTHA2MNIZCA8eQiKVDWe
	 o0bXM+Vt9JPaECKBfFN2/XBDiYyY4c8FXLbGQ/IYlAp0WslfbJQPtdnBeYm7UqPSiA
	 Kqq1yBeCPk6r5bCA++MoJzAjAKn5KrQMlCzRbeZ8IAna9UiZMwRmivgQZxnUPQ3Cx0
	 1LeKoGVxUCFbfYnG2/qfN6Z9NY/OpeHFvk82eDob4tKPc6xpeQqq4aqnXI0TrvVRl0
	 1kHke0DCx1ZqBunrGyxvldLrGo1B7l5+CEoh55E4kf6pucXtWmQ9XFqZvfEMYwVnW+
	 OfOvemlJ3UnFQ==
From: Conor Dooley <conor@kernel.org>
To: devicetree@vger.kernel.org,
	Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Lars Povlsen <lars.povlsen@microchip.com>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>
Subject: Re: [PATCH 1/2] MAINTAINERS: add microchip soc binding directory to microchip soc driver entry
Date: Thu, 27 Jun 2024 17:28:50 +0100
Message-ID: <20240627-scrap-negation-8e123d3b20fb@spud>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240626-platter-scarcity-d503fda8a2fd@spud>
References: <20240626-platter-scarcity-d503fda8a2fd@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=612; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=PTvFym4rdPJlaAKbIdX5qRBKftBmQ/NY6mD8h77b7ZU=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDGm1k51eXTZy0Wrk3Vxw88XbhzWts+fuPOl7VX/Ge58fY U9FrbNvdJSyMIhxMMiKKbIk3u5rkVr/x2WHc89bmDmsTCBDGLg4BWAiTxgZ/nsEJ8vGbtV5tF66 4oPwXhMXR+9mkx97+gQevHHLmGkxTZzhn2Z/XO/NB1d++5quENHjXWiVVMPKl6M4PeWgoxlH/jV +ZgA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

On Wed, 26 Jun 2024 16:54:16 +0100, Conor Dooley wrote:
> I noticed that there's technically not an explicit maintainer for this
> directory, even if the files currently in it are covered by either the
> Mircochip FPGA or AT91 entries. Add it to the entry covering the
> corresponding driver directory.
> 
> 

Applied to riscv-cache-for-next, thanks!

[2/2] MAINTAINERS: add cache binding directory to cache driver entry
      https://git.kernel.org/conor/c/4ca47d8bcca0

Thanks,
Conor.

