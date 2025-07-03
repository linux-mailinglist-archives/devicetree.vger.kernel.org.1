Return-Path: <devicetree+bounces-192510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31155AF6E57
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 11:16:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B66173AD9FD
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 09:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9337B2BE637;
	Thu,  3 Jul 2025 09:16:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548A72DE701
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 09:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751534214; cv=none; b=fxZXCi+LgPxB0EqiLzybw5ksaDcC7Pgsg8XRC4qazuEUAPoUNThChW0ENRyceoDl6KIa2EF+yHCREHA04xDfr2ldVuhVMwx2kXnCXTCkbaP8M2glt3f33+m/D6eXB3IYfcs8afCCBWL8kIti9mj0rIvcpGE2FjxArqXxkd03lr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751534214; c=relaxed/simple;
	bh=QMDx7f88cknzGh+MwyPL+ZIHDAomtr32IJprmUxtYR8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=h9jZQYFGpvwvilwzo8ZH2tW7g1NVrBBwp+97nBYKN56Lt0n6ZihAU6UowsZN8ZynX3CC7o2HZ9vacqPq//BUvPWRVMyfXVfdv9bJp3xpj5z6b26LNCJWp03/dE9MdR3tGo2f7E1pKUEsxCdfGn/9UKMiMCZAms8T2MRbrTAcqUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uXG3h-0007OT-U2; Thu, 03 Jul 2025 11:16:45 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uXG3h-006ZxO-2A;
	Thu, 03 Jul 2025 11:16:45 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uXG3h-0006CY-1x;
	Thu, 03 Jul 2025 11:16:45 +0200
Message-ID: <eaa7d6a40e76cee8ae02293ce272f22fbce9d7b9.camel@pengutronix.de>
Subject: Re: [PATCH] dt-bindings: reset: Convert snps,dw-reset to DT schema
From: Philipp Zabel <p.zabel@pengutronix.de>
To: "Rob Herring (Arm)" <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 03 Jul 2025 11:16:45 +0200
In-Reply-To: <20250702222609.2760718-1-robh@kernel.org>
References: <20250702222609.2760718-1-robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Mi, 2025-07-02 at 17:26 -0500, Rob Herring (Arm) wrote:
> Convert the Synopsys Designware Reset Controller binding to schema. It
> is a straight forward conversion.

Applied to reset/next, thanks!

[1/1] dt-bindings: reset: Convert snps,dw-reset to DT schema
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=3D196dbace0824

regards
Philipp

