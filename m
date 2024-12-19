Return-Path: <devicetree+bounces-132672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE299F7BDD
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 13:54:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D39A1883F5D
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:54:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2937223C6A;
	Thu, 19 Dec 2024 12:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1pAL3L/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A808221DA0;
	Thu, 19 Dec 2024 12:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734612879; cv=none; b=mpp5vvlwP9wktfPe4DHVg+ZTRWhoIpHrNP45HZfZw2K9RD2b06CLkmyBNB6I0QhvJZah1FzktyoubpObcrXvSELxDNjHnhibDkf9muBbn/H8Xn4frK1w4LSxldOIFmRIHucSjn7glmdSJdTGNu8RvUEbxAdL2tpUiVDtmozeQS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734612879; c=relaxed/simple;
	bh=QbcwzbIEpjte2iFXKxqrk0jjbLfrGXBlg4IkPxK3tNI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sXmcUb+2MLCU69n21C+Y6TDydN9wsHipdxsPW838u6Zg8vGC16et3NiBkdI51cBPwj2t8woqUsSFGKueB5T2lrnHk4PxqSSyDeMRXwSUFHMs8IbTmCtHXih2JUmVg+ZsNXDBZf0k2z2kHwUqDqVWDXnZVWvYYSVrZnHMbgBKHu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1pAL3L/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AF04C4CECE;
	Thu, 19 Dec 2024 12:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734612879;
	bh=QbcwzbIEpjte2iFXKxqrk0jjbLfrGXBlg4IkPxK3tNI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F1pAL3L/dM0IEAwgIV2DmfJfoYYdUbv5+rQ7jg7KbDVhyc3OGnNrxE15+tXDsMCPx
	 I7fqXbJYJ4p5VAg4Hhzd8/NcKR3WSn+RwKYviMWteZa43zY7ocevAIjQjCJy2T2ZXn
	 uSqvTn8ydP//D8rbvKu+wkqeNOd4DUXLoFLu0Vv0P71/qQjycaYLq/I972KJs3U7JQ
	 Slvsn4/6yUFCTalulCmDRp0dZXWKZ4K42izWBrJDkQwdtV78j20StyicukNQPxvKq0
	 oMNGLDnzAafTfyKhZgcIv9S1FTgqVtSzgY53yQtv1HUrmki3fxeC6F7nmk6YBX1/Lt
	 7jDzijTmJwOLQ==
Date: Thu, 19 Dec 2024 06:54:37 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Valentina Fernandez <valentina.fernandezalanis@microchip.com>
Cc: conor.dooley@microchip.com, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	palmer@dabbelt.com, krzk+dt@kernel.org, jassisinghbrar@gmail.com,
	conor+dt@kernel.org, paul.walmsley@sifive.com
Subject: Re: [PATCH v6 3/4] dt-bindings: mailbox: add binding for Microchip
 IPC mailbox controller
Message-ID: <173461287564.4047591.10300398593829922970.robh@kernel.org>
References: <20241217113134.3508333-1-valentina.fernandezalanis@microchip.com>
 <20241217113134.3508333-4-valentina.fernandezalanis@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241217113134.3508333-4-valentina.fernandezalanis@microchip.com>


On Tue, 17 Dec 2024 11:31:33 +0000, Valentina Fernandez wrote:
> Add a dt-binding for the Microchip Inter-Processor Communication (IPC)
> mailbox controller.
> 
> Signed-off-by: Valentina Fernandez <valentina.fernandezalanis@microchip.com>
> ---
>  .../bindings/mailbox/microchip,sbi-ipc.yaml   | 123 ++++++++++++++++++
>  1 file changed, 123 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,sbi-ipc.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


