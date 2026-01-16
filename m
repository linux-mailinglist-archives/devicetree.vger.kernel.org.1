Return-Path: <devicetree+bounces-255827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CB8D2A07B
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 03:19:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 88BC23007669
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 02:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 456663126A1;
	Fri, 16 Jan 2026 02:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9H4UuNd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E5F2222C5;
	Fri, 16 Jan 2026 02:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768529975; cv=none; b=SS05rvyoPBS6DqWyBv46q71pjuaoKo26VXp5+tChE+0CRlicEc/941s9Jym4KCB0RNAFH9LqKcmNDKlp7NvQpaDvHXIJevBFOLcU0lS2YhI51m9m7u9Bcwjb3ISXvCetZhCuyUGr3hi0DU7Pn9prI81pu+Q4SaP9nKyd3hluJuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768529975; c=relaxed/simple;
	bh=n19BO7MPLNwQuRYYioniDrJ0SfDC8NE/pXsgsfX4ako=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=lir+02PmbtOntm4s45TEKutAluJnXkyIfz2JU/dxW2Fi70Omm7kf7K8i9IuE1R038dDDTL5+A8uIm6MrEmZHV7IrYpQYrrSQ/5KMwsqGcUsYbfU9K56dTB3PdmpMQuUBWQ/e69I9usIwDNNgFT9NmXFeIDEmBvzjSQw7ZF0yeFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9H4UuNd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E212C116D0;
	Fri, 16 Jan 2026 02:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768529974;
	bh=n19BO7MPLNwQuRYYioniDrJ0SfDC8NE/pXsgsfX4ako=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=I9H4UuNdU35Xac09Te+mzVVtGN1Uxd+pVUCpHVhrDvWUSwx+O5WXwVOTXHBo8/Hph
	 HWKlVc7FRYl771NgNzQGbo4lV/FEstPCEjLPoKE7FIZsdOPZxCw9No9zH5HrNj132/
	 3nTy7tYP69kz1HM0ZkDYUZVVBg28PDTVmBlNuHkeYYCwk6+vGSkt1URS9qqS3QJH6i
	 4nDPAT1yT+LM2tq6A3SqkIjyBUM3JhxE6ZKOs1hDmGQ17+Z0YDUZRZj9l9SLPSE2RH
	 D0+0hp/BVK0wv3XJk+S1p+oRB6FX0DgcZMIoeDWj8hnFneljfBqNPfBCdqjQsjOsut
	 Y7EsjW6Vb+BDA==
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251029-mt8189-dt-bindings-spmi-v1-1-fbea12a4ed5e@collabora.com>
References: <20251029-mt8189-dt-bindings-spmi-v1-1-fbea12a4ed5e@collabora.com>
Subject: Re: [PATCH] dt-bindings: spmi: spmi-mtk-pmif: Add compatible for MT8189 SoC
From: Stephen Boyd <sboyd@kernel.org>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Conor Dooley <conor+dt@kernel.org>, Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>
Date: Thu, 15 Jan 2026 20:19:32 -0600
Message-ID: <176852997268.16445.17842151987828757552@lazor>
User-Agent: alot/0.11

Quoting Louis-Alexis Eyraud (2025-10-29 08:31:16)
> Add compatible string for the SPMI block on MT8189 SoC, which is
> compatible with the one used on MT8195.
>=20
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---

Applied to spmi-next

