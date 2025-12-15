Return-Path: <devicetree+bounces-246620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E81CBE511
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:36:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6D4FF3018251
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:35:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3FAD32A3C6;
	Mon, 15 Dec 2025 13:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+JFZvLU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A674B2F3614;
	Mon, 15 Dec 2025 13:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765807155; cv=none; b=Si5ZV2HjcCBKQwRFoThGFZFEJF6X/KDLB3S4FvXZujC0hABegxhFw1Ft1zJ+UXlX3tFM7f6TO1S+t9EjXWcaDZT+WcuJNzSXDCdcS/10FA2BGxo3/xwfZpC4HKyJ1jISJ94CErblo0B72YP1fKsT425xzA0Ekv3YliICmb3rdVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765807155; c=relaxed/simple;
	bh=gAjxQ95nBjRgjEhx9zfTy435ZziBuBBQZyAypyJoWkc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=CciRfQVjmolVJUWr3WAomAxmhO5rlRa/eIxC8ys0rty+TsaaTyv0NJJzVo/mxyrEM+8nTDeNh7LKzJUd2r4EluvRIHONeuPrsqdvE6UsZCsFw2obnyW5mOwgn5TP3EEQOdTYFWZ2BXwbIIBEd3+BcUSG/f34YJleYqkArvRLR6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+JFZvLU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 212A1C2BCB7;
	Mon, 15 Dec 2025 13:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765807155;
	bh=gAjxQ95nBjRgjEhx9zfTy435ZziBuBBQZyAypyJoWkc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Y+JFZvLU5NZQmKdTdsAmKKli4/6Pj6vSQzbG4Mr71NYcNNMzS4pTwOrwtsN+moM7P
	 n/KmoiGQyADgEFSAr+hr+/1p6008H6xf4W78mqF9fhkW4I3/1Bxa4opsJreqVBiGnV
	 ybc59mBg13QShFvosohGL4G1UspaGKDc8g43cuEe0jM+mwEn3flc2IXj+yZLv/NAc6
	 TOEpEwRrjVTIyA7zZY0VzgBXvT7ncKRAVvPWHeweeS07Q8O+yMw6uiobU2UhHLQkf2
	 5HmCtU6dP16tjq1NPVpGnmWDfOtKKYOC8UdItkFF2pSpcJJpLFPD5aDu4RcDuI4FuP
	 gIoxSYEbTfMbA==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, 
 Joan-Na-adi <joan.na.devcode@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Joan Na <joan.na@analog.com>
In-Reply-To: <20251207032907.4850-1-joan.na@analog.com>
References: <20251207032907.4850-1-joan.na@analog.com>
Subject: Re: [PATCH v8 0/2] Add support for MAX77675 device
Message-Id: <176580715356.161338.18273809655425956127.b4-ty@kernel.org>
Date: Mon, 15 Dec 2025 22:59:13 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-47773

On Sun, 07 Dec 2025 12:29:05 +0900, Joan-Na-adi wrote:
> MAX77675 regulator driver and device tree bindings
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/2] regulator: dt-bindings: Add MAX77675 regulator
      commit: 05a0fe8e43c876ffd2befb5a406d3baf3179b9fe
[2/2] regulator: max77675: Add MAX77675 regulator driver
      commit: 9e92c559d49d6fb903af17a31a469aac51b1766d

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


