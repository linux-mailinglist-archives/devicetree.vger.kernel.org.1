Return-Path: <devicetree+bounces-164358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A22A80A75
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 15:05:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05C644264B6
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 12:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7F3F277026;
	Tue,  8 Apr 2025 12:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="KyUgwuZf"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F048277012;
	Tue,  8 Apr 2025 12:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744116438; cv=none; b=WeZhsY8cQ2cASgSkZn8ufgjs8aN8f1KDwKBLGTKqJX6fqg6SUD3nxCPr72D2BVLqHdZfa54ZPxJWRvIHSDlY41waGAocemfBpFXo0A6/aE8eg2sWserSU3v644FmhDaFN5beWEsSnINGOYlA+KbzRKxw25rtphelXq7x5+PbMFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744116438; c=relaxed/simple;
	bh=a32roObW0PsYnOYo+NLeOqzjCGce5vN+ZowJoxmJpO4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZmzL/Qnwks3h56Z1XyfPuyENGBRaktsTLBP0vALKx1x1BaArerL7qIDz1wHLSVmBGkzeR9MNT3toUyI+dnJbZhqzfBLN4hbTOp0m7O9qPWMDteV9ZarL0VQVeVvkY7O5X3anikntait31sRVyuiXEcSF6mavrgHQQR97v9oGlC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=KyUgwuZf; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=nnAd+oDktJ4u091aOMFFxGn4kFMDAVqAApVVSQwIxPw=; b=KyUgwuZfyeteb/hIMbTNw7qOvI
	B8va6d+N5/MsSxOXxwUtjg1eL0LER0FyO8xeC/NGTD148eWSZRHIrWmi5+UO8NuzXVUrERv4GTmpL
	NXYXYp9HBIdgnRpQ4yUwVzsoIn8ZfUYU4ue/aZtZvOsybE453JecvVDMo84G86eFGSdQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1u28M9-008O6I-91; Tue, 08 Apr 2025 14:47:09 +0200
Date: Tue, 8 Apr 2025 14:47:09 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: dimitri.fedrau@liebherr.com
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Dimitri Fedrau <dima.fedrau@gmail.com>
Subject: Re: [PATCH net-next v2 3/3] net: phy: dp83822: Add support for
 changing the MAC termination
Message-ID: <7dbf8923-ac78-47b8-8b9c-8f511a40dfa3@lunn.ch>
References: <20250408-dp83822-mac-impedance-v2-0-fefeba4a9804@liebherr.com>
 <20250408-dp83822-mac-impedance-v2-3-fefeba4a9804@liebherr.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250408-dp83822-mac-impedance-v2-3-fefeba4a9804@liebherr.com>

> +static const u32 mac_termination[] = {
> +	99, 91, 84, 78, 73, 69, 65, 61, 58, 55, 53, 50, 48, 46, 44, 43,

Please add this list to the binding.


    Andrew

---
pw-bot: cr

