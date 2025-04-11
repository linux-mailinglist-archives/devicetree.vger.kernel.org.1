Return-Path: <devicetree+bounces-165882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D04A85CAF
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 14:15:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A5458C488B
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 12:13:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FE402BEC4C;
	Fri, 11 Apr 2025 12:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAtcGjSu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC5C29CB5D
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 12:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744373461; cv=none; b=tdf9v23szYMKnhQ8omvMzTDA3VF6x5HxtiFM2L5y8YY1Y4pys9V/W0LGRC3g1uAGlbomvg0yM5mZldCXKy8G6BAUM5Rm2nWEq+EzSlR84VEsBvq51M23fco0J2uGtkX7d3PBIPxbvCHFilceY0XoAo2fHhXBmtJ1zIwY/jJmCRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744373461; c=relaxed/simple;
	bh=41ecM6L8w8kkRS1191n4/4NDFsdX+DlRIppgjV1rIoI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Ea9WFhGyM8nurTKlro0695NvsOBqPfIrsBrCoxRD/saCcDV3tEfNw+mUZzpqCxAni0QT4pTlue1NUWmhWg5z48dZmiB+qkDCEWYvg3h00xjkcqFG1l/ti3cpXPt3HtsvM1NTKR3UCjiLZQ9Izy+9gzdeo+oYbAL9ifR0IMFKszU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAtcGjSu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D531C4CEE7;
	Fri, 11 Apr 2025 12:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744373460;
	bh=41ecM6L8w8kkRS1191n4/4NDFsdX+DlRIppgjV1rIoI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BAtcGjSudD5vzmTpscne+M3QMVDWTTzdpd7I7uB2ug3xGnz8McgamKUSVqhkIdAjD
	 Ayu1+jPYnoLjvpi3sonmP7plJctaFF75yJPs/98kR6GISzsTTJHlX6LAssgpUlJuiO
	 p2iRVtEw2cx0ZMeS2vmsIH6CF7gPlg14RO+wBEnhNDN3yPvDe0aKPxqIIZURBnnzN1
	 hY7z7ROr3V9rYSSELY8QPWrvGlubMPLVproh4PcFXPoAZbGMRKdpm30L8X1aqANoMX
	 elXWsRd8BJi8wN72V5hv7DDaSLdUArvJC04zlyIVVwoQukxREX8aCXFof+yU+s16Rk
	 f1V+OAzvnf03g==
From: Vinod Koul <vkoul@kernel.org>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, justin.chen@broadcom.com
Cc: rafal@milecki.pl, alcooperx@gmail.com, 
 bcm-kernel-feedback-list@broadcom.com, florian.fainelli@broadcom.com, 
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, kishon@kernel.org
In-Reply-To: <20250402185159.2976920-1-justin.chen@broadcom.com>
References: <20250402185159.2976920-1-justin.chen@broadcom.com>
Subject: Re: [PATCH v3 0/2] phy: usb: add support for bcm74110
Message-Id: <174437345727.673939.14020168766242612778.b4-ty@kernel.org>
Date: Fri, 11 Apr 2025 17:40:57 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 02 Apr 2025 11:51:57 -0700, justin.chen@broadcom.com wrote:
> bcm74110 adds a freerun utmi/ref clock that saves furether power during
> suspend states. A tune is also necessary to pass USB compliance test.
> 
> Justin Chen (2):
>   dt-bindings: phy: brcmstb-usb-phy: Add support for bcm74110
>   phy: usb: add support for bcm74110
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: brcmstb-usb-phy: Add support for bcm74110
      commit: 0fbceff4f873500f0d0e632ee2d1e84e9a67b1b4
[2/2] phy: usb: add support for bcm74110
      commit: 686b2730e4816e40e6a5432ff163993638397154

Best regards,
-- 
~Vinod



