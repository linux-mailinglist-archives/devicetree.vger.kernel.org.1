Return-Path: <devicetree+bounces-238922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 47030C5FC67
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 01:54:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B68014E9359
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 00:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B5F6155326;
	Sat, 15 Nov 2025 00:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="IJKQcBfp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F871799F;
	Sat, 15 Nov 2025 00:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763167971; cv=none; b=RlSMXHyFNJers1y7mOBEFRmT1hwoU9IerwXT0j/GACJ/rlDxuj4/K49R1o/0PNKW1M8r9CIyv99hK/DDanqYErVlvds/ND/A96ugkGJS0AinX4fkCQREVffFCU08w5aYdvNzM3BK1Eq8JGysmkrUaA6LhxNE0vTeTCfGCEPg7kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763167971; c=relaxed/simple;
	bh=cQdBuCW8XeQdKJjdJOSZUyJ/f+rSCyBwriTJ8hfQq74=;
	h=From:Content-Type:Date:Cc:To:MIME-Version:Message-ID:Subject; b=a6yYvS4jxZpRl2kzzYxwZgI4svHgt107g/k7TKMFEnLDQHaZCi/NQscOB6eDRzNxYPG8zC4FQxon+5feo3uvmYR5pp0USQ22EM/bjBhZVNNwerQzcsmr4uS6Lltiqu6x/0KrJUdSueA+X6KqUqFMLTMqCp12ik/nFOrKkcXU7Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=IJKQcBfp; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 7354C40CFC;
	Sat, 15 Nov 2025 01:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763167964; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=spTcZiqb4A5425RyOXmezQjUNlBYhLgtHwe9e0+p9NA=;
	b=IJKQcBfpXOwKJTaIcBLEg4NTpmUc4cYkUWd5M4nz/rdv6KKy0M1FOXhXchOhtfsKfZy+uC
	j0v6dTXiGIiLgy1UZDJLDE/IPGsg24eERd8bF3jQyWzKK9nJXBLOYOkYnvRhmep3Tb2dGC
	9QfM+poNzIinWL1/6m7izlsTpe7yAOKOZ/ApLfNh/c8wDxCx9IaLpxuyMxmr+Dex2YA0UG
	KV0IVRDNTD2nUXv33+i+nOP/yITriLaPho1rV4d/QY5PUaWp5OvyMY/u0PLckMxgxemin0
	Yde3GArqfm/I9rZO2bLSjVcklVLZ7Oh9vBejYljq6wfULwYHcB8JbS0K3rXTnw==
From: "Dragan Simic" <dsimic@manjaro.org>
Content-Type: text/plain; charset="utf-8"
Date: Sat, 15 Nov 2025 01:52:43 +0100
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: michael.opdenacker@rootcommit.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <e4cd11d0-463c-e707-5110-6b92899b1ba3@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 1/2] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3 and 3S
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Michael,

Thanks for the v2!  Please, see some remarks below.

On Friday, November 14, 2025 16:46 CET, michael.opdenacker@rootcommit.c=
om wrote:
> From: Michael Opdenacker <michael.opdenacker@rootcommit.com>

I'm sorry for not mentioning it in my earlier responses, but this
line is redundant, because it duplicates the From value found in
the actual email message.

> Document the compatible strings for Asus Tinker Board 3 [1] and 3S [2=
],
> which are SBCs based on the Rockchip 3566 SoC.
>=20
> The "3S" version ("S" for "storage") just adds a 16 GB eMMC
> and a "mask ROM" DIP switch to the "3" version.
>=20
> [1] https://tinker-board.asus.com/series/tinker-board-3.html
> [2] https://tinker-board.asus.com/series/tinker-board-3s.html
>=20
> Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Do=
cumentation/devicetree/bindings/arm/rockchip.yaml
> index 6aceaa8acbb2..cd249325a4d9 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -86,6 +86,17 @@ properties:
>            - const: asus,rk3288-tinker-s
>            - const: rockchip,rk3288
> =20
> +      - description: Asus Tinker Board 3
> +        items:
> +          - const: asus,rk3566-tinker-board-3
> +          - const: rockchip,rk3566
> +
> +      - description: Asus Tinker Board 3S
> +        items:
> +          - const: asus,rk3566-tinker-board-3s
> +          - const: asus,rk3566-tinker-board-3
> +          - const: rockchip,rk3566
> +
>        - description: Beelink A1
>          items:
>            - const: azw,beelink-a1

I'm sorry again for not mentioning it in my earlier responses,=20
but shouldn't this addition be specified like below:

     - description: Asus Tinker Board 3/3S
       items:
         - enum:
	   - asus,rk3566-tinker-board-3
           - asus,rk3566-tinker-board-3s
         - const: rockchip,rk3566

... because the introduced .dts files define the actual board DTs,
by descending from the common .dtsi file, while they're compatible
in the sense of the 3S board variant extending the 3 variant.


