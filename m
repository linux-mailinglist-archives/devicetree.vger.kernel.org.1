Return-Path: <devicetree+bounces-162105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EA4A76F09
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 22:20:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5665D16ACC6
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 20:20:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19FFB1CAA90;
	Mon, 31 Mar 2025 20:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=milecki.pl header.i=@milecki.pl header.b="DGaNuYR3"
X-Original-To: devicetree@vger.kernel.org
Received: from 11.mo584.mail-out.ovh.net (11.mo584.mail-out.ovh.net [46.105.34.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D0A81C1F0C
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 20:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.105.34.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743452406; cv=none; b=mH2IiomSDzfWhqjoPbEwAiUUj6Wlq26c4o+IQD7CIe/slWfPYW9rnak6V9ZrUhz1QbSMuWR6ZQZ8J1y1HkAneGlzl17YVkd3D23yT2RrSfqNEt84Km2dIXP7E7NxB5Kf0+Y6Kgkrwt86fX1oFIhg63vC/jv8k8DFkNnmFLLVMow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743452406; c=relaxed/simple;
	bh=fQxwoz0Dc7i4cIGgzC2CWbk8alN51IVLtLRAGeCR/io=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=u6txkA5LIiyfGq5pk/0FUt555YgLjFkHX0Y2y47Js1RonxpVTWD99tpOxg3iNA5/pUdS/wxsdHZ9AgIG8yb/K4nMeTQ4NhZpH1LtMq5a9dSMu5eHcqGGQPvJtF6rEP1DfOzjrGnOyx4X3sNTSBIU0ITkmZNTu3xKj0owSnvM2+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=milecki.pl; spf=pass smtp.mailfrom=milecki.pl; dkim=pass (2048-bit key) header.d=milecki.pl header.i=@milecki.pl header.b=DGaNuYR3; arc=none smtp.client-ip=46.105.34.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=milecki.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=milecki.pl
Received: from director11.ghost.mail-out.ovh.net (unknown [10.109.148.116])
	by mo584.mail-out.ovh.net (Postfix) with ESMTP id 4ZRMmD4ybmz1RyP
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 20:14:20 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-4mz9s (unknown [10.110.118.186])
	by director11.ghost.mail-out.ovh.net (Postfix) with ESMTPS id F374C1FD74;
	Mon, 31 Mar 2025 20:14:19 +0000 (UTC)
Received: from milecki.pl ([37.59.142.113])
	by ghost-submission-5b5ff79f4f-4mz9s with ESMTPSA
	id mP8fM5v36meqRSMABD4k1A
	(envelope-from <rafal@milecki.pl>); Mon, 31 Mar 2025 20:14:19 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-113S0072c0309d9-39e6-4a93-8cf3-8f7db1d966e4,
                    EB34EEC9BB259E122037596A09A6C3749AFF5F1D) smtp.auth=rafal@milecki.pl
X-OVh-ClientIp:151.80.29.22
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Mon, 31 Mar 2025 22:14:19 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: justin.chen@broadcom.com
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, alcooperx@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, florian.fainelli@broadcom.com,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, kishon@kernel.org,
 vkoul@kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: phy: brcmstb-usb-phy: Add support for
 bcm74110
In-Reply-To: <20250327185623.3047893-3-justin.chen@broadcom.com>
References: <20250327185623.3047893-1-justin.chen@broadcom.com>
 <20250327185623.3047893-3-justin.chen@broadcom.com>
Message-ID: <4a9f8974a6d140c0aaf8d51740015b15@milecki.pl>
X-Sender: rafal@milecki.pl
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 17842135827268152153
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddukedtkeehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeggfffhvfevufgjfhfkgihitgfgsehtkehjtddttdejnecuhfhrohhmpeftrghfrghlucfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpeejjeekkeegjedtffffveffieevtdeuieefueffgeekheekleeiudfgleefuddtueenucfkphepuddvjedrtddrtddruddpkeelrdduhedurdefuddrkeekpdduhedurdektddrvdelrddvvddpfeejrdehledrudegvddruddufeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehkeegmgdpmhhouggvpehsmhhtphhouhht
DKIM-Signature: a=rsa-sha256; bh=rFxQjhwgGjgwXR07IRfDibfTQlpNOIRjJpt1yIGy69g=;
 c=relaxed/relaxed; d=milecki.pl; h=From; s=ovhmo3028686-selector1;
 t=1743452060; v=1;
 b=DGaNuYR3Vb6ebIPRorCaBJPzs/hqPv+vFRb51vMWOFRETkwbanblEU9AijlEgHSb6/Oh5d0C
 Au8wIr8LF78SsNnDMRp0ThKwZel6RsfrqJ56OHwDrMNCZLFLR6kz1QmIVQeQDLrzhtRhPv3eQhv
 bolqp2XCRqj8jv04GfBI8jDSL32hE94P8kGHjz8k7Lt39aJf6j9Y2WWmZDG3cnXU+R41cX+Xyzm
 DMpmCGjXB8K1MznRrUNtKMC/otF2J9gpG+HAU2UV/tJ+qohPC2Lz33d/SmWwg1G+f5AKmv9r0iy
 lqEWCN9c7zCWaW9RAC94cti5tfRAt5S03ZpjAea1G1Xyg==

On 2025-03-27 19:56, justin.chen@broadcom.com wrote:
> From: Justin Chen <justin.chen@broadcom.com>
> 
> bcm74110 brcmstb usb phy adds further power savings during suspend
> states.
> 
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>
> ---
>  Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git
> a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> index 580fbe37b37f..2e668935b454 100644
> --- a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> @@ -15,6 +15,7 @@ maintainers:
>  properties:
>    compatible:
>      enum:
> +      - brcm,bcm74110-usb-phy
>        - brcm,bcm4908-usb-phy
>        - brcm,bcm7211-usb-phy
>        - brcm,bcm7216-usb-phy

Keeping those enum entires sorted would be nice for maintenance.

-- 
Rafał Miłecki

