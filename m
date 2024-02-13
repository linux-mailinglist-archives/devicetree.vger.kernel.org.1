Return-Path: <devicetree+bounces-41269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C93852F39
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 12:27:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2A7128C2B0
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 11:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76BD954F82;
	Tue, 13 Feb 2024 11:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YOpgQbbG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6280736AF0
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 11:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707823347; cv=none; b=OiHdcXnMrt/w4F5Xt5hKkEmlDFVIdC0uzpkUilIxB+hYhN15v88a88IMn1qomH+NqAlmujTdpsyEvku/BnYnlib9275lkGEBYZSyyitHe89N3sF8L2yCniPG2msMxbFnmFjZ5RwTk6OzkhSPzhC1GGDmCBjay9gdKhb9WJ/DFKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707823347; c=relaxed/simple;
	bh=BuQzg2iJaW63ZjLgGhbysHhHcNyAHX+tIUOIDDX7neY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MDRQVCx8DAf2jv+7A3U9Ev4jnBcgAbv8RFp+UKZc2bWhUawxBT/LrQmjiPGClxN5RJqXupsb25Okr9XSsw88JWlZojxzptSYZRubF2x6W4jbF//lNQjrZOXln1sdHS979hz8N4uRbdZRMMntOJQGFKB2ca2iJ+1qP5qzBIKDcsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YOpgQbbG; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d10ae127ffso5051961fa.3
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 03:22:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707823343; x=1708428143; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wRJpLVGsB5tAgGhkBQMmWF0+eD61z3b8Ssf4Ktf81tQ=;
        b=YOpgQbbGk9ypBcBm0b/NpTVy1tGXpdU1aQ+Rx7hi2t5MnvqJ/2wWThcABP7FI4i4zq
         enyPMRzxcROiUvmAI0LLczreMwoy/tuEO5cS8mqu2r8+kvLmATe3VpzTOHdyyBbbcJRX
         YLpz/FF+KyCbeYFuqa9XPsuLjWdbQTuwRIPyYShLDIfRwKrxNAHtrVSgul0ik+9TD5T7
         rnro1M5jN3gK1Im9SrdJi0uFM/igfvxfc8ZPBExZBjeHZ/pk4AbnfFtfGxkfJoLui5Yd
         wRZVF9LaTSXD98p7D9e1ASKiqtKT3Rr+mrLRycKvLAt41sPq2MtYYTAUTSposh6rr8B2
         TphQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707823343; x=1708428143;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wRJpLVGsB5tAgGhkBQMmWF0+eD61z3b8Ssf4Ktf81tQ=;
        b=D0mZheaJqYyBpjGOIw46h4dssxJw5/NksOG0Gcl01T50/Qm+APCRnxA26QeeQ4FlyH
         uZCFyhqV74/baHs6BjZuR8gr6Hf34RTr6j+qVAyT41sF22H+rMLdlpHk/1kWgZIWsKiJ
         qBv8KfAbCT1ppr9OYOhsUZGwzvYLtOOo8S1EVm0ip8eGDcLHL57PLpsRBelJV+tQVue1
         nr9FtpzBTz6E4jN/lqODDM8AbWi4YKjVCMugNOmXo4YlTKtv3WjvtMLZxAdfaDb9z9+j
         pchJKVACPoz6Cj/mjanPakdSQgzdsuWbuHFrFdILC53bdEjPvWsBGa+mQQ0YDSp7/lFI
         xviQ==
X-Gm-Message-State: AOJu0YzWrjgmfNgkMY2DBZ4oULPhoCZ2T2TYcDzhbGatEFW49pFZ92m2
	one35uvtg0cLTCQjl1muuSsmpmUCZv9njLR0LhExtZnNz1CjgYgLwY7m64W7O2M=
X-Google-Smtp-Source: AGHT+IF2wHVPhUtmzS9v8e2w5QNNMs3mBhPMEig2xE4ecpMAHsAabXlHl+z/UIWQtBBFcPlbdlSquw==
X-Received: by 2002:a2e:9dd2:0:b0:2d0:8bfa:56b8 with SMTP id x18-20020a2e9dd2000000b002d08bfa56b8mr5638928ljj.48.1707823343383;
        Tue, 13 Feb 2024 03:22:23 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXyaDG/ZTZ+wu8R3vhcAwoNy3fDWLvst87M7sr2p7ZCzOsQINqmRPYH5iNq/7et7v8fbzkx/PT3DTLT+6Odsherz6oVwRG/JChawFS3bM7/oR3gIWrE5KC14mmtnuGBQlJUPfYBTE1+nMkIwhG51lGgVDzrsBpBYl/UIJH4T+IuZNL7sPH/3IrEP6IX/OLIObiRlXzkgnzu5/HvgDx+53lyMUdEaEXBmZfETAPS5xJevC1qrdrrrV2n93gbAGdQ1UNuv0G7VpgN7dWh74UOyamznAMFsz/sirmQGV9Xg+Qetk4i06nhOkuKNEZ52krX61mBu/kZz6EPEteacKR9F1/OtCYookAo475D1nUpSQVfVn5c2iA0zWJwwf6vP5cYlmc+8lR8O+N/G4XVjS739/095DBEc5EF0Fve7PGb35Jl3akvFR09yGOQS8FHtv9KGTN30eGBtsm3EEhkz9WTp9ox6TUWnAIRMQ7L+4ytljma18KOb07klor7PhWvyojh6hu32TxcNdmVYhXmDXizchNoiqdO1zntaYV+ekOQABp/NlXZGs0vCPmeOewTzoZ7JjLE
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z11-20020a2e964b000000b002ce04e9d944sm451107ljh.69.2024.02.13.03.22.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 03:22:22 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 13 Feb 2024 13:22:20 +0200
Subject: [PATCH v2 4/6] arm64: dts: qcom: msm8996: set GCC_UFS_ICE_CORE_CLK
 freq directly
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240213-msm8996-fix-ufs-v2-4-650758c26458@linaro.org>
References: <20240213-msm8996-fix-ufs-v2-0-650758c26458@linaro.org>
In-Reply-To: <20240213-msm8996-fix-ufs-v2-0-650758c26458@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 "James E.J. Bottomley" <jejb@linux.ibm.com>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Nitin Rawat <quic_nitirawa@quicinc.com>, Can Guo <quic_cang@quicinc.com>, 
 Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
 Andy Gross <agross@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=802;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=BuQzg2iJaW63ZjLgGhbysHhHcNyAHX+tIUOIDDX7neY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBly1Dqid9hqLr0E//FiCkM8sXB4d+Wd9cxpUgxv
 WpDVUbwPc2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZctQ6gAKCRCLPIo+Aiko
 1Zv3B/95nI4ncjBcVkCDqCawoLyBN84EDa9EuPZXsmuhSvy2FHskcYWWjfslYWKMTlN/MehSnSz
 Dqd/5R2MexAAvjWgTLBxl22NL7w+JnQhsW08/Eqxov7YZy4IYXhpJ0Un23ZA7XL98g4Cflf91T6
 BtWb3SILf+bFsTucFI6w2chlkLNFsLd+46zFQ9KluHoBbwdcoigFCzVf6Gu0c/zNHj5wO7kTYEj
 9YlsAvhOqo/bctVfyC8btGP42Kach8eEjXz24/U6AgFzVk2NJkIRTbLULYSLM6N9lZnkW8Z75Mz
 CgDJws2vna25Mfgi7TuNCVYDZF1PZvnB4RAe+us4+u12qraB
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Instead of setting the frequency of the interim UFS_ICE_CORE_CLK_SRC
clokc, set the freency of the leaf GCC_UFS_ICE_CORE_CLK clock directly.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 401c6cce9fec..ce94e2af6bc5 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -2076,9 +2076,9 @@ ufshc: ufshc@624000 {
 				<0 0>,
 				<0 0>,
 				<0 0>,
-				<150000000 300000000>,
-				<75000000 150000000>,
 				<0 0>,
+				<75000000 150000000>,
+				<150000000 300000000>,
 				<0 0>,
 				<0 0>,
 				<0 0>;

-- 
2.39.2


