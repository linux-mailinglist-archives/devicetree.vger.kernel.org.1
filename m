Return-Path: <devicetree+bounces-253944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E32AD12ED0
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:54:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AB26A3008763
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 13:53:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A832335CB81;
	Mon, 12 Jan 2026 13:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="bvtd/Qce"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4741C35BDD9
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 13:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768226002; cv=none; b=Mt8q0DgzmyY2RcM7RDIkrgduyZ9l5N/0fpjIL8jaMv02Zj0NHzWC/rz59vNwP5TYcjicn+X2gKxZlQQ3roHU5A1thrreLHPgGnqCLJQt6sLfPnqxx3fvXizSaGbZxnZr8F/tELonq4Q4jJ3qMMhgRfxm3FYZ1HXdAEuy72IqUnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768226002; c=relaxed/simple;
	bh=th6axCGBijF8Kah9JfcUeQ/2xCVBCKHltRaRG2KfK10=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=utDpgKN9UmelW/vepn7VIqR36EhXgPQaoPf+CTDOaRkCn5SH///OXWkQTHQDkkVaZ0ejY+WEPMt2L1G10l7lI0E99Ds5nAT779V/C5GaCPCQ9BVRKuHlcJhba7ba2WYNUzzPlDLwTHaM/oR/j7wZRPd8RrF/5MJclCv6PrD+cps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=bvtd/Qce; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-b83122f9d78so1031063366b.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:53:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768225999; x=1768830799; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O8IKnx9yXSe0FPYJrKraQqEmWSwhdYk1T8goN1fuYRo=;
        b=bvtd/QceeYnli6Bs1+KL8Hr3/0qYmVT3pvd044d4DzKHoUxdthJgoCmmE4qC2LeDxa
         ydmAs8ErzXRKgL0egz5oK5HEWwr4SN8Jr1YC0Ul8AkGQH3eOHhFAAH6IP3q/LBEV/NFQ
         THR/bNe0CxdLuph8+laxTEHSlzCrJe/MBcvrdD3q7sg6+7HzX+6dMDkLyBjL6NKHP6LW
         QWGCwWAZiNDtb+zSsuC2/6IMuudEHxDvCdWtS+y9FUC1xSyG46+Ck09TO0iEc2mvsR6S
         1OAC4k56yWIk/RwOCQjUKb9QcyOl/seyM9f3uYMLCVBw5wKVaYu89TpPRdJm4f8ct9e2
         KS2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768225999; x=1768830799;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=O8IKnx9yXSe0FPYJrKraQqEmWSwhdYk1T8goN1fuYRo=;
        b=pxVEPZXvqF9N150pPOgPOVU7DGi8xg+ixuMJ2kvwd3BfRAx6GAoXYkTVwJu4bnYiXw
         gKmNEj/c8TYyY7CRVUjoiyJChJHd7B3aErn2FpmvB2EZH8eG6nIBhhGqIe9SCjLESbBC
         bi9/JQA6w7iNKQv8BJ55+ji7jl6KemEX+MwBEDQloti/1sbOsfSwJiYMM//PNSrrRnZe
         nOGqFj0fcykZDGetZwClMSwtFPvJqrcYZZaKQzG5LiBEw4CdBsGNPdCGAONpK8w9QrUF
         kTD4gYsNKrHl4jGAic2MztInpmvFUXLFpVcrPt74zwnEC29/J95Jplj7sJYPKw24/YRZ
         TM/g==
X-Forwarded-Encrypted: i=1; AJvYcCXsWJvoEowgh3F1vh9ozzxZVeXXqo84I6UwvB1VUBowhxZo/MAJYMCpmorEvmjqKIirw9WTfd5tZObj@vger.kernel.org
X-Gm-Message-State: AOJu0YyUP7iniMknNMuq6fwwZbSBzUrnjFVsU2dTdJH4h10nVB2CDtCe
	8s5wrYKkf7/9hmne7aNYpdirpTtTbvHCXjlkWhkcHFzC3BA6Eo+EZg20FNNWHiIuN68=
X-Gm-Gg: AY/fxX7P2cwAg/WnvJz3FVSZhdSSULUajpdlzCBr8rXNydI6i1GYLG88H2T6LuNXIft
	821c078tbXtG9b04/wPQUAKOD1WIl1zfFpjPEHrdzckNlCbBHUHf+VlQgeoIFTnpsEySinGhwgr
	9yeuLjXPNcV+64zyn75dEYWArhUQsa9pFGL0iqEwHgZg22nYMUnlKJVebaTnGtWUzqh0HONNl+H
	Dh7EcluV0tzg7Qbw6RUntjTIPpV1D/TrThgXkkVX2niD1+YMq/1TFWybrVDYrX8l9CQQJtnH6/Y
	TzrQ1s5CbfAw48oqAZfewf2jdbOK7cmY7UuR6aLhO4l1o8rlURWKqMzK4LnIRG0MKzD41UXjMGK
	OFy9uvkvPk2bqIVwooaNic9xQJxFZccPrj1In0Wx3x0O4s5JXRmUaXvO+BuqAmC7Wg2J7cFJswg
	KvLX2MIEpaslK9BaeEpfzjogSncxooTr5oE50yHapmfjobugrIkrHrPlxerpUgxIfJ
X-Google-Smtp-Source: AGHT+IG+AJ65kKB2Dp506sZrhGNvXlfvnMnaQWt8y8s6GD6rdulfK18GchB8ix/xHYp7NvkWK0olNQ==
X-Received: by 2002:a17:907:7b87:b0:b87:1a26:366d with SMTP id a640c23a62f3a-b871a265a30mr330532366b.49.1768225998538;
        Mon, 12 Jan 2026 05:53:18 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8731f071e4sm25700466b.66.2026.01.12.05.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 05:53:17 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 12 Jan 2026 14:53:15 +0100
Subject: [PATCH v2 2/6] scsi: ufs: qcom,sc7180-ufshc: dt-bindings: Document
 the Milos UFS Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-milos-ufs-v2-2-d3ce4f61f030@fairphone.com>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
In-Reply-To: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768225995; l=1032;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=th6axCGBijF8Kah9JfcUeQ/2xCVBCKHltRaRG2KfK10=;
 b=294PpU4+wAexgNBjfPS7wMuzv8k505newwtgg10/kKLbAsBgxO3JAl/3GxpexhG6+tpOtAn2F
 pbq6ihiX5kQBk/D38DpXyiw6nLvGBd0OB0JwZO0FQ7fGpZDgw8b8oAn
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the UFS Controller on the Milos SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
index d94ef4e6b85a..c85f126e52a0 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
@@ -15,6 +15,7 @@ select:
     compatible:
       contains:
         enum:
+          - qcom,milos-ufshc
           - qcom,msm8998-ufshc
           - qcom,qcs8300-ufshc
           - qcom,sa8775p-ufshc
@@ -33,6 +34,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,milos-ufshc
           - qcom,msm8998-ufshc
           - qcom,qcs8300-ufshc
           - qcom,sa8775p-ufshc

-- 
2.52.0


