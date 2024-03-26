Return-Path: <devicetree+bounces-53451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA6188C4DC
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 15:15:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B3344B25152
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 14:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BB0F12E1F1;
	Tue, 26 Mar 2024 14:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="lCr9OEFy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4324.protonmail.ch (mail-4324.protonmail.ch [185.70.43.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01DD12DDB2
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 14:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711462396; cv=none; b=RqZZZyOVsA2lPNZHAW4YRh6ZSlvcSrY56WKFy36mzeu+S/+M9nX7s6+CKNPoYXC85woF3uPhme7GWSQPkgoZM3FyrJKBXa7rVe20zufB3iZLG8SgbxB4/Y4TAOrR+Ft+tVC+hApsZE7KmFSyMwyW+rkf+3+nATuQw/Tzb0ZV9dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711462396; c=relaxed/simple;
	bh=b3jLx38EwuMV9KCy/TwfBfihTKIG3mJsM+B9n++iQGk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=E9mqgw5Q0oVKl6YIi/74TQxiWHi1EcRdW0/i1UoGMiD9odihzHqgshjoiqvO09NoqkyP52fiAMpXDeMjcIFUPuYFjimwTK3jP1UeNmYqXCL3Fj9/aifqMrNnp3Hj/JAk0Xiir5S+TSZU8W7+doLQab/gsfteTC4vT0xGpRaKveE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=lCr9OEFy; arc=none smtp.client-ip=185.70.43.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1711462392; x=1711721592;
	bh=ihbmM/dKYJiXuCL3eWpGQ3yu9K6wCHTNPB0hY+x8zlM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=lCr9OEFyYbveP6IEOX+ZhqYifjBQij1LY8AO0uwUvheQQfDWTmRploiNUuNk6yWZI
	 FSsQGGo2q8SAvnuNYhHlf9AIyhyAZZRFRdKWXsOB9x3fPvAJCVAMvY78v5kE2Ff2gU
	 LYVtB+iisya7uZtFNjWUmh+KA2vPti4PApagjt16Hn06M7fYiazTby2/Lb5eXH0ZXA
	 x7ucmPNmcy+nbRdHHyEScWquRCsAL2sXQElEGbGLsknOjv/sVqihV7cveTO6Gnvp29
	 6OrqAcsthiRhgWvBWJll25O1MPZR+AkZDKpa2dPeVdOmXm8ei4SraozVjk5VuEg9I1
	 qc9RYGQAijTUg==
Date: Tue, 26 Mar 2024 14:12:58 +0000
To: linux-kernel@vger.kernel.org
From: Raymond Hackley <raymondhackley@protonmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: [PATCH 2/2] dt-bindings: qcom: Document samsung,fortuna
Message-ID: <20240326141222.200452-3-raymondhackley@protonmail.com>
In-Reply-To: <20240326141222.200452-1-raymondhackley@protonmail.com>
References: <20240326141222.200452-1-raymondhackley@protonmail.com>
Feedback-ID: 49437091:user:proton
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Document common binding samsung,fortuna used by the following
Samsung Galaxy Grand Prime devices below:
- SM-G530FZ (msm8916-samsung-grandprimelte)
- SM-G530H  (msm8216-samsung-fortuna3g)
- SM-G530W  (msm8916-gprimeltecan)

Signed-off-by: Raymond Hackley <raymondhackley@protonmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentatio=
n/devicetree/bindings/arm/qcom.yaml
index 66beaac60e1d..2db776d78d22 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -204,6 +204,7 @@ properties:
               - samsung,a5u-eur
               - samsung,e5
               - samsung,e7
+              - samsung,fortuna
               - samsung,fortuna3g
               - samsung,gprimeltecan
               - samsung,grandmax
--=20
2.39.2



