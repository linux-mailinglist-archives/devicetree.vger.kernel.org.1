Return-Path: <devicetree+bounces-247112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E147DCC4615
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 17:45:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF35F3030FDB
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 16:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1061311C30;
	Tue, 16 Dec 2025 16:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIGZeJtM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61233115BC;
	Tue, 16 Dec 2025 16:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765903260; cv=none; b=iyM3HtDBc8KHGzt//4u7wEFvE/rzyuzqtEQtEjx3cSM9+SrDPMg0+LJijATg+/xp/+JNemzBp2A1Zhl72eZaTS1iDkDu60/Kq7RSu/yTOJMPuRhGL+R9747PSW0jXo5weOOzW5NWcBCeuv+3PwWh6BxYTkPDtZ9hLTo3+X7Dfu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765903260; c=relaxed/simple;
	bh=pp+yt9qeGh7y3VYMD8TwdryBjrQUjciKcpXyKjP+FNM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LVbUlQbH1fRdsp9Zwfl1Z3eGWHMOCPRwtcp6Gy1wLg3/5GPx0u09qxcR3+iitV+9Mthn+lbEDMYbf7c5VjLnUgE7r+Qy2S+qO2Y5qO3pjr5STds8FBWoudhUwoJ9ZyhgF56Ge8HpyfeD3+ssaoqhJdOmsltwEkcxb1WGU0feQao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIGZeJtM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69D4DC113D0;
	Tue, 16 Dec 2025 16:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765903259;
	bh=pp+yt9qeGh7y3VYMD8TwdryBjrQUjciKcpXyKjP+FNM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pIGZeJtM9paVONDldO+pOxX3txewXE45X5zvHvp+bvc8tGSTrn73jUmUJ903/YQtC
	 Oqcuwbw5n+wHtraqLgsmxim5qCBfpgnvQT0Cw9V9qfWkWZCVBKXYqNnI2JBnsmKdZa
	 OBpEKaIh2PY7eMe/Om3s9SRGY5LZ1e/htivLlCGCnEkoT6gQl4WiQdT3l3oAMGJ7Er
	 QO6xiGuYHoM2YDB8k9qQQpqJn9aJB0FBieFzpNfKUypLNyC0+60MDhlaW+n9mw1sLO
	 8ziRzv01MNdNDXbCSfHCyHN574WZxrF8QvYujLE8EN9Qq0xvHcUm5q64BRexLTJhY7
	 Rkax3Sw3YkZzg==
Date: Tue, 16 Dec 2025 10:40:56 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Linus Walleij <linusw@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm,vexpress-juno: Allow interrupt-map
 properties in bus node
Message-ID: <176590325593.2606466.6619016689348303654.robh@kernel.org>
References: <20251215212932.3324144-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215212932.3324144-1-robh@kernel.org>


On Mon, 15 Dec 2025 15:29:32 -0600, Rob Herring (Arm) wrote:
> Allow interrupt-map properties which are already used in the bus node.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../devicetree/bindings/arm/arm,vexpress-juno.yaml          | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Applied, thanks!


