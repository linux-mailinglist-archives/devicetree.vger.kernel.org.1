Return-Path: <devicetree+bounces-254759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E38A9D1BA41
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 23:58:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9ED95301A490
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 22:58:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D41934E74B;
	Tue, 13 Jan 2026 22:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kikfzoJR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF08931ED95;
	Tue, 13 Jan 2026 22:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768345110; cv=none; b=dwQiAk6mE6+mGHAUwanwduNAjp88Or/ppPsmA3VIVD3AGQ3O9J+dVucoSOwJUekZRHAy96uU8bYh/fe/sUAkIlebFIiXb0lwMnxSer6w0v8/NqxalLo7u+WYP6LpiGnJFTBUEqdO+3H1YZdqP0hgFPT0w2q3xeBG6aSTt2ExsYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768345110; c=relaxed/simple;
	bh=qSJ9XSZUSAIC+BNVE3Pm52Wp8VS9JUS/71ElN20sASY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R8xKciMPCo9P48nejHsjMbP+ASXTPH1FOHsz4DKoV5Sjm6+WK6U9p961EdZKvvEmZ6P6ICUYrLXD+uy7RgmYaLb4xFZ0tybbgQR7RPD+VCs7c+m7OJLPuCbo9FXxjRwImeO0O6RM37wr1MIIHUlJXrcWNji6rTBxFdJqGbkbu8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kikfzoJR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FC32C116C6;
	Tue, 13 Jan 2026 22:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768345110;
	bh=qSJ9XSZUSAIC+BNVE3Pm52Wp8VS9JUS/71ElN20sASY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kikfzoJRNhDZJM+6dhvq1BpkdAbdwfoMeYA5shoHDph8P6bRtK/qs1QtZ/GSkVVcl
	 rlH+Oy6EQbSFoXThT7T2zKvDnBazO7JyZ1gdmH9B/5NbtLLhuRYUKTLor1DTIqdUnZ
	 ABX1ivnUPPAQ/Jyw1Bn3Qc90ZK7bk9dj/KGb7xAfHLucbIsm6b21jH7A7kxIBYvOyO
	 6kqvJQGHsrd8k6D4YkkgHYLnSOH9jq80HWfAN9LfAKBCZweANvFByPtYp0kd7YZQKo
	 WtPdvwhoUdS1+ww6hmOOdvuE+3gNZ5ta8MgrMvvkaFLRKlCzDnlp8VJYJlt/xScNDS
	 /zBA0kcFyNi/Q==
Date: Tue, 13 Jan 2026 16:58:29 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: linux-kernel@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
	devicetree@vger.kernel.org, linux-mtd@lists.infradead.org,
	Angus Clark <angus.clark@st.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Richard Weinberger <richard@nod.at>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: mtd: st,spi-fsm: convert to DT schema
Message-ID: <176834510911.392089.15073442185735662277.robh@kernel.org>
References: <20260106-st-fsm-v2-1-7e0a2e18127a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260106-st-fsm-v2-1-7e0a2e18127a@gmail.com>


On Tue, 06 Jan 2026 15:25:43 +0000, Akhila YS wrote:
> Convert STMicroelectronics SPI FSM Serial NOR Flash Controller binding
> to DT Schema.
> 
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
> Changes in v2:
> - Modify commit message.
> - Remove "pinctrl-0" from properties.
> - Delete maintainers list and add "Angus Clark" to maintainers.
> - Link to v1: https://lore.kernel.org/r/20260105-st-fsm-v1-1-d1dd935ccee4@gmail.com
> ---
>  .../devicetree/bindings/mtd/st,spi-fsm.yaml        | 68 ++++++++++++++++++++++
>  Documentation/devicetree/bindings/mtd/st-fsm.txt   | 25 --------
>  2 files changed, 68 insertions(+), 25 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


