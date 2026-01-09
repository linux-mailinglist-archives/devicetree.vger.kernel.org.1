Return-Path: <devicetree+bounces-253413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2BFD0C1C7
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 20:52:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A0E4E301C811
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 19:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 127713644D9;
	Fri,  9 Jan 2026 19:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="oyotgQCP"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D8C4363C66;
	Fri,  9 Jan 2026 19:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767988332; cv=none; b=q9YYpga95rfSPUHTwSnPnHplxT228FOB3ozDlUxUE2+Pnv7lDs20ZfPQWz98JxpJaUR+OHEX77frQv2NFFJdwM2rW4cQ/VhA51hL3OtXuF/mnfAAIrJsuJ3Uq/YU2NK7XXnNlrgtYKTxlgVghhJuoWtk7BOcwLDzf5wz3e1QwM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767988332; c=relaxed/simple;
	bh=6nkLwiSL/nkEeHbDFfuiL3QXGZ+BhB4teRyPWvWfhyw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NGqHGIBM4oN4RLVb7/L+lsOC6vee76U8lfRHGWQbxZNbC2AQgTOUSldpRsdmJ4F76sd/1tyRHQ82DBQOtwogOdU9Yp5snEZyT5HSWYTWsY4SvwLOy+9C04zNKpmifOrWuZOWa+Bnv/rkscJOgvXCqFAiUMHk87lyJKDLvNv9nBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=oyotgQCP; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=iaqcbPBY3IQoR0jtaZwk5gcsHRGbJRzX8r0itcBjzrM=; b=oyotgQCPVPa0I/XbNDCa1YmMKL
	ekf7praF1ph6I8glkCRAwpOIvV1zFIFJMyBOPucBdrNy1c4+8xYtQr3nru8hDVmZrEf7QXjl5tOs7
	V2b9JHHpxIWwMsmntZOT2TKl+dxQWaMoAKvqrU9P34O0aIKHWxJIYVOHurTMp5JWyxlwl3OajJYpN
	krhbM/Mluuz59vOAi651dGZbwwP4z3l/GzL+18BKpBNAMvhW+hd1KJqgkvYL3gct16wdgjZ6awbUB
	jSKiIVCyRTx8W670L28JQ9n3RTVjPGXrCYbVowULehIj6+I9A2K/rt6iLo3DXfSbee9/Ma2VtdOpq
	SdmSZMsg==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veIWj-001fth-Ft; Fri, 09 Jan 2026 20:52:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3326-odroid-go3: Fix pinctrl property typo
Date: Fri,  9 Jan 2026 20:51:57 +0100
Message-ID: <176798831390.3446147.13738471484516134666.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260108230613.1349060-1-robh@kernel.org>
References: <20260108230613.1349060-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 08 Jan 2026 17:06:13 -0600, Rob Herring (Arm) wrote:
> "pinctrl" is not a defined property name. The correct name is
> "pinctrl-0".
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3326-odroid-go3: Fix pinctrl property typo
      commit: f45385c511141683379a6e090fe74c6002337b5e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

