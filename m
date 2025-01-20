Return-Path: <devicetree+bounces-139655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB5CA167EB
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 09:07:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27B883A4A62
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 08:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BFB118F2DF;
	Mon, 20 Jan 2025 08:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="bttfJ4cz"
X-Original-To: devicetree@vger.kernel.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4600847F4A
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 08:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737360442; cv=none; b=sFxFqgFMOYHhejHjBoDvVYjMqiDv4dr0zO5hSKytC6peMvhdpyBwD/A1dGFGPdyeUsmDmXY9zefG7Nr6vHUU5LquLtrfQrJrUY87sS8bERE2EKWxim4lP3FXQZxIKKYTdTW7BeUspKkHpzezN02Ifb6oIIQmxlSMCk4360E6oUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737360442; c=relaxed/simple;
	bh=U68od//1LO/4ATuOmeZS2F5sneQ0/aAN98kSZDck3e8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DydtQn6V4ObmF0e4hegCzYxp17wwQ+PmKmpnIMDyXTGutfAZJBPUWJfkfnZdECL5YPI/XG+ikpLlJB8sBvdkYaNiQfFMdbnyDZsbNpn2g5Xb9cxt/x3KhnRvSCHIjG8LyfAwdwzdEt+GJ8xxPlwBnDWi11S/oysHiCv5l9NR6mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=bttfJ4cz; arc=none smtp.client-ip=217.70.183.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 694E4240009;
	Mon, 20 Jan 2025 08:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1737360438;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ptkfwg23V8TkYPQTz2RcJGgC0dOsHD+3NlCAwB6LHkk=;
	b=bttfJ4czgZA1NYg38M4oPgFndjx08cw2M2mjp3qI6Am61iZJAgpAkuF6j76yuxPVKhm9E8
	5femF4hP3a4byMYneeAsjparcXLToMAQh/95osx4BRNm2o6njn3CXms3JheWZ1sO60LXOy
	E8bEgEDk/3RwMQjEdzW9KvXyjh8YjB++AEXiHO9coAUzqR3SHkDYTJcR+YI+xeEoI8BKej
	apdARZ1mMc9SlH0PQCaVmRGIC/dE0y25wijFj8PbaR30vIrktvEKhxOCnGThjZOr4RtRrt
	2b2w9cyEHnvvs8eAUabb3NkIIFjzsqaJnWyc9xO8sHvFupP4QfYEL0I1BGrxeQ==
Date: Mon, 20 Jan 2025 09:07:15 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham
 I <kishon@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 3/3] phy: PHY_LAN966X_SERDES should depend on
 SOC_LAN966 || MCHP_LAN966X_PCI
Message-ID: <20250120090715.17473c2d@bootlin.com>
In-Reply-To: <0c7116ca03997fff04faf59fdcd4c97820685b64.1737118595.git.geert+renesas@glider.be>
References: <cover.1737118595.git.geert+renesas@glider.be>
	<0c7116ca03997fff04faf59fdcd4c97820685b64.1737118595.git.geert+renesas@glider.be>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

Hi Geert,

On Fri, 17 Jan 2025 14:04:38 +0100
Geert Uytterhoeven <geert+renesas@glider.be> wrote:

> The Microchip LAN966X SerDes PHY is only present on Microchip LAN966x
> SoCs.  However, when used as a PCI endpoint, all peripherals of the
> LAN966x SoC can be accessed by the PCI host.  Hence add dependencies on
                                              ^^ Two spaces

> SOC_LAN966 and MFD_LAN966X_PCI, to prevent asking the user about this

s/MFD_LAN966X_PCI/MCHP_LAN966X_PCI/

> driver when configuring a kernel without Microchip LAN966x SoC and PCIe
> support.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

With those minor things fixed,

Acked-by: Herve Codina <herve.codina@bootlin.com>

Best regards,
Hervé

