Return-Path: <devicetree+bounces-90789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC541946CE4
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 08:59:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 36575B21956
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 06:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14BA911711;
	Sun,  4 Aug 2024 06:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me header.b="AOpGhlc3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4027.protonmail.ch (mail-4027.protonmail.ch [185.70.40.27])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEF6182DF
	for <devicetree@vger.kernel.org>; Sun,  4 Aug 2024 06:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.40.27
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722754767; cv=none; b=epDg2pSJXtlKSqDF73j0qIlRH6YnzVrnH681zRdE3MAkIgceH/+Mh04V254NS7OkipKEGyDPn8LKffLEm30+L0AgVgKcZnvLwhHQuA+4Pc0GD1e9EgcG7eeSIA/Z9KDNnKJZGhjyNs/78gwE1FalvDl0t4Vo9Y/0Uxqbyb34pYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722754767; c=relaxed/simple;
	bh=ZmQwW/wDeR90OUcShfj1AaExlHjUr7arz/oq1GU52zU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gO3hKoIZ1lGDxnNRBun8J8y72eweC32/L0vG34koUWBYbDbG8GDfpeaLi6HiyFJ7+FK2WqBl8HvISXWXmuhwPHqgkh/0kI8fRcSNcXymYdg4sAP1tx/E+ToYbqzvn+86p9vUs86suy+3GmCwW14iw6iNBOM9ZD2O0UFsMdIIxwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me; spf=pass smtp.mailfrom=proton.me; dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me header.b=AOpGhlc3; arc=none smtp.client-ip=185.70.40.27
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=proton.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1722754763; x=1723013963;
	bh=iemyoq2lYHkRLjl5ZVLhpqkXKCDblZObCfWltrVdYyk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=AOpGhlc3Myxw51azrEBln/wADjeC7jHYOfOI5CAGT9/NiuPxwQ+u+4LjIQRru32IX
	 Uj+WV5yzKHk/n0HxCP3Smm/B1AYDfTR5HFw2Epl50U1nFW25B07x0GfzjhbwFx1fGC
	 14g30Cp/EGwy0G/rQeVVoS317tjuq/n95FkwPXtDM/8VZMvwqAdZjAsyQmG5EQk/H1
	 kDrYTdR1xj+ypw8lQ5ZYiFWp1TMKHQs6VkSVGBm0/4kw/cQgUCIRFl2bF355Qbp58W
	 TZIPHQmExz20882d7LPSHZep0AK6IaivKVSmj8fbjcpFU9gSf0o/aR3MKWSZycXMUa
	 J/rc54kNEjbow==
Date: Sun, 04 Aug 2024 06:59:19 +0000
To: linux-kernel@vger.kernel.org
From: "Lin, Meng-Bo" <linmengbo06890@proton.me>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: [PATCH v2 1/2] dt-bindings: qcom: Document samsung,j3ltetw
Message-ID: <20240804065854.42437-2-linmengbo06890@proton.me>
In-Reply-To: <20240804065854.42437-1-linmengbo06890@proton.me>
References: <20240804065854.42437-1-linmengbo06890@proton.me>
Feedback-ID: 112742687:user:proton
X-Pm-Message-ID: 44760990e9dbff9e86bb453402fd8e1af7f2728d
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Document samsung,j3ltetw bindings used in its device tree.

Signed-off-by: "Lin, Meng-Bo" <linmengbo06890@proton.me>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentatio=
n/devicetree/bindings/arm/qcom.yaml
index 4ef456cefd6c..c0529486810f 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -235,6 +235,7 @@ properties:
               - samsung,grandprimelte
               - samsung,gt510
               - samsung,gt58
+              - samsung,j3ltetw
               - samsung,j5
               - samsung,j5x
               - samsung,rossa
--=20
2.39.2



