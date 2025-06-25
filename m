Return-Path: <devicetree+bounces-189379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BEDAE7BB4
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:12:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F0BB1BC3964
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E1B329827B;
	Wed, 25 Jun 2025 09:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="u9DTNEB0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15152877F8
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842718; cv=none; b=GJzxrcigHeNgqUq/GPN7SadlGcz2JHwpO6XbSO6yhVdNcwpYWe/c13m4AjOReXTepP8XFimf9bIL1hrnPsqlXi8151p/2sMVDilMn0nF0rJTcJEK02UWt15lJJS6t1g4z0duHjZSPRa4pqlcdjc4rwLLJhRP1wD9Zu69u/3uU0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842718; c=relaxed/simple;
	bh=Iigpdc/tCJuVohRUA8ySz3mfZZWe7dIVNCG3Tt1opYs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MmZPY9wJ0XCofmpVhaSUDi+c9o7POubAyj8y+rjYxCG5X0Mf7VLk9FzEvFAZLgicw5h+O6Altt9NDVQf2tuDqdb4mCjk9b0noufbU05Tq07BYmwddLDegP2y40ds4Z/9K0KuzMuWTa+BUTtSzTb6FMJbWj4tcf6p/nXQgm2+Gjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=u9DTNEB0; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ad88d77314bso277521766b.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842715; x=1751447515; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n8lEqlXoh/YqXxCM9IWOmHLzm91gjjKkY+bCj70R93c=;
        b=u9DTNEB01XQeiMd3bnAOgfyXr5G1j3vmrHD1pa424kwXWHtpq94WY22eUK+zo1XOCi
         y6fwa3hWVUZHaMhhGd1NjYjLcYC4MRJXmtWTGYGz4eGwvkY9nzeOAZqFjijY3RpDV7T9
         7mRSG8SK7+pCjk1LE3vwVzAHxHKYIrCCE+GBlVzRSMq9izJ8FeAw5UCCIAKReOkOGD5m
         g5NoQNA7v3IoONTh+WY7fsZolukLDHAzoGPEdk4hRPUHx+i2XxdDZoq/3dA4gN2oPtgg
         DkO70KhnbF8YBu+mPkr2TOQw7BrxuJh7S4Lv3B7sOMmz1w/PBjQtItvnTZVJ7RxI5Aeb
         CLWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842715; x=1751447515;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n8lEqlXoh/YqXxCM9IWOmHLzm91gjjKkY+bCj70R93c=;
        b=Ca4V8NOQ6ipQlxUqZZBEv2YbQQ/nIiUkvToDDuQTo6t/qYF/E33+WH1kof7S6uD2o6
         VWGF+ospkyWhF9DpYtcw9UK1DpWM1iaxLCIop+K8mwQYQnnpEohEkA09G29d4E+w1A9z
         0Tq+oefiq9RoBJEQHfJ2rYzPxCf/nI7W5D7bOWy+7Q9N7aK712MRfXubJlx17bGcVBwh
         5GCkjitG4+NjGl7h8r7dewcCTXD5Vau6vzFxhj299wnw6frnJhZayWC6QFs/etZaoEnJ
         tM9ajeT+zzp+sxmW0rO8/Tkb5JUV00chG6y3i0hjYBpO1bAUQMVpTsN+bzZEQ3vpqvcn
         Fq0w==
X-Forwarded-Encrypted: i=1; AJvYcCXgodySRA5WHuqYvweRHddp1CPu+C4WsP3mJI/Y5xZAaNdpyWRQCzbRUnDTcI2DML7vEymAR1TerXs/@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ/d3T7x/wE8Df9V5FTGa6U9cfiR8wIyJnVlJCL/v8akhjQwEd
	i3dONu5gfvP9ODiDgKGRPCjS35r3hWZHAfKUFgkrjk3nAy/V5dEVxiSo6iJvCrt3I/s=
X-Gm-Gg: ASbGncu6CZAndtTUbUTk1G+jKLRuenLSK+xVyxz7Dg7wj8OdIKbcgKPN/yiAvVOQmQf
	ewNySj/RxI74G68tR4oPq6hvjs7cqu8cd1V6fadw/1vH7Pz4yYUzqjlBziuHUQutpWhAvfKhfdo
	+Pvwyjb6+k9K7NiJRyzztOrO+4YWyzF/j+ji/teHBbMozp4m3MkwCRXFacdeu4SfiVXz8Tr3DtA
	hyz8RW51NN/uZJy1z+302yviPAFd5PjE2f3SN+rku+CWQ2Mnh8KUOkkcxgDvcvADM8Doge6EiXA
	Pb0nY4yVMfaOTz6hv+yh1UV7Cjzdnfqfo3FhMhoS9kNP3+gdx6Vnm0UTnSCFO2Zju3bZ1FoZLJ3
	/LFopZBkUJRuiUERgYk1RO42j7OGn7XB+
X-Google-Smtp-Source: AGHT+IEtAez6hslClI3t3PJMywyhPPwPf4hwAiXNbFuMbeEiyxoop4oMEzKcsOf/OlLn1pFY+NVpBw==
X-Received: by 2002:a17:906:7308:b0:ade:9fb:b07d with SMTP id a640c23a62f3a-ae0be7fe523mr236784566b.4.1750842714978;
        Wed, 25 Jun 2025 02:11:54 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b39e0sm1007242866b.110.2025.06.25.02.11.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:11:54 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:11:45 +0200
Subject: [PATCH 2/3] soc: qcom: socinfo: Add SoC IDs for SM7635 family
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-socinfo-v1-2-be09d5c697b8@fairphone.com>
References: <20250625-sm7635-socinfo-v1-0-be09d5c697b8@fairphone.com>
In-Reply-To: <20250625-sm7635-socinfo-v1-0-be09d5c697b8@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842713; l=946;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=Iigpdc/tCJuVohRUA8ySz3mfZZWe7dIVNCG3Tt1opYs=;
 b=L6LzoH7ksRyDyDYz/QR9t1Ln9NVgD5OQLZSsNo0p1zxqCw3P13BcJbgiyHJq9fNYUey2oVvTr
 wKc7R3IbVmnDevggW+FOaU5g6B+Vvnvzbmlw/+cOY4Uf5xw9qw0MxxW
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the entries for the 'volcano' family, namely SM7635, SM6650,
SM6650P, QCM6690 and QCS6690.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/soc/qcom/socinfo.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 8c4147737c35e3878db2def47f34c03ffc1fea52..57fc2760548aaf904cd1aefc7fd7e0f7bc269632 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -446,8 +446,13 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(QCM8550) },
 	{ qcom_board_id(SM8750)  },
 	{ qcom_board_id(IPQ5300) },
+	{ qcom_board_id(SM7635) },
+	{ qcom_board_id(SM6650) },
+	{ qcom_board_id(SM6650P) },
 	{ qcom_board_id(IPQ5321) },
 	{ qcom_board_id(IPQ5424) },
+	{ qcom_board_id(QCM6690) },
+	{ qcom_board_id(QCS6690) },
 	{ qcom_board_id(IPQ5404) },
 	{ qcom_board_id(QCS9100) },
 	{ qcom_board_id(QCS8300) },

-- 
2.50.0


