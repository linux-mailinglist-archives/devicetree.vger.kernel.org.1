Return-Path: <devicetree+bounces-252087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6EACFA8C6
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 20:17:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 372B6306347B
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 19:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07C99345CD9;
	Tue,  6 Jan 2026 18:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYA6lQ3s"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26893491EB;
	Tue,  6 Jan 2026 18:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767725568; cv=none; b=l9YRtPaRB7mCzeCMjkmF9i3pv5jbOvBg4Nv1yiPC78Eh8DCQUmo1XRo14T9y5Z0qKmCZxwO7scDk7PiK05KNfRQAQU4I+lk5ZkKAlMpf//evWR++lyw39WY/aqr1HpGHTvHA7AFNnmN1yc0sIhdVC/acH4Dk+SqIog4SgIFy70U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767725568; c=relaxed/simple;
	bh=DIcFLovQ3nfQoccMmd2hIGSTpdRQ9ibFubXmR290W7w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SINdwxsDjYQRdfAeJOldVPv5DbvgXbXNxJ/xz5OtCUgf9N+9rpfOUC9Eg3Y7mzEN7u50k21S8rrDwhUb98/ZJi56I6ZlvmY81KSm/V/CRlvmJC10PD8R0xK2cS5wN/7f4Gkjt7JsmGzCr19KeKxu7T+I3uZiRKlk9dey9z4rpF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYA6lQ3s; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64594C116C6;
	Tue,  6 Jan 2026 18:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767725567;
	bh=DIcFLovQ3nfQoccMmd2hIGSTpdRQ9ibFubXmR290W7w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PYA6lQ3sCR92RxJN8dHwgZIyuXyENDuQBwe0NwZ3ycjw7XpSSEPHCunjh7yNwPvF5
	 fXZgX0NWlQB4R4+xxeBH15ZaYJ03AEGcxthug0m9Lmo7nUOFTuCSOXo/6A8L6PWvAi
	 Ban1jBPzsqBtJGp0VNDntatueoHP8UaDIJ4nmKuBLyG9G8/aCNDwZnQ9LtMIGI9K0q
	 oUM6Le65rxA+LmAGdRouZd6dSMFjcy7E315mB/b5sssSoXxqd9V2tgU6rzudjHkBNz
	 VrS2+EgRW75XR35wiG6kHr1nFy2qbwIFiZHoaAeiDWVITVitLQrwfB7lfUb+MFz1Z2
	 vqDwXkeExzLjA==
Date: Tue, 6 Jan 2026 12:52:46 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Peter Rosin <peda@axentia.se>, linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: mux: adg1736: add support
Message-ID: <176772556616.2536972.2739279855884454262.robh@kernel.org>
References: <20260105115825.57032-1-antoniu.miclaus@analog.com>
 <20260105115825.57032-2-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260105115825.57032-2-antoniu.miclaus@analog.com>


On Mon, 05 Jan 2026 13:57:56 +0200, Antoniu Miclaus wrote:
> Add device tree bindings for ADG1736, a dual SPDT switch that
> functions as two independent 2:1 multiplexers. Each switch can
> connect its drain terminal to one of two source terminals (A or B).
> 
> The device provides two mux controllers controlled by individual
> GPIO pins, with a shared enable pin for disabling all switches.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> changes in v2:
>  * rename ctrl-gpios to mux-gpios
>  * rename en-gpios to enable-gpios
>  * use items format for mux-gpios description
>  * simplify property descriptions
> ---
>  .../devicetree/bindings/mux/adi,adg1736.yaml  | 75 +++++++++++++++++++
>  1 file changed, 75 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mux/adi,adg1736.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


