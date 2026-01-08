Return-Path: <devicetree+bounces-252699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C54D01D44
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:29:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4B4883006715
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9E8C4418E3;
	Thu,  8 Jan 2026 09:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="eipOvj08"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 902C142E490;
	Thu,  8 Jan 2026 09:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767864495; cv=none; b=rQ9fvkA3DcMCM9PfBEcnD+AEPRu3+vxWjoElHQSvUfZt20EsPO0POe21LqzxxsXd+sO0tXptMOepmm+SVj8hqz34FjJvzXlq0dLGViQ7Igl7wpn7eOde/gP/MNMbxOTaWgwv7732nG2EEtqCZPZ94I7gYCnIkrPd/EHRhZzXvd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767864495; c=relaxed/simple;
	bh=bu3diKg/dVHs95MXW7XqbGMQn7XJx2UDPuAqJfkCx20=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=X9Ak2cOO16YW7UdLGsJwvEoTACkuXN651k+q/MHyMozqM8liPQ3KeNPrZT2OGAmgucElkYtfgLeie1zthdgzNR97RsKZTpvk8T8NtxaBezweD6/a0TXy4K1xzvz9+hlR6ekv4YJOtILgqLpEBMC3Li5IsA49WcyGLze+8Lvpzwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=eipOvj08; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1767864482;
	bh=FE+L30L0H8RDFKh/Oav05wiWWScdi0XVlDCLg/MsHRs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=eipOvj08YILeckF4Cwiu02vaCgzZWbtg5KyqKBzEPjH2QHn2Yw/flUCkTJaE1uaqp
	 TqK/tPUMjZxJ8YFmZP44Ru7unPdHf8d+k3PqbxcUkMqEMRPCQ8C0OZKSC+yfWOF2qz
	 ua835exe8Wzty5vScr9Jg6LsjERrFjvQVY1JqQXCxWQd2U67980dH1pxXXUKkYkYXq
	 ZHpWDJT2KVL9pDgSz+4sTEQDARiFt71iEqfUEue2pkYWzt+IY7NyH8BBjtEksGKj69
	 M79jpssoirFHM/AZTfzu45jj86zRRM+v4wRIp9uPF9jv9sAo21ridBIhYXkq6Vav2I
	 BZOZLEvQ0i87A==
Received: from [127.0.1.1] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id AFB5F79F8C;
	Thu,  8 Jan 2026 17:28:01 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Avi Fishman <avifishman70@gmail.com>, 
 Tomer Maimon <tmaimon77@gmail.com>, Tali Perry <tali.perry1@gmail.com>, 
 Patrick Venture <venture@google.com>, Nancy Yuen <yuenn@google.com>, 
 Benjamin Fair <benjaminfair@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: openbmc@lists.ozlabs.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260105193232.3167128-1-robh@kernel.org>
References: <20260105193232.3167128-1-robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: nuvoton: Add missing "device_type"
 property on memory node
Message-Id: <176786448160.1407469.7623777355686519631.b4-ty@codeconstruct.com.au>
Date: Thu, 08 Jan 2026 19:58:01 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Mon, 05 Jan 2026 13:32:31 -0600, Rob Herring (Arm) wrote:
> "device_type" is required for memory nodes, but is missing on Nuvoton
> npcm845-evb.
> 
> 

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


