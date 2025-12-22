Return-Path: <devicetree+bounces-248925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D80FCD6BC1
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 18:00:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3BC7E3026B2F
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 17:00:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4661132D7E0;
	Mon, 22 Dec 2025 17:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="DynX/JLy";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="noqQNVzH"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 869B62FFFBE
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 17:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766422806; cv=none; b=dTmwDsOzlnNkzTxs4riYxP5XRnOQh/qM0lBmJeDMiRIL0d1K3nUA6BxvW8xaDIQeqZF7sfFxEd2hDW0ROeJ5iKuG4s0j7qQ/JdVYWXeizVRBTaIh8HgarOW/IJZ02hUZfYVdFz7RI8p84RKUbSnHSwUGctMzCCIIEFpGchhmwK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766422806; c=relaxed/simple;
	bh=VIFf1U5GRy0XwNaSKn2IE50Ho6S8Qyrd1XW4SiN5kJ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LJvkMPF9r3MwHw1t9bXTE3fY36DLMQirMeKDDAAL+dSnPGBOmPIyaHZHbtBCfR50cmEU7lqPO6z3aOurebnD6KftqjXsXEzGoHyY9cNjngqWTNWIzmg22NL43bLXaN3Eav3XxNneq0kNwlV5v1rxkH4WF3StRldl+lPWel7pSbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=DynX/JLy; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=noqQNVzH; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1766422803;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0f4fyk4zQd9fdm0CypX1izzvghVD+Nvn4s4UeRXutpY=;
	b=DynX/JLywm7WGzHdQeYUDFRE67wpzJImZS2RNXAvPtjf3hAcKq1y+ZsxJELoCwnv8V10DX
	W4seGhz+4taPvZrRd+H9dvyRUPrp4xF5UB2tgBwPNhkrmMjAw3lZD9zPqQn2YRCwPoZaoj
	/FsiHyjw+advtHQBisYYqyRH9WwP7Uc=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-365-uPlN0ictM4W-F1AyypZEfg-1; Mon, 22 Dec 2025 12:00:02 -0500
X-MC-Unique: uPlN0ictM4W-F1AyypZEfg-1
X-Mimecast-MFC-AGG-ID: uPlN0ictM4W-F1AyypZEfg_1766422801
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b51db8ebd9so1317117985a.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1766422801; x=1767027601; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0f4fyk4zQd9fdm0CypX1izzvghVD+Nvn4s4UeRXutpY=;
        b=noqQNVzHciN3yMdTX8Dps/u2bH4VTzq0tnVvPTofml8KAZrO+4P0lpIIMO3/T2vodi
         PQNClCNfQs9EjrbREkdMuszY2rGCVl4NPbCIh2XIa0n8Vv/Y1dQAm2z+GAAXJYlgQFG8
         UYTZxrzJIPSVy00b0cBTQ7MCkQ/uWHwr2AyvLqxXGc7HNKUtvNWrDr9NN1jLW2xLcLtG
         1tUfD3aECYCKF/ew/6o3rcfX8pSP8uwp0IFN/8SCXnh8GZDEFIGojS1yRh55o6RVFmyA
         CMFGze0BpNxTeJiYCZx0zM9idpYSOUCaJtzgU5mDBtGVWxZ7AHnThZEAknwtkvMA2n7J
         Rvlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766422801; x=1767027601;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0f4fyk4zQd9fdm0CypX1izzvghVD+Nvn4s4UeRXutpY=;
        b=OR6SoK6q/0YrL1lxTFQau5Z6POd0ttErpPARPE1+INjM2xzcEhl2E76LAOBcyVNZuI
         XOwxF69e7+THsF9g4nP8Z7ld4rb5nGu7jZkSciV2iW4aIjXkd3Hx3yaPEtoF97BM3ydD
         ZDaQ3RZB+FpN/hlqep+k7SpWYhNRGeZNc10rkFwH9+tUMIKzLDNYZf2+P+6/Q6VDY3+Y
         blnPkOjTCVS6t9HEDbC7eDkSkHdp9AnZ72BcLHLXOVPHuB7KespMNSoH3u8FPLz6/M8r
         9ElGSPKbQTDDtQXKe//kQcjyUGqq6Sj4XfY+0uhzY6lhCiY//SYngSyks4xTqeTrVL2v
         shHg==
X-Forwarded-Encrypted: i=1; AJvYcCXskuySh7HEVz6+VRLm2RIR+6EAXws2PwbxEkU3uBB7eQFBjf5rbh7ilXxVpr+FWwLhAC9tv7hgOyyP@vger.kernel.org
X-Gm-Message-State: AOJu0YzoUdWgRTJO1sBdZj3MrkZIz51/3WQ+PaM330i9xcik0PDJ8doy
	P+E76ybkXhJkverDO1z1rgrDatKL1ImyAlkYH6ASzpO/jzzeLytoL29aJ2y9q5CdcoPKIDPrc+G
	hP1dsdmdmWHPb72L4+ZKT9j9kLfYOS7rbagsep+MVpefyVtImCosEnIlELgaVRLs=
X-Gm-Gg: AY/fxX6GBvr5gSpv4pheSwZw/mMhNs2OZKpjK5uTE8czGkR53XmJNGuyXD9P6iWLMqJ
	UpyapgKnI24hw5Zh1WYsvlqUpS5lpT4ST/aPwc2nYhDTwladvuhGLcAYb5bLg5R1sn+jTGA1cor
	kMXV/NN4Oup6fv+lv4gST1oqVbzQVJimbXeRHV5XGTDd7T6DE2Ww/6Le9JazTlTOSHG3T1XfKJU
	dgqkqIJWW/TakGgBGfVT9X3fVUnjVnk+kHM0XiqHLpjc7C70szA4BYpy3gPnTvcjIKtjS1YaO8U
	giVhM0x/ffbTJ8WYHAqcP8DnGLu8WDq0Gwb6FschQx5CvYskzk0h0Dfm9rDT6srh8ifG9/2vWEB
	Y8RTIU5cvIb7m24WDzvNqOcdo8aphZy2s6Owl9yY59lSX
X-Received: by 2002:a05:620a:691a:b0:8a3:22d7:6ca3 with SMTP id af79cd13be357-8c08f66c311mr1952380285a.31.1766422801382;
        Mon, 22 Dec 2025 09:00:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEAXWK3aLK/w4OobjiC8eVjtvAbAxtwT1W5l5sKLlnUZ5at1LIDG+lvn7LFEDMGYJA0qFTMJw==
X-Received: by 2002:a05:620a:691a:b0:8a3:22d7:6ca3 with SMTP id af79cd13be357-8c08f66c311mr1952376385a.31.1766422800985;
        Mon, 22 Dec 2025 09:00:00 -0800 (PST)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d997addd5sm86399716d6.33.2025.12.22.08.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 09:00:00 -0800 (PST)
Date: Mon, 22 Dec 2025 11:59:56 -0500
From: Brian Masney <bmasney@redhat.com>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Mo Elbadry <elbadrym@google.com>,
	Rom Lemarchand <romlem@google.com>,
	William Kennington <wak@google.com>,
	Yuxiao Zhang <yuxiaozhang@google.com>,
	"wthai@nvidia.com" <wthai@nvidia.com>,
	"leohu@nvidia.com" <leohu@nvidia.com>,
	"dkodihalli@nvidia.com" <dkodihalli@nvidia.com>,
	"spuranik@nvidia.com" <spuranik@nvidia.com>
Subject: Re: [PATCH v15 3/3] clk: aspeed: add AST2700 clock driver
Message-ID: <aUl5DPMq8jC1xjRu@redhat.com>
References: <20251010072540.666673-1-ryan_chen@aspeedtech.com>
 <20251010072540.666673-4-ryan_chen@aspeedtech.com>
 <TY2PPF5CB9A1BE64DCD487138F3BAC4FD34F2FCA@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <TY2PPF5CB9A1BE64DCD487138F3BAC4FD34F2FCA@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
User-Agent: Mutt/2.2.14 (2025-02-20)

Hi Ryan,

On Mon, Oct 27, 2025 at 06:24:59AM +0000, Ryan Chen wrote:
> Hello Stephen,
> 	Will this be accepted in clk-next?

Given that aspeed is a SoC vendor, and you already have multiple clk
drivers, I think at this point your best bet is to do what the other SoC
vendors currently do. I think you should:

- Create a new subdirectory drivers/clk/aspeed/
- Move the existing aspeed clk drivers into this subdirectory, and
  update the Makefiles / Kconfigs as appropriate.
- Add a new entry to the MAINTAINERS file for the aspeed clk drivers.
  You probably also want to have that entry cover the reset driver,
  and any other aspeed-specific drivers as well.
- Post that patch set. Include this new clk driver as a separate patch
  in that series. Feel free to CC me to the series and I'll review it
  for you.
- After it's reviewed, wait a week or two, and send Stephen a 
  'GIT PULL' using git request-pull. I can help you with the workflow
  if needed.
  
  One important detail is that you want to base your branch for the GIT
  PULL on the lowest common denominator, which is usually the latest rc1
  from Linus. So even if Linus is at rc5, try to base yours on rc1, unless
  there's some issue, and you need to document why. Stephen should get the
  merge to newer rcX branches from Linus, and not you.

When you send a PULL to Stephen, you can use 'b4 am' to assemble the
contents of your branch. When I sent him a PULL a few months ago, I
included the b4 commands that I used.

https://lore.kernel.org/all/aL8MXYrR5uoBa4cB@x1/

If he accepts the pull, you'll still need to post your patches to the
clk mailinglist, and have them reviewed on list. Folks from aspeed
should do that review publicly on the list.

Brian


