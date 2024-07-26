Return-Path: <devicetree+bounces-88310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD14A93D202
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 13:19:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE49F1C21C32
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 11:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F26917A90F;
	Fri, 26 Jul 2024 11:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RcNbaqxE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8CC517A580
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 11:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721992725; cv=none; b=d9Q4ROveHm87x1f7tIqXelYsn0bJQuwgGeuobZrxwEHN3JjC6OySsE6hu8Zp1cM0DuBKHOWAHDbJ4ehyVT2b5Rvv7IP+IOZWo7kTR3ljqo1BL9azW1YpcKvzc069oJGt5HYuteRbCNWyn61dubHkZ2KTWkOscPuGtH05WQ4y+TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721992725; c=relaxed/simple;
	bh=ckCyUrhBgaUj/zbznCBeQ3fcpP9VdQ8U2iRFPANaIoI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TWmIgNLsram4Ca+1todP35XNDpcD4A2wJ/Ho0725EbhtLiuFIUiFmWUD+NOd92YpJQQ7eUEoe6kv7bcmImUjv9a8BEMpNMNCtuPWJWQ5i7QKX+lK+Is7DR2aYk0EXVB+btefkHk5OmWUWARW84e8UeIaM5nkVcAJR7DCQOjblh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RcNbaqxE; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5a10835487fso2602158a12.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 04:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721992721; x=1722597521; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+RSSre3AYsx9Ck3+Gf7pgOKZ6yzR7bvdD8OyLOsFucA=;
        b=RcNbaqxE96dT6dUfpN/AmHwMUvGYabTuZapJPSaoDjuT1HF4TTeVQMhBkHKiUcSU+Q
         Kq68ZCSghMcj+pbzBNRB1RF3GcH9pr8jflXKsDHuo/ZEdAKkGi+0Nhl54QU5OecPQHca
         s2345mkGVXGpvnKIw+vNDPUHOqPgvRjfmQN8K6U3PTljXDt9SlC7D4TJiJKuvO5foc3p
         WhvAKL4Y06YqOdm+Ozloq5bscxFLl6hE005hMp0PdEreqIWyVPF/WZZNrn5/Sd1Wc99g
         oSDS3APN6Xt6STm8fxYomNqobWnPRoq4YBf5n6Ohl7axHJBL0p9B5RehON8MFJvq3yRX
         ec2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721992721; x=1722597521;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+RSSre3AYsx9Ck3+Gf7pgOKZ6yzR7bvdD8OyLOsFucA=;
        b=A4ONBm+FPDRoi3al5VFnWokm6ZP0NYdtFSPjLvEpcOcz+G2TP86Lya/KVaDQXIncR7
         mGGXcWTfIVoA1nad3P8N2ki+EpzkR0FCnPHpriQGSR++M7zQLEHlvocJtwtG93yp5V7r
         0/8JkO6oU0/0cSgKC+uuC4PVSfu/wJCUCMyNUGd/Gd3rxQIYa8W5D1Ph//G6W33X+7PW
         KDG6NBlAEFpShIxg8DP/iXSy28mp0UIONrQcb/YZTcSKoVi5vhbOgRyCgf5SruVP6Khi
         iV8oK7Ag764/K6uEr7uHIXM1CB2H+DvgHbSA2BrOrTFV6ZSVN1rWVqAKJ66WYENaw0yq
         XZGw==
X-Forwarded-Encrypted: i=1; AJvYcCW9rtJ3lAjCr2OE5tYn8RHCeLG3bshTRgAoFcaGtJr9LE2qYLuBwsaB3Pe+/yCcynLagxW6Iz/JqM9JDPyB8hO81GBWZT7luzc1qA==
X-Gm-Message-State: AOJu0Yx7Sdx+471GnE0AJ9EJ/AntL3PMDrRTszqKJSajQR13oDvRVTx0
	YJGveJFHY5PZjo9TTRAxKxDi1wgjIf6wgjqA27kV/vYqe1vDE/g3ECPH6i4sY2U=
X-Google-Smtp-Source: AGHT+IGedxxg/izaM1e+VztqZWQWxkaWXqj8R3F912/FfkJgI46WkcgQ7+j+9WvvDIum0fdm0GHjIw==
X-Received: by 2002:a17:907:6d01:b0:a7a:a0c9:124e with SMTP id a640c23a62f3a-a7ac4daffe8mr483108366b.4.1721992720735;
        Fri, 26 Jul 2024 04:18:40 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acab233aasm164703166b.8.2024.07.26.04.18.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 04:18:40 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
X-Google-Original-From: Konrad Dybcio <konradybcio@kernel.org>
Date: Fri, 26 Jul 2024 13:18:23 +0200
Subject: [PATCH 1/3] mailmap: Add an entry for Konrad Dybcio
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240726-topic-konrad_email-v1-1-f94665da2919@kernel.org>
References: <20240726-topic-konrad_email-v1-0-f94665da2919@kernel.org>
In-Reply-To: <20240726-topic-konrad_email-v1-0-f94665da2919@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 linux-pm@vger.kernel.org, iommu@lists.linux.dev, linux-gpio@vger.kernel.org, 
 linux-remoteproc@vger.kernel.org, Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1721992717; l=857;
 i=konradybcio@kernel.org; s=20230215; h=from:subject:message-id;
 bh=ckCyUrhBgaUj/zbznCBeQ3fcpP9VdQ8U2iRFPANaIoI=;
 b=CNtGakN4VUWxmqa0J8qCXm3ryhK2xBygjVnd3sLEs1hjjigxFk6KXgVO8RguVUgvC2vrvozQN
 0TFoswoCFN/Bf5JR+kUjCYQ/6OyAUzfDbdzncCFa0m34zezBQ43DbYf
X-Developer-Key: i=konradybcio@kernel.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Map my old addresses.

Signed-off-by: Konrad Dybcio <konradybcio@kernel.org>
---
 .mailmap | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/.mailmap b/.mailmap
index e51d76df75c2..d189c6424697 100644
--- a/.mailmap
+++ b/.mailmap
@@ -353,6 +353,8 @@ Kenneth Westfield <quic_kwestfie@quicinc.com> <kwestfie@codeaurora.org>
 Kiran Gunda <quic_kgunda@quicinc.com> <kgunda@codeaurora.org>
 Kirill Tkhai <tkhai@ya.ru> <ktkhai@virtuozzo.com>
 Kishon Vijay Abraham I <kishon@kernel.org> <kishon@ti.com>
+Konrad Dybcio <konradybcio@kernel.org> <konrad.dybcio@linaro.org>
+Konrad Dybcio <konradybcio@kernel.org> <konrad.dybcio@somainline.org>
 Konstantin Khlebnikov <koct9i@gmail.com> <khlebnikov@yandex-team.ru>
 Konstantin Khlebnikov <koct9i@gmail.com> <k.khlebnikov@samsung.com>
 Koushik <raghavendra.koushik@neterion.com>

-- 
2.45.2


