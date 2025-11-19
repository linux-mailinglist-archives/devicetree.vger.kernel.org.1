Return-Path: <devicetree+bounces-240060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9C3C6D053
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:03:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DAA894F2EAB
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0537B31ED7E;
	Wed, 19 Nov 2025 07:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="wVRWPPc8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9639D315D39;
	Wed, 19 Nov 2025 07:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763535656; cv=none; b=R1uQgmvWh5VZt41EgLp5WBqV0xqZjNJa/8MLWPADRRmoNo9YykdfLzJVCtVQYPjpPJHSaAXf0EMzHtw9NDj2zj1JQEIwgG7DpiQ6VbvOKGBlG6PLvB1kZthkQTVTGcdGUIxM1Za9YTR0nksmu2kErbaubb8Jpg88UTJoeRs5L88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763535656; c=relaxed/simple;
	bh=CIpOiW2txaFQ6WVs/u8FNWX53uL3+8TtqapTR9qQYEI=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=g0TIYlAuuRAk6DMBH0G3Bynx53XWycxBbF82ucdF1xL+MJT+VQLBz7b6nBn3seAPEdE36/MYlBRpXV9Nc9zGYLX1yzWOdkrSDfMiFrRXwQfddMRKbOl67rycwfBsFtrTI/0S1DOd4DQk3oxjZFJZTkxINR5dooUvBQ5kreQe7a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=wVRWPPc8; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 034C041232;
	Wed, 19 Nov 2025 08:00:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763535651; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=RshtQloAKPJWaBhC9RTtzqTW9sA5Qpf21PsMkDt8Tpo=;
	b=wVRWPPc8maeCZRmVQVxDcEdHNSFTuuX7JhTOqaKyXnVj8RZLOqBU0wAVwlp8tbLSw4fVOO
	wkf+FfZXLsRj6lcvXyTbOOqYgkHebJW6aYoLhOinYqZ67pzp3RgtVgGAZF7WDFgTo3+/RF
	vLQyAZrMi44Vv/hSmRHyuQLz64tOCdhbWOwZJDzzt1TWcHB5THytq4mFIHCaq+0YfxBI/L
	cqSmSkGBjkUFJD1/sJLVLmhu/c8ibv7DN2KBv84e9qIMxs2+F2AGbLOsuQpShIO/KetjLD
	vLt1x1TZdmhbzJwRujPTUfyqara8n1KonRZ/qlZjxY1N5+1FjOpwdm7RJC/rQg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251118-tinker3-v3-1-2903693f2ebb@rootcommit.com>
Content-Type: text/plain; charset="utf-8"
References: <20251118-tinker3-v3-0-2903693f2ebb@rootcommit.com> <20251118-tinker3-v3-1-2903693f2ebb@rootcommit.com>
Date: Wed, 19 Nov 2025 08:00:50 +0100
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
To: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <155d3d05-49f8-a000-6939-1411917745bb@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 1/2] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3/3S
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Michael,

On Tuesday, November 18, 2025 16:56 CET, Michael Opdenacker <michael.op=
denacker@rootcommit.com> wrote:
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
>=20
> ---
>=20
> Changes in V3:
>=20
> - Remove this Acked-by as the binding code changed substantially:
>   Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Do=
cumentation/devicetree/bindings/arm/rockchip.yaml
> index 6aceaa8acbb2..800c11323a4f 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -86,6 +86,13 @@ properties:
>            - const: asus,rk3288-tinker-s
>            - const: rockchip,rk3288
> =20
> +      - description: Asus Tinker Board 3/3S
> +        items:
> +          - enum:
> +              - asus,rk3566-tinker-board-3
> +              - asus,rk3566-tinker-board-3s
> +          - const: rockchip,rk3566
> +
>        - description: Beelink A1
>          items:
>            - const: azw,beelink-a1

Please see my delayed response in the v2. [1]  I think that would be
a better approach.

[1] https://lore.kernel.org/linux-rockchip/3c96ee6b-dca7-1a0a-792b-f8c1=
65ec997d@manjaro.org/


