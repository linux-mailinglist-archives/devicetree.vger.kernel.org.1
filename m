Return-Path: <devicetree+bounces-82310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 94915923D6B
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 14:15:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5158B28655F
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 12:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 970AD16D9DC;
	Tue,  2 Jul 2024 12:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b="Qni9g4qd"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic307-32.consmr.mail.ir2.yahoo.com (sonic307-32.consmr.mail.ir2.yahoo.com [87.248.110.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA7516D4F5
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 12:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=87.248.110.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719922518; cv=none; b=KZwZZzmtdhPlAgZR7GKeVzou9yxtBpi1GctPONzfdffpiW7R6ttMC7BSLWnUL8hBN+dFJ5TpRYapdMJB92TZFov4Eori1otOKb2vrGgBpE8brk6dI1fCgrCopc3SqFAUBmhqHs8oJ1ZpENyxF0Ks4IC07+n97QVgw+LEEnexG/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719922518; c=relaxed/simple;
	bh=5A/LPrJoCxitojeJt7eBlNk3snz2b7ebrhihpRcHwVk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A6r+BbgFaNWQMAWFMlntPnmn9P7kHLNg+IH0PotLgTcnYz+H9ebNmcLH4fqmBeIkOYr2YGScVeAuyEj6f9Ut82IhVJyid0clm0hpMu8WDzVfOHMDg0Rtgf4RpScWGZdvh0OyexysZAGTuktMeJLXz+UU/uEjzCb5BsWGX3y1R6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com; spf=pass smtp.mailfrom=yahoo.com; dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b=Qni9g4qd; arc=none smtp.client-ip=87.248.110.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1719922515; bh=SI7tOorPKK3iwm2YfS1Q/1Qsuj151Q4jTdztaPUQtFQ=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To; b=Qni9g4qdWuTSqhUz4/n20GTBJCasv0VnBWIB1JUCWqLPO+drC+pN44XjGjdY+mfuL9ItFzqTKm05jYK0qUEiCCw2w52sYwIPVXpKtj09aCy5UEFbYB5pojR3m7EIgs21gUy6pvvFKIvAq909eqPPX0rfMSa0OpWmi7qY+H6kHUcjDKIP6DZde8u8Olcc4khDQCe54yBV7T0o2OGNNL0WUd0QREllQr1enwWzoSgSgOZPjwwAuaEbWtzgZ+2L530FSdKkC9PeEi1KOlsKdjhh4WKKwgW+Jvpdl20q3vhh4fz/mD37mC0pwybb7j8piBm9tTpyc/cGuzM3/jmva08C4A==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1719922515; bh=D101O7/j2vxd4umOtZt66hNlKYd6xgDWoKZbCgGdNqE=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=nx84nNyDAQ+LXzLA/Ezbz8sRoDpP/VWcPIs/9ZLmafiGYke75tOXYcPxPy4A0WF7wmAGr4VlNxHsNH//ME8Jjlvf4LSw1hKE34Y1inuW1OKlJqGwppQXwNpc37st8HfFyWV2XANs/7hPAnr0MKe9jsBL8YpuufclwIINEGI+3XtsEUgNfWCyRnMMAQKsy9RWNcrZlM5PKkXH29Jn2aM0VNgLhHGqM2v10/ZDFW9pkY7pOIWb1iIUA8ZtQt7JTCGw/1C7VdhkpmQxKs5/5G8a3YpQw/PisdTVAgrSIIB3cOodNajc3EKH3YRq/EUbX7rsB489TAq9ihhljoua2tdXug==
X-YMail-OSG: ElClSJoVM1kUkOe6xQFoHRNY54mPJP6B7tC6uj_3Brw__zqhVQ2DoPACgCDwrrF
 R9lmIY.b1BomJ4A1apc6Emx1ZzQZYGvJDVLjjzqEZB3UTiq00K9.Eq3aRazKiLR2bzh5Qe2qAbNh
 ML.cT4e9F1lx8Un25yjgtwnjTlt1aJEGoDoTgOTww0xG.eL3SE7JaV0V7oKs6EVm2FutJV4ZGoLK
 H1OHbFoVcbH1J68X30f8ZVNVqZO6UxEnkUZwJSZ1WQ81n5q0sG56Nq045setkuAsQB5PqcKZ.nQ2
 hNzygx_DMUXqU62DvFAwMm9d8B7qzUdHiINV1RaS_m6zrIJVRXkrMLcX1_hrIX2VtozztwpDcA7K
 gI1B.ey6HqFlWvaBpqvsVYOzIvB9bim6toaORiAmcEH.0EgeHFfmam0MR7pP9EmWkQ2Kdvupi3vZ
 6Fefeq3sxWCHuFd6VIiUuyUAth4zziIzKWIBaYhTQFjKuNdJUNwH.y2ImvrCIHWivlKQBZQafq2G
 bUzQiIJeQrGZbkgq__9cP4pCbVMe0ctO.5UCjdSMQszPbBCEW57HfhhTg..9q_L4ySQFAS_xSC7Q
 UsIGeRXcyH1TvqLblSNC3Bafip.vtsLbJg.UBYHvPyh7cJ4fyvi6uLkYsUyU4WkZYXTkzKKb0EvY
 6I1ef.MSS6dp5NvdKu2ZrOaFLxlFVdSFgTl4d0fyHZxYKexouC4W_ldHKO6n14d2oKdjZ2xbH3CI
 jsoVBPCL4cSfwiZVk1p.kp_TJ5OnbNOfaqybVjHpxGaH8A7Xp.WsSMubPE7JxhMJhpGvlI75wdlA
 0.PwF3bX6huSzp2Hg4pekj4z0cwEH2faIabZWV8EH72uzECwlptGhAVUg9r4JqC1DjoV9e_uOMr5
 eOU02LjaaXqCZiBJapRiWKlAFYFuJbn9L.ORfZk2kqylr7yxSoG3pZE2KE03.7eeSWRk40MCofBE
 5S2wKvhcyMxKhXZq7fJhUUhoeWpeJ4ZLV5w2wPiuwNM9CjPqvla7oIk1uQ9P7Al7_0wW3_NWXVmK
 NkhOTrY9dryUROMiUSMy7QAyYWR8Hk7y7JTPSJi5B3Vv67HbPTRuKOyCfObw0PIqjymaKIN8tEFd
 8oce3gH1FF4PhYjZ61J9Xu9lJOA3hH9kVVWy5Hl_6dGvw6rgxKFKGhIX.vcDAVNMn5e7Dx368Mgl
 5mSJ_zE44I84OkHpL2v9Wsr2pvlSZUX3KJyZ7IuNJNgn0RMmughcpBXHouv4kBVivzk1Q9zRR4W7
 96UHq8JRVSeSsjPyoZcK50krIuYt3RebgtNEw3TUoplkdCgXejz9_SqM4B26AiytJih1PR5O0wNF
 CQhfYOkAx7y5Z07UTZMzcCIxXbkY.1FtKKAbo6E8ncgQUZmzsau67KklsB88SrNXdSxDfS00WTxb
 BZYP9hjNEoCj7xEPpMnMEsz61kc.hI2GAb4faQtP7R3UIbRl6AMD8XGsH1ZbU1T9q8Spl.mPiLBf
 guiyIx5g.e2I2y6sqf6lCaGcDIGyO7HC5zp5gSN08chtLloOH3Yc8C5uGnMyJKsIBkWcFxuZ.mO7
 OiZOn33tHUrsoHIcvrJFSr.WTvzADM8ap1x5RaqH1W2FDaLuNouy9T4FO.MoUGXMgx7OLuDqtcgw
 jFnRpKGe9je.Z.rdrzS8p6Thh2WtnRHRxt8kx3pYrdHgnnjv_akDZrhKy2BS7JncP.T85S257Rnl
 mXuAgXX61OuhhUnnV1uX8H25QzeDA6pCWC2mjEtrp57TjgDMuBSOiDYYXduCZyRcvPQr778.bX.W
 UP9cuWSt.sO6VU1DorbXJfC2dSOEVRKRTnFe6xcEApnqE15NZ5qIIWkVO..l7HdvAjhoAUDFiR5R
 AU.TGmWIqud8womiJYuD.I9k48dzgTjSZImSvD0Cv_NI52s5Gz1H4u7g1OLWcCHl4mnbIPyHcpa3
 DCL0TS3I8KlSI1CUcfF9O.Lxx8uHqG5MfMrKPO.1QT7_w.RZgtER72mGBO.4FC3WsmrG5Q8XL_jX
 Ey4kHZ0sJbiWRtS4JFzVgEEd8.0Vfcudj3kANixtHpOO4bVWh16aAaC1goGPmxBP7cW9mZmUrFmD
 .gQlY8Sq5UgUER2jkAzE0DAGUL.aQTlnl1eMYijON7ZMYP7FJuZym.w5dmkU3sAcTJdW3LUC8PZl
 Ko2vzwYHrndjNvkhdi9y5GVs.1fCkPAEEEggy40pUfpY1rDzooZF_qjI1xw--
X-Sonic-MF: <xzeol@yahoo.com>
X-Sonic-ID: 5be21093-340e-4cd2-8dfd-5895edaad512
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.ir2.yahoo.com with HTTP; Tue, 2 Jul 2024 12:15:15 +0000
Received: by hermes--production-ir2-85cf877599-mvt7h (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 0dd9cec1d13f3a8113ebc66190b2d374;
          Tue, 02 Jul 2024 11:52:58 +0000 (UTC)
From: Alex Vdovydchenko <xzeol@yahoo.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>,
	Guenter Roeck <linux@roeck-us.net>,
	Jean Delvare <jdelvare@suse.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	Alex Vdovydchenko <xzeol@yahoo.com>
Subject: [PATCH v4 1/2] dt-bindings: hwmon: Add MPS mp5920
Date: Tue,  2 Jul 2024 14:52:50 +0300
Message-ID: <20240702115252.981416-2-xzeol@yahoo.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240702115252.981416-1-xzeol@yahoo.com>
References: <20240702115252.981416-1-xzeol@yahoo.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for MPS mp5920 controller

Signed-off-by: Alex Vdovydchenko <xzeol@yahoo.com>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index ff70f0926..cb2fc26d9 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -296,6 +296,8 @@ properties:
           - mps,mp2975
             # Monolithic Power Systems Inc. multi-phase controller mp2993
           - mps,mp2993
+            # Monolithic Power Systems Inc. multi-phase hot-swap controller mp5920
+          - mps,mp5920
             # Monolithic Power Systems Inc. multi-phase hot-swap controller mp5990
           - mps,mp5990
             # Monolithic Power Systems Inc. digital step-down converter mp9941
-- 
2.43.0


