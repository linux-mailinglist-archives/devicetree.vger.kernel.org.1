Return-Path: <devicetree+bounces-98966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE5B968305
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 11:21:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F2D41C22515
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 09:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A66E1C32E4;
	Mon,  2 Sep 2024 09:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="UA7k4zL2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3662D1C330E
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 09:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725268898; cv=none; b=jpO7fWSpSRbneZH2dy6CdwT7T7bf1wD0GaSXST3tlFKy9K0+utiBFdloY6MDVVErd4Z/Gc9Ef01vG7lU2bCFNI0fK4wJ3tYulNppbFEPXJ+pyCSbjUk91BxKZN9+Vjpvs0M6QsaAzOPfaeWBWu2F73kG7kq5dqfzaxXsuJEIU10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725268898; c=relaxed/simple;
	bh=BSpqubEdJ/sRUU6vWaBwncVg7qOd28rdyPPZgAweRno=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oyyrPSz+kiigdl9pkqNXoKaK3AE9xjPC3kEMZPc5I6Jmm4pOFyTHSUwRM3L0VzWRi1/bThlimD9nq/hQHIamRp7MPMOYG2ETNToqoPNheHido+FqB3Q9GiGc5L+vbdjVjGmPUTCozHaNXFojFXLW+p9wXCfkc22xzExy+ZryMqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=UA7k4zL2; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a869f6ce2b9so428140966b.2
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 02:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1725268894; x=1725873694; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1ZDs/9l3dOZ4/JRpcNDnT31Gwsua2/3rtLsltEu9Mww=;
        b=UA7k4zL27EtQiyL1sHrgRCfTMPBXKeFmHxdZe3ebhOMpjrG/LvCIEKtNXE/wR+fdC0
         nGc8eVPdONCBPfmOl9gVV5Fv0lB3hSjTq0u7jK/66YtY2pXMeS7fTFAN/VGpzWJRkzbn
         XkzYzfEsazl03MK/eExlEnIgkIx/NmtK0yvuqYc+fGv4VEIvD6oZ63hEUR6e55d0Th+H
         ragU4vi9H2cqQqxMviFP196JUbdigDpKSrLJLnTZGWB3zija/D7YC9Eh6CtjA96jSPtL
         GZudEXjpOBEz/hjpIjWhdIeragV3oITHm659ApbXz3h2is871vprXeJBwVBuOXrAGPUJ
         LX/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725268894; x=1725873694;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ZDs/9l3dOZ4/JRpcNDnT31Gwsua2/3rtLsltEu9Mww=;
        b=qYK8acvUuD9dGI/T/fyNuiBm8vV2N0eMdj8UpliAo6NnZzQe7mPOaCeSsuOQPv1vmB
         lN+MgdzKpyDdVi54fCr/p4yPkDi66+prypFmct3v/culRjOn1/notSD0Wh+X+GrwxSnw
         Szg23C7iIVkafgWTxukb1pPknBJ4BbS4iO+Q2dvKfG+txtPiXkHQJQJBb8qj51NJ+B1p
         fWmgWSjsJzXyqHPYYmCPXJQrFdqmFZs7UvYwc5t/faPPOT/UZDzszj/81i5Fr04OmtDL
         Xe+XuKVKHF7y5F0G27J23eZ/S63sWYjkgjPyGP+b8BP5o8/1t3fMBKgqVZbOM607YtCg
         QE6g==
X-Forwarded-Encrypted: i=1; AJvYcCXpZkqARntxDA+zXSj/WVfsWNPbfCcT9M2WQAK/jqNRpDXJZQJ0ml6JPCpNCQD9tKTWn+1J1jcf/S51@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp0M1Xvf/haXMT3M4BPH+QlWjH+Ls1YlheM0iWVeScmCaV0oGy
	D4TTTykC4koFBm3KY12ogjli1UqGBI1PqgLpOm2oxywEyfXKLQIHimpG5bO3+0w=
X-Google-Smtp-Source: AGHT+IFiJyKI83M4pAEH+bJt4D+2x9ZKVCIWaumLPxOS3x0JckDJtyYxve6HAvVZNlN6e2kKZafDDw==
X-Received: by 2002:a17:907:6094:b0:a7a:adac:57d5 with SMTP id a640c23a62f3a-a897f84d7efmr930072566b.18.1725268894023;
        Mon, 02 Sep 2024 02:21:34 -0700 (PDT)
Received: from localhost (host-80-182-198-72.retail.telecomitalia.it. [80.182.198.72])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89891db42fsm527788266b.184.2024.09.02.02.21.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 02:21:33 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Mon, 2 Sep 2024 11:21:41 +0200
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Saravana Kannan <saravanak@google.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, netdev@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-arch@vger.kernel.org,
	Lee Jones <lee@kernel.org>, Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 00/11] Add support for RaspberryPi RP1 PCI device using a
 DT overlay
Message-ID: <ZtWDpaqUG9d9yPPf@apocalypse>
References: <cover.1724159867.git.andrea.porta@suse.com>
 <14990d25-40a2-46c0-bf94-25800f379a30@kernel.org>
 <Zsb_ZeczWd-gQ5po@apocalypse>
 <45a41ed9-2e42-4fd5-a1d5-35de93ce0512@lunn.ch>
 <ZtBjMpMGtA4WfDij@apocalypse>
 <e6e6c230-370f-4b04-8cb7-4158dd51efdc@lunn.ch>
 <ZtFWyAX_7OR5yYDS@apocalypse>
 <334b382a-c9ab-47e4-b860-b8477f04c3fb@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <334b382a-c9ab-47e4-b860-b8477f04c3fb@lunn.ch>

Hi Andrew,

On 16:10 Fri 30 Aug     , Andrew Lunn wrote:
> > On a second thought, are you really sure we want to proceed with the header file?
> > After all the only line in it would be the extern declaration and the only one to
> > include it would be rp1-dev.c. Moreover, an header file would convey the false
> > premise that you can include it and use that symbol while in fact it should be
> > only used inside the driver.
> > OTOH, not creating that header file will continue to trigger the warning...
> 
> The header file does not need to be in global scope. It could be in
> the driver source directory. As such, nothing outside of the driver
> can use it.

Ack.

> 
> Headers like this have multiple proposes. One is they make a symbol
> visible to the linker. But having two different .c files include the

Hmm... not sure what second file is including it, since only rp1_pci.c needs it.

> header enables type checking, which for long term maintenance is just
> as important. So a one line header is fine.

Done.

Cheers,
Andrea

> 
> 	Andrew
> 

