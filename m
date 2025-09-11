Return-Path: <devicetree+bounces-216165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75104B53D56
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 22:57:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 34F0C7B1351
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 20:55:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DB512D8788;
	Thu, 11 Sep 2025 20:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ak9Oh9xk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890882C2364
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 20:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757624226; cv=none; b=HLWOZ8QR5n0PC1Zq/LbS7WfCkTyXAnAZPw5ZdYMqZiWSmcn0YrtwZU8sQn/eOYS7oMMmyHXnEle+I93ZWIYiKK0ncHtGX/z5IdWvPzJJDin0Djh4uqHzUuYs4CeBwK0My15dwKj8jvOTI8kDif1H2vVPaTjk0ehXefueGHUTj9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757624226; c=relaxed/simple;
	bh=3/RgRAcFV2NW0rUq1O8pSUOarRj54QaeN5/ojlVNaE8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mlBeUQB8vxRAcpVzolx4BC/QbiooPX84hGGj0Gkd8a3o9V5XbH1HjcyNJoc7+RstgOW7OELQCiBsy/XijL3zZf+zxLlvWyuatsAcHgS7vVpy68F2r3+nbMjWbARJz2FjHNQ5AbamRyCgR0sOGFmAPeymLw2zonGywiTlAaCseow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ak9Oh9xk; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-afcb7322da8so229665066b.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757624223; x=1758229023; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f6aOjs8PgmMeVOmmIH10qFkLTayDVCN1LF6r/kVHD1s=;
        b=Ak9Oh9xkVmpI07XrcH6OJrH4iBbaqqA4NLdGjnzh6TEI0UDmko++HT5vd+PI4hbb7p
         p9ncWfCSz1USyg+i6PMrhU4pw9nbOIxJLGDIMomJY/YOYOMnuLfMR/JgCK+PkvXPEFVx
         LCi+gUOYIw/334v+UvmNj5nQe4/TH3c9DN4CtcKb5PN4rnMg1PD/NpyfbQTG0T12rjP6
         hujI2CxxhAZnuxmcgZfS6uyEzzmza7gYcAldWk9E78kUQ068TRTThr6ugcl06iKpiS7x
         GnOVYwvvyAJyevkIvRFXC8GWqA96/ss9MpDA+FZn6Wx8PpRZoNJqdvE0rrArJzrLB2pR
         QmTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757624223; x=1758229023;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f6aOjs8PgmMeVOmmIH10qFkLTayDVCN1LF6r/kVHD1s=;
        b=HvZYDmQh4SGoOXTz6tes2+D2EWRQrvb2MrVcT5ejLd5Kv97hp3UZVeLKLRg4Z8TzKy
         H5xjw7vUFuhu5ACx4SKzWTA5rICmssokLpKdBf8KPkkEDQYarjyQ3UHekAiColas1vDK
         zeKKFqr16b3JB6NyZuof/nR11TQ1Slk/oqM48JwLQHK2izhCNW+5tzJAHprTGHgG/8ib
         jebFrmGo3FvierjVMvAUtChfF56hpoUKIyx89xT0lDB4CPg7PshdLKZNqh3uavun6Mjg
         a+mHPfTkg3NGEl6+6xUTC6a5rvBKmzC06hJLo3jShO7Lhvw5GeN/HjsLB10VY/z+kzRy
         ayGg==
X-Forwarded-Encrypted: i=1; AJvYcCW0i3kZSAa91Qcoro1d3fuMmV1X222xSQLSe82hbkgvJw4qafekmPMjGRBIlBOSz58rI2ExvgKE9ifH@vger.kernel.org
X-Gm-Message-State: AOJu0Yyrw6l+ig1JVUgZ6Ss0yetpKQ93rumcdfBBcFhRWILvIDz8e6x3
	VKAh4o39Cyltfu9jGteX8kjUa1VTd5ZydARjg8NcJF+i2/th7WmsUBpP
X-Gm-Gg: ASbGncsK/8/WXRoUsLDSSzre3Qu3BlW0nO8kaU1iI3T148cNEHZ0YKYD219+cDmfMvC
	0ros/mPMaiFiRxjKkcOT3fiMaJxxBx29r2ReK/6A4AFdvwHqW15tuZvEF+lkX3P7yfWy9hRi3s3
	vHpAO4C8t8RGWETbpgk+hTUtPpjWFhz7i6WrjRSURW0CgUTccimhTYkl81gTx6lnnTpW/Qy4w/H
	S9/7I4TQpG1Wt6ZbM9gXXYjoGe0GP7kdhgMAkiehkHDoFMwy2RaHtFdmCrkA+ZgnaHEsKV3Rvwd
	sOGWOBd906+FV+CtaGX/Pq+1HgD5xvffUAG72dpgdBBZE0BP/8/3SJFNZi1iIw0EDASHst0KoWU
	LxX7a2moMZQHsO52dY+PG6Ax27e/8nQAEkAZNbOuSlg==
X-Google-Smtp-Source: AGHT+IHWdhuUM6f2lywRYg4GOnoPtBiWkw6/PuE3vzVz7Rso77GO0FX2u+NDjsUbuHwsz2f4SXE3DQ==
X-Received: by 2002:a17:907:60d0:b0:ae3:8c9b:bd61 with SMTP id a640c23a62f3a-b07c354fae7mr53944066b.12.1757624222769;
        Thu, 11 Sep 2025 13:57:02 -0700 (PDT)
Received: from [127.0.1.1] ([46.53.240.27])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b07c28f190fsm38775366b.39.2025.09.11.13.57.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 13:57:02 -0700 (PDT)
From: Dzmitry Sankouski <dsankouski@gmail.com>
Date: Thu, 11 Sep 2025 23:56:56 +0300
Subject: [PATCH 1/2] arm64: dts: qcom: sdm845-starqltechn: fix slpi
 reserved mem
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-starqltechn_slpi-v1-1-93ebf951a932@gmail.com>
References: <20250911-starqltechn_slpi-v1-0-93ebf951a932@gmail.com>
In-Reply-To: <20250911-starqltechn_slpi-v1-0-93ebf951a932@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dzmitry Sankouski <dsankouski@gmail.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757624220; l=1069;
 i=dsankouski@gmail.com; s=20240619; h=from:subject:message-id;
 bh=3/RgRAcFV2NW0rUq1O8pSUOarRj54QaeN5/ojlVNaE8=;
 b=r49EsUNrjWPtZZoQrQ5ZDJdhA/iXH+3jXbgBpvJhDi6VzZKIxfYF7ar34ZX5QtZVE1HAIpRJm
 SD5KLWof2lqAW2ZPaBVxsi7wHs6XHrnGwhBUd49y5OlxYCRUKZdS8YR
X-Developer-Key: i=dsankouski@gmail.com; a=ed25519;
 pk=YJcXFcN1EWrzBYuiE2yi5Mn6WLn6L1H71J+f7X8fMag=

When adding adsp reserved mem, slpi reserved memory was shrunk
according to vendor kernel log:

`Removed memory: created DMA memory pool at 0x0000000096700000, size 15 M`

However, kernel refuses to boot firmware with 15MiB reserved region.
Increase slpi reserved region to 16MiB.

Fixes: 58782c229e3e ("arm64: dts: qcom: sdm845-starqltechn: add initial sound support")
Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
index 9eeb4b807465..32ce666fc57e 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
@@ -118,7 +118,7 @@ removed_region: removed-region@88f00000 {
 		};
 
 		slpi_mem: slpi@96700000 {
-			reg = <0 0x96700000 0 0xf00000>;
+			reg = <0 0x96700000 0 0x1000000>;
 			no-map;
 		};
 

-- 
2.39.5


