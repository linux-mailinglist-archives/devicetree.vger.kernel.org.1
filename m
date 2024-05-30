Return-Path: <devicetree+bounces-70885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE178D4D5E
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 16:00:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CBA628342D
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 14:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85291186E53;
	Thu, 30 May 2024 14:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b="BbNjEs8z"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9EF186E34
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 14:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717077601; cv=none; b=cBtWQChcD6GFVOy+Q8l9XEeAf64LQmrVebzNtrAH+bhCWs5ba878kNjFEHIEie5TSbKrZXZVDXSf7hVtyPNwpOReU4b1HLUJN/yaWQbMZS4la8rOZJxGYARGbkfDKKXevdvYLveJwugTS63PxTG8+0l1sLL5XG04LBf8HD2oSkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717077601; c=relaxed/simple;
	bh=ejSWv/DV7VxeygnIV4oWMHbfw/k5TEp5V7OkPMs99F8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=u6LYxlVVixkecrtPrn47X8M4ZmqHZUAvBbNr/Fv/lRmXp7BiopQIi93dIRolk7VxlkGR64a0sISm4JYjwMGxusldWUkuImhaSi+lhrHaPlVVtP/qBYpTrXb0wZay641seX3UcezuiWwXgSverRHi5pa6Cj/3v0LmMvchMu+XYxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de; spf=pass smtp.mailfrom=posteo.de; dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b=BbNjEs8z; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.de
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id B7B7F240104
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 15:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1717077591; bh=ejSWv/DV7VxeygnIV4oWMHbfw/k5TEp5V7OkPMs99F8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:Autocrypt:OpenPGP:From;
	b=BbNjEs8z/9ssIAIhTMqmRSWEU69F0MZCi5HqvFUejFqnziY2L/ie7drrXPiRIBQ2V
	 kfUCPezBzGqnvBxJjpEvHylZ7cSF65v0Cc+MaS2Fbi8+CJwjC/jNpWxnqe20idQa3P
	 AYfv69rs30L5foboZRWH9wNm/wsZvDNfBvAzeO5tg14ItuiGWRX6ucX6xHsRXxcD+K
	 bi7i2HHZL0IkTwxlSOpK0SRJ2KHunQBF8Tydn5Iro1kpcp2Prn695Gn25BGab1t/nw
	 bXibH8EgKVzOF3BdATrXt0IK8sa7Xad2JVoK6e7YT9pZzE2Yzyc33t4bJQ5g1hIsdA
	 wMNEwUKLn6gWA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4Vqntt4mMlz9rxV;
	Thu, 30 May 2024 15:59:50 +0200 (CEST)
From: Alexander Reimelt <alexander.reimelt@posteo.de>
To: andersson@kernel.org,
	petr.vorel@gmail.com,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: arm: qcom: Add LG G4 (h815)
Date: Thu, 30 May 2024 13:57:41 +0000
Message-ID: <20240530135922.23326-2-alexander.reimelt@posteo.de>
In-Reply-To: <20240530135922.23326-1-alexander.reimelt@posteo.de>
References: <20240403104415.30636-1-alexander.reimelt@posteo.de>
 <20240530135922.23326-1-alexander.reimelt@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Autocrypt: addr=alexander.reimelt@posteo.de;
  keydata=xjMEZg0fSRYJKwYBBAHaRw8BAQdAIcaNTdj3NWDe5HQPCUs6oYyQygAJWP9LCzhr+C7RwMrNG2Fs
  ZXhhbmRlci5yZWltZWx0QHBvc3Rlby5kZcKZBBMWCgBBFiEEM+Wy6sI/mP5S0zIFHqi3OKk8uRIF
  AmYNH0kCGwMFCQWjo9cFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQHqi3OKk8uRJ8ogD9
  EVg4zgfmC2SqXCgms6LETAzVX4CrAS8yMhyd7Md921cA/R8lhm9B96RYgA7MvFPFJb1T6JFY75Jg
  QLXrtIE5llwHzjgEZg0fSRIKKwYBBAGXVQEFAQEHQBGDuxZLOTvppxyM4G18fSR6xzT0xkkPOia7
  Bh6L1vAAAwEIB8J+BBgWCgAmFiEEM+Wy6sI/mP5S0zIFHqi3OKk8uRIFAmYNH0kCGwwFCQWjo9cA
  CgkQHqi3OKk8uRIa1wD8CZDdCAKXstgXY96eeSSP7MecEF5TBdmWOiVgjlEIpoEA/RnGuDaj06B1
  F51wyGAjYXSmn5qFoNHu3yXyLUkFz1ME
OpenPGP: url=https://posteo.de/keys/alexander.reimelt@posteo.de.asc

International variant of the LG G4 from 2015.

Signed-off-by: Alexander Reimelt <alexander.reimelt@posteo.de>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 66beaac60e1d..76aefd4aac67 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -237,6 +237,7 @@ properties:
       - items:
           - enum:
               - lg,bullhead
+              - lg,h815
               - microsoft,talkman
               - xiaomi,libra
           - const: qcom,msm8992
-- 
2.45.1


