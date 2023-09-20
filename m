Return-Path: <devicetree+bounces-1643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D3B7A73A7
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:06:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 897CC1C20A95
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 07:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD07B566B;
	Wed, 20 Sep 2023 07:06:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0352F28
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:06:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37770C433C8;
	Wed, 20 Sep 2023 07:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695193571;
	bh=oP8IOTnoBTPkWHwbE/Ttl2bM4z0e2euCv1MOLa8xiQ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nB4zsdTGma4GSVOYF2SuvKyMbcwprZ6OnV+6KgOiU9jbXCL/l/GMvdkeQ9jDt04cs
	 IxrIJs/SgtQ4csPLTqYH4xZqrx63YQVBhtmeWvsvX/GwIMj2ZkUOASmR8VxoX0kQLO
	 wiklitpBAb/pH9KMdBbFElzy9aI9RIg5F2Dc35GuYfYsS9DDXxZ4Gg+O/F26zx13k0
	 zR++Jyu4YrjcMdJxQYIndkxMO3m8snde7Yz2IeJ6OhsG4/qvAn0+XJnePUFmX4kJuc
	 oG9TU2TdYUznrq3PFq+TddhzeI0L8ER2/zurSlfAVcRL52q3w15jdA+QIo2SEXVNRx
	 08isUZ6AK3Ipg==
Received: from johan by xi.lan with local (Exim 4.96)
	(envelope-from <johan@kernel.org>)
	id 1qirI2-0002mU-3D;
	Wed, 20 Sep 2023 09:06:27 +0200
Date: Wed, 20 Sep 2023 09:06:26 +0200
From: Johan Hovold <johan@kernel.org>
To: Thorsten Leemhuis <linux@leemhuis.info>
Cc: Sasha Levin <sashal@kernel.org>, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>, agross@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH AUTOSEL 6.5 30/36] arm64: dts: qcom: sc8280xp-x13s: Add
 camera activity LED
Message-ID: <ZQqZ8uYegx7PABnw@hovoldconsulting.com>
References: <20230908192848.3462476-30-sashal@kernel.org>
 <ZP60ngCV3hhNZiX5@hovoldconsulting.com>
 <ZQjEEt7sB2M5EO53@sashalap>
 <ZQk8aJx268Soy4yH@hovoldconsulting.com>
 <ZQmc7hznPpIh6iwP@sashalap>
 <ZQmh-DaBTwMuOLHe@hovoldconsulting.com>
 <ZQm5woD5zwRIG9cf@sashalap>
 <ZQnA4o7G4A3YC-pe@hovoldconsulting.com>
 <ZQnFj6g4pbwMz69C@hovoldconsulting.com>
 <bd906454-8949-38d6-9327-d640468b6c3d@leemhuis.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bd906454-8949-38d6-9327-d640468b6c3d@leemhuis.info>

On Wed, Sep 20, 2023 at 06:53:09AM +0200, Thorsten Leemhuis wrote:
> On 19.09.23 18:00, Johan Hovold wrote:
> > On Tue, Sep 19, 2023 at 05:40:18PM +0200, Johan Hovold wrote:

> > You also seem to have made up new stable kernel rules
> 
> No, it was me who changed the text, as I saw people struggling with it
> and noticed that's partly due to problems in the text. But just like
> with code changes there's always a risk that slight changes to a text
> result in unwanted effects. Not yet sure if that's the case here.

No, the updated text is just fine. My point was that Sasha's wish to
backport devicetree changes to enable hardware features violates the
stable kernel rules.

> > as adding device
> > tree nodes clearly doesn't fit the description in
> > stable-kernel-rules.rst:
> > 
> > 	It must either fix a real bug that bothers people or just add a
> > 	device ID.
> > 
> > (This used to say "New device IDs and quirks are also accepted.")

I just put the old formulation in parentheses for reference to avoid
having anyone think this was something new.

Johan

