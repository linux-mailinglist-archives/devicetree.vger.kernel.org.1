Return-Path: <devicetree+bounces-49642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 097D7877363
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 19:49:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8731928187A
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 18:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A6DB4AED3;
	Sat,  9 Mar 2024 18:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ot8O/uBv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363AA482F2
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 18:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710010158; cv=none; b=d4awjOh0fzJw+a0CVAvRSpfdNj+nSkw9fyRlDj3fVX0SAcdL0UuAg3KfMWYGHvT0xuXt4L2yg2sFaFCGt23uQSPJ5aYcvSMdBcz7DPgdq25BspuGfEEe3jRJ5/6ej+sJZf2dioUDUX/cLLp58qsPGlLWt/tW718BD8UfYbxlRHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710010158; c=relaxed/simple;
	bh=9bI99ss4ph8pYgB5CSu4EuHp5g5VIpqdz+obqwKimsM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RQERPkYIj9GVZjyWEm2LEy0I6/iIlMt4Vq5w98UULbzVlXSSafZqpj/2u7S8TCGuYn/SHLhjB5Jb/bDHRIXFrc6VzNb5NRq5fwLWH8VO9xJMcVLlpRfnLsSPROkbx7Gtsy16GiB6uN6jbVkm9Bwj2vTknSw9GYuUvq6ps+Qzq5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ot8O/uBv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70EC7C433F1;
	Sat,  9 Mar 2024 18:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710010157;
	bh=9bI99ss4ph8pYgB5CSu4EuHp5g5VIpqdz+obqwKimsM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ot8O/uBvwJkguWlXio3Nm5BvarTW++6E39bXet8Ubx9wZgeMc7JTQXBLlMO2aLZdS
	 qDvyjnW4JHdPeTLNZcunI2HRN999hhVKGBHoSVvsi7RobTMykEsF3J2promiw7jqN3
	 ONjNh/0Cbi+S74WoZ//Zr9w3io3xdg4Mp4/buU1t2ui+WhVNE6XbLtWvFFLXpCfVB5
	 qm6vxMOrgNnfTxBK58O1IIIsVx377s7howQtS99ZLGxSBlyZG2lF/AmAXekR2cUY4v
	 6Ub/paiHAkDcp69UAW2oqEEoqXEwBGsva1gSG0EjSYbcvAKn6kbPm0DQl+LcOq4yaA
	 jq0A/bBD74fMA==
Received: by mercury (Postfix, from userid 1000)
	id 4F4911060B10; Sat,  9 Mar 2024 19:49:13 +0100 (CET)
Date: Sat, 9 Mar 2024 19:49:13 +0100
From: Sebastian Reichel <sre@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Patrick Gansterer <paroga@paroga.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, Lee Jones <lee@kernel.org>, 
	Daniel Thompson <daniel.thompson@linaro.org>, Jingoo Han <jingoohan1@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: backlight: Add Texas Instruments
 LM3509
Message-ID: <iuhmiozrfeepftq2hyvt3i6fcwgtllw7imex2tkxmvyrph6qmu@bpygt3i3awoh>
References: <20240308215617.1729664-1-paroga@paroga.com>
 <cb220c6f-086c-4995-b2e2-bce78b9a4b04@linaro.org>
 <f97b4a8e-7944-496d-9bed-20e8076a327b@paroga.com>
 <4f3cf3c2-c5ff-475b-af5b-3fb698325c60@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4f3cf3c2-c5ff-475b-af5b-3fb698325c60@linaro.org>

Hi,

On Sat, Mar 09, 2024 at 01:22:28PM +0100, Krzysztof Kozlowski wrote:
> LED strings are true in case of... well, LED strings, but I just
> wonder if such setup is applicable for backlight. Anyway, if you
> think it is, I don't mind.

LED strings are being used as backlight. Either from the edge, like
shown here:

https://en.wikipedia.org/wiki/File:IPod_Touch_2G_Backlight.JPG

or like this:

https://de.wikipedia.org/wiki/Datei:DiodyTV.jpg

Greetings,

-- Sebastian

