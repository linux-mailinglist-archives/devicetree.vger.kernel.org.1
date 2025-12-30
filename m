Return-Path: <devicetree+bounces-250357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F17CCE88F1
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 03:28:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94A9F3020482
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 02:28:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9162F2E0407;
	Tue, 30 Dec 2025 02:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CtmdeF5g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572522BE657
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 02:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767061690; cv=none; b=Rpq+Qb1dQjnDVVyAFZsDxuTdI2SxpO6ehnwxnEHq7Inxq8JecFmHX89vJ6qe/4fJ/l7FWR1zTjdDeUp+KfZI24wl+qr+CWm56zMSuH2kHHSZiP/aDm9czlk3w9h5FxaooK0GuatbbQ3GG7A/6tFrZgCHa17UYi94AUp/awmBLNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767061690; c=relaxed/simple;
	bh=hZMAxnWL5r+KiexN1e6GrVKsiCsKBA3Ey90h4qQueSU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=M9i3g79t8I728T12RBKR485AmYvU/CpWP3Y4ug5CRdQpOqhx1s22Iud6H7+hiLdK/NP+g0L6KIRgj0zP3EB5xWvefhxN8bfNlj3ZSJy0Q6K69zWgIwlbI7+vTvo5YgcMzH7iQQ5QQShUk8f6DGhlPJUbYRCoJqy8I8qZO9SzZpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CtmdeF5g; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-4f4a88e75a5so85778981cf.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 18:28:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767061687; x=1767666487; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Boc0hyaruKu7zfPgeDx+KGd5hDYj3D0Tb7d06swQ2k=;
        b=CtmdeF5gazjNOm2BZfnELhBuhN3h0NAGZqhtArcVccRTTup5immNbsMid4fn6ULxeG
         NO0N1p3+17Z1hzu6HmZP0enxImt/27HZ7tJHwI4i02si9UY77c1tsvjgIMmXlmJqYThP
         dCMDPGbqnXCgFRx1iSxqDsZ/sel3enT4dzSbbmbq98BgoS0yPBmda537jH0s/z7wPCK1
         M7zVBRpN2mz3202syT/xKbskz5Q1P+NpxJKEZRx9Kn/fd0kF8x2NCb9c5cl7VOVMo4qm
         I0YWOXm6NVz9ixHuc7GrJaCxD7Of6/k9GC6tai46V0R9AOMq8k6lm3xSwdouBiYklGLt
         vFFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767061687; x=1767666487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0Boc0hyaruKu7zfPgeDx+KGd5hDYj3D0Tb7d06swQ2k=;
        b=nLhEjbvuoBGGW0J2nNPllD9d2nqZotpaNlgZBhUb0siktp5rAdNqKpGY2UEvNGg6Va
         tfvgTgUCnrhEZKMX3Z0eYezNRpIfp/geKqy1u2RtzVu3YJhTnd2GZx3kqTSD/g4rqnaQ
         5ko9tmBaYw8BiTdi+vpRsvboRCEqA5A85098FLsczFHGgyrrt+m84ERr8XLIg5l/7iij
         8tnuJmx9SGAOrcknUTiDV0whBAStAkxS5JcsRYks6mbCAPxqcf01cTFUVJAqO2EDTlr8
         dZNkdZcKSmquTlaifKQ7gdQffS3MFzyuo68vIJcIhliCaULxxugVgHZ+nWCRTUL5fuwq
         pnBw==
X-Forwarded-Encrypted: i=1; AJvYcCVIepxFnM0u2MfNpNqtqp2uL+RKB7+qpb6xOX6k2HvcmzbQduLooL8OPWMIC4kaF3OPgNeAosxOcK27@vger.kernel.org
X-Gm-Message-State: AOJu0YxpJHEj+vrraTQJ+W+1Rqyh9PBIqn2S1TR98oBMNQZ5vi+W7PLd
	70KYti1bKQvBkn8PGfoF9kEKEQS5tHIHcS0yltByjiZLSY3BYJxyJjRG
X-Gm-Gg: AY/fxX4l5HxR39hcyMnNS334Zrn7cXqCqm4GkeYqt1D82hpXm8PC0YRoRHyR7KL+Yj4
	uqgIitQ8KyujYpric1GMey6NOHolIJVwD/d6U6TOwsuEKAvcGUbNTeTE9/VXYS5yk/lY8j5j+XC
	gqjuoSR59zfNhWZhG/OeVTgWXKrTEqyTvaR+u2ELwWgidHCf/oQwjxrPdnlgKZObY/j//nmo1fD
	PWYHBuZbu2G1mbPXSFmZI7LE+0igtXSz4okIpKo0/7BbyRUle+j/4V5zOseIHn2VkkqZBvDP0XX
	Z5nQN7Gyo0N5jBWka1YY36vG1PR5IEkUuQgxqf3zk0AUJLwTWKSVD3JER4247zaImx37Rxkp8d6
	PsJr44yHvRIPiH2rJLNeFrTTjhe0jNsWW0IEIspYHBKKH0lpYAAsnRR8wvnW6uEm7eckzSiu1ZN
	nG0lgLP6anwsVXvQ==
X-Google-Smtp-Source: AGHT+IFEAMQrwwwqZI6BcR86cj8VNjvEbJgT3zi/3zKCZBfFKORHXJEZ4ohqq/vIUFDgz0WWZXwE2A==
X-Received: by 2002:a05:622a:130e:b0:4ee:26bd:13fa with SMTP id d75a77b69052e-4f4abdd147bmr480786931cf.80.1767061687220;
        Mon, 29 Dec 2025 18:28:07 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac532d08sm229328881cf.6.2025.12.29.18.28.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 18:28:06 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [RFC PATCH 3/3] arm64: dts: qcom: sdm670: remove status properties of camss endpoints
Date: Mon, 29 Dec 2025 21:27:59 -0500
Message-ID: <20251230022759.9449-4-mailingradian@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251230022759.9449-1-mailingradian@gmail.com>
References: <20251230022759.9449-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These properties are unnecessary and can be removed. The endpoints are
disconnected, but this is implied by a missing remote-parent.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm670.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
index b8a8dcbdfbe3..e841309221e2 100644
--- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
@@ -1780,7 +1780,6 @@ port@0 {
 					reg = <0>;
 
 					camss_endpoint0: endpoint {
-						status = "disabled";
 					};
 				};
 
@@ -1788,7 +1787,6 @@ port@1 {
 					reg = <1>;
 
 					camss_endpoint1: endpoint {
-						status = "disabled";
 					};
 				};
 
@@ -1796,7 +1794,6 @@ port@2 {
 					reg = <2>;
 
 					camss_endpoint2: endpoint {
-						status = "disabled";
 					};
 				};
 			};
-- 
2.52.0


