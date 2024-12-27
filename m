Return-Path: <devicetree+bounces-134211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D869FCFBD
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 04:10:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D5693A03F6
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 03:10:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BBF0381AF;
	Fri, 27 Dec 2024 03:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ggl1Et6x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5038B3595F;
	Fri, 27 Dec 2024 03:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735269033; cv=none; b=cp8ANZmfJnm/i7Q/feaLbwUiR4ATJu4IfpXu5vDw0C8+fL6cAt6wQF9XKpLzjlylaNUM417Fj01oNH4zMgXETGnrjVu8UiHHOby9RVjsIc3YvkBAwp8d7bk42g8xwR22lxJQeGExgkuJ0laOEmCeMmXJt8cEnTMqq04gg606KTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735269033; c=relaxed/simple;
	bh=eZY7s59zRGufOHwhRf2+rkN8ue/jAjm+rs+cgeE8RzU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZmYjGNdQPtNzTwBO71K/6Z1amPz1KIDpDLzEZv3Rqs8zcr1+Ql41oPZqQxphrJTzB/PtvkwWsfMlhP3d6tMUc0Dtc4bfbGhTAw/DCTUBK8Yp5VZrTUVW5mtphv4iCQDC/N0eUOJ+sDGnYKK96oXRyixTQILH69QQjAtMa1SqgNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ggl1Et6x; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-3047818ac17so46542861fa.3;
        Thu, 26 Dec 2024 19:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735269028; x=1735873828; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8sbDFkDnkCYP25YhC98DgH+FS2tPhMY3Ac2FnjguokY=;
        b=Ggl1Et6xKXGrfsUIUr1xqs5f0juSEDKXFhlH9li9Zf8iREJ9dkHYjUOjGFvogfNkOh
         8mZCdGsJj72RDggBl19dlaDoHj9gSfOPgMCbGmuG4JcilUrecIins6HO3thOBC6r6Jrx
         G3jWLSxU716TZZh2gxG7+Y3ABvCLkFUQDEa1hLRekVruDB8bu19ynppBr8uXYI6axoz3
         qvIGDf9byHZOM9fSOp9iRznr+pI6eX87jbidQDSsLxn2q9ZH2b3hBrJpHcaNvEQYmZlp
         eItn15Jw0kLLQuCmBSPL1nc9SiK71ApsE/t/NYT7FstRj0f9T+p+5RQ2pRHqnlml8aXO
         rc2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735269028; x=1735873828;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8sbDFkDnkCYP25YhC98DgH+FS2tPhMY3Ac2FnjguokY=;
        b=pS3RtGX4uyTP2dQRTBc2nSANTkfns29YeT6kHiKZ4IE+qt0nJRcLNKCEzL3Ts+WdiW
         ChIe7/oLFLaBBX1pN3C8AsOXFJdHS8Z59mz44Gpsc+iA0vzCOWrGSA2I7XLCO8nRlcmb
         /6nbBnQ3Ow8ZksKdm5nfQ0hudGxgBIAkQpnoHM0XLNe75v1xX1QsLh11jYTrKVj+Fee+
         jgcj1o8V4fIL5DUpiXoejqC3QgzqTvRprI/rbToockA4q6aMQG43N6x5fAELbQgySuAG
         TQTBm+r/C54ViwlxBM30THn/plVDuWUlEm7eH+B+Ib8HqsbTjBI3LvxrHhZZ9EI0V0IW
         GG/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXPbY7gJa2G+AoYDr50esMkgCfld53h6Vdo7g6DTJUAOT5975fYbOlvZ1PCd0PJS4QPMYbr/QppOSfdLCk=@vger.kernel.org
X-Gm-Message-State: AOJu0YzgqoCV/fqe6rEqphe5/4xBLQtrV51akSPxgwtyyPdKV6RXHdjE
	tAxiq/oCof3rMph5g+Ong73EO73JrbMa2IAXJ2Sd9KBJuV8BzCE=
X-Gm-Gg: ASbGncuYLfQ7n4Yk9gN1S11cv2+ZQYwXbgC42uxPSLv+1KJ68PgXfZ8HDsm1MP84BFb
	6iq+sUGS1FZ2NqZPMFeSTVSWMXn2DYqy+rG47L6tMQAs+2ZJtF09KbK9j9oWT9+iIyiFPNZQgTM
	zOqDHD76aqioR06+Ks2c++QMaR5lpcqyTMoG2zTIqncLHTNy3vMWcAXrNlwp7KnAdfE68HUyH3f
	G3DL4GiNufVg1IgsOZ+jJ88LTmqMYgJJ0KF66xUAnb8uILxwfS7KZzP9f8=
X-Google-Smtp-Source: AGHT+IFp0hUwzEvdI84M3ZlU+5PcWHgcj+st1Q6smg0tEtOHtQwhGA4VOM1BqLtbhs5hk/4Z/PHMkg==
X-Received: by 2002:a2e:a991:0:b0:300:25f6:9b3d with SMTP id 38308e7fff4ca-30468542ddamr74919191fa.10.1735269028169;
        Thu, 26 Dec 2024 19:10:28 -0800 (PST)
Received: from JetTurbine.homenetwork ([2a0e:e6c0:20d3:2100::1d])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad6cccasm24326141fa.1.2024.12.26.19.10.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 19:10:27 -0800 (PST)
From: Ivan Sergeev <ivan8215145640@gmail.com>
Date: Fri, 27 Dec 2024 06:10:13 +0300
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add BigTreeTech CB2 and
 Pi2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-bigtreetech-cb2-v3-1-91c556adcffe@gmail.com>
References: <20241227-bigtreetech-cb2-v3-0-91c556adcffe@gmail.com>
In-Reply-To: <20241227-bigtreetech-cb2-v3-0-91c556adcffe@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ivan Sergeev <ivan8215145640@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1110;
 i=ivan8215145640@gmail.com; h=from:subject:message-id;
 bh=eZY7s59zRGufOHwhRf2+rkN8ue/jAjm+rs+cgeE8RzU=;
 b=owEBbQKS/ZANAwAIAbzfXRlQM5b9AcsmYgBnbhqivExZ+Jq3gxJLjvHIzzDBbxC+394uKwHnA
 fX9ZknH0MiJAjMEAAEIAB0WIQROCZtApKFz1fvvsOS8310ZUDOW/QUCZ24aogAKCRC8310ZUDOW
 /R3VD/0b1VV/C/tIp+9Owh3X32blcfa82aA/HpBd6PaUn6guINA6wHhSOIRN9BJDnyX8Q9jdp50
 9lG4urt0xEcko6phFDyWt391G2L+6YXz42rjI5zO9RLsGORO1az6iPYZ2ET8z2vfDiUO1PFGbUi
 GdMrK3h32vCirOUWOIa+eNG+z9PyHd/k5nY3JUrfnCGqILGhKCgT9bL00/eBR9VYQgTBJEzQRZj
 Ng+zWt9US8nZpbpc2DsTX5XYJJtqV0C5HR7nCLn34YOI6WVeHghUaR4Ml9lxbQ6+UyP5+tnk5IL
 96rEKdLeXNqt4BNZD7y1E4BkMfA5y3C2+cD+H/gu1DjzprAt/PE5YqDmFUegXYGTI35EIdoPs89
 AXxyGjhU2btLvyNyEfWH7RRGQ/PDghKMheXJBYrwFOD82xj9rnEbB2GSYkirxM6Nvk1WmDYxCdq
 j0gJHibBVMKrXCrkR/+zbvsgfNoAu4k9M/WzrJV8nYGcdwGaAOtSkc3G7hctC8e9uRg6QUuEuc2
 Di3/M5f6hQLXt7BMGTh4vjs4L8vH8KwW6zFyT60f8BwtP1ysXRyIaj4U9snqPqQekS2/nrvv83T
 XQOVkhd2yHaOI/GFTa7QGdQgiNvV1GXp7/vD7Q8vb7OldIC2zR73OtbdAvvp0d8nesnSMaFCAef
 JW0+5oSLhpeNirQ==
X-Developer-Key: i=ivan8215145640@gmail.com; a=openpgp;
 fpr=4E099B40A4A173D5FBEFB0E4BCDF5D19503396FD

BigTreeTech CB2 and Pi2 are Rockchip RK3566 based boards

Signed-off-by: Ivan Sergeev <ivan8215145640@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923fadaa48c407a8e55e7854db7203e..349453b1676bfac45abf5cd49d6bd9f847281213 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -81,6 +81,17 @@ properties:
           - const: azw,beelink-a1
           - const: rockchip,rk3328
 
+      - description: BigTreeTech CB2 Manta M4/8P
+        items:
+          - const: bigtreetech,cb2-manta
+          - const: bigtreetech,cb2
+          - const: rockchip,rk3566
+
+      - description: BigTreeTech Pi 2
+        items:
+          - const: bigtreetech,pi2
+          - const: rockchip,rk3566
+
       - description: bq Curie 2 tablet
         items:
           - const: mundoreader,bq-curie2

-- 
2.45.2


