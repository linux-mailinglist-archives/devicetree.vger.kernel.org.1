Return-Path: <devicetree+bounces-240760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBB5C75273
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 16:54:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 5E1BB28BBC
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92D33342533;
	Thu, 20 Nov 2025 15:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTon31HE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50320343D87;
	Thu, 20 Nov 2025 15:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763654093; cv=none; b=toz0GJwspgZg2gDNvjjCWwfRr57D+PJ+8B/oa7PFi7KGT7swQcKYlQMNrwsyxaYtlsKLacaenau83maQ3B59GZmj0e+1VzTnn6FpYWZnJNPVsg2hT8VqSeYdyevAqbINWIAoSnKedagKsgpLAeWsxGfO8MOV5/dmYJCdEzs9M+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763654093; c=relaxed/simple;
	bh=6O/WI3Wqvv28z6LhYTUVDR/wcUThXyOVzAhMLxAwEu4=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZL2YomHFX3v8cqfuqgS0JJI/XqxDRAHXviofUOpoWL0bD5kqlupcR+azGvAJenPgCfbj8MFq4gqiN2MWjJr9z4ZhigIRqSjYIVOzaIdi0+lMkYRn43Ms3s6wwwOmWexwJbj4iWKldNO+aGUTS5OqO/8b/vBeQ851TAmHLr5G7HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTon31HE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AF52C4CEF1;
	Thu, 20 Nov 2025 15:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763654092;
	bh=6O/WI3Wqvv28z6LhYTUVDR/wcUThXyOVzAhMLxAwEu4=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=uTon31HEFaGkTQFhRCvP7ft6t4Fcx56vjaYasi76tunhBtieqizu+bTeROkIYI79f
	 CLwBJa7C3Oi/mO/8b0DgYqC8ec01GyjI+c67wG+kQgsqDLfax34hexF8rTP/591ywy
	 RCEHoImeSIKuQD92xJQYzMfPYuzN/jNaALkzgaxMljF3SgBsYSo1Zwz9WF58bxnbvA
	 RxMdxwR/XMBEXrkICrd6C/7Q4tfNaoTUFp9QEM4/0zoCXcVDgFFam8qdFyb3nmVyC+
	 0tXjC8iJ4a3BvPyeSELhw4qAJawXCkU8D3xirgjydkwQmB/Dwl/lSdkawrhK+x9QF7
	 gELbJ+MUQ638A==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vM6zk-0000000062W-2sk7;
	Thu, 20 Nov 2025 16:54:52 +0100
Date: Thu, 20 Nov 2025 16:54:52 +0100
From: Johan Hovold <johan@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alejandro Enrique <alejandroe1@geotab.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: gnss: u-blox: use open-drain reset and
 safeboot in example
Message-ID: <aR85zGurgup1w28b@hovoldconsulting.com>
References: <20251114155413.11949-1-johan@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114155413.11949-1-johan@kernel.org>

On Fri, Nov 14, 2025 at 04:54:13PM +0100, Johan Hovold wrote:
> The RESET_N and SAFEBOOT_N pins should typically be left open and only
> be connected to ground in rare cases where a device is misbehaving.
> 
> Specify GPIO_OPEN_DRAIN in the example as this is what should generally
> be used.
> 
> Note that the current Linux driver implementation depends on these pins
> being declared open-drain so that they are not driven while the main
> supply is off.

This statement is too strong as there would typically be a level shifter
preventing the signals from being driven so I dropped this paragraph.
 
> Signed-off-by: Johan Hovold <johan@kernel.org>

Johan

