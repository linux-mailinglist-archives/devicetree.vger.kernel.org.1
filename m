Return-Path: <devicetree+bounces-253251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 738B9D08E2E
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:29:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0086B300760A
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E97432ED2C;
	Fri,  9 Jan 2026 11:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7chHr5G"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13D9322B77;
	Fri,  9 Jan 2026 11:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767958111; cv=none; b=W9ppaj9CGCofmwvM7SJ6myRqdOz9tSm88FMR8KPRrYY9AqufuVdgSdiHwDea3SAvZ8C0dWmgGTX8ZoxAbCPq7nu4UtlQPN32t+HghmEIniTb6y3DpBdYSIYBkmYGjTdjzqIG69GVn1FsXnbtAGJjZ51C7UM2o7GMwEStTZID8qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767958111; c=relaxed/simple;
	bh=7PkNtVBK6u/S9WGFz26+J3js4nL3wD6qFrYuak46JlA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=G6ikypwjm7LS/LzeogUgQPIhdHsCZQW1noTlk/XiNo32GPPC8VSOoLE7JlwVEjZCq6lD1T0S4KuoO0PqFeqiqbi33Y3EA9WHB+czuFZVMBxTDKBib50vgusXABo5CtnXPWl3BCaJ2bYgIaj2PEEG6mXYKKZyXTcWxdEoH5Wj+qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7chHr5G; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51488C4CEF1;
	Fri,  9 Jan 2026 11:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767958109;
	bh=7PkNtVBK6u/S9WGFz26+J3js4nL3wD6qFrYuak46JlA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=c7chHr5GNNnfJ6nlfPaOZw0GY/DK5LNGzvyoxr12Upan8/Fjk9JB3oYpMoQpMT2vR
	 Mf8QNGQXOnoeYXxac5R1MT1efzvG3K6TdhOHTcwiHop98SnTyCd/ujTS1ne6+g+V95
	 K8eLz0kd9NgNKictiIIfEtPwtMvjp9DtCeFUVUi4atOWBq6bMthSCxiEVV+Kqne67/
	 qNEviijz5yH6ys6kvECx90bld/BDey/txWCIFvnPq+PNzNtGdh3Ot7HB0PWvM4EA+O
	 VJBTi2w8Bm6bhG2D0DcA6jTajYBxXL8yUK5lKB9AsdrUF6DMyfVlOr7Gt4Cv5KDQEP
	 ONIQH0jlbI1YA==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20251215212639.3320085-1-robh@kernel.org>
References: <20251215212639.3320085-1-robh@kernel.org>
Subject: Re: (subset) [PATCH] dt-bindings: mfd: Add Bitmain BM1880 System
 Controller
Message-Id: <176795810796.1673984.84389428635512320.b4-ty@kernel.org>
Date: Fri, 09 Jan 2026 11:28:27 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15-dev-52d38

On Mon, 15 Dec 2025 15:26:38 -0600, Rob Herring (Arm) wrote:
> Add the already in use Bitmain BM1880 System Controller binding. All the
> child nodes already have schemas.
> 
> 

Applied, thanks!

[1/1] dt-bindings: mfd: Add Bitmain BM1880 System Controller
      commit: 6073d93368924ff5e7f6d1b848f80343c4ce27ab

--
Lee Jones [李琼斯]


